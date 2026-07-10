// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class BoneMap extends Resource {
  BoneMap(super.nativePtr);

  /// Constructs a brand-new engine-owned BoneMap instance
  /// (via classdb_construct_object3), not an existing one.
  factory BoneMap.create() {
    return BoneMap(resolveClassConstructor('BoneMap'));
  }

  static final Pointer<Void> _mb_get_profile =
      resolveMethodBind('BoneMap', 'get_profile', 4291782652);

  SkeletonProfile? getProfile() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_profile, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : SkeletonProfile(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_profile =
      resolveMethodBind('BoneMap', 'set_profile', 3870374136);

  void setProfile(SkeletonProfile profile) {
    final arg0 = malloc<Pointer<Void>>()..value = profile.nativePtr;
    try {
      ptrcallVoid(_mb_set_profile, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_skeleton_bone_name =
      resolveMethodBind('BoneMap', 'get_skeleton_bone_name', 1965194235);

  String getSkeletonBoneName(String profileBoneName) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), profileBoneName);
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_skeleton_bone_name, nativePtr, [arg0.cast<Void>()], ret.cast());
        final result = BuiltinMarshal.readStringName(ret.cast());
        BuiltinMarshal.destroyStringName(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_skeleton_bone_name =
      resolveMethodBind('BoneMap', 'set_skeleton_bone_name', 3740211285);

  void setSkeletonBoneName(String profileBoneName, String skeletonBoneName) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), profileBoneName);
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg1.cast(), skeletonBoneName);
    try {
      ptrcallVoid(_mb_set_skeleton_bone_name, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
      BuiltinMarshal.destroyStringName(arg1.cast());
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_find_profile_bone_name =
      resolveMethodBind('BoneMap', 'find_profile_bone_name', 1965194235);

  String findProfileBoneName(String skeletonBoneName) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), skeletonBoneName);
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_find_profile_bone_name, nativePtr, [arg0.cast<Void>()], ret.cast());
        final result = BuiltinMarshal.readStringName(ret.cast());
        BuiltinMarshal.destroyStringName(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
    }
  }

}
