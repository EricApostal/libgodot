import 'dart:ffi' as ffi;
import 'package:ffi/ffi.dart' as pkg_ffi;

import 'generated_bindings.dart';
import 'libgodot.dart';
import 'gdextension_loader.dart';
import 'dart:io' show Directory;

/// Represents a created Godot instance (opaque native object handle).
class GodotInstance {
  GodotInstance._(this._handle);

  final GDExtensionObjectPtr _handle;
  bool _disposed = false;

  /// Returns whether the underlying native instance pointer is non-null.
  bool get isValid => _handle != ffi.nullptr && !_disposed;

  /// Raw native pointer address (0 if disposed/invalid).
  int get address => isValid ? _handle.address : 0;

  /// Destroy the underlying Godot instance. Safe to call multiple times.
  void dispose() {
    if (_disposed) return;
    if (_handle != ffi.nullptr) {
      libgodotNative.libgodot_destroy_godot_instance(_handle);
    }
    _disposed = true;
  }
}

// ----- Callback glue (initialization + executors) -----

// Initialization callback invoked by libgodot during instance creation.
void _extensionInitialize(ffi.Pointer<ffi.Void> userdata, int level) {
  // Placeholder: could register classes or resources based on level.
}

void _extensionDeinitialize(ffi.Pointer<ffi.Void> userdata, int level) {
  // Placeholder cleanup.
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
  GDExtensionInterfaceGetProcAddress getProcAddress,
  GDExtensionClassLibraryPtr library,
  ffi.Pointer<GDExtensionInitialization> initPtr,
) {
  // Provide the minimal required initialization structure.
  try {
    final init = initPtr.ref;
    init.minimum_initialization_levelAsInt =
        GDExtensionInitializationLevel.GDEXTENSION_INITIALIZATION_CORE.value;
    init.userdata = ffi.nullptr; // No userdata for now.
    // Provide no-op initialize/deinitialize functions (required to be non-null in practice).
    init.initialize = _extensionInitializePtr;
    init.deinitialize = _extensionDeinitializePtr;
    return 1; // true (success)
  } catch (_) {
    return 0; // failure
  }
}

// Executor functions: sync just invokes immediately; async schedules a microtask.
void _syncExecutor(
  InvokeCallback pCallback,
  CallbackData pCallbackData,
  ExecutorData pExecutorData,
) {
  final call = pCallback.asFunction<DartInvokeCallbackFunction>();
  call(pCallbackData);
}

void _asyncExecutor(
  InvokeCallback pCallback,
  CallbackData pCallbackData,
  ExecutorData pExecutorData,
) {
  final call = pCallback.asFunction<DartInvokeCallbackFunction>();
  // Schedule asynchronously in the Dart event loop.
  Future.microtask(() => call(pCallbackData));
}

// Keep the function pointers alive (static finals).
final GDExtensionInitializationFunction _initCallbackPtr =
    ffi.Pointer.fromFunction<GDExtensionInitializationFunctionFunction>(
      _gdExtensionInit,
      0,
    );
final InvokeCallbackFunction$1 _syncExecutorPtr =
    ffi.Pointer.fromFunction<InvokeCallbackFunctionFunction>(_syncExecutor);
final InvokeCallbackFunction$1 _asyncExecutorPtr =
    ffi.Pointer.fromFunction<InvokeCallbackFunctionFunction>(_asyncExecutor);

