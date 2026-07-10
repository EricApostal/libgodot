// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class Sprite3D extends SpriteBase3D {
  Sprite3D(super.nativePtr);

  static final Pointer<Void> _mb_set_texture =
      resolveMethodBind('Sprite3D', 'set_texture', 4051416890);

  void setTexture(Texture2D texture) {
    final arg0 = malloc<Pointer<Void>>()..value = texture.nativePtr;
    try {
      ptrcallVoid(_mb_set_texture, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_texture =
      resolveMethodBind('Sprite3D', 'get_texture', 3635182373);

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

  static final Pointer<Void> _mb_set_region_enabled =
      resolveMethodBind('Sprite3D', 'set_region_enabled', 2586408642);

  void setRegionEnabled(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_region_enabled, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_region_enabled =
      resolveMethodBind('Sprite3D', 'is_region_enabled', 36873697);

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

  static final Pointer<Void> _mb_set_region_rect =
      resolveMethodBind('Sprite3D', 'set_region_rect', 2046264180);

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
      resolveMethodBind('Sprite3D', 'get_region_rect', 1639390495);

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

  static final Pointer<Void> _mb_set_frame =
      resolveMethodBind('Sprite3D', 'set_frame', 1286410249);

  void setFrame(int frame) {
    final arg0 = malloc<Int64>()..value = frame;
    try {
      ptrcallVoid(_mb_set_frame, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_frame =
      resolveMethodBind('Sprite3D', 'get_frame', 3905245786);

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
      resolveMethodBind('Sprite3D', 'set_frame_coords', 1130785943);

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
      resolveMethodBind('Sprite3D', 'get_frame_coords', 3690982128);

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
      resolveMethodBind('Sprite3D', 'set_vframes', 1286410249);

  void setVframes(int vframes) {
    final arg0 = malloc<Int64>()..value = vframes;
    try {
      ptrcallVoid(_mb_set_vframes, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_vframes =
      resolveMethodBind('Sprite3D', 'get_vframes', 3905245786);

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
      resolveMethodBind('Sprite3D', 'set_hframes', 1286410249);

  void setHframes(int hframes) {
    final arg0 = malloc<Int64>()..value = hframes;
    try {
      ptrcallVoid(_mb_set_hframes, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_hframes =
      resolveMethodBind('Sprite3D', 'get_hframes', 3905245786);

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

}
