// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class SliderJoint3D extends Joint3D {
  SliderJoint3D(super.nativePtr);

  /// Constructs a brand-new engine-owned SliderJoint3D instance
  /// (via classdb_construct_object3), not an existing one.
  factory SliderJoint3D.create() {
    return SliderJoint3D(resolveClassConstructor('SliderJoint3D'));
  }

  static final Pointer<Void> _mb_set_param =
      resolveMethodBind('SliderJoint3D', 'set_param', 918243683);

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
      resolveMethodBind('SliderJoint3D', 'get_param', 959925627);

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

}
