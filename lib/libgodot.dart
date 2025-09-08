import 'dart:ffi';
import 'dart:ffi' as ffi;
import 'dart:async';
import 'dart:io' show Platform, File, Directory, Process;
import 'package:flutter/services.dart';

import 'package:ffi/ffi.dart' as pkg_ffi;
import 'package:libgodot/godot/core/gdextension.dart';
import 'package:libgodot/godot/core/gdextension_ffi_bindings.dart';
import 'package:libgodot/godot/core/type_info.dart';
import 'package:libgodot/godot/extensions/async_extensions.dart';
import 'package:libgodot/godot/generated/engine_classes.dart'
    hide GDExtensionInitializationLevel;
import 'package:libgodot/godot/generated/utility_functions.dart';
import 'package:libgodot/godot/variant/variant.dart';
import 'package:path/path.dart' as path;

import 'libgodot_platform_interface.dart';

/// Public API surface for the libgodot Dart plugin.
class Libgodot {
  Future<String?> getPlatformVersion() =>
      LibgodotPlatform.instance.getPlatformVersion();
}

GDExtensionFFI? _libgodotNative;

// Pointer to instance binding callbacks struct passed to registerGodot.
ffi.Pointer<GDExtensionInstanceBindingCallbacks>? _bindingCallbacksPtr;
GDExtensionClassLibraryPtr? _capturedExtensionLibraryPtr;

GDExtensionFFI get libgodotNative {
  final lib = _libgodotNative;
  if (lib == null) {
    throw StateError(
      'libgodot not initialized. Call initializeLibgodot() first.',
    );
  }
  return lib;
}

Future<void> initializeLibgodot() async {
  if (!Platform.isMacOS) {
    throw UnsupportedError(
      'libgodot native bindings only implemented for macOS yet',
    );
  }

  if (_libgodotNative != null) {
    return;
  }
  _libgodotNative = await _loadLibgodotFromAssets();

  String renderingDriver = 'metal';
  String renderingMethod = 'mobile';
  List<String> extraArgs = const [];
  // Now load the game pack
  const assetLogicalPath = 'assets/game.pck';
  final data = await rootBundle.load(assetLogicalPath);
  final tempFile = File(
    '${Directory.systemTemp.path}/embedded_game_${DateTime.now().microsecondsSinceEpoch}.pck',
  );
  await tempFile.writeAsBytes(
    data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes),
    flush: true,
  );
  if (!await tempFile.exists()) {
    throw Exception('Temp PCK file not found at ${tempFile.path}');
  }

  final pckPath = tempFile.path;

  List<String> args = [
    '/usr/bin/libgodot_embed',
    '--main-pack',
    pckPath,
    '--rendering-driver',
    renderingDriver,
    '--rendering-method',
    renderingMethod,
    '--display-driver',
    'embedded',
    ...extraArgs,
  ];

  final argc = args.length;

  final argv = pkg_ffi.calloc<ffi.Pointer<ffi.Char>>(argc);
  final allocatedStrings = <ffi.Pointer<pkg_ffi.Utf8>>[];
  for (var i = 0; i < argc; i++) {
    final s = args[i].toNativeUtf8();
    allocatedStrings.add(s);
    argv[i] = s.cast();
  }

  print("getting handle");
  final instance = _libgodotNative!.libgodot_create_godot_instance(
    argc,
    argv,
    _initCallbackPtr,
    _asyncExecutorPtr,
    ffi.nullptr, // async userdata
    _syncExecutorPtr,
    ffi.nullptr, // sync userdata
  );
  print("got handle");

  // Free argv memory.
  for (final p in allocatedStrings) {
    pkg_ffi.malloc.free(p);
  }
  pkg_ffi.calloc.free(argv);

  if (instance == ffi.nullptr) {
    throw StateError('Failed to create Godot instance (null handle)');
  }

  // Lazily allocate instance binding callbacks once.
  _bindingCallbacksPtr ??= _createBindingCallbacks();
  print("start register");

  final godotDart = DynamicLibrary.process();
  final ffiInterface = GDExtensionFFI(godotDart);

  // TODO: Assert everything is how we expect.
  // Instantiate to ensure side effects (binding registration) if constructor has any.
  GodotDart(ffiInterface, _capturedExtensionLibraryPtr!, _bindingCallbacksPtr!);

  print("start init");
  initVariantBindings(ffiInterface);
  TypeInfo.initTypeMappings();

  GD.initBindings();
  SignalAwaiter.bind();
  CallbackAwaiter.bind();

  // registerGodot(_capturedExtensionLibraryPtr!, _bindingCallbacksPtr!);
  print("end register");

  print("SPAWNING INSTANCE!");
  _godotInstance = GodotInstance.withNonNullOwner(instance);
  print("SPAWNED!");
}

