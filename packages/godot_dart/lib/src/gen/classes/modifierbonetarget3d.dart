// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class ModifierBoneTarget3D extends SkeletonModifier3D {
  ModifierBoneTarget3D(super.nativePtr);

  static final Pointer<Void> _mb_set_bone_name =
      resolveMethodBind('ModifierBoneTarget3D', 'set_bone_name', 83702148);

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
      resolveMethodBind('ModifierBoneTarget3D', 'get_bone_name', 201670096);

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
      resolveMethodBind('ModifierBoneTarget3D', 'set_bone', 1286410249);

  void setBone(int bone) {
    final arg0 = malloc<Int64>()..value = bone;
    try {
      ptrcallVoid(_mb_set_bone, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_bone =
      resolveMethodBind('ModifierBoneTarget3D', 'get_bone', 3905245786);

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

}
