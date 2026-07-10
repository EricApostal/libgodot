// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class SkeletonModification2DTwoBoneIK extends SkeletonModification2D {
  SkeletonModification2DTwoBoneIK(super.nativePtr);

  // Skipped set_target_node(): an argument type is unsupported.
  // Skipped get_target_node(): unsupported return type "NodePath".
  static final Pointer<Void> _mb_set_target_minimum_distance =
      resolveMethodBind('SkeletonModification2DTwoBoneIK', 'set_target_minimum_distance', 373806689);

  void setTargetMinimumDistance(double minimumDistance) {
    final arg0 = malloc<Double>()..value = minimumDistance;
    try {
      ptrcallVoid(_mb_set_target_minimum_distance, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_target_minimum_distance =
      resolveMethodBind('SkeletonModification2DTwoBoneIK', 'get_target_minimum_distance', 1740695150);

  double getTargetMinimumDistance() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_target_minimum_distance, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_target_maximum_distance =
      resolveMethodBind('SkeletonModification2DTwoBoneIK', 'set_target_maximum_distance', 373806689);

  void setTargetMaximumDistance(double maximumDistance) {
    final arg0 = malloc<Double>()..value = maximumDistance;
    try {
      ptrcallVoid(_mb_set_target_maximum_distance, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_target_maximum_distance =
      resolveMethodBind('SkeletonModification2DTwoBoneIK', 'get_target_maximum_distance', 1740695150);

  double getTargetMaximumDistance() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_target_maximum_distance, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_flip_bend_direction =
      resolveMethodBind('SkeletonModification2DTwoBoneIK', 'set_flip_bend_direction', 2586408642);

  void setFlipBendDirection(bool flipDirection) {
    final arg0 = malloc<Uint8>()..value = flipDirection ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_flip_bend_direction, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_flip_bend_direction =
      resolveMethodBind('SkeletonModification2DTwoBoneIK', 'get_flip_bend_direction', 36873697);

  bool getFlipBendDirection() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_flip_bend_direction, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  // Skipped set_joint_one_bone2d_node(): an argument type is unsupported.
  // Skipped get_joint_one_bone2d_node(): unsupported return type "NodePath".
  static final Pointer<Void> _mb_set_joint_one_bone_idx =
      resolveMethodBind('SkeletonModification2DTwoBoneIK', 'set_joint_one_bone_idx', 1286410249);

  void setJointOneBoneIdx(int boneIdx) {
    final arg0 = malloc<Int64>()..value = boneIdx;
    try {
      ptrcallVoid(_mb_set_joint_one_bone_idx, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_joint_one_bone_idx =
      resolveMethodBind('SkeletonModification2DTwoBoneIK', 'get_joint_one_bone_idx', 3905245786);

  int getJointOneBoneIdx() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_joint_one_bone_idx, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  // Skipped set_joint_two_bone2d_node(): an argument type is unsupported.
  // Skipped get_joint_two_bone2d_node(): unsupported return type "NodePath".
  static final Pointer<Void> _mb_set_joint_two_bone_idx =
      resolveMethodBind('SkeletonModification2DTwoBoneIK', 'set_joint_two_bone_idx', 1286410249);

  void setJointTwoBoneIdx(int boneIdx) {
    final arg0 = malloc<Int64>()..value = boneIdx;
    try {
      ptrcallVoid(_mb_set_joint_two_bone_idx, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_joint_two_bone_idx =
      resolveMethodBind('SkeletonModification2DTwoBoneIK', 'get_joint_two_bone_idx', 3905245786);

  int getJointTwoBoneIdx() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_joint_two_bone_idx, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
