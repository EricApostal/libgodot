// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class StyleBoxTexture extends StyleBox {
  StyleBoxTexture(super.nativePtr);

  static final Pointer<Void> _mb_set_texture =
      resolveMethodBind('StyleBoxTexture', 'set_texture', 4051416890);

  void setTexture(Texture2D texture) {
    final arg0 = malloc<Pointer<Void>>()..value = texture.nativePtr;
    try {
      ptrcallVoid(_mb_set_texture, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_texture =
      resolveMethodBind('StyleBoxTexture', 'get_texture', 3635182373);

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

  static final Pointer<Void> _mb_set_texture_margin =
      resolveMethodBind('StyleBoxTexture', 'set_texture_margin', 4290182280);

  void setTextureMargin(int margin, double size) {
    final arg0 = malloc<Int64>()..value = margin;
    final arg1 = malloc<Double>()..value = size;
    try {
      ptrcallVoid(_mb_set_texture_margin, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_set_texture_margin_all =
      resolveMethodBind('StyleBoxTexture', 'set_texture_margin_all', 373806689);

  void setTextureMarginAll(double size) {
    final arg0 = malloc<Double>()..value = size;
    try {
      ptrcallVoid(_mb_set_texture_margin_all, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_texture_margin =
      resolveMethodBind('StyleBoxTexture', 'get_texture_margin', 2869120046);

  double getTextureMargin(int margin) {
    final arg0 = malloc<Int64>()..value = margin;
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_texture_margin, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_expand_margin =
      resolveMethodBind('StyleBoxTexture', 'set_expand_margin', 4290182280);

  void setExpandMargin(int margin, double size) {
    final arg0 = malloc<Int64>()..value = margin;
    final arg1 = malloc<Double>()..value = size;
    try {
      ptrcallVoid(_mb_set_expand_margin, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_set_expand_margin_all =
      resolveMethodBind('StyleBoxTexture', 'set_expand_margin_all', 373806689);

  void setExpandMarginAll(double size) {
    final arg0 = malloc<Double>()..value = size;
    try {
      ptrcallVoid(_mb_set_expand_margin_all, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_expand_margin =
      resolveMethodBind('StyleBoxTexture', 'get_expand_margin', 2869120046);

  double getExpandMargin(int margin) {
    final arg0 = malloc<Int64>()..value = margin;
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_expand_margin, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_region_rect =
      resolveMethodBind('StyleBoxTexture', 'set_region_rect', 2046264180);

  void setRegionRect(Rect2 region) {
    final arg0 = malloc<Uint8>(Rect2.nativeSize);
    region.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_region_rect, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_region_rect =
      resolveMethodBind('StyleBoxTexture', 'get_region_rect', 1639390495);

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

  static final Pointer<Void> _mb_set_draw_center =
      resolveMethodBind('StyleBoxTexture', 'set_draw_center', 2586408642);

  void setDrawCenter(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_draw_center, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_draw_center_enabled =
      resolveMethodBind('StyleBoxTexture', 'is_draw_center_enabled', 36873697);

  bool isDrawCenterEnabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_draw_center_enabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_modulate =
      resolveMethodBind('StyleBoxTexture', 'set_modulate', 2920490490);

  void setModulate(Color color) {
    final arg0 = malloc<Uint8>(Color.nativeSize);
    color.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_modulate, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_modulate =
      resolveMethodBind('StyleBoxTexture', 'get_modulate', 3444240500);

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

  static final Pointer<Void> _mb_set_h_axis_stretch_mode =
      resolveMethodBind('StyleBoxTexture', 'set_h_axis_stretch_mode', 2965538783);

  void setHAxisStretchMode(int mode) {
    final arg0 = malloc<Int64>()..value = mode;
    try {
      ptrcallVoid(_mb_set_h_axis_stretch_mode, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_h_axis_stretch_mode =
      resolveMethodBind('StyleBoxTexture', 'get_h_axis_stretch_mode', 3807744063);

  int getHAxisStretchMode() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_h_axis_stretch_mode, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_v_axis_stretch_mode =
      resolveMethodBind('StyleBoxTexture', 'set_v_axis_stretch_mode', 2965538783);

  void setVAxisStretchMode(int mode) {
    final arg0 = malloc<Int64>()..value = mode;
    try {
      ptrcallVoid(_mb_set_v_axis_stretch_mode, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_v_axis_stretch_mode =
      resolveMethodBind('StyleBoxTexture', 'get_v_axis_stretch_mode', 3807744063);

  int getVAxisStretchMode() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_v_axis_stretch_mode, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
