// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class StyleBoxFlat extends StyleBox {
  StyleBoxFlat(super.nativePtr);

  /// Constructs a brand-new engine-owned StyleBoxFlat instance
  /// (via classdb_construct_object3), not an existing one.
  factory StyleBoxFlat.create() {
    return StyleBoxFlat(resolveClassConstructor('StyleBoxFlat'));
  }

  static final Pointer<Void> _mb_set_bg_color =
      resolveMethodBind('StyleBoxFlat', 'set_bg_color', 2920490490);

  void setBgColor(Color color) {
    final arg0 = malloc<Uint8>(Color.nativeSize);
    color.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_bg_color, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_bg_color =
      resolveMethodBind('StyleBoxFlat', 'get_bg_color', 3444240500);

  Color getBgColor() {
    try {
      final ret = malloc<Uint8>(Color.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_bg_color, nativePtr, [], ret.cast());
        return Color.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_border_color =
      resolveMethodBind('StyleBoxFlat', 'set_border_color', 2920490490);

  void setBorderColor(Color color) {
    final arg0 = malloc<Uint8>(Color.nativeSize);
    color.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_border_color, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_border_color =
      resolveMethodBind('StyleBoxFlat', 'get_border_color', 3444240500);

  Color getBorderColor() {
    try {
      final ret = malloc<Uint8>(Color.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_border_color, nativePtr, [], ret.cast());
        return Color.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_border_width_all =
      resolveMethodBind('StyleBoxFlat', 'set_border_width_all', 1286410249);

  void setBorderWidthAll(int width) {
    final arg0 = malloc<Int64>()..value = width;
    try {
      ptrcallVoid(_mb_set_border_width_all, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_border_width_min =
      resolveMethodBind('StyleBoxFlat', 'get_border_width_min', 3905245786);

  int getBorderWidthMin() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_border_width_min, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_border_width =
      resolveMethodBind('StyleBoxFlat', 'set_border_width', 437707142);

  void setBorderWidth(int margin, int width) {
    final arg0 = malloc<Int64>()..value = margin;
    final arg1 = malloc<Int64>()..value = width;
    try {
      ptrcallVoid(_mb_set_border_width, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_border_width =
      resolveMethodBind('StyleBoxFlat', 'get_border_width', 1983885014);

  int getBorderWidth(int margin) {
    final arg0 = malloc<Int64>()..value = margin;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_border_width, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_border_blend =
      resolveMethodBind('StyleBoxFlat', 'set_border_blend', 2586408642);

  void setBorderBlend(bool blend) {
    final arg0 = malloc<Uint8>()..value = blend ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_border_blend, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_border_blend =
      resolveMethodBind('StyleBoxFlat', 'get_border_blend', 36873697);

  bool getBorderBlend() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_border_blend, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_corner_radius_all =
      resolveMethodBind('StyleBoxFlat', 'set_corner_radius_all', 1286410249);

  void setCornerRadiusAll(int radius) {
    final arg0 = malloc<Int64>()..value = radius;
    try {
      ptrcallVoid(_mb_set_corner_radius_all, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_corner_radius =
      resolveMethodBind('StyleBoxFlat', 'set_corner_radius', 2696158768);

  void setCornerRadius(int corner, int radius) {
    final arg0 = malloc<Int64>()..value = corner;
    final arg1 = malloc<Int64>()..value = radius;
    try {
      ptrcallVoid(_mb_set_corner_radius, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_corner_radius =
      resolveMethodBind('StyleBoxFlat', 'get_corner_radius', 3982397690);

  int getCornerRadius(int corner) {
    final arg0 = malloc<Int64>()..value = corner;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_corner_radius, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_expand_margin =
      resolveMethodBind('StyleBoxFlat', 'set_expand_margin', 4290182280);

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
      resolveMethodBind('StyleBoxFlat', 'set_expand_margin_all', 373806689);

  void setExpandMarginAll(double size) {
    final arg0 = malloc<Double>()..value = size;
    try {
      ptrcallVoid(_mb_set_expand_margin_all, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_expand_margin =
      resolveMethodBind('StyleBoxFlat', 'get_expand_margin', 2869120046);

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

  static final Pointer<Void> _mb_set_draw_center =
      resolveMethodBind('StyleBoxFlat', 'set_draw_center', 2586408642);

  void setDrawCenter(bool drawCenter) {
    final arg0 = malloc<Uint8>()..value = drawCenter ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_draw_center, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_draw_center_enabled =
      resolveMethodBind('StyleBoxFlat', 'is_draw_center_enabled', 36873697);

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

  static final Pointer<Void> _mb_set_skew =
      resolveMethodBind('StyleBoxFlat', 'set_skew', 743155724);

  void setSkew(Vector2 skew) {
    final arg0 = malloc<Uint8>(Vector2.nativeSize);
    skew.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_skew, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_skew =
      resolveMethodBind('StyleBoxFlat', 'get_skew', 3341600327);

  Vector2 getSkew() {
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_skew, nativePtr, [], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_shadow_color =
      resolveMethodBind('StyleBoxFlat', 'set_shadow_color', 2920490490);

  void setShadowColor(Color color) {
    final arg0 = malloc<Uint8>(Color.nativeSize);
    color.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_shadow_color, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_shadow_color =
      resolveMethodBind('StyleBoxFlat', 'get_shadow_color', 3444240500);

  Color getShadowColor() {
    try {
      final ret = malloc<Uint8>(Color.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_shadow_color, nativePtr, [], ret.cast());
        return Color.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_shadow_size =
      resolveMethodBind('StyleBoxFlat', 'set_shadow_size', 1286410249);

  void setShadowSize(int size) {
    final arg0 = malloc<Int64>()..value = size;
    try {
      ptrcallVoid(_mb_set_shadow_size, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_shadow_size =
      resolveMethodBind('StyleBoxFlat', 'get_shadow_size', 3905245786);

  int getShadowSize() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_shadow_size, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_shadow_offset =
      resolveMethodBind('StyleBoxFlat', 'set_shadow_offset', 743155724);

  void setShadowOffset(Vector2 offset) {
    final arg0 = malloc<Uint8>(Vector2.nativeSize);
    offset.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_shadow_offset, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_shadow_offset =
      resolveMethodBind('StyleBoxFlat', 'get_shadow_offset', 3341600327);

  Vector2 getShadowOffset() {
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_shadow_offset, nativePtr, [], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_anti_aliased =
      resolveMethodBind('StyleBoxFlat', 'set_anti_aliased', 2586408642);

  void setAntiAliased(bool antiAliased) {
    final arg0 = malloc<Uint8>()..value = antiAliased ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_anti_aliased, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_anti_aliased =
      resolveMethodBind('StyleBoxFlat', 'is_anti_aliased', 36873697);

  bool isAntiAliased() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_anti_aliased, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_aa_size =
      resolveMethodBind('StyleBoxFlat', 'set_aa_size', 373806689);

  void setAaSize(double size) {
    final arg0 = malloc<Double>()..value = size;
    try {
      ptrcallVoid(_mb_set_aa_size, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_aa_size =
      resolveMethodBind('StyleBoxFlat', 'get_aa_size', 1740695150);

  double getAaSize() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_aa_size, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_corner_detail =
      resolveMethodBind('StyleBoxFlat', 'set_corner_detail', 1286410249);

  void setCornerDetail(int detail) {
    final arg0 = malloc<Int64>()..value = detail;
    try {
      ptrcallVoid(_mb_set_corner_detail, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_corner_detail =
      resolveMethodBind('StyleBoxFlat', 'get_corner_detail', 3905245786);

  int getCornerDetail() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_corner_detail, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
