// The single GDExtensionInitializationFunction entry point for a Dart-authored
// GDExtension, and the native plumbing to hand its address to the native
// libgodot plugin (which threads it into libgodot_create_godot_instance in
// place of a trivial no-op init function).
//
// Threading discipline (see also GodotClassRegistry, InstanceRegistry):
// everything below — the init function itself, `initialize`, and every
// create/free/call/ptrcall/get_virtual trampoline generated code registers —
// is a plain synchronous top-level function. There is no async/Future/
// isolate messaging anywhere in this path: the engine invokes these directly,
// synchronously, from whatever native thread is driving it (the platform
// thread that called libgodot_create_godot_instance / pumps iteration), and
// `Pointer.fromFunction`-created static callbacks are specifically designed
// to be entered that way (unlike `NativeCallable.isolateLocal`). All
// classdb_register_extension_class* calls happen inline inside `initialize`
// before it returns — nothing is deferred to a later event-loop turn or an
// async queue, which is exactly the pattern that caused cross-thread
// segfaults in earlier, abandoned attempts at this.
library;

import 'dart:ffi';

import 'gdextension_types.dart';
import 'godot_class_registry.dart';
import 'proc_table.dart';

abstract final class GodotDartEntryPoint {
  static void _initialize(Pointer<Void> userdata, int level) {
    if (level == GDExtensionInitializationLevel.scene) {
      GodotClassRegistry.registerAll();
    }
  }

  static void _deinitialize(Pointer<Void> userdata, int level) {}

  static int _initFunction(
    Pointer<NativeFunction<GDExtensionInterfaceGetProcAddressNative>> getProcAddress,
    Pointer<Void> library,
    Pointer<GDExtensionInitialization> rInitialization,
  ) {
    GodotApi.initialize(getProcAddress, library);
    rInitialization.ref
      ..minimumInitializationLevel = GDExtensionInitializationLevel.scene
      ..userdata = nullptr
      ..initialize = Pointer.fromFunction<GDExtensionInitializeCallbackNative>(_initialize).cast()
      ..deinitialize = Pointer.fromFunction<GDExtensionDeinitializeCallbackNative>(_deinitialize).cast();
    return 1;
  }

  static Pointer<NativeFunction<GDExtensionInitializationFunctionNative>>? _cachedPointer;

  /// A native function pointer suitable for passing straight into
  /// `libgodot_create_godot_instance`'s `p_init_func` argument (via its
  /// `.address`, threaded through the platform channel as an int — see
  /// `Libgodot.createInstance`'s `initFunctionAddress` parameter).
  static Pointer<NativeFunction<GDExtensionInitializationFunctionNative>> get nativeFunctionPointer {
    return _cachedPointer ??= Pointer.fromFunction<GDExtensionInitializationFunctionNative>(_initFunction, 0);
  }
}
