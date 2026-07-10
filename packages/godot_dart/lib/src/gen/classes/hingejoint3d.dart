// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class HingeJoint3D extends Joint3D {
  HingeJoint3D(super.nativePtr);

  static final Pointer<Void> _mb_set_param =
      resolveMethodBind('HingeJoint3D', 'set_param', 3082977519);

  void setParam(int param, double value) {
    final arg0 = malloc<Int64>()..value = param;
    final arg1 = malloc<Double>()..value = value;
    try {
      ptrcallVoid(_mb_set_param, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_param =
      resolveMethodBind('HingeJoint3D', 'get_param', 4066002676);

  double getParam(int param) {
    final arg0 = malloc<Int64>()..value = param;
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_param, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_flag =
      resolveMethodBind('HingeJoint3D', 'set_flag', 1083494620);

  void setFlag(int flag, bool enabled) {
    final arg0 = malloc<Int64>()..value = flag;
    final arg1 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_flag, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_flag =
      resolveMethodBind('HingeJoint3D', 'get_flag', 2841369610);

  bool getFlag(int flag) {
    final arg0 = malloc<Int64>()..value = flag;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_flag, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

}
