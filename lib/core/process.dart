// ignore_for_file: non_constant_identifier_names

import 'dart:async';
import 'dart:ffi' as ffi;
import 'dart:ffi';
import 'dart:io';
import 'dart:ui';

import 'package:cross_file/cross_file.dart';
import 'package:ffi/ffi.dart' as pkg_ffi;
import 'package:ffi/ffi.dart';
import 'package:libgodot/core/render.dart';
import 'package:libgodot/godot/core/gdextension.dart';
import 'package:libgodot/godot/core/gdextension_ffi_bindings.dart';
import 'package:libgodot/godot/core/type_info.dart';
import 'package:libgodot/godot/generated/builtins.dart';
import 'package:libgodot/godot/generated/engine_classes.dart' hide Logger, GDExtensionInitializationLevel;
import 'package:libgodot/godot/generated/utility_functions.dart';
import 'package:libgodot/godot/variant/variant.dart';
import 'package:logging/logging.dart';
import 'package:uuid/uuid.dart';

// ignore: constant_identifier_names
const GDE_VARIANT_TYPE_STRING_NAME = 2;
const GDE_VARIANT_TYPE_STRING = 4;

const GDEXTENSION_STRING_NAME_SIZE = 8;
const GDEXTENSION_STRING_SIZE = 8;
const GDEXTENSION_VARIANT_SIZE = 24;

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
  try {
    print("binding create");
    print(p_token);
    print(p_instance);
    print(gde.dartBindings);

    final classNamePtr = calloc.allocate<Uint8>(GDEXTENSION_STRING_NAME_SIZE);
    final GDExtensionUninitializedStringNamePtr uninitializedStringName =
        classNamePtr.cast<ffi.Void>();

    final getClassName = godotResolve('object_get_class_name')
        .cast<NativeFunction<GDExtensionInterfaceObjectGetClassNameFunction>>()
        .asFunction<DartGDExtensionInterfaceObjectGetClassNameFunction>();
    final success = getClassName(p_instance, p_token, uninitializedStringName);

    if (success == 1) {
      // courtesy of claude sonnet 4
      // no idea why this has to be copied manually

      // maybe I just make a helper
      // TODO: I think I can just convert to a string name from a pointer
      final stringName = StringName();
      final srcPtr = classNamePtr.cast<ffi.Uint8>();
      final destPtr = stringName.nativePtr.cast<ffi.Uint8>();
      for (int i = 0; i < GDEXTENSION_STRING_NAME_SIZE; i++) {
        destPtr[i] = srcPtr[i];
      }

      final gdString = GDString.fromStringName(stringName);
      final className = gdString.toDartString();

      print("Class name: $className");

      // final dartObject = _createDartWrapperForClass(className, p_instance);

      // if (dartObject != null) {
      //   // Register the Dart wrapper with the binding system
      //   gde.dartBindings.registerDartWrapper(dartObject, p_instance);
      //   print("Registered wrapper for $className");

      //   // Return a persistent handle to the Dart object
      //   return gde.dartBindings.toPersistentHandle(dartObject);
      // } else {
      //   print("Could not create Dart wrapper for class: $className");
      // }
    } else {
      print("Failed to get class name, success = $success");
    }

    calloc.free(classNamePtr);
  } catch (e, st) {
    print(e);
    print(st);
  }

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
  print("running sync executor");
  final fn = pCallback.asFunction<DartInvokeCallbackFunction>();
  fn(pCallbackData);
}

void _asyncExecutor(
  InvokeCallback pCallback,
  CallbackData pCallbackData,
  ExecutorData pExecutorData,
) {
  print("running async executor");
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
  static Logger get logger => Logger("LibGodotProcess");

  static Future<GodotInstance> create({
    required XFile resourcePack,
    required GDExtensionFFI interface,
  }) async {
    final logger = LibGodotProcess.logger;

    logger.info("Starting the LibGodot process");

    final ensuredResourcePack = await _getXFile(resourcePack);

    logger.info("Loaded the resource pack from file: ${resourcePack.path}");

    String renderingDriver = 'metal';
    String renderingMethod = 'mobile';

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
      '--verbose'
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
      // ffi.nullptr,
      // ffi.nullptr,
      // ffi.nullptr,
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

    logger.info("Initializing godot_dart bindings");

    initVariantBindings(ffiInterface);
    TypeInfo.initTypeMappings();

    GD.initBindings();
    // SignalAwaiter.bind();
    // CallbackAwaiter.bind();


    final godotInstance = GodotInstance.withNonNullOwner(instance);
    return godotInstance;
  }

  static Future<void> start(GodotInstance godotInstance) async {
    logger.info("Sending native call to start godot instance");
    // We might want to do something else with that? Maybe return it?

    // final layer = await LibGodotRenderer.createMetalLayer();
    // print("Got metal layer: $layer");

    // final caLayer = RenderingNativeSurfaceApple.create(layer!);
    
    // print("Got native layer: $caLayer, ${caLayer!.nativePtr}");
    // DisplayServerEmbedded.setNativeSurface(caLayer);

    godotInstance.start();


    // print(DisplayServer.singleton.getName());

    logger.info("Godot instance started");
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
