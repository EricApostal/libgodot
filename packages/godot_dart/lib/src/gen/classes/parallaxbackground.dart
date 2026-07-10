// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class ParallaxBackground extends CanvasLayer {
  ParallaxBackground(super.nativePtr);

  static final Pointer<Void> _mb_set_scroll_offset =
      resolveMethodBind('ParallaxBackground', 'set_scroll_offset', 743155724);

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
      resolveMethodBind('ParallaxBackground', 'get_scroll_offset', 3341600327);

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

  static final Pointer<Void> _mb_set_scroll_base_offset =
      resolveMethodBind('ParallaxBackground', 'set_scroll_base_offset', 743155724);

  void setScrollBaseOffset(Vector2 offset) {
    final arg0 = malloc<Uint8>(Vector2.nativeSize);
    offset.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_scroll_base_offset, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_scroll_base_offset =
      resolveMethodBind('ParallaxBackground', 'get_scroll_base_offset', 3341600327);

  Vector2 getScrollBaseOffset() {
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_scroll_base_offset, nativePtr, [], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_scroll_base_scale =
      resolveMethodBind('ParallaxBackground', 'set_scroll_base_scale', 743155724);

  void setScrollBaseScale(Vector2 scale) {
    final arg0 = malloc<Uint8>(Vector2.nativeSize);
    scale.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_scroll_base_scale, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_scroll_base_scale =
      resolveMethodBind('ParallaxBackground', 'get_scroll_base_scale', 3341600327);

  Vector2 getScrollBaseScale() {
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_scroll_base_scale, nativePtr, [], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_limit_begin =
      resolveMethodBind('ParallaxBackground', 'set_limit_begin', 743155724);

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
      resolveMethodBind('ParallaxBackground', 'get_limit_begin', 3341600327);

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
      resolveMethodBind('ParallaxBackground', 'set_limit_end', 743155724);

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
      resolveMethodBind('ParallaxBackground', 'get_limit_end', 3341600327);

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

  static final Pointer<Void> _mb_set_ignore_camera_zoom =
      resolveMethodBind('ParallaxBackground', 'set_ignore_camera_zoom', 2586408642);

  void setIgnoreCameraZoom(bool ignore) {
    final arg0 = malloc<Uint8>()..value = ignore ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_ignore_camera_zoom, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_ignore_camera_zoom =
      resolveMethodBind('ParallaxBackground', 'is_ignore_camera_zoom', 2240911060);

  bool isIgnoreCameraZoom() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_ignore_camera_zoom, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
