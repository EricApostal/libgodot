import 'dart:ffi' as ffi;
import 'package:ffi/ffi.dart' as pkg_ffi;

import 'generated_bindings.dart';
import 'libgodot.dart';

/// Represents a created Godot instance (opaque native object handle).
class GodotInstance {
  GodotInstance._(this._handle);

  final GDExtensionObjectPtr _handle;
  bool _disposed = false;

  /// Returns whether the underlying native instance pointer is non-null.
  bool get isValid => _handle != ffi.nullptr && !_disposed;

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
    init.initialize = ffi.nullptr; // No-op initialize.
    init.deinitialize = ffi.nullptr; // No-op deinitialize.
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
  final args = arguments.isEmpty ? <String>['dart_embed'] : List.of(arguments);
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
