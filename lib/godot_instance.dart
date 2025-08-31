import 'dart:ffi' as ffi;
import 'dart:ffi'; // for DynamicLibrary.process()
import 'package:ffi/ffi.dart' as pkg_ffi;

import 'generated_bindings.dart';
import 'libgodot.dart';
import 'gdextension_loader.dart';
import 'dart:io' show Directory;
import 'package:flutter/services.dart';

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
    // Request initialization up through the SCENE level so that DisplayServer and
    // rendering servers are fully initialized for the embedded driver.
    // CORE (0) was insufficient (DisplayServerEmbedded stayed unavailable).
    init.minimum_initialization_levelAsInt =
        GDExtensionInitializationLevel.GDEXTENSION_INITIALIZATION_SCENE.value;
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

  print("IS AVAIL?");
  print(libgodotNative.libgodot_display_server_embedded_is_available());
  // Extra diagnostic: if unavailable, hint to logs.
  if (libgodotNative.libgodot_display_server_embedded_is_available() == 0) {
    print(
      "[godot][dart] DisplayServerEmbedded unavailable immediately after instance creation (expected prior to binding). Will rely on Swift polling.",
    );
  }

  // Provide Swift side with raw addresses of critical symbols so it can
  // directly call them even if its own dlopen()/dlsym attempts failed.
  _maybeRegisterSymbolsWithHost();

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

/// Registers a subset of native function symbol addresses with the host (Swift)
/// plugin so it can invoke them directly. No-ops on non-macOS.
Future<void> _maybeRegisterSymbolsWithHost() async {
  // Only implemented for macOS currently.
  // Intentionally do not guard with Platform.isMacOS to avoid import cycles.
  const channel = MethodChannel('libgodot');
  try {
    final dylib = libgodotNative; // ensure loaded
    // Touch a field on dylib to avoid unused warning (no-op)
    // ignore: unnecessary_statements
    dylib.hashCode;
    // Use the private _lookup closure via the generated bindings by reflection is not possible.
    // Instead, re-open symbols via DynamicLibrary.process (already globally loaded) to fetch addresses.
    final processLib = DynamicLibrary.process();
    Map<String, int> symbols = {};
    for (final name in [
      'libgodot_display_server_embedded_is_available',
      'libgodot_display_server_embedded_process_events',
      'libgodot_display_server_embedded_resize_window',
      'libgodot_display_server_embedded_get_window_size',
      'libgodot_display_server_embedded_swap_buffers',
      'libgodot_display_server_embedded_set_content_scale',
      'libgodot_display_server_embedded_key',
      'libgodot_display_server_embedded_mouse_set_mode',
      'libgodot_display_server_embedded_window_set_title',
      'libgodot_display_server_embedded_gl_window_make_current',
      'libgodot_display_server_embedded_set_native_surface',
      'libgodot_display_server_embedded_create_native_window',
      'libgodot_display_server_embedded_delete_window',
      'libgodot_display_server_embedded_register_embedded_driver',
      'libgodot_rendering_native_surface_apple_create',
      'libgodot_rendering_native_surface_apple_get_layer',
      'libgodot_rendering_native_surface_apple_destroy',
    ]) {
      try {
        final ptr = processLib.lookup<ffi.NativeFunction<ffi.Void Function()>>(
          name,
        );
        symbols[name] = ptr.address;
      } catch (_) {
        // ignore missing symbol
      }
    }
    if (symbols.isNotEmpty) {
      await channel.invokeMethod('registerGodotSymbols', symbols);
    }
  } catch (e) {
    // Silent failure; symbol overriding is an optimization to fix availability.
  }
}
