import 'dart:ffi';
import 'dart:ffi' as ffi;
import 'dart:async';
import 'dart:io' show Platform, File, Directory, Process;
import 'package:flutter/services.dart';
import 'package:godot_dart/godot_dart.dart';
import 'package:ffi/ffi.dart' as pkg_ffi;
import 'package:path/path.dart' as path;

import 'generated_bindings.dart' as native;
import 'libgodot_platform_interface.dart';

/// Public API surface for the libgodot Dart plugin.
class Libgodot {
  Future<String?> getPlatformVersion() =>
      LibgodotPlatform.instance.getPlatformVersion();
}

native.NativeLibrary? _libgodotNative;

native.NativeLibrary get libgodotNative {
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

  String pckPath;
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

  final args = <String>[
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

  print("getting handle");
  final handle = _libgodotNative!.libgodot_create_godot_instance(
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

  if (handle == ffi.nullptr) {
    throw StateError('Failed to create Godot instance (null handle)');
  }

  // Wrap native handle in generated binding object so higher-level API can use it.
  _godotInstance = GodotInstance.withNonNullOwner(handle);

  // (Optional) Probe availability of embedded display server.
  final available = _libgodotNative!
      .libgodot_display_server_embedded_is_available();
  if (available == 0) {
    // Not throwing yet; availability may change after further initialization.
  }
}

/// Load the libgodot dylib by extracting it from Flutter assets.
Future<native.NativeLibrary> _loadLibgodotFromAssets() async {
  final tempDir = Directory.systemTemp;
  final dylibName = 'libgodot.macos.template_debug.dev.arm64.dylib';
  final extractedFile = File(path.join(tempDir.path, 'libgodot', dylibName));

  // Create directory if it doesn't exist
  await extractedFile.parent.create(recursive: true);

  // Check if we already have the dylib extracted and it's newer than our app
  final assetKey = 'assets/$dylibName';
  bool shouldExtract = true;

  if (await extractedFile.exists()) {
    shouldExtract = true;
  }

  if (shouldExtract) {
    try {
      final assetData = await rootBundle.load(assetKey);
      final bytes = assetData.buffer.asUint8List();

      await extractedFile.writeAsBytes(bytes);

      // Make it executable (important!)
      final result = await Process.run('chmod', ['+x', extractedFile.path]);
      if (result.exitCode != 0) {
        throw StateError('Failed to make dylib executable: ${result.stderr}');
      }
    } catch (e) {
      throw StateError(
        'Failed to extract libgodot dylib from assets: $e. '
        'Make sure $assetKey is listed in pubspec.yaml assets.',
      );
    }
  }

  try {
    final dylib = DynamicLibrary.open(extractedFile.path);
    return native.NativeLibrary(dylib);
  } catch (e) {
    throw StateError(
      'Failed to load extracted libgodot dylib from ${extractedFile.path}: $e',
    );
  }
}

// ---------------- Internal embedding helpers (modeled after Swift) ----------------

GodotInstance? _godotInstance;
GodotInstance? get godotInstance => _godotInstance;

// Extension (lifecycle) callbacks Godot will invoke at levels.
void _extensionInitialize(ffi.Pointer<ffi.Void> userdata, int level) {
  // Placeholder: register types or resources if needed.
}

void _extensionDeinitialize(ffi.Pointer<ffi.Void> userdata, int level) {
  // Placeholder cleanup logic.
}

final _extensionInitializePtr =
    ffi.Pointer.fromFunction<
      ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.UnsignedInt)
    >(_extensionInitialize);
final _extensionDeinitializePtr =
    ffi.Pointer.fromFunction<
      ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.UnsignedInt)
    >(_extensionDeinitialize);

int _gdExtensionInit(
  native.GDExtensionInterfaceGetProcAddress getProcAddress,
  native.GDExtensionClassLibraryPtr library,
  ffi.Pointer<native.GDExtensionInitialization> initPtr,
) {
  final init = initPtr.ref;
  // Match Swift using CORE level; adjust to SCENE if rendering services required earlier.
  init.minimum_initialization_levelAsInt = native
      .GDExtensionInitializationLevel
      .GDEXTENSION_INITIALIZATION_CORE
      .value;
  init.userdata = ffi.nullptr;
  init.initialize = _extensionInitializePtr;
  init.deinitialize = _extensionDeinitializePtr;
  return 1; // success
}

final native.GDExtensionInitializationFunction _initCallbackPtr =
    ffi.Pointer.fromFunction<native.GDExtensionInitializationFunctionFunction>(
      _gdExtensionInit,
      0,
    );

void _syncExecutor(
  native.InvokeCallback pCallback,
  native.CallbackData pCallbackData,
  native.ExecutorData pExecutorData,
) {
  final fn = pCallback.asFunction<native.DartInvokeCallbackFunction>();
  fn(pCallbackData);
}

void _asyncExecutor(
  native.InvokeCallback pCallback,
  native.CallbackData pCallbackData,
  native.ExecutorData pExecutorData,
) {
  final fn = pCallback.asFunction<native.DartInvokeCallbackFunction>();
  scheduleMicrotask(() => fn(pCallbackData));
}

final native.InvokeCallbackFunction$1 _syncExecutorPtr = ffi
    .Pointer.fromFunction<native.InvokeCallbackFunctionFunction>(_syncExecutor);
final native.InvokeCallbackFunction$1 _asyncExecutorPtr =
    ffi.Pointer.fromFunction<native.InvokeCallbackFunctionFunction>(
      _asyncExecutor,
    );
