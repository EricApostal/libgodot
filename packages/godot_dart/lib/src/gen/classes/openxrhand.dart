// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class OpenXRHand extends Node3D {
  OpenXRHand(super.nativePtr);

  static final Pointer<Void> _mb_set_hand =
      resolveMethodBind('OpenXRHand', 'set_hand', 1849328560);

  void setHand(int hand) {
    final arg0 = malloc<Int64>()..value = hand;
    try {
      ptrcallVoid(_mb_set_hand, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_hand =
      resolveMethodBind('OpenXRHand', 'get_hand', 2850644561);

  int getHand() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_hand, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  // Skipped set_hand_skeleton(): an argument type is unsupported.
  // Skipped get_hand_skeleton(): unsupported return type "NodePath".
  static final Pointer<Void> _mb_set_motion_range =
      resolveMethodBind('OpenXRHand', 'set_motion_range', 3326516003);

  void setMotionRange(int motionRange) {
    final arg0 = malloc<Int64>()..value = motionRange;
    try {
      ptrcallVoid(_mb_set_motion_range, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_motion_range =
      resolveMethodBind('OpenXRHand', 'get_motion_range', 2191822314);

  int getMotionRange() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_motion_range, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_skeleton_rig =
      resolveMethodBind('OpenXRHand', 'set_skeleton_rig', 1528072213);

  void setSkeletonRig(int skeletonRig) {
    final arg0 = malloc<Int64>()..value = skeletonRig;
    try {
      ptrcallVoid(_mb_set_skeleton_rig, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_skeleton_rig =
      resolveMethodBind('OpenXRHand', 'get_skeleton_rig', 968409338);

  int getSkeletonRig() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_skeleton_rig, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_bone_update =
      resolveMethodBind('OpenXRHand', 'set_bone_update', 3144625444);

  void setBoneUpdate(int boneUpdate) {
    final arg0 = malloc<Int64>()..value = boneUpdate;
    try {
      ptrcallVoid(_mb_set_bone_update, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_bone_update =
      resolveMethodBind('OpenXRHand', 'get_bone_update', 1310695248);

  int getBoneUpdate() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_bone_update, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
