// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class AnimationLibrary extends Resource {
  AnimationLibrary(super.nativePtr);

  /// Constructs a brand-new engine-owned AnimationLibrary instance
  /// (via classdb_construct_object3), not an existing one.
  factory AnimationLibrary.create() {
    return AnimationLibrary(resolveClassConstructor('AnimationLibrary'));
  }

  static final Pointer<Void> _mb_add_animation =
      resolveMethodBind('AnimationLibrary', 'add_animation', 1811855551);

  int addAnimation(String name, Animation animation) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), name);
    final arg1 = malloc<Pointer<Void>>()..value = animation.nativePtr;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_add_animation, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_remove_animation =
      resolveMethodBind('AnimationLibrary', 'remove_animation', 3304788590);

  void removeAnimation(String name) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), name);
    try {
      ptrcallVoid(_mb_remove_animation, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_rename_animation =
      resolveMethodBind('AnimationLibrary', 'rename_animation', 3740211285);

  void renameAnimation(String name, String newname) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), name);
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg1.cast(), newname);
    try {
      ptrcallVoid(_mb_rename_animation, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
      BuiltinMarshal.destroyStringName(arg1.cast());
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_has_animation =
      resolveMethodBind('AnimationLibrary', 'has_animation', 2619796661);

  bool hasAnimation(String name) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), name);
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_has_animation, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_animation =
      resolveMethodBind('AnimationLibrary', 'get_animation', 2933122410);

  Animation? getAnimation(String name) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), name);
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_animation, nativePtr, [arg0.cast<Void>()], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Animation(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
    }
  }

  // Skipped get_animation_list(): unsupported return type "typedarray::StringName".
  static final Pointer<Void> _mb_get_animation_list_size =
      resolveMethodBind('AnimationLibrary', 'get_animation_list_size', 3905245786);

  int getAnimationListSize() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_animation_list_size, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
