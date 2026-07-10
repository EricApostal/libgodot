// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class SpriteBase3D extends GeometryInstance3D {
  SpriteBase3D(super.nativePtr);

  static final Pointer<Void> _mb_set_centered =
      resolveMethodBind('SpriteBase3D', 'set_centered', 2586408642);

  void setCentered(bool centered) {
    final arg0 = malloc<Uint8>()..value = centered ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_centered, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_centered =
      resolveMethodBind('SpriteBase3D', 'is_centered', 36873697);

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
      resolveMethodBind('SpriteBase3D', 'set_offset', 743155724);

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
      resolveMethodBind('SpriteBase3D', 'get_offset', 3341600327);

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
      resolveMethodBind('SpriteBase3D', 'set_flip_h', 2586408642);

  void setFlipH(bool flipH) {
    final arg0 = malloc<Uint8>()..value = flipH ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_flip_h, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_flipped_h =
      resolveMethodBind('SpriteBase3D', 'is_flipped_h', 36873697);

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
      resolveMethodBind('SpriteBase3D', 'set_flip_v', 2586408642);

  void setFlipV(bool flipV) {
    final arg0 = malloc<Uint8>()..value = flipV ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_flip_v, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_flipped_v =
      resolveMethodBind('SpriteBase3D', 'is_flipped_v', 36873697);

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

  static final Pointer<Void> _mb_set_modulate =
      resolveMethodBind('SpriteBase3D', 'set_modulate', 2920490490);

  void setModulate(Color modulate) {
    final arg0 = malloc<Uint8>(Color.nativeSize);
    modulate.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_modulate, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_modulate =
      resolveMethodBind('SpriteBase3D', 'get_modulate', 3444240500);

  Color getModulate() {
    try {
      final ret = malloc<Uint8>(Color.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_modulate, nativePtr, [], ret.cast());
        return Color.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_render_priority =
      resolveMethodBind('SpriteBase3D', 'set_render_priority', 1286410249);

  void setRenderPriority(int priority) {
    final arg0 = malloc<Int64>()..value = priority;
    try {
      ptrcallVoid(_mb_set_render_priority, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_render_priority =
      resolveMethodBind('SpriteBase3D', 'get_render_priority', 3905245786);

  int getRenderPriority() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_render_priority, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_pixel_size =
      resolveMethodBind('SpriteBase3D', 'set_pixel_size', 373806689);

  void setPixelSize(double pixelSize) {
    final arg0 = malloc<Double>()..value = pixelSize;
    try {
      ptrcallVoid(_mb_set_pixel_size, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_pixel_size =
      resolveMethodBind('SpriteBase3D', 'get_pixel_size', 1740695150);

  double getPixelSize() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_pixel_size, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_axis =
      resolveMethodBind('SpriteBase3D', 'set_axis', 1144690656);

  void setAxis(int axis) {
    final arg0 = malloc<Int64>()..value = axis;
    try {
      ptrcallVoid(_mb_set_axis, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_axis =
      resolveMethodBind('SpriteBase3D', 'get_axis', 3050976882);

  int getAxis() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_axis, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_draw_flag =
      resolveMethodBind('SpriteBase3D', 'set_draw_flag', 1135633219);

  void setDrawFlag(int flag, bool enabled) {
    final arg0 = malloc<Int64>()..value = flag;
    final arg1 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_draw_flag, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_draw_flag =
      resolveMethodBind('SpriteBase3D', 'get_draw_flag', 1733036628);

  bool getDrawFlag(int flag) {
    final arg0 = malloc<Int64>()..value = flag;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_draw_flag, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_alpha_cut_mode =
      resolveMethodBind('SpriteBase3D', 'set_alpha_cut_mode', 227561226);

  void setAlphaCutMode(int mode) {
    final arg0 = malloc<Int64>()..value = mode;
    try {
      ptrcallVoid(_mb_set_alpha_cut_mode, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_alpha_cut_mode =
      resolveMethodBind('SpriteBase3D', 'get_alpha_cut_mode', 336003791);

  int getAlphaCutMode() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_alpha_cut_mode, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_alpha_scissor_threshold =
      resolveMethodBind('SpriteBase3D', 'set_alpha_scissor_threshold', 373806689);

  void setAlphaScissorThreshold(double threshold) {
    final arg0 = malloc<Double>()..value = threshold;
    try {
      ptrcallVoid(_mb_set_alpha_scissor_threshold, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_alpha_scissor_threshold =
      resolveMethodBind('SpriteBase3D', 'get_alpha_scissor_threshold', 1740695150);

  double getAlphaScissorThreshold() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_alpha_scissor_threshold, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_alpha_hash_scale =
      resolveMethodBind('SpriteBase3D', 'set_alpha_hash_scale', 373806689);

  void setAlphaHashScale(double threshold) {
    final arg0 = malloc<Double>()..value = threshold;
    try {
      ptrcallVoid(_mb_set_alpha_hash_scale, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_alpha_hash_scale =
      resolveMethodBind('SpriteBase3D', 'get_alpha_hash_scale', 1740695150);

  double getAlphaHashScale() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_alpha_hash_scale, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_alpha_antialiasing =
      resolveMethodBind('SpriteBase3D', 'set_alpha_antialiasing', 3212649852);

  void setAlphaAntialiasing(int alphaAa) {
    final arg0 = malloc<Int64>()..value = alphaAa;
    try {
      ptrcallVoid(_mb_set_alpha_antialiasing, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_alpha_antialiasing =
      resolveMethodBind('SpriteBase3D', 'get_alpha_antialiasing', 2889939400);

  int getAlphaAntialiasing() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_alpha_antialiasing, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_alpha_antialiasing_edge =
      resolveMethodBind('SpriteBase3D', 'set_alpha_antialiasing_edge', 373806689);

  void setAlphaAntialiasingEdge(double edge) {
    final arg0 = malloc<Double>()..value = edge;
    try {
      ptrcallVoid(_mb_set_alpha_antialiasing_edge, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_alpha_antialiasing_edge =
      resolveMethodBind('SpriteBase3D', 'get_alpha_antialiasing_edge', 1740695150);

  double getAlphaAntialiasingEdge() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_alpha_antialiasing_edge, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_billboard_mode =
      resolveMethodBind('SpriteBase3D', 'set_billboard_mode', 4202036497);

  void setBillboardMode(int mode) {
    final arg0 = malloc<Int64>()..value = mode;
    try {
      ptrcallVoid(_mb_set_billboard_mode, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_billboard_mode =
      resolveMethodBind('SpriteBase3D', 'get_billboard_mode', 1283840139);

  int getBillboardMode() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_billboard_mode, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_texture_filter =
      resolveMethodBind('SpriteBase3D', 'set_texture_filter', 22904437);

  void setTextureFilter(int mode) {
    final arg0 = malloc<Int64>()..value = mode;
    try {
      ptrcallVoid(_mb_set_texture_filter, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_texture_filter =
      resolveMethodBind('SpriteBase3D', 'get_texture_filter', 3289213076);

  int getTextureFilter() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_texture_filter, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_item_rect =
      resolveMethodBind('SpriteBase3D', 'get_item_rect', 1639390495);

  Rect2 getItemRect() {
    try {
      final ret = malloc<Uint8>(Rect2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_item_rect, nativePtr, [], ret.cast());
        return Rect2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_generate_triangle_mesh =
      resolveMethodBind('SpriteBase3D', 'generate_triangle_mesh', 3476533166);

  TriangleMesh? generateTriangleMesh() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_generate_triangle_mesh, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : TriangleMesh(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
