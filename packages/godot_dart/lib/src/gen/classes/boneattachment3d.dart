// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class BoneAttachment3D extends Node3D {
  BoneAttachment3D(super.nativePtr);

  static final Pointer<Void> _mb_get_skeleton =
      resolveMethodBind('BoneAttachment3D', 'get_skeleton', 1814733083);

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
      resolveMethodBind('BoneAttachment3D', 'set_bone_name', 83702148);

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
      resolveMethodBind('BoneAttachment3D', 'get_bone_name', 201670096);

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

  static final Pointer<Void> _mb_set_bone_idx =
      resolveMethodBind('BoneAttachment3D', 'set_bone_idx', 1286410249);

  void setBoneIdx(int boneIdx) {
    final arg0 = malloc<Int64>()..value = boneIdx;
    try {
      ptrcallVoid(_mb_set_bone_idx, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_bone_idx =
      resolveMethodBind('BoneAttachment3D', 'get_bone_idx', 3905245786);

  int getBoneIdx() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_bone_idx, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_on_skeleton_update =
      resolveMethodBind('BoneAttachment3D', 'on_skeleton_update', 3218959716);

  void onSkeletonUpdate() {
    try {
      ptrcallVoid(_mb_on_skeleton_update, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_override_pose =
      resolveMethodBind('BoneAttachment3D', 'set_override_pose', 2586408642);

  void setOverridePose(bool overridePose) {
    final arg0 = malloc<Uint8>()..value = overridePose ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_override_pose, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_override_pose =
      resolveMethodBind('BoneAttachment3D', 'get_override_pose', 36873697);

  bool getOverridePose() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_override_pose, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_use_external_skeleton =
      resolveMethodBind('BoneAttachment3D', 'set_use_external_skeleton', 2586408642);

  void setUseExternalSkeleton(bool useExternalSkeleton) {
    final arg0 = malloc<Uint8>()..value = useExternalSkeleton ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_use_external_skeleton, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_use_external_skeleton =
      resolveMethodBind('BoneAttachment3D', 'get_use_external_skeleton', 36873697);

  bool getUseExternalSkeleton() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_use_external_skeleton, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  // Skipped set_external_skeleton(): an argument type is unsupported.
  // Skipped get_external_skeleton(): unsupported return type "NodePath".
}
