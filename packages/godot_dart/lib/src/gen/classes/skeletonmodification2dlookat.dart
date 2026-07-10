// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class SkeletonModification2DLookAt extends SkeletonModification2D {
  SkeletonModification2DLookAt(super.nativePtr);

  // Skipped set_bone2d_node(): an argument type is unsupported.
  // Skipped get_bone2d_node(): unsupported return type "NodePath".
  static final Pointer<Void> _mb_set_bone_index =
      resolveMethodBind('SkeletonModification2DLookAt', 'set_bone_index', 1286410249);

  void setBoneIndex(int boneIdx) {
    final arg0 = malloc<Int64>()..value = boneIdx;
    try {
      ptrcallVoid(_mb_set_bone_index, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_bone_index =
      resolveMethodBind('SkeletonModification2DLookAt', 'get_bone_index', 3905245786);

  int getBoneIndex() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_bone_index, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  // Skipped set_target_node(): an argument type is unsupported.
  // Skipped get_target_node(): unsupported return type "NodePath".
  static final Pointer<Void> _mb_set_additional_rotation =
      resolveMethodBind('SkeletonModification2DLookAt', 'set_additional_rotation', 373806689);

  void setAdditionalRotation(double rotation) {
    final arg0 = malloc<Double>()..value = rotation;
    try {
      ptrcallVoid(_mb_set_additional_rotation, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_additional_rotation =
      resolveMethodBind('SkeletonModification2DLookAt', 'get_additional_rotation', 1740695150);

  double getAdditionalRotation() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_additional_rotation, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_enable_constraint =
      resolveMethodBind('SkeletonModification2DLookAt', 'set_enable_constraint', 2586408642);

  void setEnableConstraint(bool enableConstraint) {
    final arg0 = malloc<Uint8>()..value = enableConstraint ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_enable_constraint, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_enable_constraint =
      resolveMethodBind('SkeletonModification2DLookAt', 'get_enable_constraint', 36873697);

  bool getEnableConstraint() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_enable_constraint, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_constraint_angle_min =
      resolveMethodBind('SkeletonModification2DLookAt', 'set_constraint_angle_min', 373806689);

  void setConstraintAngleMin(double angleMin) {
    final arg0 = malloc<Double>()..value = angleMin;
    try {
      ptrcallVoid(_mb_set_constraint_angle_min, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_constraint_angle_min =
      resolveMethodBind('SkeletonModification2DLookAt', 'get_constraint_angle_min', 1740695150);

  double getConstraintAngleMin() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_constraint_angle_min, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_constraint_angle_max =
      resolveMethodBind('SkeletonModification2DLookAt', 'set_constraint_angle_max', 373806689);

  void setConstraintAngleMax(double angleMax) {
    final arg0 = malloc<Double>()..value = angleMax;
    try {
      ptrcallVoid(_mb_set_constraint_angle_max, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_constraint_angle_max =
      resolveMethodBind('SkeletonModification2DLookAt', 'get_constraint_angle_max', 1740695150);

  double getConstraintAngleMax() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_constraint_angle_max, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_constraint_angle_invert =
      resolveMethodBind('SkeletonModification2DLookAt', 'set_constraint_angle_invert', 2586408642);

  void setConstraintAngleInvert(bool invert) {
    final arg0 = malloc<Uint8>()..value = invert ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_constraint_angle_invert, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_constraint_angle_invert =
      resolveMethodBind('SkeletonModification2DLookAt', 'get_constraint_angle_invert', 36873697);

  bool getConstraintAngleInvert() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_constraint_angle_invert, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
