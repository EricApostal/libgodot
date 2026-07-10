// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class InputEventAction extends InputEvent {
  InputEventAction(super.nativePtr);

  /// Constructs a brand-new engine-owned InputEventAction instance
  /// (via classdb_construct_object3), not an existing one.
  factory InputEventAction.create() {
    return InputEventAction(resolveClassConstructor('InputEventAction'));
  }

  static final Pointer<Void> _mb_set_action =
      resolveMethodBind('InputEventAction', 'set_action', 3304788590);

  void setAction(String action) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), action);
    try {
      ptrcallVoid(_mb_set_action, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_action =
      resolveMethodBind('InputEventAction', 'get_action', 2002593661);

  String getAction() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_action, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readStringName(ret.cast());
        BuiltinMarshal.destroyStringName(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_pressed =
      resolveMethodBind('InputEventAction', 'set_pressed', 2586408642);

  void setPressed(bool pressed) {
    final arg0 = malloc<Uint8>()..value = pressed ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_pressed, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_strength =
      resolveMethodBind('InputEventAction', 'set_strength', 373806689);

  void setStrength(double strength) {
    final arg0 = malloc<Double>()..value = strength;
    try {
      ptrcallVoid(_mb_set_strength, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_strength =
      resolveMethodBind('InputEventAction', 'get_strength', 1740695150);

  double getStrength() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_strength, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_event_index =
      resolveMethodBind('InputEventAction', 'set_event_index', 1286410249);

  void setEventIndex(int index) {
    final arg0 = malloc<Int64>()..value = index;
    try {
      ptrcallVoid(_mb_set_event_index, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_event_index =
      resolveMethodBind('InputEventAction', 'get_event_index', 3905245786);

  int getEventIndex() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_event_index, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
