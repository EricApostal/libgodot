// ignore_for_file: non_constant_identifier_names

import 'dart:async';
import 'dart:ffi' as ffi;
import 'dart:io';

import 'package:cross_file/cross_file.dart';
import 'package:ffi/ffi.dart' as pkg_ffi;
import 'package:godot_dart/godot_dart.dart';
import 'package:libgodot/core/render.dart';
import 'package:libgodot/core/native.dart';
import 'package:logging/logging.dart';
import 'package:uuid/uuid.dart';

ffi.Pointer<GDExtensionInstanceBindingCallbacks>? _bindingCallbacksPtr;
GDExtensionClassLibraryPtr? _capturedExtensionLibraryPtr;
GDExtensionInterfaceGetProcAddress? _capturedGetProcAddress;

void _extensionInitialize(ffi.Pointer<ffi.Void> userdata, int level) {}

void _extensionDeinitialize(ffi.Pointer<ffi.Void> userdata, int level) {}
// Pointer<NativeFunction<Void Function(Pointer<Void>, Int32)>>
final _extensionInitializePtr =
    ffi.Pointer.fromFunction<
      ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Int32)
    >(_extensionInitialize);

final _extensionDeinitializePtr =
    ffi.Pointer.fromFunction<
      ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Int32)
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

final InvokeCallbackFunction _syncExecutorPtr =
    ffi.Pointer.fromFunction<InvokeCallbackFunctionFunction>(_syncExecutor);
final InvokeCallbackFunction _asyncExecutorPtr =
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
  // storeGetProcAddress(getProcAddress);

  _capturedExtensionLibraryPtr = library;
  _capturedGetProcAddress = getProcAddress;
  final init = initPtr.ref;

  init.minimum_initialization_level = GDExtensionInitializationLevel.core.value;
  init.userdata = ffi.nullptr;
  init.initialize = _extensionInitializePtr;
  init.deinitialize = _extensionDeinitializePtr;
  return 1;
}

class LibGodotProcess {
  static Logger get logger => Logger("LibGodotProcess");

  static GodotInstance? _currentInstance;

  static Future<GodotInstance> start({
    required XFile resourcePack,
    required GDExtensionFFI interface,
  }) async {
    final logger = LibGodotProcess.logger;

    logger.info("Starting the LibGodot process");

    final ensuredResourcePack = await _getXFile(resourcePack);

    logger.info("Loaded the resource pack from file: ${resourcePack.path}");

    String renderingDriver = 'metal';
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

    logger.info("Creating the godot instance");

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

    // Initialize the embedded Godot Dart extension
    logger.info("Initializing embedded Godot Dart extension");
    if (_capturedGetProcAddress == null ||
        _capturedExtensionLibraryPtr == null) {
      logger.severe("Missing required extension initialization data");
      throw Exception("Extension initialization data not captured");
    }

    final embeddedInitSuccess = NativeBridge.initializeEmbedded(
      _capturedGetProcAddress!,
      _capturedExtensionLibraryPtr!,
    );

    if (!embeddedInitSuccess) {
      logger.severe("Failed to initialize embedded Godot Dart extension");
      throw Exception("Failed to initialize embedded Godot Dart extension");
    }

    GodotDart(
      ffiInterface,
      _capturedExtensionLibraryPtr!,
      _bindingCallbacksPtr!,
    );

    logger.info("Initializing godot_dart bindings");

    initVariantBindings(ffiInterface);

    logger.info("Initialized Variant Bindings");
    TypeInfo.initTypeMappings();

    logger.info("Initialized Type Mappings");

    // TODO: These are all kinda borked because of the init order
    // re-enable
    // there's also a string alloc thing I should go back in my
    // commit history to re-enable, because it failed becasue of the
    // @pragma resolution failing. I implemented it manually but once
    // we init we can just use it from the gde library
    GD.initBindings();
    // SignalAwaiter.bind();
    // CallbackAwaiter.bind();

    // Initialize the Dart runtime bindings
    logger.info("Initializing Dart runtime bindings");
    final runtimeInitSuccess = NativeBridge.initializeRuntime();

    if (!runtimeInitSuccess) {
      logger.warning(
        "Failed to initialize Dart runtime bindings - continuing without them",
      );
    } else {
      logger.info("Successfully initialized Dart runtime bindings");
    }

    final godotInstance = GodotInstance.withNonNullOwner(instance);
    _currentInstance = godotInstance;

    final layer = await LibGodotRenderer.createMetalLayer();
    print("Got metal layer: $layer");

    final caLayer = RenderingNativeSurfaceApple.create(layer!);
    print("Got native layer: $caLayer");

    logger.info("Sending native call to start godot instance");
    // We might want to do something else with that? Maybe return it?
    final status = godotInstance.start();

    logger.info("Godot instance started with status = $status");

    return godotInstance;
  }

  /// Shutdown the LibGodot process and cleanup resources
  static void shutdown() {
    final logger = LibGodotProcess.logger;

    logger.info("Shutting down LibGodot process");

    // Shutdown the Dart runtime bindings
    try {
      NativeBridge.shutdownRuntime();
      logger.info("Successfully shutdown Dart runtime bindings");
    } catch (e) {
      logger.warning("Error shutting down Dart runtime bindings: $e");
    }

    // Shutdown the embedded extension
    try {
      NativeBridge.shutdownEmbedded();
      logger.info("Successfully shutdown embedded Godot Dart extension");
    } catch (e) {
      logger.warning("Error shutting down embedded extension: $e");
    }

    _currentInstance = null;
    logger.info("LibGodot process shutdown complete");
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
