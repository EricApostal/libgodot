// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class SkeletonModification2DFABRIK extends SkeletonModification2D {
  SkeletonModification2DFABRIK(super.nativePtr);

  // Skipped set_target_node(): an argument type is unsupported.
  // Skipped get_target_node(): unsupported return type "NodePath".
  static final Pointer<Void> _mb_set_fabrik_data_chain_length =
      resolveMethodBind('SkeletonModification2DFABRIK', 'set_fabrik_data_chain_length', 1286410249);

  void setFabrikDataChainLength(int length) {
    final arg0 = malloc<Int64>()..value = length;
    try {
      ptrcallVoid(_mb_set_fabrik_data_chain_length, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_fabrik_data_chain_length =
      resolveMethodBind('SkeletonModification2DFABRIK', 'get_fabrik_data_chain_length', 2455072627);

  int getFabrikDataChainLength() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_fabrik_data_chain_length, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  // Skipped set_fabrik_joint_bone2d_node(): an argument type is unsupported.
  // Skipped get_fabrik_joint_bone2d_node(): unsupported return type "NodePath".
  static final Pointer<Void> _mb_set_fabrik_joint_bone_index =
      resolveMethodBind('SkeletonModification2DFABRIK', 'set_fabrik_joint_bone_index', 3937882851);

  void setFabrikJointBoneIndex(int jointIdx, int boneIdx) {
    final arg0 = malloc<Int64>()..value = jointIdx;
    final arg1 = malloc<Int64>()..value = boneIdx;
    try {
      ptrcallVoid(_mb_set_fabrik_joint_bone_index, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_fabrik_joint_bone_index =
      resolveMethodBind('SkeletonModification2DFABRIK', 'get_fabrik_joint_bone_index', 923996154);

  int getFabrikJointBoneIndex(int jointIdx) {
    final arg0 = malloc<Int64>()..value = jointIdx;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_fabrik_joint_bone_index, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_fabrik_joint_magnet_position =
      resolveMethodBind('SkeletonModification2DFABRIK', 'set_fabrik_joint_magnet_position', 163021252);

  void setFabrikJointMagnetPosition(int jointIdx, Vector2 magnetPosition) {
    final arg0 = malloc<Int64>()..value = jointIdx;
    final arg1 = malloc<Uint8>(Vector2.nativeSize);
    magnetPosition.writeTo(arg1, 0);
    try {
      ptrcallVoid(_mb_set_fabrik_joint_magnet_position, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_fabrik_joint_magnet_position =
      resolveMethodBind('SkeletonModification2DFABRIK', 'get_fabrik_joint_magnet_position', 2299179447);

  Vector2 getFabrikJointMagnetPosition(int jointIdx) {
    final arg0 = malloc<Int64>()..value = jointIdx;
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_fabrik_joint_magnet_position, nativePtr, [arg0.cast<Void>()], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_fabrik_joint_use_target_rotation =
      resolveMethodBind('SkeletonModification2DFABRIK', 'set_fabrik_joint_use_target_rotation', 300928843);

  void setFabrikJointUseTargetRotation(int jointIdx, bool useTargetRotation) {
    final arg0 = malloc<Int64>()..value = jointIdx;
    final arg1 = malloc<Uint8>()..value = useTargetRotation ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_fabrik_joint_use_target_rotation, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_fabrik_joint_use_target_rotation =
      resolveMethodBind('SkeletonModification2DFABRIK', 'get_fabrik_joint_use_target_rotation', 1116898809);

  bool getFabrikJointUseTargetRotation(int jointIdx) {
    final arg0 = malloc<Int64>()..value = jointIdx;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_fabrik_joint_use_target_rotation, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

}
