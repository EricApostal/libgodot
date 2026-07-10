// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class Parallax2D extends Node2D {
  Parallax2D(super.nativePtr);

  /// Constructs a brand-new engine-owned Parallax2D instance
  /// (via classdb_construct_object3), not an existing one.
  factory Parallax2D.create() {
    return Parallax2D(resolveClassConstructor('Parallax2D'));
  }

  static final Pointer<Void> _mb_set_scroll_scale =
      resolveMethodBind('Parallax2D', 'set_scroll_scale', 743155724);

  void setScrollScale(Vector2 scale) {
    final arg0 = malloc<Uint8>(Vector2.nativeSize);
    scale.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_scroll_scale, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_scroll_scale =
      resolveMethodBind('Parallax2D', 'get_scroll_scale', 3341600327);

  Vector2 getScrollScale() {
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_scroll_scale, nativePtr, [], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_repeat_size =
      resolveMethodBind('Parallax2D', 'set_repeat_size', 743155724);

  void setRepeatSize(Vector2 repeatSize) {
    final arg0 = malloc<Uint8>(Vector2.nativeSize);
    repeatSize.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_repeat_size, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_repeat_size =
      resolveMethodBind('Parallax2D', 'get_repeat_size', 3341600327);

  Vector2 getRepeatSize() {
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_repeat_size, nativePtr, [], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_repeat_times =
      resolveMethodBind('Parallax2D', 'set_repeat_times', 1286410249);

  void setRepeatTimes(int repeatTimes) {
    final arg0 = malloc<Int64>()..value = repeatTimes;
    try {
      ptrcallVoid(_mb_set_repeat_times, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_repeat_times =
      resolveMethodBind('Parallax2D', 'get_repeat_times', 3905245786);

  int getRepeatTimes() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_repeat_times, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_autoscroll =
      resolveMethodBind('Parallax2D', 'set_autoscroll', 743155724);

  void setAutoscroll(Vector2 autoscroll) {
    final arg0 = malloc<Uint8>(Vector2.nativeSize);
    autoscroll.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_autoscroll, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_autoscroll =
      resolveMethodBind('Parallax2D', 'get_autoscroll', 3341600327);

  Vector2 getAutoscroll() {
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_autoscroll, nativePtr, [], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_scroll_offset =
      resolveMethodBind('Parallax2D', 'set_scroll_offset', 743155724);

  void setScrollOffset(Vector2 offset) {
    final arg0 = malloc<Uint8>(Vector2.nativeSize);
    offset.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_scroll_offset, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_scroll_offset =
      resolveMethodBind('Parallax2D', 'get_scroll_offset', 3341600327);

  Vector2 getScrollOffset() {
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_scroll_offset, nativePtr, [], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_screen_offset =
      resolveMethodBind('Parallax2D', 'set_screen_offset', 743155724);

  void setScreenOffset(Vector2 offset) {
    final arg0 = malloc<Uint8>(Vector2.nativeSize);
    offset.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_screen_offset, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_screen_offset =
      resolveMethodBind('Parallax2D', 'get_screen_offset', 3341600327);

  Vector2 getScreenOffset() {
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_screen_offset, nativePtr, [], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_limit_begin =
      resolveMethodBind('Parallax2D', 'set_limit_begin', 743155724);

  void setLimitBegin(Vector2 offset) {
    final arg0 = malloc<Uint8>(Vector2.nativeSize);
    offset.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_limit_begin, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_limit_begin =
      resolveMethodBind('Parallax2D', 'get_limit_begin', 3341600327);

  Vector2 getLimitBegin() {
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_limit_begin, nativePtr, [], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_limit_end =
      resolveMethodBind('Parallax2D', 'set_limit_end', 743155724);

  void setLimitEnd(Vector2 offset) {
    final arg0 = malloc<Uint8>(Vector2.nativeSize);
    offset.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_limit_end, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_limit_end =
      resolveMethodBind('Parallax2D', 'get_limit_end', 3341600327);

  Vector2 getLimitEnd() {
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_limit_end, nativePtr, [], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_follow_viewport =
      resolveMethodBind('Parallax2D', 'set_follow_viewport', 2586408642);

  void setFollowViewport(bool follow) {
    final arg0 = malloc<Uint8>()..value = follow ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_follow_viewport, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_follow_viewport =
      resolveMethodBind('Parallax2D', 'get_follow_viewport', 2240911060);

  bool getFollowViewport() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_follow_viewport, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_ignore_camera_scroll =
      resolveMethodBind('Parallax2D', 'set_ignore_camera_scroll', 2586408642);

  void setIgnoreCameraScroll(bool ignore) {
    final arg0 = malloc<Uint8>()..value = ignore ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_ignore_camera_scroll, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_ignore_camera_scroll =
      resolveMethodBind('Parallax2D', 'is_ignore_camera_scroll', 2240911060);

  bool isIgnoreCameraScroll() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_ignore_camera_scroll, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
