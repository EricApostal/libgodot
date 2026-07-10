// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class AnimatedSprite3D extends SpriteBase3D {
  AnimatedSprite3D(super.nativePtr);

  /// Constructs a brand-new engine-owned AnimatedSprite3D instance
  /// (via classdb_construct_object3), not an existing one.
  factory AnimatedSprite3D.create() {
    return AnimatedSprite3D(resolveClassConstructor('AnimatedSprite3D'));
  }

  static final Pointer<Void> _mb_set_sprite_frames =
      resolveMethodBind('AnimatedSprite3D', 'set_sprite_frames', 905781144);

  void setSpriteFrames(SpriteFrames spriteFrames) {
    final arg0 = malloc<Pointer<Void>>()..value = spriteFrames.nativePtr;
    try {
      ptrcallVoid(_mb_set_sprite_frames, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_sprite_frames =
      resolveMethodBind('AnimatedSprite3D', 'get_sprite_frames', 3804851214);

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
      resolveMethodBind('AnimatedSprite3D', 'set_animation', 3304788590);

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
      resolveMethodBind('AnimatedSprite3D', 'get_animation', 2002593661);

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
      resolveMethodBind('AnimatedSprite3D', 'set_autoplay', 83702148);

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
      resolveMethodBind('AnimatedSprite3D', 'get_autoplay', 201670096);

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
      resolveMethodBind('AnimatedSprite3D', 'is_playing', 36873697);

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
      resolveMethodBind('AnimatedSprite3D', 'play', 3269405555);

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
      resolveMethodBind('AnimatedSprite3D', 'play_backwards', 3323268493);

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
      resolveMethodBind('AnimatedSprite3D', 'pause', 3218959716);

  void pause() {
    try {
      ptrcallVoid(_mb_pause, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_stop =
      resolveMethodBind('AnimatedSprite3D', 'stop', 3218959716);

  void stop() {
    try {
      ptrcallVoid(_mb_stop, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_frame =
      resolveMethodBind('AnimatedSprite3D', 'set_frame', 1286410249);

  void setFrame(int frame) {
    final arg0 = malloc<Int64>()..value = frame;
    try {
      ptrcallVoid(_mb_set_frame, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_frame =
      resolveMethodBind('AnimatedSprite3D', 'get_frame', 3905245786);

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
      resolveMethodBind('AnimatedSprite3D', 'set_frame_progress', 373806689);

  void setFrameProgress(double progress) {
    final arg0 = malloc<Double>()..value = progress;
    try {
      ptrcallVoid(_mb_set_frame_progress, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_frame_progress =
      resolveMethodBind('AnimatedSprite3D', 'get_frame_progress', 1740695150);

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
      resolveMethodBind('AnimatedSprite3D', 'set_frame_and_progress', 1602489585);

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
      resolveMethodBind('AnimatedSprite3D', 'set_speed_scale', 373806689);

  void setSpeedScale(double speedScale) {
    final arg0 = malloc<Double>()..value = speedScale;
    try {
      ptrcallVoid(_mb_set_speed_scale, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_speed_scale =
      resolveMethodBind('AnimatedSprite3D', 'get_speed_scale', 1740695150);

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
      resolveMethodBind('AnimatedSprite3D', 'get_playing_speed', 1740695150);

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
