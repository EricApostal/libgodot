// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class GLTFSkeleton extends Resource {
  GLTFSkeleton(super.nativePtr);

  // Skipped get_joints(): unsupported return type "PackedInt32Array".
  // Skipped set_joints(): an argument type is unsupported.
  // Skipped get_roots(): unsupported return type "PackedInt32Array".
  // Skipped set_roots(): an argument type is unsupported.
  static final Pointer<Void> _mb_get_godot_skeleton =
      resolveMethodBind('GLTFSkeleton', 'get_godot_skeleton', 1814733083);

  Skeleton3D? getGodotSkeleton() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_godot_skeleton, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Skeleton3D(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  // Skipped get_unique_names(): unsupported return type "typedarray::String".
  // Skipped set_unique_names(): an argument type is unsupported.
  // Skipped get_godot_bone_node(): unsupported return type "Dictionary".
  // Skipped set_godot_bone_node(): an argument type is unsupported.
  static final Pointer<Void> _mb_get_bone_attachment_count =
      resolveMethodBind('GLTFSkeleton', 'get_bone_attachment_count', 2455072627);

  int getBoneAttachmentCount() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_bone_attachment_count, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_bone_attachment =
      resolveMethodBind('GLTFSkeleton', 'get_bone_attachment', 945440495);

  BoneAttachment3D? getBoneAttachment(int idx) {
    final arg0 = malloc<Int64>()..value = idx;
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_bone_attachment, nativePtr, [arg0.cast<Void>()], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : BoneAttachment3D(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

}
