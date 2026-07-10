// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class SkeletonModification2DJiggle extends SkeletonModification2D {
  SkeletonModification2DJiggle(super.nativePtr);

  /// Constructs a brand-new engine-owned SkeletonModification2DJiggle instance
  /// (via classdb_construct_object3), not an existing one.
  factory SkeletonModification2DJiggle.create() {
    return SkeletonModification2DJiggle(resolveClassConstructor('SkeletonModification2DJiggle'));
  }

  // Skipped set_target_node(): an argument type is unsupported.
  // Skipped get_target_node(): unsupported return type "NodePath".
  static final Pointer<Void> _mb_set_jiggle_data_chain_length =
      resolveMethodBind('SkeletonModification2DJiggle', 'set_jiggle_data_chain_length', 1286410249);

  void setJiggleDataChainLength(int length) {
    final arg0 = malloc<Int64>()..value = length;
    try {
      ptrcallVoid(_mb_set_jiggle_data_chain_length, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_jiggle_data_chain_length =
      resolveMethodBind('SkeletonModification2DJiggle', 'get_jiggle_data_chain_length', 2455072627);

  int getJiggleDataChainLength() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_jiggle_data_chain_length, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_stiffness =
      resolveMethodBind('SkeletonModification2DJiggle', 'set_stiffness', 373806689);

  void setStiffness(double stiffness) {
    final arg0 = malloc<Double>()..value = stiffness;
    try {
      ptrcallVoid(_mb_set_stiffness, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_stiffness =
      resolveMethodBind('SkeletonModification2DJiggle', 'get_stiffness', 1740695150);

  double getStiffness() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_stiffness, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_mass =
      resolveMethodBind('SkeletonModification2DJiggle', 'set_mass', 373806689);

  void setMass(double mass) {
    final arg0 = malloc<Double>()..value = mass;
    try {
      ptrcallVoid(_mb_set_mass, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_mass =
      resolveMethodBind('SkeletonModification2DJiggle', 'get_mass', 1740695150);

  double getMass() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_mass, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_damping =
      resolveMethodBind('SkeletonModification2DJiggle', 'set_damping', 373806689);

  void setDamping(double damping) {
    final arg0 = malloc<Double>()..value = damping;
    try {
      ptrcallVoid(_mb_set_damping, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_damping =
      resolveMethodBind('SkeletonModification2DJiggle', 'get_damping', 1740695150);

  double getDamping() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_damping, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_use_gravity =
      resolveMethodBind('SkeletonModification2DJiggle', 'set_use_gravity', 2586408642);

  void setUseGravity(bool useGravity) {
    final arg0 = malloc<Uint8>()..value = useGravity ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_use_gravity, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_use_gravity =
      resolveMethodBind('SkeletonModification2DJiggle', 'get_use_gravity', 36873697);

  bool getUseGravity() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_use_gravity, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_gravity =
      resolveMethodBind('SkeletonModification2DJiggle', 'set_gravity', 743155724);

  void setGravity(Vector2 gravity) {
    final arg0 = malloc<Uint8>(Vector2.nativeSize);
    gravity.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_gravity, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_gravity =
      resolveMethodBind('SkeletonModification2DJiggle', 'get_gravity', 3341600327);

  Vector2 getGravity() {
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_gravity, nativePtr, [], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_use_colliders =
      resolveMethodBind('SkeletonModification2DJiggle', 'set_use_colliders', 2586408642);

  void setUseColliders(bool useColliders) {
    final arg0 = malloc<Uint8>()..value = useColliders ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_use_colliders, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_use_colliders =
      resolveMethodBind('SkeletonModification2DJiggle', 'get_use_colliders', 36873697);

  bool getUseColliders() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_use_colliders, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_collision_mask =
      resolveMethodBind('SkeletonModification2DJiggle', 'set_collision_mask', 1286410249);

  void setCollisionMask(int collisionMask) {
    final arg0 = malloc<Int64>()..value = collisionMask;
    try {
      ptrcallVoid(_mb_set_collision_mask, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_collision_mask =
      resolveMethodBind('SkeletonModification2DJiggle', 'get_collision_mask', 3905245786);

  int getCollisionMask() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_collision_mask, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_reset =
      resolveMethodBind('SkeletonModification2DJiggle', 'reset', 3218959716);

  void reset() {
    try {
      ptrcallVoid(_mb_reset, nativePtr, []);
    } finally {
    }
  }

  // Skipped set_jiggle_joint_bone2d_node(): an argument type is unsupported.
  // Skipped get_jiggle_joint_bone2d_node(): unsupported return type "NodePath".
  static final Pointer<Void> _mb_set_jiggle_joint_bone_index =
      resolveMethodBind('SkeletonModification2DJiggle', 'set_jiggle_joint_bone_index', 3937882851);

  void setJiggleJointBoneIndex(int jointIdx, int boneIdx) {
    final arg0 = malloc<Int64>()..value = jointIdx;
    final arg1 = malloc<Int64>()..value = boneIdx;
    try {
      ptrcallVoid(_mb_set_jiggle_joint_bone_index, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_jiggle_joint_bone_index =
      resolveMethodBind('SkeletonModification2DJiggle', 'get_jiggle_joint_bone_index', 923996154);

  int getJiggleJointBoneIndex(int jointIdx) {
    final arg0 = malloc<Int64>()..value = jointIdx;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_jiggle_joint_bone_index, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_jiggle_joint_override =
      resolveMethodBind('SkeletonModification2DJiggle', 'set_jiggle_joint_override', 300928843);

  void setJiggleJointOverride(int jointIdx, bool override) {
    final arg0 = malloc<Int64>()..value = jointIdx;
    final arg1 = malloc<Uint8>()..value = override ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_jiggle_joint_override, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_jiggle_joint_override =
      resolveMethodBind('SkeletonModification2DJiggle', 'get_jiggle_joint_override', 1116898809);

  bool getJiggleJointOverride(int jointIdx) {
    final arg0 = malloc<Int64>()..value = jointIdx;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_jiggle_joint_override, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_jiggle_joint_stiffness =
      resolveMethodBind('SkeletonModification2DJiggle', 'set_jiggle_joint_stiffness', 1602489585);

  void setJiggleJointStiffness(int jointIdx, double stiffness) {
    final arg0 = malloc<Int64>()..value = jointIdx;
    final arg1 = malloc<Double>()..value = stiffness;
    try {
      ptrcallVoid(_mb_set_jiggle_joint_stiffness, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_jiggle_joint_stiffness =
      resolveMethodBind('SkeletonModification2DJiggle', 'get_jiggle_joint_stiffness', 2339986948);

  double getJiggleJointStiffness(int jointIdx) {
    final arg0 = malloc<Int64>()..value = jointIdx;
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_jiggle_joint_stiffness, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_jiggle_joint_mass =
      resolveMethodBind('SkeletonModification2DJiggle', 'set_jiggle_joint_mass', 1602489585);

  void setJiggleJointMass(int jointIdx, double mass) {
    final arg0 = malloc<Int64>()..value = jointIdx;
    final arg1 = malloc<Double>()..value = mass;
    try {
      ptrcallVoid(_mb_set_jiggle_joint_mass, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_jiggle_joint_mass =
      resolveMethodBind('SkeletonModification2DJiggle', 'get_jiggle_joint_mass', 2339986948);

  double getJiggleJointMass(int jointIdx) {
    final arg0 = malloc<Int64>()..value = jointIdx;
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_jiggle_joint_mass, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_jiggle_joint_damping =
      resolveMethodBind('SkeletonModification2DJiggle', 'set_jiggle_joint_damping', 1602489585);

  void setJiggleJointDamping(int jointIdx, double damping) {
    final arg0 = malloc<Int64>()..value = jointIdx;
    final arg1 = malloc<Double>()..value = damping;
    try {
      ptrcallVoid(_mb_set_jiggle_joint_damping, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_jiggle_joint_damping =
      resolveMethodBind('SkeletonModification2DJiggle', 'get_jiggle_joint_damping', 2339986948);

  double getJiggleJointDamping(int jointIdx) {
    final arg0 = malloc<Int64>()..value = jointIdx;
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_jiggle_joint_damping, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_jiggle_joint_use_gravity =
      resolveMethodBind('SkeletonModification2DJiggle', 'set_jiggle_joint_use_gravity', 300928843);

  void setJiggleJointUseGravity(int jointIdx, bool useGravity) {
    final arg0 = malloc<Int64>()..value = jointIdx;
    final arg1 = malloc<Uint8>()..value = useGravity ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_jiggle_joint_use_gravity, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_jiggle_joint_use_gravity =
      resolveMethodBind('SkeletonModification2DJiggle', 'get_jiggle_joint_use_gravity', 1116898809);

  bool getJiggleJointUseGravity(int jointIdx) {
    final arg0 = malloc<Int64>()..value = jointIdx;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_jiggle_joint_use_gravity, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_jiggle_joint_gravity =
      resolveMethodBind('SkeletonModification2DJiggle', 'set_jiggle_joint_gravity', 163021252);

  void setJiggleJointGravity(int jointIdx, Vector2 gravity) {
    final arg0 = malloc<Int64>()..value = jointIdx;
    final arg1 = malloc<Uint8>(Vector2.nativeSize);
    gravity.writeTo(arg1, 0);
    try {
      ptrcallVoid(_mb_set_jiggle_joint_gravity, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_jiggle_joint_gravity =
      resolveMethodBind('SkeletonModification2DJiggle', 'get_jiggle_joint_gravity', 2299179447);

  Vector2 getJiggleJointGravity(int jointIdx) {
    final arg0 = malloc<Int64>()..value = jointIdx;
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_jiggle_joint_gravity, nativePtr, [arg0.cast<Void>()], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

}
