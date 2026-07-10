// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class SpriteFrames extends Resource {
  SpriteFrames(super.nativePtr);

  /// Constructs a brand-new engine-owned SpriteFrames instance
  /// (via classdb_construct_object3), not an existing one.
  factory SpriteFrames.create() {
    return SpriteFrames(resolveClassConstructor('SpriteFrames'));
  }

  static final Pointer<Void> _mb_add_animation =
      resolveMethodBind('SpriteFrames', 'add_animation', 3304788590);

  void addAnimation(String anim) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), anim);
    try {
      ptrcallVoid(_mb_add_animation, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_has_animation =
      resolveMethodBind('SpriteFrames', 'has_animation', 2619796661);

  bool hasAnimation(String anim) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), anim);
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

  static final Pointer<Void> _mb_duplicate_animation =
      resolveMethodBind('SpriteFrames', 'duplicate_animation', 3740211285);

  void duplicateAnimation(String animFrom, String animTo) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), animFrom);
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg1.cast(), animTo);
    try {
      ptrcallVoid(_mb_duplicate_animation, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
      BuiltinMarshal.destroyStringName(arg1.cast());
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_remove_animation =
      resolveMethodBind('SpriteFrames', 'remove_animation', 3304788590);

  void removeAnimation(String anim) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), anim);
    try {
      ptrcallVoid(_mb_remove_animation, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_rename_animation =
      resolveMethodBind('SpriteFrames', 'rename_animation', 3740211285);

  void renameAnimation(String anim, String newname) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), anim);
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

  // Skipped get_animation_names(): unsupported return type "PackedStringArray".
  static final Pointer<Void> _mb_set_animation_speed =
      resolveMethodBind('SpriteFrames', 'set_animation_speed', 4135858297);

  void setAnimationSpeed(String anim, double fps) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), anim);
    final arg1 = malloc<Double>()..value = fps;
    try {
      ptrcallVoid(_mb_set_animation_speed, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_animation_speed =
      resolveMethodBind('SpriteFrames', 'get_animation_speed', 2349060816);

  double getAnimationSpeed(String anim) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), anim);
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_animation_speed, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_animation_loop =
      resolveMethodBind('SpriteFrames', 'set_animation_loop', 2524380260);

  void setAnimationLoop(String anim, bool loop) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), anim);
    final arg1 = malloc<Uint8>()..value = loop ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_animation_loop, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_animation_loop =
      resolveMethodBind('SpriteFrames', 'get_animation_loop', 2619796661);

  bool getAnimationLoop(String anim) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), anim);
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_animation_loop, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_animation_loop_mode =
      resolveMethodBind('SpriteFrames', 'set_animation_loop_mode', 918068248);

  void setAnimationLoopMode(String anim, int loopMode) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), anim);
    final arg1 = malloc<Int64>()..value = loopMode;
    try {
      ptrcallVoid(_mb_set_animation_loop_mode, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_animation_loop_mode =
      resolveMethodBind('SpriteFrames', 'get_animation_loop_mode', 3606360228);

  int getAnimationLoopMode(String anim) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), anim);
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_animation_loop_mode, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_add_frame =
      resolveMethodBind('SpriteFrames', 'add_frame', 1351332740);

  void addFrame(String anim, Texture2D texture, double duration, int atPosition) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), anim);
    final arg1 = malloc<Pointer<Void>>()..value = texture.nativePtr;
    final arg2 = malloc<Double>()..value = duration;
    final arg3 = malloc<Int64>()..value = atPosition;
    try {
      ptrcallVoid(_mb_add_frame, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>(), arg3.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
      malloc.free(arg3);
    }
  }

  static final Pointer<Void> _mb_set_frame =
      resolveMethodBind('SpriteFrames', 'set_frame', 56804795);

  void setFrame(String anim, int idx, Texture2D texture, double duration) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), anim);
    final arg1 = malloc<Int64>()..value = idx;
    final arg2 = malloc<Pointer<Void>>()..value = texture.nativePtr;
    final arg3 = malloc<Double>()..value = duration;
    try {
      ptrcallVoid(_mb_set_frame, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>(), arg3.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
      malloc.free(arg3);
    }
  }

  static final Pointer<Void> _mb_remove_frame =
      resolveMethodBind('SpriteFrames', 'remove_frame', 2415702435);

  void removeFrame(String anim, int idx) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), anim);
    final arg1 = malloc<Int64>()..value = idx;
    try {
      ptrcallVoid(_mb_remove_frame, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_frame_count =
      resolveMethodBind('SpriteFrames', 'get_frame_count', 2458036349);

  int getFrameCount(String anim) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), anim);
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_frame_count, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_frame_texture =
      resolveMethodBind('SpriteFrames', 'get_frame_texture', 2900517879);

  Texture2D? getFrameTexture(String anim, int idx) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), anim);
    final arg1 = malloc<Int64>()..value = idx;
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_frame_texture, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Texture2D(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_frame_duration =
      resolveMethodBind('SpriteFrames', 'get_frame_duration', 1129309260);

  double getFrameDuration(String anim, int idx) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), anim);
    final arg1 = malloc<Int64>()..value = idx;
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_frame_duration, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
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

  static final Pointer<Void> _mb_clear =
      resolveMethodBind('SpriteFrames', 'clear', 3304788590);

  void clear(String anim) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), anim);
    try {
      ptrcallVoid(_mb_clear, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_clear_all =
      resolveMethodBind('SpriteFrames', 'clear_all', 3218959716);

  void clearAll() {
    try {
      ptrcallVoid(_mb_clear_all, nativePtr, []);
    } finally {
    }
  }

}
