// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class GLTFSkin extends Resource {
  GLTFSkin(super.nativePtr);

  /// Constructs a brand-new engine-owned GLTFSkin instance
  /// (via classdb_construct_object3), not an existing one.
  factory GLTFSkin.create() {
    return GLTFSkin(resolveClassConstructor('GLTFSkin'));
  }

  static final Pointer<Void> _mb_get_skin_root =
      resolveMethodBind('GLTFSkin', 'get_skin_root', 2455072627);

  int getSkinRoot() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_skin_root, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_skin_root =
      resolveMethodBind('GLTFSkin', 'set_skin_root', 1286410249);

  void setSkinRoot(int skinRoot) {
    final arg0 = malloc<Int64>()..value = skinRoot;
    try {
      ptrcallVoid(_mb_set_skin_root, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  // Skipped get_joints_original(): unsupported return type "PackedInt32Array".
  // Skipped set_joints_original(): an argument type is unsupported.
  // Skipped get_inverse_binds(): unsupported return type "typedarray::Transform3D".
  // Skipped set_inverse_binds(): an argument type is unsupported.
  // Skipped get_joints(): unsupported return type "PackedInt32Array".
  // Skipped set_joints(): an argument type is unsupported.
  // Skipped get_non_joints(): unsupported return type "PackedInt32Array".
  // Skipped set_non_joints(): an argument type is unsupported.
  // Skipped get_roots(): unsupported return type "PackedInt32Array".
  // Skipped set_roots(): an argument type is unsupported.
  static final Pointer<Void> _mb_get_skeleton =
      resolveMethodBind('GLTFSkin', 'get_skeleton', 2455072627);

  int getSkeleton() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_skeleton, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_skeleton =
      resolveMethodBind('GLTFSkin', 'set_skeleton', 1286410249);

  void setSkeleton(int skeleton) {
    final arg0 = malloc<Int64>()..value = skeleton;
    try {
      ptrcallVoid(_mb_set_skeleton, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  // Skipped get_joint_i_to_bone_i(): unsupported return type "Dictionary".
  // Skipped set_joint_i_to_bone_i(): an argument type is unsupported.
  // Skipped get_joint_i_to_name(): unsupported return type "Dictionary".
  // Skipped set_joint_i_to_name(): an argument type is unsupported.
  static final Pointer<Void> _mb_get_godot_skin =
      resolveMethodBind('GLTFSkin', 'get_godot_skin', 1032037385);

  Skin? getGodotSkin() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_godot_skin, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Skin(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_godot_skin =
      resolveMethodBind('GLTFSkin', 'set_godot_skin', 3971435618);

  void setGodotSkin(Skin godotSkin) {
    final arg0 = malloc<Pointer<Void>>()..value = godotSkin.nativePtr;
    try {
      ptrcallVoid(_mb_set_godot_skin, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

}