Future<GDExtensionFFI> _loadLibgodotFromAssets() async {
  Future<File> _extractDylib(String assetFileName) async {
    final tempDir = Directory.systemTemp;
    final outFile = File(path.join(tempDir.path, 'libgodot', assetFileName));
    await outFile.parent.create(recursive: true);

    try {
      final data = await rootBundle.load('assets/$assetFileName');
      await outFile.writeAsBytes(
        data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes),
        flush: true,
      );
      final chmod = await Process.run('chmod', ['+x', outFile.path]);
      if (chmod.exitCode != 0) {
        throw StateError('chmod failed: ${chmod.stderr}');
      }
    } catch (e) {
      throw StateError(
        'Failed to extract $assetFileName from assets: $e. Ensure it is listed under flutter.assets in pubspec.yaml',
      );
    }
    return outFile;
  }

  final libgodotFile = await _extractDylib(
    'libgodot.macos.template_debug.dev.arm64.dylib',
  );
  // final libDart = await _extractDylib('libdart_dll.dylib');
  // final libGodotDart = await _extractDylib('libgodot_dart.dylib');

  try {
    final dylib = DynamicLibrary.open(libgodotFile.path);
    // DynamicLibrary.open(libDart.path);
    // DynamicLibrary.open(libGodotDart.path);
    print("All dynamic libraries attached!");
    return GDExtensionFFI(dylib);
  } catch (e) {
    throw StateError('Failed to load libgodot (${libgodotFile.path}): $e');
  }
}

GodotInstance? _godotInstance;
GodotInstance? get godotInstance => _godotInstance;

void _extensionInitialize(ffi.Pointer<ffi.Void> userdata, int level) {}

void _extensionDeinitialize(ffi.Pointer<ffi.Void> userdata, int level) {}

final _extensionInitializePtr =
    ffi.Pointer.fromFunction<
      ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.UnsignedInt)
    >(_extensionInitialize);
final _extensionDeinitializePtr =
    ffi.Pointer.fromFunction<
      ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.UnsignedInt)
    >(_extensionDeinitialize);

