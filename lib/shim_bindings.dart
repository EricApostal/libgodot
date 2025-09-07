import 'dart:ffi';

// Manually written temporary bindings for shim. Later you can replace via ffigen.

typedef _ShimInitNative =
    Int32 Function(Pointer<Void>, Pointer<Void>, Pointer<Void>);
typedef _ShimInitDart =
    int Function(Pointer<Void>, Pointer<Void>, Pointer<Void>);

typedef _ShimEnqueueNative =
    Void Function(Pointer<Void>, Pointer<Void>, Pointer<Void>);
typedef _ShimEnqueueDart =
    void Function(Pointer<Void>, Pointer<Void>, Pointer<Void>);

typedef _ShimPollNative =
    Int32 Function(
      Pointer<NativeFunction<Void Function(Pointer<Void>)>>,
      Pointer<Pointer<Void>>,
    );

// Actual simpler C signatures we defined:
// int godot_dart_shim_init(GDExtensionInterfaceGetProcAddress, GDExtensionClassLibraryPtr, GDExtensionInitialization*);
// void godot_dart_shim_enqueue(InvokeCallback, CallbackData, ExecutorData);
// int godot_dart_shim_poll(InvokeCallback* out_cb, CallbackData* out_data);
// ... but we will model them with opaque Pointer<Void> for now.

class ShimBindings {
  late final DynamicLibrary _lib;
  ShimBindings(this._lib) {
    _init = _lib
        .lookupFunction<
          Int32 Function(Pointer<Void>, Pointer<Void>, Pointer<Void>),
          int Function(Pointer<Void>, Pointer<Void>, Pointer<Void>)
        >('godot_dart_shim_init');
    _enqueue = _lib
        .lookupFunction<
          Void Function(Pointer<Void>, Pointer<Void>, Pointer<Void>),
          void Function(Pointer<Void>, Pointer<Void>, Pointer<Void>)
        >('godot_dart_shim_enqueue');
    _poll = _lib
        .lookupFunction<
          Int32 Function(Pointer<Pointer<Void>>, Pointer<Pointer<Void>>),
          int Function(Pointer<Pointer<Void>>, Pointer<Pointer<Void>>)
        >('godot_dart_shim_poll');
    _getProc = _lib
        .lookupFunction<Pointer<Void> Function(), Pointer<Void> Function()>(
          'godot_dart_shim_get_proc',
        );
    _getLib = _lib
        .lookupFunction<Pointer<Void> Function(), Pointer<Void> Function()>(
          'godot_dart_shim_get_lib',
        );
  }

  late final int Function(Pointer<Void>, Pointer<Void>, Pointer<Void>) _init;
  late final void Function(Pointer<Void>, Pointer<Void>, Pointer<Void>)
  _enqueue;
  late final int Function(Pointer<Pointer<Void>>, Pointer<Pointer<Void>>) _poll;
  late final Pointer<Void> Function() _getProc;
  late final Pointer<Void> Function() _getLib;

  int poll(Pointer<Pointer<Void>> outCb, Pointer<Pointer<Void>> outData) =>
      _poll(outCb, outData);
  Pointer<Void> getProc() => _getProc();
  Pointer<Void> getLib() => _getLib();
}
