// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class AnimatedTexture extends Texture2D {
  AnimatedTexture(super.nativePtr);

  static final Pointer<Void> _mb_set_frames =
      resolveMethodBind('AnimatedTexture', 'set_frames', 1286410249);

  void setFrames(int frames) {
    final arg0 = malloc<Int64>()..value = frames;
    try {
      ptrcallVoid(_mb_set_frames, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_frames =
      resolveMethodBind('AnimatedTexture', 'get_frames', 3905245786);

  int getFrames() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_frames, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_current_frame =
      resolveMethodBind('AnimatedTexture', 'set_current_frame', 1286410249);

  void setCurrentFrame(int frame) {
    final arg0 = malloc<Int64>()..value = frame;
    try {
      ptrcallVoid(_mb_set_current_frame, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_current_frame =
      resolveMethodBind('AnimatedTexture', 'get_current_frame', 3905245786);

  int getCurrentFrame() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_current_frame, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_pause =
      resolveMethodBind('AnimatedTexture', 'set_pause', 2586408642);

  void setPause(bool pause) {
    final arg0 = malloc<Uint8>()..value = pause ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_pause, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_pause =
      resolveMethodBind('AnimatedTexture', 'get_pause', 36873697);

  bool getPause() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_pause, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_one_shot =
      resolveMethodBind('AnimatedTexture', 'set_one_shot', 2586408642);

  void setOneShot(bool oneShot) {
    final arg0 = malloc<Uint8>()..value = oneShot ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_one_shot, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_one_shot =
      resolveMethodBind('AnimatedTexture', 'get_one_shot', 36873697);

  bool getOneShot() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_one_shot, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_speed_scale =
      resolveMethodBind('AnimatedTexture', 'set_speed_scale', 373806689);

  void setSpeedScale(double scale) {
    final arg0 = malloc<Double>()..value = scale;
    try {
      ptrcallVoid(_mb_set_speed_scale, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_speed_scale =
      resolveMethodBind('AnimatedTexture', 'get_speed_scale', 1740695150);

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

  static final Pointer<Void> _mb_set_frame_texture =
      resolveMethodBind('AnimatedTexture', 'set_frame_texture', 666127730);

  void setFrameTexture(int frame, Texture2D texture) {
    final arg0 = malloc<Int64>()..value = frame;
    final arg1 = malloc<Pointer<Void>>()..value = texture.nativePtr;
    try {
      ptrcallVoid(_mb_set_frame_texture, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_frame_texture =
      resolveMethodBind('AnimatedTexture', 'get_frame_texture', 3536238170);

  Texture2D? getFrameTexture(int frame) {
    final arg0 = malloc<Int64>()..value = frame;
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_frame_texture, nativePtr, [arg0.cast<Void>()], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Texture2D(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_frame_duration =
      resolveMethodBind('AnimatedTexture', 'set_frame_duration', 1602489585);

  void setFrameDuration(int frame, double duration) {
    final arg0 = malloc<Int64>()..value = frame;
    final arg1 = malloc<Double>()..value = duration;
    try {
      ptrcallVoid(_mb_set_frame_duration, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_frame_duration =
      resolveMethodBind('AnimatedTexture', 'get_frame_duration', 2339986948);

  double getFrameDuration(int frame) {
    final arg0 = malloc<Int64>()..value = frame;
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_frame_duration, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

}