int _gdExtensionInit(
  GDExtensionInterfaceGetProcAddress getProcAddress,
  GDExtensionClassLibraryPtr library,
  ffi.Pointer<GDExtensionInitialization> initPtr,
) {
  print("RUNNING INIT!");
  print("address : $getProcAddress");

  print("Caching proc address!");
  storeGetProcAddress(getProcAddress);

  // how can I do this here? this is a gdextension.
  // Resolve and invoke "get_godot_version" using the provided getProcAddress.
  try {
    // 1. Convert the proc address pointer into a callable Dart function.
    final getProcAddressFn = getProcAddress
        .asFunction<GDExtensionInterfaceGetProcAddressFunction>();

    // 2. Prepare the function name as a C string (UTF-8).
    final nameUtf8 = 'get_godot_version'.toNativeUtf8();
    // Cast Utf8 -> Char (both are 8-bit, required signature is Pointer<Char>).
    final rawFuncPtr = getProcAddressFn(nameUtf8.cast<ffi.Char>());
    // Free the name buffer.
    pkg_ffi.malloc.free(nameUtf8);

    if (rawFuncPtr == ffi.nullptr) {
      print('Could not resolve get_godot_version');
    } else {
      // 3. Cast the generic void() function pointer to the proper signature.
      final typedPtr = rawFuncPtr
          .cast<
            ffi.NativeFunction<GDExtensionInterfaceGetGodotVersionFunction>
          >();
      // 4. Convert to a Dart callable.
      final getGodotVersion = typedPtr
          .asFunction<DartGDExtensionInterfaceGetGodotVersionFunction>();
      // 5. Allocate the version struct, call, then read fields.
      final versionPtr = pkg_ffi.calloc<GDExtensionGodotVersion>();
      try {
        getGodotVersion(versionPtr);
        final v = versionPtr.ref;
        String str = '';
        if (v.string != ffi.nullptr) {
          str = v.string.cast<pkg_ffi.Utf8>().toDartString();
        }
        print('Godot version (struct): ${v.major}.${v.minor}.${v.patch}');
        if (str.isNotEmpty) {
          print('Godot version (string): $str');
        }
      } finally {
        pkg_ffi.calloc.free(versionPtr);
      }
    }
  } catch (e, st) {
    print('Failed calling get_godot_version: $e');
    print(st);
  }

  // then proceed with normal initialization

  _capturedExtensionLibraryPtr = library;
  final init = initPtr.ref;
  init.minimum_initialization_levelAsInt =
      GDExtensionInitializationLevel.GDEXTENSION_INITIALIZATION_CORE.value;
  init.userdata = ffi.nullptr;
  init.initialize = _extensionInitializePtr;
  init.deinitialize = _extensionDeinitializePtr;
  return 1;
}

final GDExtensionInitializationFunction _initCallbackPtr =
    ffi.Pointer.fromFunction<GDExtensionInitializationFunctionFunction>(
      _gdExtensionInit,
      0,
    );

void _syncExecutor(
  InvokeCallback pCallback,
  CallbackData pCallbackData,
  ExecutorData pExecutorData,
) {
  final fn = pCallback.asFunction<DartInvokeCallbackFunction>();
  fn(pCallbackData);
}

void _asyncExecutor(
  InvokeCallback pCallback,
  CallbackData pCallbackData,
  ExecutorData pExecutorData,
) {
  final fn = pCallback.asFunction<DartInvokeCallbackFunction>();
  scheduleMicrotask(() => fn(pCallbackData));
}

final InvokeCallbackFunction$1 _syncExecutorPtr =
    ffi.Pointer.fromFunction<InvokeCallbackFunctionFunction>(_syncExecutor);
final InvokeCallbackFunction$1 _asyncExecutorPtr =
    ffi.Pointer.fromFunction<InvokeCallbackFunctionFunction>(_asyncExecutor);

// ---------------- Instance binding support ----------------

ffi.Pointer<GDExtensionInstanceBindingCallbacks> _createBindingCallbacks() {
  final createPtr =
      ffi.Pointer.fromFunction<
        GDExtensionInstanceBindingCreateCallbackFunction
      >(_bindingCreate);
  final freePtr =
      ffi.Pointer.fromFunction<GDExtensionInstanceBindingFreeCallbackFunction>(
        _bindingFree,
      );
  final refPtr =
      ffi.Pointer.fromFunction<
        GDExtensionInstanceBindingReferenceCallbackFunction
      >(_bindingReference, 1);

  final callbacks = pkg_ffi.calloc<GDExtensionInstanceBindingCallbacks>();
  callbacks.ref
    ..create_callback = createPtr
    ..free_callback = freePtr
    ..reference_callback = refPtr;
  return callbacks;
}

// Top-level instance binding callbacks (must be static for FFI)
ffi.Pointer<ffi.Void> _bindingCreate(
  ffi.Pointer<ffi.Void> p_token,
  ffi.Pointer<ffi.Void> p_instance,
) {
  return ffi.nullptr; // no custom binding data
}

void _bindingFree(
  ffi.Pointer<ffi.Void> p_token,
  ffi.Pointer<ffi.Void> p_instance,
  ffi.Pointer<ffi.Void> p_binding,
) {}

int _bindingReference(
  ffi.Pointer<ffi.Void> p_token,
  ffi.Pointer<ffi.Void> p_binding,
  int p_reference,
) {
  return 1; // allow
}
