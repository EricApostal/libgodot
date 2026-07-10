// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class InputEventJoypadMotion extends InputEvent {
  InputEventJoypadMotion(super.nativePtr);

  /// Constructs a brand-new engine-owned InputEventJoypadMotion instance
  /// (via classdb_construct_object3), not an existing one.
  factory InputEventJoypadMotion.create() {
    return InputEventJoypadMotion(resolveClassConstructor('InputEventJoypadMotion'));
  }

  static final Pointer<Void> _mb_set_axis =
      resolveMethodBind('InputEventJoypadMotion', 'set_axis', 1332685170);

  void setAxis(int axis) {
    final arg0 = malloc<Int64>()..value = axis;
    try {
      ptrcallVoid(_mb_set_axis, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_axis =
      resolveMethodBind('InputEventJoypadMotion', 'get_axis', 4019121683);

  int getAxis() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_axis, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_axis_value =
      resolveMethodBind('InputEventJoypadMotion', 'set_axis_value', 373806689);

  void setAxisValue(double axisValue) {
    final arg0 = malloc<Double>()..value = axisValue;
    try {
      ptrcallVoid(_mb_set_axis_value, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_axis_value =
      resolveMethodBind('InputEventJoypadMotion', 'get_axis_value', 1740695150);

  double getAxisValue() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_axis_value, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