/// High-level convenience for creating a Godot instance.
///
/// [arguments] correspond to argv (without implicit null terminator). If empty,
/// a placeholder program name is inserted. Memory used for the argument array
/// is freed immediately after the native creation call returns.
GodotInstance createGodotInstance({List<String> arguments = const []}) {
  // Ensure argv[0] is a pseudo executable path; Godot expects it present.
  final args = <String>['/usr/bin/libgodot_embed'] + arguments;
  final argc = args.length;

  // Allocate C array for argv.
  final argv = pkg_ffi.calloc<ffi.Pointer<ffi.Char>>(argc);
  final allocatedStrings = <ffi.Pointer<pkg_ffi.Utf8>>[];
  for (var i = 0; i < argc; i++) {
    final s = args[i].toNativeUtf8();
    allocatedStrings.add(s);
    argv[i] = s.cast();
  }

  final handle = libgodotNative.libgodot_create_godot_instance(
    argc,
    argv,
    _initCallbackPtr,
    _asyncExecutorPtr,
    ffi.nullptr, // async executor userdata
    _syncExecutorPtr,
    ffi.nullptr, // sync executor userdata
  );

  // Free argv contents after creation attempt.
  for (final p in allocatedStrings) {
    pkg_ffi.malloc.free(p);
  }
  pkg_ffi.calloc.free(argv);

  if (handle == ffi.nullptr) {
    throw StateError('Failed to create Godot instance (null handle returned)');
  }

  return GodotInstance._(handle);
}

/// Convenience builder mirroring Swift GodotApp start logic.
///
/// Provides typical arguments:
///  --main-pack <pckPath>
///  --rendering-driver <driver>
///  --rendering-method <method>
///  --display-driver embedded
/// Additional [extraArgs] appended after the standard ones.
GodotInstance createGodotInstanceFromPack({
  required String pckPath,
  String renderingDriver = 'metal',
  String renderingMethod = 'mobile',
  List<String> extraArgs = const [],
}) {
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
  return createGodotInstance(arguments: args);
}

/// Container returned when creating an instance while also staging one or more
/// GDExtension asset descriptors.
class GodotInstanceWithExtensions {
  GodotInstanceWithExtensions(this.instance, this.extensions, this.stagingRoot);
  final GodotInstance instance;
  final List<LoadedGDExtension> extensions;

  /// Common root directory used to stage the extension descriptors & binaries.
  final String stagingRoot;
}

/// Creates a Godot instance from a `.pck` while staging & exposing one or more
/// GDExtensions that are packaged as Flutter assets.
///
/// Each entry in [gdextensionDescriptorAssetPaths] must be the asset path to a
/// `.gdextension` file (as declared under `assets:` in your pubspec). Their
/// referenced platform library files are also copied. All staged files share a
/// single temporary directory so we can append a single `--path` argument to
/// help Godot locate them at startup.
///
/// Returns a [GodotInstanceWithExtensions] so you can inspect where files were
/// written if needed. The core [GodotInstance] is in `.instance`.
Future<GodotInstanceWithExtensions> createGodotInstanceFromPackWithExtensions({
  required String pckPath,
  required List<String> gdextensionDescriptorAssetPaths,
  String renderingDriver = 'metal',
  String renderingMethod = 'mobile',
  List<String> extraArgs = const [],
  String buildType = 'debug',
}) async {
  if (gdextensionDescriptorAssetPaths.isEmpty) {
    throw ArgumentError('gdextensionDescriptorAssetPaths must not be empty');
  }

  // Stage all extensions into one temp directory.
  final stagingRootDir = await Directory.systemTemp.createTemp('gdext_stage_');
  final loaded = <LoadedGDExtension>[];
  for (final assetPath in gdextensionDescriptorAssetPaths) {
    final ext = await loadGDExtensionFromAssets(
      descriptorAssetPath: assetPath,
      buildType: buildType,
      targetRoot: stagingRootDir,
      overwriteIfExists: true,
    );
    loaded.add(ext);
  }

  // Build args including a path override pointing at the staging root so Godot
  // can discover the descriptors. (If this proves insufficient in practice,
  // users may need to mirror project settings or register extensions manually.)
  final args = <String>[
    '--path',
    stagingRootDir.path,
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

  final instance = createGodotInstance(arguments: args);
  return GodotInstanceWithExtensions(instance, loaded, stagingRootDir.path);
}
