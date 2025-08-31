import 'dart:ffi' as ffi;
import 'dart:ffi';
import 'package:ffi/ffi.dart' as pkg_ffi;

import 'generated_bindings.dart';
import 'libgodot.dart';
import 'package:flutter/services.dart';

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
  final args = <String>['/usr/bin/libgodot_embed'] + arguments;
  final argc = args.length;

  // argv allocations
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
  if (libgodotNative.libgodot_display_server_embedded_is_available() == 0) {
    print(
      "[godot][dart] DisplayServerEmbedded unavailable immediately after instance creation (expected prior to binding). Will rely on Swift polling.",
    );
  }

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

/// Registers a subset of native function symbol addresses with the host (Swift)
/// plugin so it can invoke them directly. No-ops on non-macOS.
Future<void> _maybeRegisterSymbolsWithHost() async {
  const channel = MethodChannel('libgodot');

  final dylib = libgodotNative;
  dylib.hashCode;
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
    final ptr = processLib.lookup<ffi.NativeFunction<ffi.Void Function()>>(
      name,
    );
    symbols[name] = ptr.address;
  }
  if (symbols.isNotEmpty) {
    await channel.invokeMethod('registerGodotSymbols', symbols);
  }
}
