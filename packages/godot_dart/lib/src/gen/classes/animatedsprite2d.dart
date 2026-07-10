// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class AnimatedSprite2D extends Node2D {
  AnimatedSprite2D(super.nativePtr);

  /// Constructs a brand-new engine-owned AnimatedSprite2D instance
  /// (via classdb_construct_object3), not an existing one.
  factory AnimatedSprite2D.create() {
    return AnimatedSprite2D(resolveClassConstructor('AnimatedSprite2D'));
  }

  static final Pointer<Void> _mb_set_sprite_frames =
      resolveMethodBind('AnimatedSprite2D', 'set_sprite_frames', 905781144);

  void setSpriteFrames(SpriteFrames spriteFrames) {
    final arg0 = malloc<Pointer<Void>>()..value = spriteFrames.nativePtr;
    try {
      ptrcallVoid(_mb_set_sprite_frames, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_sprite_frames =
      resolveMethodBind('AnimatedSprite2D', 'get_sprite_frames', 3804851214);

  SpriteFrames? getSpriteFrames() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_sprite_frames, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : SpriteFrames(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_animation =
      resolveMethodBind('AnimatedSprite2D', 'set_animation', 3304788590);

  void setAnimation(String name) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), name);
    try {
      ptrcallVoid(_mb_set_animation, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_animation =
      resolveMethodBind('AnimatedSprite2D', 'get_animation', 2002593661);

  String getAnimation() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_animation, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readStringName(ret.cast());
        BuiltinMarshal.destroyStringName(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_autoplay =
      resolveMethodBind('AnimatedSprite2D', 'set_autoplay', 83702148);

  void setAutoplay(String name) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), name);
    try {
      ptrcallVoid(_mb_set_autoplay, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_autoplay =
      resolveMethodBind('AnimatedSprite2D', 'get_autoplay', 201670096);

  String getAutoplay() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_autoplay, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_is_playing =
      resolveMethodBind('AnimatedSprite2D', 'is_playing', 36873697);

  bool isPlaying() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_playing, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_play =
      resolveMethodBind('AnimatedSprite2D', 'play', 3269405555);

  void play(String name, double customSpeed, bool fromEnd) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), name);
    final arg1 = malloc<Double>()..value = customSpeed;
    final arg2 = malloc<Uint8>()..value = fromEnd ? 1 : 0;
    try {
      ptrcallVoid(_mb_play, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_play_backwards =
      resolveMethodBind('AnimatedSprite2D', 'play_backwards', 3323268493);

  void playBackwards(String name) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), name);
    try {
      ptrcallVoid(_mb_play_backwards, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_pause =
      resolveMethodBind('AnimatedSprite2D', 'pause', 3218959716);

  void pause() {
    try {
      ptrcallVoid(_mb_pause, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_stop =
      resolveMethodBind('AnimatedSprite2D', 'stop', 3218959716);

  void stop() {
    try {
      ptrcallVoid(_mb_stop, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_centered =
      resolveMethodBind('AnimatedSprite2D', 'set_centered', 2586408642);

  void setCentered(bool centered) {
    final arg0 = malloc<Uint8>()..value = centered ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_centered, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_centered =
      resolveMethodBind('AnimatedSprite2D', 'is_centered', 36873697);

  bool isCentered() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_centered, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_offset =
      resolveMethodBind('AnimatedSprite2D', 'set_offset', 743155724);

  void setOffset(Vector2 offset) {
    final arg0 = malloc<Uint8>(Vector2.nativeSize);
    offset.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_offset, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_offset =
      resolveMethodBind('AnimatedSprite2D', 'get_offset', 3341600327);

  Vector2 getOffset() {
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_offset, nativePtr, [], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_flip_h =
      resolveMethodBind('AnimatedSprite2D', 'set_flip_h', 2586408642);

  void setFlipH(bool flipH) {
    final arg0 = malloc<Uint8>()..value = flipH ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_flip_h, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_flipped_h =
      resolveMethodBind('AnimatedSprite2D', 'is_flipped_h', 36873697);

  bool isFlippedH() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_flipped_h, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_flip_v =
      resolveMethodBind('AnimatedSprite2D', 'set_flip_v', 2586408642);

  void setFlipV(bool flipV) {
    final arg0 = malloc<Uint8>()..value = flipV ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_flip_v, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_flipped_v =
      resolveMethodBind('AnimatedSprite2D', 'is_flipped_v', 36873697);

  bool isFlippedV() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_flipped_v, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_frame =
      resolveMethodBind('AnimatedSprite2D', 'set_frame', 1286410249);

  void setFrame(int frame) {
    final arg0 = malloc<Int64>()..value = frame;
    try {
      ptrcallVoid(_mb_set_frame, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_frame =
      resolveMethodBind('AnimatedSprite2D', 'get_frame', 3905245786);

  int getFrame() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_frame, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_frame_progress =
      resolveMethodBind('AnimatedSprite2D', 'set_frame_progress', 373806689);

  void setFrameProgress(double progress) {
    final arg0 = malloc<Double>()..value = progress;
    try {
      ptrcallVoid(_mb_set_frame_progress, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_frame_progress =
      resolveMethodBind('AnimatedSprite2D', 'get_frame_progress', 1740695150);

  double getFrameProgress() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_frame_progress, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_frame_and_progress =
      resolveMethodBind('AnimatedSprite2D', 'set_frame_and_progress', 1602489585);

  void setFrameAndProgress(int frame, double progress) {
    final arg0 = malloc<Int64>()..value = frame;
    final arg1 = malloc<Double>()..value = progress;
    try {
      ptrcallVoid(_mb_set_frame_and_progress, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_set_speed_scale =
      resolveMethodBind('AnimatedSprite2D', 'set_speed_scale', 373806689);

  void setSpeedScale(double speedScale) {
    final arg0 = malloc<Double>()..value = speedScale;
    try {
      ptrcallVoid(_mb_set_speed_scale, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_speed_scale =
      resolveMethodBind('AnimatedSprite2D', 'get_speed_scale', 1740695150);

  double getSpeedScale() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_speed_scale, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_playing_speed =
      resolveMethodBind('AnimatedSprite2D', 'get_playing_speed', 1740695150);

  double getPlayingSpeed() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_playing_speed, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
