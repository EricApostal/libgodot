// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class LookAtModifier3D extends SkeletonModifier3D {
  LookAtModifier3D(super.nativePtr);

  /// Constructs a brand-new engine-owned LookAtModifier3D instance
  /// (via classdb_construct_object3), not an existing one.
  factory LookAtModifier3D.create() {
    return LookAtModifier3D(resolveClassConstructor('LookAtModifier3D'));
  }

  // Skipped set_target_node(): an argument type is unsupported.
  // Skipped get_target_node(): unsupported return type "NodePath".
  static final Pointer<Void> _mb_set_bone_name =
      resolveMethodBind('LookAtModifier3D', 'set_bone_name', 83702148);

  void setBoneName(String boneName) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), boneName);
    try {
      ptrcallVoid(_mb_set_bone_name, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_bone_name =
      resolveMethodBind('LookAtModifier3D', 'get_bone_name', 201670096);

  String getBoneName() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_bone_name, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_bone =
      resolveMethodBind('LookAtModifier3D', 'set_bone', 1286410249);

  void setBone(int bone) {
    final arg0 = malloc<Int64>()..value = bone;
    try {
      ptrcallVoid(_mb_set_bone, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_bone =
      resolveMethodBind('LookAtModifier3D', 'get_bone', 3905245786);

  int getBone() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_bone, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_forward_axis =
      resolveMethodBind('LookAtModifier3D', 'set_forward_axis', 3199955933);

  void setForwardAxis(int forwardAxis) {
    final arg0 = malloc<Int64>()..value = forwardAxis;
    try {
      ptrcallVoid(_mb_set_forward_axis, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_forward_axis =
      resolveMethodBind('LookAtModifier3D', 'get_forward_axis', 4076020284);

  int getForwardAxis() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_forward_axis, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_primary_rotation_axis =
      resolveMethodBind('LookAtModifier3D', 'set_primary_rotation_axis', 1144690656);

  void setPrimaryRotationAxis(int axis) {
    final arg0 = malloc<Int64>()..value = axis;
    try {
      ptrcallVoid(_mb_set_primary_rotation_axis, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_primary_rotation_axis =
      resolveMethodBind('LookAtModifier3D', 'get_primary_rotation_axis', 3050976882);

  int getPrimaryRotationAxis() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_primary_rotation_axis, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_use_secondary_rotation =
      resolveMethodBind('LookAtModifier3D', 'set_use_secondary_rotation', 2586408642);

  void setUseSecondaryRotation(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_use_secondary_rotation, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_using_secondary_rotation =
      resolveMethodBind('LookAtModifier3D', 'is_using_secondary_rotation', 36873697);

  bool isUsingSecondaryRotation() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_using_secondary_rotation, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_relative =
      resolveMethodBind('LookAtModifier3D', 'set_relative', 2586408642);

  void setRelative(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_relative, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_relative =
      resolveMethodBind('LookAtModifier3D', 'is_relative', 36873697);

  bool isRelative() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_relative, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_origin_safe_margin =
      resolveMethodBind('LookAtModifier3D', 'set_origin_safe_margin', 373806689);

  void setOriginSafeMargin(double margin) {
    final arg0 = malloc<Double>()..value = margin;
    try {
      ptrcallVoid(_mb_set_origin_safe_margin, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_origin_safe_margin =
      resolveMethodBind('LookAtModifier3D', 'get_origin_safe_margin', 1740695150);

  double getOriginSafeMargin() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_origin_safe_margin, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_origin_from =
      resolveMethodBind('LookAtModifier3D', 'set_origin_from', 4254695669);

  void setOriginFrom(int originFrom) {
    final arg0 = malloc<Int64>()..value = originFrom;
    try {
      ptrcallVoid(_mb_set_origin_from, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_origin_from =
      resolveMethodBind('LookAtModifier3D', 'get_origin_from', 4057166297);

  int getOriginFrom() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_origin_from, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_origin_bone_name =
      resolveMethodBind('LookAtModifier3D', 'set_origin_bone_name', 83702148);

  void setOriginBoneName(String boneName) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), boneName);
    try {
      ptrcallVoid(_mb_set_origin_bone_name, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_origin_bone_name =
      resolveMethodBind('LookAtModifier3D', 'get_origin_bone_name', 201670096);

  String getOriginBoneName() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_origin_bone_name, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_origin_bone =
      resolveMethodBind('LookAtModifier3D', 'set_origin_bone', 1286410249);

  void setOriginBone(int bone) {
    final arg0 = malloc<Int64>()..value = bone;
    try {
      ptrcallVoid(_mb_set_origin_bone, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_origin_bone =
      resolveMethodBind('LookAtModifier3D', 'get_origin_bone', 3905245786);

  int getOriginBone() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_origin_bone, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  // Skipped set_origin_external_node(): an argument type is unsupported.
  // Skipped get_origin_external_node(): unsupported return type "NodePath".
  static final Pointer<Void> _mb_set_origin_offset =
      resolveMethodBind('LookAtModifier3D', 'set_origin_offset', 3460891852);

  void setOriginOffset(Vector3 offset) {
    final arg0 = malloc<Uint8>(Vector3.nativeSize);
    offset.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_origin_offset, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_origin_offset =
      resolveMethodBind('LookAtModifier3D', 'get_origin_offset', 3360562783);

  Vector3 getOriginOffset() {
    try {
      final ret = malloc<Uint8>(Vector3.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_origin_offset, nativePtr, [], ret.cast());
        return Vector3.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_duration =
      resolveMethodBind('LookAtModifier3D', 'set_duration', 373806689);

  void setDuration(double duration) {
    final arg0 = malloc<Double>()..value = duration;
    try {
      ptrcallVoid(_mb_set_duration, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_duration =
      resolveMethodBind('LookAtModifier3D', 'get_duration', 1740695150);

  double getDuration() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_duration, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_transition_type =
      resolveMethodBind('LookAtModifier3D', 'set_transition_type', 1058637742);

  void setTransitionType(int transitionType) {
    final arg0 = malloc<Int64>()..value = transitionType;
    try {
      ptrcallVoid(_mb_set_transition_type, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_transition_type =
      resolveMethodBind('LookAtModifier3D', 'get_transition_type', 3842314528);

  int getTransitionType() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_transition_type, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_ease_type =
      resolveMethodBind('LookAtModifier3D', 'set_ease_type', 1208105857);

  void setEaseType(int easeType) {
    final arg0 = malloc<Int64>()..value = easeType;
    try {
      ptrcallVoid(_mb_set_ease_type, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_ease_type =
      resolveMethodBind('LookAtModifier3D', 'get_ease_type', 631880200);

  int getEaseType() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_ease_type, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_use_angle_limitation =
      resolveMethodBind('LookAtModifier3D', 'set_use_angle_limitation', 2586408642);

  void setUseAngleLimitation(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_use_angle_limitation, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_using_angle_limitation =
      resolveMethodBind('LookAtModifier3D', 'is_using_angle_limitation', 36873697);

  bool isUsingAngleLimitation() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_using_angle_limitation, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_symmetry_limitation =
      resolveMethodBind('LookAtModifier3D', 'set_symmetry_limitation', 2586408642);

  void setSymmetryLimitation(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_symmetry_limitation, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_limitation_symmetry =
      resolveMethodBind('LookAtModifier3D', 'is_limitation_symmetry', 36873697);

  bool isLimitationSymmetry() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_limitation_symmetry, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_primary_limit_angle =
      resolveMethodBind('LookAtModifier3D', 'set_primary_limit_angle', 373806689);

  void setPrimaryLimitAngle(double angle) {
    final arg0 = malloc<Double>()..value = angle;
    try {
      ptrcallVoid(_mb_set_primary_limit_angle, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_primary_limit_angle =
      resolveMethodBind('LookAtModifier3D', 'get_primary_limit_angle', 1740695150);

  double getPrimaryLimitAngle() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_primary_limit_angle, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_primary_damp_threshold =
      resolveMethodBind('LookAtModifier3D', 'set_primary_damp_threshold', 373806689);

  void setPrimaryDampThreshold(double power) {
    final arg0 = malloc<Double>()..value = power;
    try {
      ptrcallVoid(_mb_set_primary_damp_threshold, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_primary_damp_threshold =
      resolveMethodBind('LookAtModifier3D', 'get_primary_damp_threshold', 1740695150);

  double getPrimaryDampThreshold() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_primary_damp_threshold, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_primary_positive_limit_angle =
      resolveMethodBind('LookAtModifier3D', 'set_primary_positive_limit_angle', 373806689);

  void setPrimaryPositiveLimitAngle(double angle) {
    final arg0 = malloc<Double>()..value = angle;
    try {
      ptrcallVoid(_mb_set_primary_positive_limit_angle, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_primary_positive_limit_angle =
      resolveMethodBind('LookAtModifier3D', 'get_primary_positive_limit_angle', 1740695150);

  double getPrimaryPositiveLimitAngle() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_primary_positive_limit_angle, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_primary_positive_damp_threshold =
      resolveMethodBind('LookAtModifier3D', 'set_primary_positive_damp_threshold', 373806689);

  void setPrimaryPositiveDampThreshold(double power) {
    final arg0 = malloc<Double>()..value = power;
    try {
      ptrcallVoid(_mb_set_primary_positive_damp_threshold, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_primary_positive_damp_threshold =
      resolveMethodBind('LookAtModifier3D', 'get_primary_positive_damp_threshold', 1740695150);

  double getPrimaryPositiveDampThreshold() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_primary_positive_damp_threshold, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_primary_negative_limit_angle =
      resolveMethodBind('LookAtModifier3D', 'set_primary_negative_limit_angle', 373806689);

  void setPrimaryNegativeLimitAngle(double angle) {
    final arg0 = malloc<Double>()..value = angle;
    try {
      ptrcallVoid(_mb_set_primary_negative_limit_angle, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_primary_negative_limit_angle =
      resolveMethodBind('LookAtModifier3D', 'get_primary_negative_limit_angle', 1740695150);

  double getPrimaryNegativeLimitAngle() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_primary_negative_limit_angle, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_primary_negative_damp_threshold =
      resolveMethodBind('LookAtModifier3D', 'set_primary_negative_damp_threshold', 373806689);

  void setPrimaryNegativeDampThreshold(double power) {
    final arg0 = malloc<Double>()..value = power;
    try {
      ptrcallVoid(_mb_set_primary_negative_damp_threshold, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_primary_negative_damp_threshold =
      resolveMethodBind('LookAtModifier3D', 'get_primary_negative_damp_threshold', 1740695150);

  double getPrimaryNegativeDampThreshold() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_primary_negative_damp_threshold, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_secondary_limit_angle =
      resolveMethodBind('LookAtModifier3D', 'set_secondary_limit_angle', 373806689);

  void setSecondaryLimitAngle(double angle) {
    final arg0 = malloc<Double>()..value = angle;
    try {
      ptrcallVoid(_mb_set_secondary_limit_angle, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_secondary_limit_angle =
      resolveMethodBind('LookAtModifier3D', 'get_secondary_limit_angle', 1740695150);

  double getSecondaryLimitAngle() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_secondary_limit_angle, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_secondary_damp_threshold =
      resolveMethodBind('LookAtModifier3D', 'set_secondary_damp_threshold', 373806689);

  void setSecondaryDampThreshold(double power) {
    final arg0 = malloc<Double>()..value = power;
    try {
      ptrcallVoid(_mb_set_secondary_damp_threshold, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_secondary_damp_threshold =
      resolveMethodBind('LookAtModifier3D', 'get_secondary_damp_threshold', 1740695150);

  double getSecondaryDampThreshold() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_secondary_damp_threshold, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_secondary_positive_limit_angle =
      resolveMethodBind('LookAtModifier3D', 'set_secondary_positive_limit_angle', 373806689);

  void setSecondaryPositiveLimitAngle(double angle) {
    final arg0 = malloc<Double>()..value = angle;
    try {
      ptrcallVoid(_mb_set_secondary_positive_limit_angle, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_secondary_positive_limit_angle =
      resolveMethodBind('LookAtModifier3D', 'get_secondary_positive_limit_angle', 1740695150);

  double getSecondaryPositiveLimitAngle() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_secondary_positive_limit_angle, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_secondary_positive_damp_threshold =
      resolveMethodBind('LookAtModifier3D', 'set_secondary_positive_damp_threshold', 373806689);

  void setSecondaryPositiveDampThreshold(double power) {
    final arg0 = malloc<Double>()..value = power;
    try {
      ptrcallVoid(_mb_set_secondary_positive_damp_threshold, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_secondary_positive_damp_threshold =
      resolveMethodBind('LookAtModifier3D', 'get_secondary_positive_damp_threshold', 1740695150);

  double getSecondaryPositiveDampThreshold() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_secondary_positive_damp_threshold, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_secondary_negative_limit_angle =
      resolveMethodBind('LookAtModifier3D', 'set_secondary_negative_limit_angle', 373806689);

  void setSecondaryNegativeLimitAngle(double angle) {
    final arg0 = malloc<Double>()..value = angle;
    try {
      ptrcallVoid(_mb_set_secondary_negative_limit_angle, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_secondary_negative_limit_angle =
      resolveMethodBind('LookAtModifier3D', 'get_secondary_negative_limit_angle', 1740695150);

  double getSecondaryNegativeLimitAngle() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_secondary_negative_limit_angle, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_secondary_negative_damp_threshold =
      resolveMethodBind('LookAtModifier3D', 'set_secondary_negative_damp_threshold', 373806689);

  void setSecondaryNegativeDampThreshold(double power) {
    final arg0 = malloc<Double>()..value = power;
    try {
      ptrcallVoid(_mb_set_secondary_negative_damp_threshold, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_secondary_negative_damp_threshold =
      resolveMethodBind('LookAtModifier3D', 'get_secondary_negative_damp_threshold', 1740695150);

  double getSecondaryNegativeDampThreshold() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_secondary_negative_damp_threshold, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_interpolation_remaining =
      resolveMethodBind('LookAtModifier3D', 'get_interpolation_remaining', 1740695150);

  double getInterpolationRemaining() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_interpolation_remaining, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_is_interpolating =
      resolveMethodBind('LookAtModifier3D', 'is_interpolating', 36873697);

  bool isInterpolating() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_interpolating, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_is_target_within_limitation =
      resolveMethodBind('LookAtModifier3D', 'is_target_within_limitation', 36873697);

  bool isTargetWithinLimitation() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_target_within_limitation, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
