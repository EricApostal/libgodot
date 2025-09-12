// ignore_for_file: non_constant_identifier_names

import 'dart:async';
import 'dart:ffi' as ffi;
import 'dart:io';

import 'package:cross_file/cross_file.dart';
import 'package:ffi/ffi.dart' as pkg_ffi;
import 'package:libgodot/godot/core/gdextension.dart';
import 'package:libgodot/godot/core/gdextension_ffi_bindings.dart';
import 'package:libgodot/godot/core/type_info.dart';
import 'package:libgodot/godot/extensions/async_extensions.dart';
import 'package:libgodot/godot/generated/engine_classes.dart'
    hide GDExtensionInitializationLevel;
import 'package:libgodot/godot/generated/utility_functions.dart';
import 'package:libgodot/godot/variant/variant.dart';
import 'package:uuid/uuid.dart';

ffi.Pointer<GDExtensionInstanceBindingCallbacks>? _bindingCallbacksPtr;
GDExtensionClassLibraryPtr? _capturedExtensionLibraryPtr;

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

ffi.Pointer<ffi.Void> _bindingCreate(
  ffi.Pointer<ffi.Void> p_token,
  ffi.Pointer<ffi.Void> p_instance,
) {
  return ffi.nullptr;
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

int _gdExtensionInit(
  GDExtensionInterfaceGetProcAddress getProcAddress,
  GDExtensionClassLibraryPtr library,
  ffi.Pointer<GDExtensionInitialization> initPtr,
) {
  storeGetProcAddress(getProcAddress);

  _capturedExtensionLibraryPtr = library;
  final init = initPtr.ref;
  init.minimum_initialization_levelAsInt =
      GDExtensionInitializationLevel.GDEXTENSION_INITIALIZATION_CORE.value;
  init.userdata = ffi.nullptr;
  init.initialize = _extensionInitializePtr;
  init.deinitialize = _extensionDeinitializePtr;
  return 1;
}

class LibGodotProcess {
  static Future<GodotInstance> start({
    required XFile resourcePack,
    required GDExtensionFFI interface,
  }) async {
    final ensuredResourcePack = await _getXFile(resourcePack);

    String renderingDriver = 'vulkan';
    String renderingMethod = 'mobile';

    List<String> extraArgs = const [];

    List<String> args = [
      '/usr/bin/libgodot_embed',
      '--main-pack',
      ensuredResourcePack.path,
      '--rendering-driver',
      renderingDriver,
      '--rendering-method',
      renderingMethod,
      '--display-driver',
      'macos',
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

    final instance = interface.libgodot_create_godot_instance(
      argc,
      argv,
      _initCallbackPtr,
      _asyncExecutorPtr,
      ffi.nullptr,
      _syncExecutorPtr,
      ffi.nullptr,
    );

    for (final p in allocatedStrings) {
      pkg_ffi.malloc.free(p);
    }
    pkg_ffi.calloc.free(argv);

    _bindingCallbacksPtr ??= _createBindingCallbacks();

    final godotDart = ffi.DynamicLibrary.process();
    final ffiInterface = GDExtensionFFI(godotDart);

    GodotDart(
      ffiInterface,
      _capturedExtensionLibraryPtr!,
      _bindingCallbacksPtr!,
    );

    initVariantBindings(ffiInterface);
    TypeInfo.initTypeMappings();

    GD.initBindings();
    SignalAwaiter.bind();
    CallbackAwaiter.bind();

    final godotInstance = GodotInstance.withNonNullOwner(instance);
    godotInstance.start();

    return godotInstance;
  }

  static Future<XFile> _getXFile(XFile resourcePack) async {
    final rawPath = resourcePack.path;

    if (rawPath != "") {
      return resourcePack;
    }

    final uuid = Uuid();
    final tempPath = "${Directory.systemTemp.path}/godot_resource_${uuid.v4()}";
    await resourcePack.saveTo(tempPath);
    return XFile(tempPath);
  }
}
