// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class Skeleton2D extends Node2D {
  Skeleton2D(super.nativePtr);

  /// Constructs a brand-new engine-owned Skeleton2D instance
  /// (via classdb_construct_object3), not an existing one.
  factory Skeleton2D.create() {
    return Skeleton2D(resolveClassConstructor('Skeleton2D'));
  }

  static final Pointer<Void> _mb_get_bone_count =
      resolveMethodBind('Skeleton2D', 'get_bone_count', 3905245786);

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

  static final Pointer<Void> _mb_get_bone =
      resolveMethodBind('Skeleton2D', 'get_bone', 2556267111);

  Bone2D? getBone(int idx) {
    final arg0 = malloc<Int64>()..value = idx;
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_bone, nativePtr, [arg0.cast<Void>()], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Bone2D(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  // Skipped get_skeleton(): unsupported return type "RID".
  static final Pointer<Void> _mb_set_modification_stack =
      resolveMethodBind('Skeleton2D', 'set_modification_stack', 3907307132);

  void setModificationStack(SkeletonModificationStack2D modificationStack) {
    final arg0 = malloc<Pointer<Void>>()..value = modificationStack.nativePtr;
    try {
      ptrcallVoid(_mb_set_modification_stack, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_modification_stack =
      resolveMethodBind('Skeleton2D', 'get_modification_stack', 2107508396);

  SkeletonModificationStack2D? getModificationStack() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_modification_stack, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : SkeletonModificationStack2D(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_execute_modifications =
      resolveMethodBind('Skeleton2D', 'execute_modifications', 1005356550);

  void executeModifications(double delta, int executionMode) {
    final arg0 = malloc<Double>()..value = delta;
    final arg1 = malloc<Int64>()..value = executionMode;
    try {
      ptrcallVoid(_mb_execute_modifications, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_set_bone_local_pose_override =
      resolveMethodBind('Skeleton2D', 'set_bone_local_pose_override', 555457532);

  void setBoneLocalPoseOverride(int boneIdx, Transform2D overridePose, double strength, bool persistent) {
    final arg0 = malloc<Int64>()..value = boneIdx;
    final arg1 = malloc<Uint8>(Transform2D.nativeSize);
    overridePose.writeTo(arg1, 0);
    final arg2 = malloc<Double>()..value = strength;
    final arg3 = malloc<Uint8>()..value = persistent ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_bone_local_pose_override, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>(), arg3.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
      malloc.free(arg3);
    }
  }

  static final Pointer<Void> _mb_get_bone_local_pose_override =
      resolveMethodBind('Skeleton2D', 'get_bone_local_pose_override', 2995540667);

  Transform2D getBoneLocalPoseOverride(int boneIdx) {
    final arg0 = malloc<Int64>()..value = boneIdx;
    try {
      final ret = malloc<Uint8>(Transform2D.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_bone_local_pose_override, nativePtr, [arg0.cast<Void>()], ret.cast());
        return Transform2D.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

}
