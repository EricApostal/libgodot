// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class JointLimitationCone3D extends JointLimitation3D {
  JointLimitationCone3D(super.nativePtr);

  /// Constructs a brand-new engine-owned JointLimitationCone3D instance
  /// (via classdb_construct_object3), not an existing one.
  factory JointLimitationCone3D.create() {
    return JointLimitationCone3D(resolveClassConstructor('JointLimitationCone3D'));
  }

  static final Pointer<Void> _mb_set_angle =
      resolveMethodBind('JointLimitationCone3D', 'set_angle', 373806689);

  void setAngle(double angle) {
    final arg0 = malloc<Double>()..value = angle;
    try {
      ptrcallVoid(_mb_set_angle, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_angle =
      resolveMethodBind('JointLimitationCone3D', 'get_angle', 1740695150);

  double getAngle() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_angle, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
