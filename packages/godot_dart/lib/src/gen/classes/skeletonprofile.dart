// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class SkeletonProfile extends Resource {
  SkeletonProfile(super.nativePtr);

  static final Pointer<Void> _mb_set_root_bone =
      resolveMethodBind('SkeletonProfile', 'set_root_bone', 3304788590);

  void setRootBone(String boneName) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), boneName);
    try {
      ptrcallVoid(_mb_set_root_bone, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_root_bone =
      resolveMethodBind('SkeletonProfile', 'get_root_bone', 2737447660);

  String getRootBone() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_root_bone, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readStringName(ret.cast());
        BuiltinMarshal.destroyStringName(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_scale_base_bone =
      resolveMethodBind('SkeletonProfile', 'set_scale_base_bone', 3304788590);

  void setScaleBaseBone(String boneName) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), boneName);
    try {
      ptrcallVoid(_mb_set_scale_base_bone, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_scale_base_bone =
      resolveMethodBind('SkeletonProfile', 'get_scale_base_bone', 2737447660);

  String getScaleBaseBone() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_scale_base_bone, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readStringName(ret.cast());
        BuiltinMarshal.destroyStringName(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_group_size =
      resolveMethodBind('SkeletonProfile', 'set_group_size', 1286410249);

  void setGroupSize(int size) {
    final arg0 = malloc<Int64>()..value = size;
    try {
      ptrcallVoid(_mb_set_group_size, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_group_size =
      resolveMethodBind('SkeletonProfile', 'get_group_size', 2455072627);

  int getGroupSize() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_group_size, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_group_name =
      resolveMethodBind('SkeletonProfile', 'get_group_name', 659327637);

  String getGroupName(int groupIdx) {
    final arg0 = malloc<Int64>()..value = groupIdx;
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_group_name, nativePtr, [arg0.cast<Void>()], ret.cast());
        final result = BuiltinMarshal.readStringName(ret.cast());
        BuiltinMarshal.destroyStringName(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_group_name =
      resolveMethodBind('SkeletonProfile', 'set_group_name', 3780747571);

  void setGroupName(int groupIdx, String groupName) {
    final arg0 = malloc<Int64>()..value = groupIdx;
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg1.cast(), groupName);
    try {
      ptrcallVoid(_mb_set_group_name, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      BuiltinMarshal.destroyStringName(arg1.cast());
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_texture =
      resolveMethodBind('SkeletonProfile', 'get_texture', 3536238170);

  Texture2D? getTexture(int groupIdx) {
    final arg0 = malloc<Int64>()..value = groupIdx;
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_texture, nativePtr, [arg0.cast<Void>()], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Texture2D(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_texture =
      resolveMethodBind('SkeletonProfile', 'set_texture', 666127730);

  void setTexture(int groupIdx, Texture2D texture) {
    final arg0 = malloc<Int64>()..value = groupIdx;
    final arg1 = malloc<Pointer<Void>>()..value = texture.nativePtr;
    try {
      ptrcallVoid(_mb_set_texture, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_set_bone_size =
      resolveMethodBind('SkeletonProfile', 'set_bone_size', 1286410249);

  void setBoneSize(int size) {
    final arg0 = malloc<Int64>()..value = size;
    try {
      ptrcallVoid(_mb_set_bone_size, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_bone_size =
      resolveMethodBind('SkeletonProfile', 'get_bone_size', 2455072627);

  int getBoneSize() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_bone_size, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_find_bone =
      resolveMethodBind('SkeletonProfile', 'find_bone', 2458036349);

  int findBone(String boneName) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), boneName);
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_find_bone, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_bone_name =
      resolveMethodBind('SkeletonProfile', 'get_bone_name', 659327637);

  String getBoneName(int boneIdx) {
    final arg0 = malloc<Int64>()..value = boneIdx;
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_bone_name, nativePtr, [arg0.cast<Void>()], ret.cast());
        final result = BuiltinMarshal.readStringName(ret.cast());
        BuiltinMarshal.destroyStringName(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_bone_name =
      resolveMethodBind('SkeletonProfile', 'set_bone_name', 3780747571);

  void setBoneName(int boneIdx, String boneName) {
    final arg0 = malloc<Int64>()..value = boneIdx;
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg1.cast(), boneName);
    try {
      ptrcallVoid(_mb_set_bone_name, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      BuiltinMarshal.destroyStringName(arg1.cast());
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_bone_parent =
      resolveMethodBind('SkeletonProfile', 'get_bone_parent', 659327637);

  String getBoneParent(int boneIdx) {
    final arg0 = malloc<Int64>()..value = boneIdx;
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_bone_parent, nativePtr, [arg0.cast<Void>()], ret.cast());
        final result = BuiltinMarshal.readStringName(ret.cast());
        BuiltinMarshal.destroyStringName(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_bone_parent =
      resolveMethodBind('SkeletonProfile', 'set_bone_parent', 3780747571);

  void setBoneParent(int boneIdx, String boneParent) {
    final arg0 = malloc<Int64>()..value = boneIdx;
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg1.cast(), boneParent);
    try {
      ptrcallVoid(_mb_set_bone_parent, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      BuiltinMarshal.destroyStringName(arg1.cast());
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_tail_direction =
      resolveMethodBind('SkeletonProfile', 'get_tail_direction', 2675997574);

  int getTailDirection(int boneIdx) {
    final arg0 = malloc<Int64>()..value = boneIdx;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_tail_direction, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_tail_direction =
      resolveMethodBind('SkeletonProfile', 'set_tail_direction', 1231951015);

  void setTailDirection(int boneIdx, int tailDirection) {
    final arg0 = malloc<Int64>()..value = boneIdx;
    final arg1 = malloc<Int64>()..value = tailDirection;
    try {
      ptrcallVoid(_mb_set_tail_direction, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_bone_tail =
      resolveMethodBind('SkeletonProfile', 'get_bone_tail', 659327637);

  String getBoneTail(int boneIdx) {
    final arg0 = malloc<Int64>()..value = boneIdx;
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_bone_tail, nativePtr, [arg0.cast<Void>()], ret.cast());
        final result = BuiltinMarshal.readStringName(ret.cast());
        BuiltinMarshal.destroyStringName(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_bone_tail =
      resolveMethodBind('SkeletonProfile', 'set_bone_tail', 3780747571);

  void setBoneTail(int boneIdx, String boneTail) {
    final arg0 = malloc<Int64>()..value = boneIdx;
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg1.cast(), boneTail);
    try {
      ptrcallVoid(_mb_set_bone_tail, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      BuiltinMarshal.destroyStringName(arg1.cast());
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_reference_pose =
      resolveMethodBind('SkeletonProfile', 'get_reference_pose', 1965739696);

  Transform3D getReferencePose(int boneIdx) {
    final arg0 = malloc<Int64>()..value = boneIdx;
    try {
      final ret = malloc<Uint8>(Transform3D.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_reference_pose, nativePtr, [arg0.cast<Void>()], ret.cast());
        return Transform3D.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_reference_pose =
      resolveMethodBind('SkeletonProfile', 'set_reference_pose', 3616898986);

  void setReferencePose(int boneIdx, Transform3D boneName) {
    final arg0 = malloc<Int64>()..value = boneIdx;
    final arg1 = malloc<Uint8>(Transform3D.nativeSize);
    boneName.writeTo(arg1, 0);
    try {
      ptrcallVoid(_mb_set_reference_pose, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_handle_offset =
      resolveMethodBind('SkeletonProfile', 'get_handle_offset', 2299179447);

  Vector2 getHandleOffset(int boneIdx) {
    final arg0 = malloc<Int64>()..value = boneIdx;
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_handle_offset, nativePtr, [arg0.cast<Void>()], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_handle_offset =
      resolveMethodBind('SkeletonProfile', 'set_handle_offset', 163021252);

  void setHandleOffset(int boneIdx, Vector2 handleOffset) {
    final arg0 = malloc<Int64>()..value = boneIdx;
    final arg1 = malloc<Uint8>(Vector2.nativeSize);
    handleOffset.writeTo(arg1, 0);
    try {
      ptrcallVoid(_mb_set_handle_offset, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_group =
      resolveMethodBind('SkeletonProfile', 'get_group', 659327637);

  String getGroup(int boneIdx) {
    final arg0 = malloc<Int64>()..value = boneIdx;
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_group, nativePtr, [arg0.cast<Void>()], ret.cast());
        final result = BuiltinMarshal.readStringName(ret.cast());
        BuiltinMarshal.destroyStringName(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_group =
      resolveMethodBind('SkeletonProfile', 'set_group', 3780747571);

  void setGroup(int boneIdx, String group) {
    final arg0 = malloc<Int64>()..value = boneIdx;
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg1.cast(), group);
    try {
      ptrcallVoid(_mb_set_group, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      BuiltinMarshal.destroyStringName(arg1.cast());
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_is_required =
      resolveMethodBind('SkeletonProfile', 'is_required', 1116898809);

  bool isRequired(int boneIdx) {
    final arg0 = malloc<Int64>()..value = boneIdx;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_required, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_required =
      resolveMethodBind('SkeletonProfile', 'set_required', 300928843);

  void setRequired(int boneIdx, bool required_) {
    final arg0 = malloc<Int64>()..value = boneIdx;
    final arg1 = malloc<Uint8>()..value = required_ ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_required, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

}
