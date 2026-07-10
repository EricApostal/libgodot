// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class Sprite2D extends Node2D {
  Sprite2D(super.nativePtr);

  static final Pointer<Void> _mb_set_texture =
      resolveMethodBind('Sprite2D', 'set_texture', 4051416890);

  void setTexture(Texture2D texture) {
    final arg0 = malloc<Pointer<Void>>()..value = texture.nativePtr;
    try {
      ptrcallVoid(_mb_set_texture, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_texture =
      resolveMethodBind('Sprite2D', 'get_texture', 3635182373);

  Texture2D? getTexture() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_texture, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Texture2D(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_centered =
      resolveMethodBind('Sprite2D', 'set_centered', 2586408642);

  void setCentered(bool centered) {
    final arg0 = malloc<Uint8>()..value = centered ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_centered, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_centered =
      resolveMethodBind('Sprite2D', 'is_centered', 36873697);

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
      resolveMethodBind('Sprite2D', 'set_offset', 743155724);

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
      resolveMethodBind('Sprite2D', 'get_offset', 3341600327);

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
      resolveMethodBind('Sprite2D', 'set_flip_h', 2586408642);

  void setFlipH(bool flipH) {
    final arg0 = malloc<Uint8>()..value = flipH ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_flip_h, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_flipped_h =
      resolveMethodBind('Sprite2D', 'is_flipped_h', 36873697);

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
      resolveMethodBind('Sprite2D', 'set_flip_v', 2586408642);

  void setFlipV(bool flipV) {
    final arg0 = malloc<Uint8>()..value = flipV ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_flip_v, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_flipped_v =
      resolveMethodBind('Sprite2D', 'is_flipped_v', 36873697);

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

  static final Pointer<Void> _mb_set_region_enabled =
      resolveMethodBind('Sprite2D', 'set_region_enabled', 2586408642);

  void setRegionEnabled(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_region_enabled, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_region_enabled =
      resolveMethodBind('Sprite2D', 'is_region_enabled', 36873697);

  bool isRegionEnabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_region_enabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_is_pixel_opaque =
      resolveMethodBind('Sprite2D', 'is_pixel_opaque', 556197845);

  bool isPixelOpaque(Vector2 pos) {
    final arg0 = malloc<Uint8>(Vector2.nativeSize);
    pos.writeTo(arg0, 0);
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_pixel_opaque, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_region_rect =
      resolveMethodBind('Sprite2D', 'set_region_rect', 2046264180);

  void setRegionRect(Rect2 rect) {
    final arg0 = malloc<Uint8>(Rect2.nativeSize);
    rect.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_region_rect, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_region_rect =
      resolveMethodBind('Sprite2D', 'get_region_rect', 1639390495);

  Rect2 getRegionRect() {
    try {
      final ret = malloc<Uint8>(Rect2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_region_rect, nativePtr, [], ret.cast());
        return Rect2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_region_filter_clip_enabled =
      resolveMethodBind('Sprite2D', 'set_region_filter_clip_enabled', 2586408642);

  void setRegionFilterClipEnabled(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_region_filter_clip_enabled, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_region_filter_clip_enabled =
      resolveMethodBind('Sprite2D', 'is_region_filter_clip_enabled', 36873697);

  bool isRegionFilterClipEnabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_region_filter_clip_enabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_frame =
      resolveMethodBind('Sprite2D', 'set_frame', 1286410249);

  void setFrame(int frame) {
    final arg0 = malloc<Int64>()..value = frame;
    try {
      ptrcallVoid(_mb_set_frame, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_frame =
      resolveMethodBind('Sprite2D', 'get_frame', 3905245786);

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

  static final Pointer<Void> _mb_set_frame_coords =
      resolveMethodBind('Sprite2D', 'set_frame_coords', 1130785943);

  void setFrameCoords(Vector2i coords) {
    final arg0 = malloc<Uint8>(Vector2i.nativeSize);
    coords.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_frame_coords, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_frame_coords =
      resolveMethodBind('Sprite2D', 'get_frame_coords', 3690982128);

  Vector2i getFrameCoords() {
    try {
      final ret = malloc<Uint8>(Vector2i.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_frame_coords, nativePtr, [], ret.cast());
        return Vector2i.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_vframes =
      resolveMethodBind('Sprite2D', 'set_vframes', 1286410249);

  void setVframes(int vframes) {
    final arg0 = malloc<Int64>()..value = vframes;
    try {
      ptrcallVoid(_mb_set_vframes, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_vframes =
      resolveMethodBind('Sprite2D', 'get_vframes', 3905245786);

  int getVframes() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_vframes, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_hframes =
      resolveMethodBind('Sprite2D', 'set_hframes', 1286410249);

  void setHframes(int hframes) {
    final arg0 = malloc<Int64>()..value = hframes;
    try {
      ptrcallVoid(_mb_set_hframes, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_hframes =
      resolveMethodBind('Sprite2D', 'get_hframes', 3905245786);

  int getHframes() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_hframes, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_rect =
      resolveMethodBind('Sprite2D', 'get_rect', 1639390495);

  Rect2 getRect() {
    try {
      final ret = malloc<Uint8>(Rect2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_rect, nativePtr, [], ret.cast());
        return Rect2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
