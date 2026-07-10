// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class SkeletonModification2DCCDIK extends SkeletonModification2D {
  SkeletonModification2DCCDIK(super.nativePtr);

  // Skipped set_target_node(): an argument type is unsupported.
  // Skipped get_target_node(): unsupported return type "NodePath".
  // Skipped set_tip_node(): an argument type is unsupported.
  // Skipped get_tip_node(): unsupported return type "NodePath".
  static final Pointer<Void> _mb_set_ccdik_data_chain_length =
      resolveMethodBind('SkeletonModification2DCCDIK', 'set_ccdik_data_chain_length', 1286410249);

  void setCcdikDataChainLength(int length) {
    final arg0 = malloc<Int64>()..value = length;
    try {
      ptrcallVoid(_mb_set_ccdik_data_chain_length, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_ccdik_data_chain_length =
      resolveMethodBind('SkeletonModification2DCCDIK', 'get_ccdik_data_chain_length', 2455072627);

  int getCcdikDataChainLength() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_ccdik_data_chain_length, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  // Skipped set_ccdik_joint_bone2d_node(): an argument type is unsupported.
  // Skipped get_ccdik_joint_bone2d_node(): unsupported return type "NodePath".
  static final Pointer<Void> _mb_set_ccdik_joint_bone_index =
      resolveMethodBind('SkeletonModification2DCCDIK', 'set_ccdik_joint_bone_index', 3937882851);

  void setCcdikJointBoneIndex(int jointIdx, int boneIdx) {
    final arg0 = malloc<Int64>()..value = jointIdx;
    final arg1 = malloc<Int64>()..value = boneIdx;
    try {
      ptrcallVoid(_mb_set_ccdik_joint_bone_index, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_ccdik_joint_bone_index =
      resolveMethodBind('SkeletonModification2DCCDIK', 'get_ccdik_joint_bone_index', 923996154);

  int getCcdikJointBoneIndex(int jointIdx) {
    final arg0 = malloc<Int64>()..value = jointIdx;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_ccdik_joint_bone_index, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_ccdik_joint_rotate_from_joint =
      resolveMethodBind('SkeletonModification2DCCDIK', 'set_ccdik_joint_rotate_from_joint', 300928843);

  void setCcdikJointRotateFromJoint(int jointIdx, bool rotateFromJoint) {
    final arg0 = malloc<Int64>()..value = jointIdx;
    final arg1 = malloc<Uint8>()..value = rotateFromJoint ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_ccdik_joint_rotate_from_joint, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_ccdik_joint_rotate_from_joint =
      resolveMethodBind('SkeletonModification2DCCDIK', 'get_ccdik_joint_rotate_from_joint', 1116898809);

  bool getCcdikJointRotateFromJoint(int jointIdx) {
    final arg0 = malloc<Int64>()..value = jointIdx;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_ccdik_joint_rotate_from_joint, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_ccdik_joint_enable_constraint =
      resolveMethodBind('SkeletonModification2DCCDIK', 'set_ccdik_joint_enable_constraint', 300928843);

  void setCcdikJointEnableConstraint(int jointIdx, bool enableConstraint) {
    final arg0 = malloc<Int64>()..value = jointIdx;
    final arg1 = malloc<Uint8>()..value = enableConstraint ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_ccdik_joint_enable_constraint, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_ccdik_joint_enable_constraint =
      resolveMethodBind('SkeletonModification2DCCDIK', 'get_ccdik_joint_enable_constraint', 1116898809);

  bool getCcdikJointEnableConstraint(int jointIdx) {
    final arg0 = malloc<Int64>()..value = jointIdx;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_ccdik_joint_enable_constraint, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_ccdik_joint_constraint_angle_min =
      resolveMethodBind('SkeletonModification2DCCDIK', 'set_ccdik_joint_constraint_angle_min', 1602489585);

  void setCcdikJointConstraintAngleMin(int jointIdx, double angleMin) {
    final arg0 = malloc<Int64>()..value = jointIdx;
    final arg1 = malloc<Double>()..value = angleMin;
    try {
      ptrcallVoid(_mb_set_ccdik_joint_constraint_angle_min, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_ccdik_joint_constraint_angle_min =
      resolveMethodBind('SkeletonModification2DCCDIK', 'get_ccdik_joint_constraint_angle_min', 2339986948);

  double getCcdikJointConstraintAngleMin(int jointIdx) {
    final arg0 = malloc<Int64>()..value = jointIdx;
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_ccdik_joint_constraint_angle_min, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_ccdik_joint_constraint_angle_max =
      resolveMethodBind('SkeletonModification2DCCDIK', 'set_ccdik_joint_constraint_angle_max', 1602489585);

  void setCcdikJointConstraintAngleMax(int jointIdx, double angleMax) {
    final arg0 = malloc<Int64>()..value = jointIdx;
    final arg1 = malloc<Double>()..value = angleMax;
    try {
      ptrcallVoid(_mb_set_ccdik_joint_constraint_angle_max, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_ccdik_joint_constraint_angle_max =
      resolveMethodBind('SkeletonModification2DCCDIK', 'get_ccdik_joint_constraint_angle_max', 2339986948);

  double getCcdikJointConstraintAngleMax(int jointIdx) {
    final arg0 = malloc<Int64>()..value = jointIdx;
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_ccdik_joint_constraint_angle_max, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_ccdik_joint_constraint_angle_invert =
      resolveMethodBind('SkeletonModification2DCCDIK', 'set_ccdik_joint_constraint_angle_invert', 300928843);

  void setCcdikJointConstraintAngleInvert(int jointIdx, bool invert) {
    final arg0 = malloc<Int64>()..value = jointIdx;
    final arg1 = malloc<Uint8>()..value = invert ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_ccdik_joint_constraint_angle_invert, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_ccdik_joint_constraint_angle_invert =
      resolveMethodBind('SkeletonModification2DCCDIK', 'get_ccdik_joint_constraint_angle_invert', 1116898809);

  bool getCcdikJointConstraintAngleInvert(int jointIdx) {
    final arg0 = malloc<Int64>()..value = jointIdx;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_ccdik_joint_constraint_angle_invert, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

}
