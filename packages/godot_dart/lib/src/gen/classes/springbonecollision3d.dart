// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class SpringBoneCollision3D extends Node3D {
  SpringBoneCollision3D(super.nativePtr);

  /// Constructs a brand-new engine-owned SpringBoneCollision3D instance
  /// (via classdb_construct_object3), not an existing one.
  factory SpringBoneCollision3D.create() {
    return SpringBoneCollision3D(resolveClassConstructor('SpringBoneCollision3D'));
  }

  static final Pointer<Void> _mb_get_skeleton =
      resolveMethodBind('SpringBoneCollision3D', 'get_skeleton', 1488626673);

  Skeleton3D? getSkeleton() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_skeleton, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Skeleton3D(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_bone_name =
      resolveMethodBind('SpringBoneCollision3D', 'set_bone_name', 83702148);

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
      resolveMethodBind('SpringBoneCollision3D', 'get_bone_name', 201670096);

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
      resolveMethodBind('SpringBoneCollision3D', 'set_bone', 1286410249);

  void setBone(int bone) {
    final arg0 = malloc<Int64>()..value = bone;
    try {
      ptrcallVoid(_mb_set_bone, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_bone =
      resolveMethodBind('SpringBoneCollision3D', 'get_bone', 3905245786);

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

  static final Pointer<Void> _mb_set_position_offset =
      resolveMethodBind('SpringBoneCollision3D', 'set_position_offset', 3460891852);

  void setPositionOffset(Vector3 offset) {
    final arg0 = malloc<Uint8>(Vector3.nativeSize);
    offset.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_position_offset, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_position_offset =
      resolveMethodBind('SpringBoneCollision3D', 'get_position_offset', 3360562783);

  Vector3 getPositionOffset() {
    try {
      final ret = malloc<Uint8>(Vector3.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_position_offset, nativePtr, [], ret.cast());
        return Vector3.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_rotation_offset =
      resolveMethodBind('SpringBoneCollision3D', 'set_rotation_offset', 1727505552);

  void setRotationOffset(Quaternion offset) {
    final arg0 = malloc<Uint8>(Quaternion.nativeSize);
    offset.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_rotation_offset, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_rotation_offset =
      resolveMethodBind('SpringBoneCollision3D', 'get_rotation_offset', 1222331677);

  Quaternion getRotationOffset() {
    try {
      final ret = malloc<Uint8>(Quaternion.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_rotation_offset, nativePtr, [], ret.cast());
        return Quaternion.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
