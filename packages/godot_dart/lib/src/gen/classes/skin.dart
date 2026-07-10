// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class Skin extends Resource {
  Skin(super.nativePtr);

  static final Pointer<Void> _mb_set_bind_count =
      resolveMethodBind('Skin', 'set_bind_count', 1286410249);

  void setBindCount(int bindCount) {
    final arg0 = malloc<Int64>()..value = bindCount;
    try {
      ptrcallVoid(_mb_set_bind_count, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_bind_count =
      resolveMethodBind('Skin', 'get_bind_count', 3905245786);

  int getBindCount() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_bind_count, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_add_bind =
      resolveMethodBind('Skin', 'add_bind', 3616898986);

  void addBind(int bone, Transform3D pose) {
    final arg0 = malloc<Int64>()..value = bone;
    final arg1 = malloc<Uint8>(Transform3D.nativeSize);
    pose.writeTo(arg1, 0);
    try {
      ptrcallVoid(_mb_add_bind, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_add_named_bind =
      resolveMethodBind('Skin', 'add_named_bind', 3154712474);

  void addNamedBind(String name, Transform3D pose) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), name);
    final arg1 = malloc<Uint8>(Transform3D.nativeSize);
    pose.writeTo(arg1, 0);
    try {
      ptrcallVoid(_mb_add_named_bind, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_set_bind_pose =
      resolveMethodBind('Skin', 'set_bind_pose', 3616898986);

  void setBindPose(int bindIndex, Transform3D pose) {
    final arg0 = malloc<Int64>()..value = bindIndex;
    final arg1 = malloc<Uint8>(Transform3D.nativeSize);
    pose.writeTo(arg1, 0);
    try {
      ptrcallVoid(_mb_set_bind_pose, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_bind_pose =
      resolveMethodBind('Skin', 'get_bind_pose', 1965739696);

  Transform3D getBindPose(int bindIndex) {
    final arg0 = malloc<Int64>()..value = bindIndex;
    try {
      final ret = malloc<Uint8>(Transform3D.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_bind_pose, nativePtr, [arg0.cast<Void>()], ret.cast());
        return Transform3D.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_bind_name =
      resolveMethodBind('Skin', 'set_bind_name', 3780747571);

  void setBindName(int bindIndex, String name) {
    final arg0 = malloc<Int64>()..value = bindIndex;
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg1.cast(), name);
    try {
      ptrcallVoid(_mb_set_bind_name, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      BuiltinMarshal.destroyStringName(arg1.cast());
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_bind_name =
      resolveMethodBind('Skin', 'get_bind_name', 659327637);

  String getBindName(int bindIndex) {
    final arg0 = malloc<Int64>()..value = bindIndex;
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_bind_name, nativePtr, [arg0.cast<Void>()], ret.cast());
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

  static final Pointer<Void> _mb_set_bind_bone =
      resolveMethodBind('Skin', 'set_bind_bone', 3937882851);

  void setBindBone(int bindIndex, int bone) {
    final arg0 = malloc<Int64>()..value = bindIndex;
    final arg1 = malloc<Int64>()..value = bone;
    try {
      ptrcallVoid(_mb_set_bind_bone, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_bind_bone =
      resolveMethodBind('Skin', 'get_bind_bone', 923996154);

  int getBindBone(int bindIndex) {
    final arg0 = malloc<Int64>()..value = bindIndex;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_bind_bone, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_clear_binds =
      resolveMethodBind('Skin', 'clear_binds', 3218959716);

  void clearBinds() {
    try {
      ptrcallVoid(_mb_clear_binds, nativePtr, []);
    } finally {
    }
  }

}
