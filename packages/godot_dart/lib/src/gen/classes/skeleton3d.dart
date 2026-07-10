// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class Skeleton3D extends Node3D {
  Skeleton3D(super.nativePtr);

  /// Constructs a brand-new engine-owned Skeleton3D instance
  /// (via classdb_construct_object3), not an existing one.
  factory Skeleton3D.create() {
    return Skeleton3D(resolveClassConstructor('Skeleton3D'));
  }

  static final Pointer<Void> _mb_add_bone =
      resolveMethodBind('Skeleton3D', 'add_bone', 1597066294);

  int addBone(String name) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), name);
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_add_bone, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_find_bone =
      resolveMethodBind('Skeleton3D', 'find_bone', 1321353865);

  int findBone(String name) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), name);
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_find_bone, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_bone_name =
      resolveMethodBind('Skeleton3D', 'get_bone_name', 844755477);

  String getBoneName(int boneIdx) {
    final arg0 = malloc<Int64>()..value = boneIdx;
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_bone_name, nativePtr, [arg0.cast<Void>()], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_bone_name =
      resolveMethodBind('Skeleton3D', 'set_bone_name', 501894301);

  void setBoneName(int boneIdx, String name) {
    final arg0 = malloc<Int64>()..value = boneIdx;
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg1.cast(), name);
    try {
      ptrcallVoid(_mb_set_bone_name, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      BuiltinMarshal.destroyGDString(arg1.cast());
      malloc.free(arg1);
    }
  }

  // Skipped get_bone_meta(): unsupported return type "Variant".
  // Skipped get_bone_meta_list(): unsupported return type "typedarray::StringName".
  static final Pointer<Void> _mb_has_bone_meta =
      resolveMethodBind('Skeleton3D', 'has_bone_meta', 921227809);

  bool hasBoneMeta(int boneIdx, String key) {
    final arg0 = malloc<Int64>()..value = boneIdx;
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg1.cast(), key);
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_has_bone_meta, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      BuiltinMarshal.destroyStringName(arg1.cast());
      malloc.free(arg1);
    }
  }

  // Skipped set_bone_meta(): an argument type is unsupported.
  static final Pointer<Void> _mb_get_concatenated_bone_names =
      resolveMethodBind('Skeleton3D', 'get_concatenated_bone_names', 2002593661);

  String getConcatenatedBoneNames() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_concatenated_bone_names, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readStringName(ret.cast());
        BuiltinMarshal.destroyStringName(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_bone_parent =
      resolveMethodBind('Skeleton3D', 'get_bone_parent', 923996154);

  int getBoneParent(int boneIdx) {
    final arg0 = malloc<Int64>()..value = boneIdx;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_bone_parent, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_bone_parent =
      resolveMethodBind('Skeleton3D', 'set_bone_parent', 3937882851);

  void setBoneParent(int boneIdx, int parentIdx) {
    final arg0 = malloc<Int64>()..value = boneIdx;
    final arg1 = malloc<Int64>()..value = parentIdx;
    try {
      ptrcallVoid(_mb_set_bone_parent, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_bone_count =
      resolveMethodBind('Skeleton3D', 'get_bone_count', 3905245786);

  int getBoneCount() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_bone_count, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_version =
      resolveMethodBind('Skeleton3D', 'get_version', 3905245786);

  int getVersion() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_version, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_unparent_bone_and_rest =
      resolveMethodBind('Skeleton3D', 'unparent_bone_and_rest', 1286410249);

  void unparentBoneAndRest(int boneIdx) {
    final arg0 = malloc<Int64>()..value = boneIdx;
    try {
      ptrcallVoid(_mb_unparent_bone_and_rest, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  // Skipped get_bone_children(): unsupported return type "PackedInt32Array".
  // Skipped get_parentless_bones(): unsupported return type "PackedInt32Array".
  static final Pointer<Void> _mb_get_bone_rest =
      resolveMethodBind('Skeleton3D', 'get_bone_rest', 1965739696);

  Transform3D getBoneRest(int boneIdx) {
    final arg0 = malloc<Int64>()..value = boneIdx;
    try {
      final ret = malloc<Uint8>(Transform3D.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_bone_rest, nativePtr, [arg0.cast<Void>()], ret.cast());
        return Transform3D.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_bone_rest =
      resolveMethodBind('Skeleton3D', 'set_bone_rest', 3616898986);

  void setBoneRest(int boneIdx, Transform3D rest) {
    final arg0 = malloc<Int64>()..value = boneIdx;
    final arg1 = malloc<Uint8>(Transform3D.nativeSize);
    rest.writeTo(arg1, 0);
    try {
      ptrcallVoid(_mb_set_bone_rest, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_bone_global_rest =
      resolveMethodBind('Skeleton3D', 'get_bone_global_rest', 1965739696);

  Transform3D getBoneGlobalRest(int boneIdx) {
    final arg0 = malloc<Int64>()..value = boneIdx;
    try {
      final ret = malloc<Uint8>(Transform3D.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_bone_global_rest, nativePtr, [arg0.cast<Void>()], ret.cast());
        return Transform3D.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_create_skin_from_rest_transforms =
      resolveMethodBind('Skeleton3D', 'create_skin_from_rest_transforms', 1032037385);

  Skin? createSkinFromRestTransforms() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_create_skin_from_rest_transforms, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Skin(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_register_skin =
      resolveMethodBind('Skeleton3D', 'register_skin', 3405789568);

  SkinReference? registerSkin(Skin skin) {
    final arg0 = malloc<Pointer<Void>>()..value = skin.nativePtr;
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_register_skin, nativePtr, [arg0.cast<Void>()], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : SkinReference(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_localize_rests =
      resolveMethodBind('Skeleton3D', 'localize_rests', 3218959716);

  void localizeRests() {
    try {
      ptrcallVoid(_mb_localize_rests, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_clear_bones =
      resolveMethodBind('Skeleton3D', 'clear_bones', 3218959716);

  void clearBones() {
    try {
      ptrcallVoid(_mb_clear_bones, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_bone_pose =
      resolveMethodBind('Skeleton3D', 'get_bone_pose', 1965739696);

  Transform3D getBonePose(int boneIdx) {
    final arg0 = malloc<Int64>()..value = boneIdx;
    try {
      final ret = malloc<Uint8>(Transform3D.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_bone_pose, nativePtr, [arg0.cast<Void>()], ret.cast());
        return Transform3D.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_bone_pose =
      resolveMethodBind('Skeleton3D', 'set_bone_pose', 3616898986);

  void setBonePose(int boneIdx, Transform3D pose) {
    final arg0 = malloc<Int64>()..value = boneIdx;
    final arg1 = malloc<Uint8>(Transform3D.nativeSize);
    pose.writeTo(arg1, 0);
    try {
      ptrcallVoid(_mb_set_bone_pose, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_set_bone_pose_position =
      resolveMethodBind('Skeleton3D', 'set_bone_pose_position', 1530502735);

  void setBonePosePosition(int boneIdx, Vector3 position) {
    final arg0 = malloc<Int64>()..value = boneIdx;
    final arg1 = malloc<Uint8>(Vector3.nativeSize);
    position.writeTo(arg1, 0);
    try {
      ptrcallVoid(_mb_set_bone_pose_position, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_set_bone_pose_rotation =
      resolveMethodBind('Skeleton3D', 'set_bone_pose_rotation', 2823819782);

  void setBonePoseRotation(int boneIdx, Quaternion rotation) {
    final arg0 = malloc<Int64>()..value = boneIdx;
    final arg1 = malloc<Uint8>(Quaternion.nativeSize);
    rotation.writeTo(arg1, 0);
    try {
      ptrcallVoid(_mb_set_bone_pose_rotation, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_set_bone_pose_scale =
      resolveMethodBind('Skeleton3D', 'set_bone_pose_scale', 1530502735);

  void setBonePoseScale(int boneIdx, Vector3 scale) {
    final arg0 = malloc<Int64>()..value = boneIdx;
    final arg1 = malloc<Uint8>(Vector3.nativeSize);
    scale.writeTo(arg1, 0);
    try {
      ptrcallVoid(_mb_set_bone_pose_scale, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_bone_pose_position =
      resolveMethodBind('Skeleton3D', 'get_bone_pose_position', 711720468);

  Vector3 getBonePosePosition(int boneIdx) {
    final arg0 = malloc<Int64>()..value = boneIdx;
    try {
      final ret = malloc<Uint8>(Vector3.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_bone_pose_position, nativePtr, [arg0.cast<Void>()], ret.cast());
        return Vector3.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_bone_pose_rotation =
      resolveMethodBind('Skeleton3D', 'get_bone_pose_rotation', 476865136);

  Quaternion getBonePoseRotation(int boneIdx) {
    final arg0 = malloc<Int64>()..value = boneIdx;
    try {
      final ret = malloc<Uint8>(Quaternion.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_bone_pose_rotation, nativePtr, [arg0.cast<Void>()], ret.cast());
        return Quaternion.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_bone_pose_scale =
      resolveMethodBind('Skeleton3D', 'get_bone_pose_scale', 711720468);

  Vector3 getBonePoseScale(int boneIdx) {
    final arg0 = malloc<Int64>()..value = boneIdx;
    try {
      final ret = malloc<Uint8>(Vector3.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_bone_pose_scale, nativePtr, [arg0.cast<Void>()], ret.cast());
        return Vector3.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_reset_bone_pose =
      resolveMethodBind('Skeleton3D', 'reset_bone_pose', 1286410249);

  void resetBonePose(int boneIdx) {
    final arg0 = malloc<Int64>()..value = boneIdx;
    try {
      ptrcallVoid(_mb_reset_bone_pose, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_reset_bone_poses =
      resolveMethodBind('Skeleton3D', 'reset_bone_poses', 3218959716);

  void resetBonePoses() {
    try {
      ptrcallVoid(_mb_reset_bone_poses, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_is_bone_enabled =
      resolveMethodBind('Skeleton3D', 'is_bone_enabled', 1116898809);

  bool isBoneEnabled(int boneIdx) {
    final arg0 = malloc<Int64>()..value = boneIdx;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_bone_enabled, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_bone_enabled =
      resolveMethodBind('Skeleton3D', 'set_bone_enabled', 972357352);

  void setBoneEnabled(int boneIdx, bool enabled) {
    final arg0 = malloc<Int64>()..value = boneIdx;
    final arg1 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_bone_enabled, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_bone_global_pose =
      resolveMethodBind('Skeleton3D', 'get_bone_global_pose', 1965739696);

  Transform3D getBoneGlobalPose(int boneIdx) {
    final arg0 = malloc<Int64>()..value = boneIdx;
    try {
      final ret = malloc<Uint8>(Transform3D.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_bone_global_pose, nativePtr, [arg0.cast<Void>()], ret.cast());
        return Transform3D.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_bone_global_pose =
      resolveMethodBind('Skeleton3D', 'set_bone_global_pose', 3616898986);

  void setBoneGlobalPose(int boneIdx, Transform3D pose) {
    final arg0 = malloc<Int64>()..value = boneIdx;
    final arg1 = malloc<Uint8>(Transform3D.nativeSize);
    pose.writeTo(arg1, 0);
    try {
      ptrcallVoid(_mb_set_bone_global_pose, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_force_update_all_bone_transforms =
      resolveMethodBind('Skeleton3D', 'force_update_all_bone_transforms', 3218959716);

  void forceUpdateAllBoneTransforms() {
    try {
      ptrcallVoid(_mb_force_update_all_bone_transforms, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_force_update_bone_child_transform =
      resolveMethodBind('Skeleton3D', 'force_update_bone_child_transform', 1286410249);

  void forceUpdateBoneChildTransform(int boneIdx) {
    final arg0 = malloc<Int64>()..value = boneIdx;
    try {
      ptrcallVoid(_mb_force_update_bone_child_transform, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_motion_scale =
      resolveMethodBind('Skeleton3D', 'set_motion_scale', 373806689);

  void setMotionScale(double motionScale) {
    final arg0 = malloc<Double>()..value = motionScale;
    try {
      ptrcallVoid(_mb_set_motion_scale, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_motion_scale =
      resolveMethodBind('Skeleton3D', 'get_motion_scale', 1740695150);

  double getMotionScale() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_motion_scale, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_show_rest_only =
      resolveMethodBind('Skeleton3D', 'set_show_rest_only', 2586408642);

  void setShowRestOnly(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_show_rest_only, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_show_rest_only =
      resolveMethodBind('Skeleton3D', 'is_show_rest_only', 36873697);

  bool isShowRestOnly() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_show_rest_only, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_modifier_callback_mode_process =
      resolveMethodBind('Skeleton3D', 'set_modifier_callback_mode_process', 3916362634);

  void setModifierCallbackModeProcess(int mode) {
    final arg0 = malloc<Int64>()..value = mode;
    try {
      ptrcallVoid(_mb_set_modifier_callback_mode_process, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_modifier_callback_mode_process =
      resolveMethodBind('Skeleton3D', 'get_modifier_callback_mode_process', 997182536);

  int getModifierCallbackModeProcess() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_modifier_callback_mode_process, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_advance =
      resolveMethodBind('Skeleton3D', 'advance', 373806689);

  void advance(double delta) {
    final arg0 = malloc<Double>()..value = delta;
    try {
      ptrcallVoid(_mb_advance, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_clear_bones_global_pose_override =
      resolveMethodBind('Skeleton3D', 'clear_bones_global_pose_override', 3218959716);

  void clearBonesGlobalPoseOverride() {
    try {
      ptrcallVoid(_mb_clear_bones_global_pose_override, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_bone_global_pose_override =
      resolveMethodBind('Skeleton3D', 'set_bone_global_pose_override', 3483398371);

  void setBoneGlobalPoseOverride(int boneIdx, Transform3D pose, double amount, bool persistent) {
    final arg0 = malloc<Int64>()..value = boneIdx;
    final arg1 = malloc<Uint8>(Transform3D.nativeSize);
    pose.writeTo(arg1, 0);
    final arg2 = malloc<Double>()..value = amount;
    final arg3 = malloc<Uint8>()..value = persistent ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_bone_global_pose_override, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>(), arg3.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
      malloc.free(arg3);
    }
  }

  static final Pointer<Void> _mb_get_bone_global_pose_override =
      resolveMethodBind('Skeleton3D', 'get_bone_global_pose_override', 1965739696);

  Transform3D getBoneGlobalPoseOverride(int boneIdx) {
    final arg0 = malloc<Int64>()..value = boneIdx;
    try {
      final ret = malloc<Uint8>(Transform3D.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_bone_global_pose_override, nativePtr, [arg0.cast<Void>()], ret.cast());
        return Transform3D.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_bone_global_pose_no_override =
      resolveMethodBind('Skeleton3D', 'get_bone_global_pose_no_override', 1965739696);

  Transform3D getBoneGlobalPoseNoOverride(int boneIdx) {
    final arg0 = malloc<Int64>()..value = boneIdx;
    try {
      final ret = malloc<Uint8>(Transform3D.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_bone_global_pose_no_override, nativePtr, [arg0.cast<Void>()], ret.cast());
        return Transform3D.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_animate_physical_bones =
      resolveMethodBind('Skeleton3D', 'set_animate_physical_bones', 2586408642);

  void setAnimatePhysicalBones(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_animate_physical_bones, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_animate_physical_bones =
      resolveMethodBind('Skeleton3D', 'get_animate_physical_bones', 36873697);

  bool getAnimatePhysicalBones() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_animate_physical_bones, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_physical_bones_stop_simulation =
      resolveMethodBind('Skeleton3D', 'physical_bones_stop_simulation', 3218959716);

  void physicalBonesStopSimulation() {
    try {
      ptrcallVoid(_mb_physical_bones_stop_simulation, nativePtr, []);
    } finally {
    }
  }

  // Skipped physical_bones_start_simulation(): an argument type is unsupported.
  // Skipped physical_bones_add_collision_exception(): an argument type is unsupported.
  // Skipped physical_bones_remove_collision_exception(): an argument type is unsupported.
}
