// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class CanvasItem extends Node {
  CanvasItem(super.nativePtr);

  // Skipped get_canvas_item(): unsupported return type "RID".
  static final Pointer<Void> _mb_set_visible =
      resolveMethodBind('CanvasItem', 'set_visible', 2586408642);

  void setVisible(bool visible) {
    final arg0 = malloc<Uint8>()..value = visible ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_visible, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_visible =
      resolveMethodBind('CanvasItem', 'is_visible', 36873697);

  bool isVisible() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_visible, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_is_visible_in_tree =
      resolveMethodBind('CanvasItem', 'is_visible_in_tree', 36873697);

  bool isVisibleInTree() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_visible_in_tree, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_show =
      resolveMethodBind('CanvasItem', 'show', 3218959716);

  void show_() {
    try {
      ptrcallVoid(_mb_show, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_hide =
      resolveMethodBind('CanvasItem', 'hide', 3218959716);

  void hide_() {
    try {
      ptrcallVoid(_mb_hide, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_queue_redraw =
      resolveMethodBind('CanvasItem', 'queue_redraw', 3218959716);

  void queueRedraw() {
    try {
      ptrcallVoid(_mb_queue_redraw, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_move_to_front =
      resolveMethodBind('CanvasItem', 'move_to_front', 3218959716);

  void moveToFront() {
    try {
      ptrcallVoid(_mb_move_to_front, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_as_top_level =
      resolveMethodBind('CanvasItem', 'set_as_top_level', 2586408642);

  void setAsTopLevel(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_as_top_level, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_set_as_top_level =
      resolveMethodBind('CanvasItem', 'is_set_as_top_level', 36873697);

  bool isSetAsTopLevel() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_set_as_top_level, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_light_mask =
      resolveMethodBind('CanvasItem', 'set_light_mask', 1286410249);

  void setLightMask(int lightMask) {
    final arg0 = malloc<Int64>()..value = lightMask;
    try {
      ptrcallVoid(_mb_set_light_mask, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_light_mask =
      resolveMethodBind('CanvasItem', 'get_light_mask', 3905245786);

  int getLightMask() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_light_mask, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_modulate =
      resolveMethodBind('CanvasItem', 'set_modulate', 2920490490);

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
      resolveMethodBind('CanvasItem', 'get_modulate', 3444240500);

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

  static final Pointer<Void> _mb_set_self_modulate =
      resolveMethodBind('CanvasItem', 'set_self_modulate', 2920490490);

  void setSelfModulate(Color selfModulate) {
    final arg0 = malloc<Uint8>(Color.nativeSize);
    selfModulate.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_self_modulate, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_self_modulate =
      resolveMethodBind('CanvasItem', 'get_self_modulate', 3444240500);

  Color getSelfModulate() {
    try {
      final ret = malloc<Uint8>(Color.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_self_modulate, nativePtr, [], ret.cast());
        return Color.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_z_index =
      resolveMethodBind('CanvasItem', 'set_z_index', 1286410249);

  void setZIndex(int zIndex) {
    final arg0 = malloc<Int64>()..value = zIndex;
    try {
      ptrcallVoid(_mb_set_z_index, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_z_index =
      resolveMethodBind('CanvasItem', 'get_z_index', 3905245786);

  int getZIndex() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_z_index, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_z_as_relative =
      resolveMethodBind('CanvasItem', 'set_z_as_relative', 2586408642);

  void setZAsRelative(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_z_as_relative, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_z_relative =
      resolveMethodBind('CanvasItem', 'is_z_relative', 36873697);

  bool isZRelative() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_z_relative, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_y_sort_enabled =
      resolveMethodBind('CanvasItem', 'set_y_sort_enabled', 2586408642);

  void setYSortEnabled(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_y_sort_enabled, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_y_sort_enabled =
      resolveMethodBind('CanvasItem', 'is_y_sort_enabled', 36873697);

  bool isYSortEnabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_y_sort_enabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_draw_behind_parent =
      resolveMethodBind('CanvasItem', 'set_draw_behind_parent', 2586408642);

  void setDrawBehindParent(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_draw_behind_parent, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_draw_behind_parent_enabled =
      resolveMethodBind('CanvasItem', 'is_draw_behind_parent_enabled', 36873697);

  bool isDrawBehindParentEnabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_draw_behind_parent_enabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_draw_line =
      resolveMethodBind('CanvasItem', 'draw_line', 1562330099);

  void drawLine(Vector2 from, Vector2 to, Color color, double width, bool antialiased) {
    final arg0 = malloc<Uint8>(Vector2.nativeSize);
    from.writeTo(arg0, 0);
    final arg1 = malloc<Uint8>(Vector2.nativeSize);
    to.writeTo(arg1, 0);
    final arg2 = malloc<Uint8>(Color.nativeSize);
    color.writeTo(arg2, 0);
    final arg3 = malloc<Double>()..value = width;
    final arg4 = malloc<Uint8>()..value = antialiased ? 1 : 0;
    try {
      ptrcallVoid(_mb_draw_line, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>(), arg3.cast<Void>(), arg4.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
      malloc.free(arg3);
      malloc.free(arg4);
    }
  }

  static final Pointer<Void> _mb_draw_dashed_line =
      resolveMethodBind('CanvasItem', 'draw_dashed_line', 3653831622);

  void drawDashedLine(Vector2 from, Vector2 to, Color color, double width, double dash, bool aligned, bool antialiased) {
    final arg0 = malloc<Uint8>(Vector2.nativeSize);
    from.writeTo(arg0, 0);
    final arg1 = malloc<Uint8>(Vector2.nativeSize);
    to.writeTo(arg1, 0);
    final arg2 = malloc<Uint8>(Color.nativeSize);
    color.writeTo(arg2, 0);
    final arg3 = malloc<Double>()..value = width;
    final arg4 = malloc<Double>()..value = dash;
    final arg5 = malloc<Uint8>()..value = aligned ? 1 : 0;
    final arg6 = malloc<Uint8>()..value = antialiased ? 1 : 0;
    try {
      ptrcallVoid(_mb_draw_dashed_line, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>(), arg3.cast<Void>(), arg4.cast<Void>(), arg5.cast<Void>(), arg6.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
      malloc.free(arg3);
      malloc.free(arg4);
      malloc.free(arg5);
      malloc.free(arg6);
    }
  }

  // Skipped draw_polyline(): an argument type is unsupported.
  // Skipped draw_polyline_colors(): an argument type is unsupported.
  static final Pointer<Void> _mb_draw_ellipse_arc =
      resolveMethodBind('CanvasItem', 'draw_ellipse_arc', 936174114);

  void drawEllipseArc(Vector2 center, double major, double minor, double startAngle, double endAngle, int pointCount, Color color, double width, bool antialiased) {
    final arg0 = malloc<Uint8>(Vector2.nativeSize);
    center.writeTo(arg0, 0);
    final arg1 = malloc<Double>()..value = major;
    final arg2 = malloc<Double>()..value = minor;
    final arg3 = malloc<Double>()..value = startAngle;
    final arg4 = malloc<Double>()..value = endAngle;
    final arg5 = malloc<Int64>()..value = pointCount;
    final arg6 = malloc<Uint8>(Color.nativeSize);
    color.writeTo(arg6, 0);
    final arg7 = malloc<Double>()..value = width;
    final arg8 = malloc<Uint8>()..value = antialiased ? 1 : 0;
    try {
      ptrcallVoid(_mb_draw_ellipse_arc, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>(), arg3.cast<Void>(), arg4.cast<Void>(), arg5.cast<Void>(), arg6.cast<Void>(), arg7.cast<Void>(), arg8.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
      malloc.free(arg3);
      malloc.free(arg4);
      malloc.free(arg5);
      malloc.free(arg6);
      malloc.free(arg7);
      malloc.free(arg8);
    }
  }

  static final Pointer<Void> _mb_draw_arc =
      resolveMethodBind('CanvasItem', 'draw_arc', 4140652635);

  void drawArc(Vector2 center, double radius, double startAngle, double endAngle, int pointCount, Color color, double width, bool antialiased) {
    final arg0 = malloc<Uint8>(Vector2.nativeSize);
    center.writeTo(arg0, 0);
    final arg1 = malloc<Double>()..value = radius;
    final arg2 = malloc<Double>()..value = startAngle;
    final arg3 = malloc<Double>()..value = endAngle;
    final arg4 = malloc<Int64>()..value = pointCount;
    final arg5 = malloc<Uint8>(Color.nativeSize);
    color.writeTo(arg5, 0);
    final arg6 = malloc<Double>()..value = width;
    final arg7 = malloc<Uint8>()..value = antialiased ? 1 : 0;
    try {
      ptrcallVoid(_mb_draw_arc, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>(), arg3.cast<Void>(), arg4.cast<Void>(), arg5.cast<Void>(), arg6.cast<Void>(), arg7.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
      malloc.free(arg3);
      malloc.free(arg4);
      malloc.free(arg5);
      malloc.free(arg6);
      malloc.free(arg7);
    }
  }

  // Skipped draw_multiline(): an argument type is unsupported.
  // Skipped draw_multiline_colors(): an argument type is unsupported.
  static final Pointer<Void> _mb_draw_rect =
      resolveMethodBind('CanvasItem', 'draw_rect', 2773573813);

  void drawRect(Rect2 rect, Color color, bool filled, double width, bool antialiased) {
    final arg0 = malloc<Uint8>(Rect2.nativeSize);
    rect.writeTo(arg0, 0);
    final arg1 = malloc<Uint8>(Color.nativeSize);
    color.writeTo(arg1, 0);
    final arg2 = malloc<Uint8>()..value = filled ? 1 : 0;
    final arg3 = malloc<Double>()..value = width;
    final arg4 = malloc<Uint8>()..value = antialiased ? 1 : 0;
    try {
      ptrcallVoid(_mb_draw_rect, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>(), arg3.cast<Void>(), arg4.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
      malloc.free(arg3);
      malloc.free(arg4);
    }
  }

  static final Pointer<Void> _mb_draw_circle =
      resolveMethodBind('CanvasItem', 'draw_circle', 3153026596);

  void drawCircle(Vector2 position, double radius, Color color, bool filled, double width, bool antialiased) {
    final arg0 = malloc<Uint8>(Vector2.nativeSize);
    position.writeTo(arg0, 0);
    final arg1 = malloc<Double>()..value = radius;
    final arg2 = malloc<Uint8>(Color.nativeSize);
    color.writeTo(arg2, 0);
    final arg3 = malloc<Uint8>()..value = filled ? 1 : 0;
    final arg4 = malloc<Double>()..value = width;
    final arg5 = malloc<Uint8>()..value = antialiased ? 1 : 0;
    try {
      ptrcallVoid(_mb_draw_circle, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>(), arg3.cast<Void>(), arg4.cast<Void>(), arg5.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
      malloc.free(arg3);
      malloc.free(arg4);
      malloc.free(arg5);
    }
  }

  static final Pointer<Void> _mb_draw_ellipse =
      resolveMethodBind('CanvasItem', 'draw_ellipse', 3790774806);

  void drawEllipse(Vector2 position, double major, double minor, Color color, bool filled, double width, bool antialiased) {
    final arg0 = malloc<Uint8>(Vector2.nativeSize);
    position.writeTo(arg0, 0);
    final arg1 = malloc<Double>()..value = major;
    final arg2 = malloc<Double>()..value = minor;
    final arg3 = malloc<Uint8>(Color.nativeSize);
    color.writeTo(arg3, 0);
    final arg4 = malloc<Uint8>()..value = filled ? 1 : 0;
    final arg5 = malloc<Double>()..value = width;
    final arg6 = malloc<Uint8>()..value = antialiased ? 1 : 0;
    try {
      ptrcallVoid(_mb_draw_ellipse, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>(), arg3.cast<Void>(), arg4.cast<Void>(), arg5.cast<Void>(), arg6.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
      malloc.free(arg3);
      malloc.free(arg4);
      malloc.free(arg5);
      malloc.free(arg6);
    }
  }

  static final Pointer<Void> _mb_draw_texture =
      resolveMethodBind('CanvasItem', 'draw_texture', 520200117);

  void drawTexture(Texture2D texture, Vector2 position, Color modulate) {
    final arg0 = malloc<Pointer<Void>>()..value = texture.nativePtr;
    final arg1 = malloc<Uint8>(Vector2.nativeSize);
    position.writeTo(arg1, 0);
    final arg2 = malloc<Uint8>(Color.nativeSize);
    modulate.writeTo(arg2, 0);
    try {
      ptrcallVoid(_mb_draw_texture, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_draw_texture_rect =
      resolveMethodBind('CanvasItem', 'draw_texture_rect', 3832805018);

  void drawTextureRect(Texture2D texture, Rect2 rect, bool tile, Color modulate, bool transpose) {
    final arg0 = malloc<Pointer<Void>>()..value = texture.nativePtr;
    final arg1 = malloc<Uint8>(Rect2.nativeSize);
    rect.writeTo(arg1, 0);
    final arg2 = malloc<Uint8>()..value = tile ? 1 : 0;
    final arg3 = malloc<Uint8>(Color.nativeSize);
    modulate.writeTo(arg3, 0);
    final arg4 = malloc<Uint8>()..value = transpose ? 1 : 0;
    try {
      ptrcallVoid(_mb_draw_texture_rect, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>(), arg3.cast<Void>(), arg4.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
      malloc.free(arg3);
      malloc.free(arg4);
    }
  }

  static final Pointer<Void> _mb_draw_texture_rect_region =
      resolveMethodBind('CanvasItem', 'draw_texture_rect_region', 3883821411);

  void drawTextureRectRegion(Texture2D texture, Rect2 rect, Rect2 srcRect, Color modulate, bool transpose, bool clipUv) {
    final arg0 = malloc<Pointer<Void>>()..value = texture.nativePtr;
    final arg1 = malloc<Uint8>(Rect2.nativeSize);
    rect.writeTo(arg1, 0);
    final arg2 = malloc<Uint8>(Rect2.nativeSize);
    srcRect.writeTo(arg2, 0);
    final arg3 = malloc<Uint8>(Color.nativeSize);
    modulate.writeTo(arg3, 0);
    final arg4 = malloc<Uint8>()..value = transpose ? 1 : 0;
    final arg5 = malloc<Uint8>()..value = clipUv ? 1 : 0;
    try {
      ptrcallVoid(_mb_draw_texture_rect_region, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>(), arg3.cast<Void>(), arg4.cast<Void>(), arg5.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
      malloc.free(arg3);
      malloc.free(arg4);
      malloc.free(arg5);
    }
  }

  static final Pointer<Void> _mb_draw_msdf_texture_rect_region =
      resolveMethodBind('CanvasItem', 'draw_msdf_texture_rect_region', 4219163252);

  void drawMsdfTextureRectRegion(Texture2D texture, Rect2 rect, Rect2 srcRect, Color modulate, double outline, double pixelRange, double scale) {
    final arg0 = malloc<Pointer<Void>>()..value = texture.nativePtr;
    final arg1 = malloc<Uint8>(Rect2.nativeSize);
    rect.writeTo(arg1, 0);
    final arg2 = malloc<Uint8>(Rect2.nativeSize);
    srcRect.writeTo(arg2, 0);
    final arg3 = malloc<Uint8>(Color.nativeSize);
    modulate.writeTo(arg3, 0);
    final arg4 = malloc<Double>()..value = outline;
    final arg5 = malloc<Double>()..value = pixelRange;
    final arg6 = malloc<Double>()..value = scale;
    try {
      ptrcallVoid(_mb_draw_msdf_texture_rect_region, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>(), arg3.cast<Void>(), arg4.cast<Void>(), arg5.cast<Void>(), arg6.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
      malloc.free(arg3);
      malloc.free(arg4);
      malloc.free(arg5);
      malloc.free(arg6);
    }
  }

  static final Pointer<Void> _mb_draw_lcd_texture_rect_region =
      resolveMethodBind('CanvasItem', 'draw_lcd_texture_rect_region', 3212350954);

  void drawLcdTextureRectRegion(Texture2D texture, Rect2 rect, Rect2 srcRect, Color modulate) {
    final arg0 = malloc<Pointer<Void>>()..value = texture.nativePtr;
    final arg1 = malloc<Uint8>(Rect2.nativeSize);
    rect.writeTo(arg1, 0);
    final arg2 = malloc<Uint8>(Rect2.nativeSize);
    srcRect.writeTo(arg2, 0);
    final arg3 = malloc<Uint8>(Color.nativeSize);
    modulate.writeTo(arg3, 0);
    try {
      ptrcallVoid(_mb_draw_lcd_texture_rect_region, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>(), arg3.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
      malloc.free(arg3);
    }
  }

  static final Pointer<Void> _mb_draw_style_box =
      resolveMethodBind('CanvasItem', 'draw_style_box', 388176283);

  void drawStyleBox(StyleBox styleBox, Rect2 rect) {
    final arg0 = malloc<Pointer<Void>>()..value = styleBox.nativePtr;
    final arg1 = malloc<Uint8>(Rect2.nativeSize);
    rect.writeTo(arg1, 0);
    try {
      ptrcallVoid(_mb_draw_style_box, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  // Skipped draw_primitive(): an argument type is unsupported.
  // Skipped draw_polygon(): an argument type is unsupported.
  // Skipped draw_colored_polygon(): an argument type is unsupported.
  static final Pointer<Void> _mb_draw_string =
      resolveMethodBind('CanvasItem', 'draw_string', 719605945);

  void drawString(Font font, Vector2 pos, String text, int alignment, double width, int fontSize, Color modulate, int justificationFlags, int direction, int orientation, double oversampling) {
    final arg0 = malloc<Pointer<Void>>()..value = font.nativePtr;
    final arg1 = malloc<Uint8>(Vector2.nativeSize);
    pos.writeTo(arg1, 0);
    final arg2 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg2.cast(), text);
    final arg3 = malloc<Int64>()..value = alignment;
    final arg4 = malloc<Double>()..value = width;
    final arg5 = malloc<Int64>()..value = fontSize;
    final arg6 = malloc<Uint8>(Color.nativeSize);
    modulate.writeTo(arg6, 0);
    final arg7 = malloc<Int64>()..value = justificationFlags;
    final arg8 = malloc<Int64>()..value = direction;
    final arg9 = malloc<Int64>()..value = orientation;
    final arg10 = malloc<Double>()..value = oversampling;
    try {
      ptrcallVoid(_mb_draw_string, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>(), arg3.cast<Void>(), arg4.cast<Void>(), arg5.cast<Void>(), arg6.cast<Void>(), arg7.cast<Void>(), arg8.cast<Void>(), arg9.cast<Void>(), arg10.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      BuiltinMarshal.destroyGDString(arg2.cast());
      malloc.free(arg2);
      malloc.free(arg3);
      malloc.free(arg4);
      malloc.free(arg5);
      malloc.free(arg6);
      malloc.free(arg7);
      malloc.free(arg8);
      malloc.free(arg9);
      malloc.free(arg10);
    }
  }

  static final Pointer<Void> _mb_draw_multiline_string =
      resolveMethodBind('CanvasItem', 'draw_multiline_string', 2341488182);

  void drawMultilineString(Font font, Vector2 pos, String text, int alignment, double width, int fontSize, int maxLines, Color modulate, int brkFlags, int justificationFlags, int direction, int orientation, double oversampling) {
    final arg0 = malloc<Pointer<Void>>()..value = font.nativePtr;
    final arg1 = malloc<Uint8>(Vector2.nativeSize);
    pos.writeTo(arg1, 0);
    final arg2 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg2.cast(), text);
    final arg3 = malloc<Int64>()..value = alignment;
    final arg4 = malloc<Double>()..value = width;
    final arg5 = malloc<Int64>()..value = fontSize;
    final arg6 = malloc<Int64>()..value = maxLines;
    final arg7 = malloc<Uint8>(Color.nativeSize);
    modulate.writeTo(arg7, 0);
    final arg8 = malloc<Int64>()..value = brkFlags;
    final arg9 = malloc<Int64>()..value = justificationFlags;
    final arg10 = malloc<Int64>()..value = direction;
    final arg11 = malloc<Int64>()..value = orientation;
    final arg12 = malloc<Double>()..value = oversampling;
    try {
      ptrcallVoid(_mb_draw_multiline_string, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>(), arg3.cast<Void>(), arg4.cast<Void>(), arg5.cast<Void>(), arg6.cast<Void>(), arg7.cast<Void>(), arg8.cast<Void>(), arg9.cast<Void>(), arg10.cast<Void>(), arg11.cast<Void>(), arg12.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      BuiltinMarshal.destroyGDString(arg2.cast());
      malloc.free(arg2);
      malloc.free(arg3);
      malloc.free(arg4);
      malloc.free(arg5);
      malloc.free(arg6);
      malloc.free(arg7);
      malloc.free(arg8);
      malloc.free(arg9);
      malloc.free(arg10);
      malloc.free(arg11);
      malloc.free(arg12);
    }
  }

  static final Pointer<Void> _mb_draw_string_outline =
      resolveMethodBind('CanvasItem', 'draw_string_outline', 707403449);

  void drawStringOutline(Font font, Vector2 pos, String text, int alignment, double width, int fontSize, int size, Color modulate, int justificationFlags, int direction, int orientation, double oversampling) {
    final arg0 = malloc<Pointer<Void>>()..value = font.nativePtr;
    final arg1 = malloc<Uint8>(Vector2.nativeSize);
    pos.writeTo(arg1, 0);
    final arg2 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg2.cast(), text);
    final arg3 = malloc<Int64>()..value = alignment;
    final arg4 = malloc<Double>()..value = width;
    final arg5 = malloc<Int64>()..value = fontSize;
    final arg6 = malloc<Int64>()..value = size;
    final arg7 = malloc<Uint8>(Color.nativeSize);
    modulate.writeTo(arg7, 0);
    final arg8 = malloc<Int64>()..value = justificationFlags;
    final arg9 = malloc<Int64>()..value = direction;
    final arg10 = malloc<Int64>()..value = orientation;
    final arg11 = malloc<Double>()..value = oversampling;
    try {
      ptrcallVoid(_mb_draw_string_outline, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>(), arg3.cast<Void>(), arg4.cast<Void>(), arg5.cast<Void>(), arg6.cast<Void>(), arg7.cast<Void>(), arg8.cast<Void>(), arg9.cast<Void>(), arg10.cast<Void>(), arg11.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      BuiltinMarshal.destroyGDString(arg2.cast());
      malloc.free(arg2);
      malloc.free(arg3);
      malloc.free(arg4);
      malloc.free(arg5);
      malloc.free(arg6);
      malloc.free(arg7);
      malloc.free(arg8);
      malloc.free(arg9);
      malloc.free(arg10);
      malloc.free(arg11);
    }
  }

  static final Pointer<Void> _mb_draw_multiline_string_outline =
      resolveMethodBind('CanvasItem', 'draw_multiline_string_outline', 3050414441);

  void drawMultilineStringOutline(Font font, Vector2 pos, String text, int alignment, double width, int fontSize, int maxLines, int size, Color modulate, int brkFlags, int justificationFlags, int direction, int orientation, double oversampling) {
    final arg0 = malloc<Pointer<Void>>()..value = font.nativePtr;
    final arg1 = malloc<Uint8>(Vector2.nativeSize);
    pos.writeTo(arg1, 0);
    final arg2 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg2.cast(), text);
    final arg3 = malloc<Int64>()..value = alignment;
    final arg4 = malloc<Double>()..value = width;
    final arg5 = malloc<Int64>()..value = fontSize;
    final arg6 = malloc<Int64>()..value = maxLines;
    final arg7 = malloc<Int64>()..value = size;
    final arg8 = malloc<Uint8>(Color.nativeSize);
    modulate.writeTo(arg8, 0);
    final arg9 = malloc<Int64>()..value = brkFlags;
    final arg10 = malloc<Int64>()..value = justificationFlags;
    final arg11 = malloc<Int64>()..value = direction;
    final arg12 = malloc<Int64>()..value = orientation;
    final arg13 = malloc<Double>()..value = oversampling;
    try {
      ptrcallVoid(_mb_draw_multiline_string_outline, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>(), arg3.cast<Void>(), arg4.cast<Void>(), arg5.cast<Void>(), arg6.cast<Void>(), arg7.cast<Void>(), arg8.cast<Void>(), arg9.cast<Void>(), arg10.cast<Void>(), arg11.cast<Void>(), arg12.cast<Void>(), arg13.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      BuiltinMarshal.destroyGDString(arg2.cast());
      malloc.free(arg2);
      malloc.free(arg3);
      malloc.free(arg4);
      malloc.free(arg5);
      malloc.free(arg6);
      malloc.free(arg7);
      malloc.free(arg8);
      malloc.free(arg9);
      malloc.free(arg10);
      malloc.free(arg11);
      malloc.free(arg12);
      malloc.free(arg13);
    }
  }

  static final Pointer<Void> _mb_draw_char =
      resolveMethodBind('CanvasItem', 'draw_char', 1336210142);

  void drawChar(Font font, Vector2 pos, String char, int fontSize, Color modulate, double oversampling) {
    final arg0 = malloc<Pointer<Void>>()..value = font.nativePtr;
    final arg1 = malloc<Uint8>(Vector2.nativeSize);
    pos.writeTo(arg1, 0);
    final arg2 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg2.cast(), char);
    final arg3 = malloc<Int64>()..value = fontSize;
    final arg4 = malloc<Uint8>(Color.nativeSize);
    modulate.writeTo(arg4, 0);
    final arg5 = malloc<Double>()..value = oversampling;
    try {
      ptrcallVoid(_mb_draw_char, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>(), arg3.cast<Void>(), arg4.cast<Void>(), arg5.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      BuiltinMarshal.destroyGDString(arg2.cast());
      malloc.free(arg2);
      malloc.free(arg3);
      malloc.free(arg4);
      malloc.free(arg5);
    }
  }

  static final Pointer<Void> _mb_draw_char_outline =
      resolveMethodBind('CanvasItem', 'draw_char_outline', 1846384149);

  void drawCharOutline(Font font, Vector2 pos, String char, int fontSize, int size, Color modulate, double oversampling) {
    final arg0 = malloc<Pointer<Void>>()..value = font.nativePtr;
    final arg1 = malloc<Uint8>(Vector2.nativeSize);
    pos.writeTo(arg1, 0);
    final arg2 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg2.cast(), char);
    final arg3 = malloc<Int64>()..value = fontSize;
    final arg4 = malloc<Int64>()..value = size;
    final arg5 = malloc<Uint8>(Color.nativeSize);
    modulate.writeTo(arg5, 0);
    final arg6 = malloc<Double>()..value = oversampling;
    try {
      ptrcallVoid(_mb_draw_char_outline, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>(), arg3.cast<Void>(), arg4.cast<Void>(), arg5.cast<Void>(), arg6.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      BuiltinMarshal.destroyGDString(arg2.cast());
      malloc.free(arg2);
      malloc.free(arg3);
      malloc.free(arg4);
      malloc.free(arg5);
      malloc.free(arg6);
    }
  }

  static final Pointer<Void> _mb_draw_mesh =
      resolveMethodBind('CanvasItem', 'draw_mesh', 153818295);

  void drawMesh(Mesh mesh, Texture2D texture, Transform2D transform, Color modulate) {
    final arg0 = malloc<Pointer<Void>>()..value = mesh.nativePtr;
    final arg1 = malloc<Pointer<Void>>()..value = texture.nativePtr;
    final arg2 = malloc<Uint8>(Transform2D.nativeSize);
    transform.writeTo(arg2, 0);
    final arg3 = malloc<Uint8>(Color.nativeSize);
    modulate.writeTo(arg3, 0);
    try {
      ptrcallVoid(_mb_draw_mesh, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>(), arg3.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
      malloc.free(arg3);
    }
  }

  static final Pointer<Void> _mb_draw_multimesh =
      resolveMethodBind('CanvasItem', 'draw_multimesh', 937992368);

  void drawMultimesh(MultiMesh multimesh, Texture2D texture) {
    final arg0 = malloc<Pointer<Void>>()..value = multimesh.nativePtr;
    final arg1 = malloc<Pointer<Void>>()..value = texture.nativePtr;
    try {
      ptrcallVoid(_mb_draw_multimesh, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_draw_set_transform =
      resolveMethodBind('CanvasItem', 'draw_set_transform', 288975085);

  void drawSetTransform(Vector2 position, double rotation, Vector2 scale) {
    final arg0 = malloc<Uint8>(Vector2.nativeSize);
    position.writeTo(arg0, 0);
    final arg1 = malloc<Double>()..value = rotation;
    final arg2 = malloc<Uint8>(Vector2.nativeSize);
    scale.writeTo(arg2, 0);
    try {
      ptrcallVoid(_mb_draw_set_transform, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_draw_set_transform_matrix =
      resolveMethodBind('CanvasItem', 'draw_set_transform_matrix', 2761652528);

  void drawSetTransformMatrix(Transform2D xform) {
    final arg0 = malloc<Uint8>(Transform2D.nativeSize);
    xform.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_draw_set_transform_matrix, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_draw_animation_slice =
      resolveMethodBind('CanvasItem', 'draw_animation_slice', 3112831842);

  void drawAnimationSlice(double animationLength, double sliceBegin, double sliceEnd, double offset) {
    final arg0 = malloc<Double>()..value = animationLength;
    final arg1 = malloc<Double>()..value = sliceBegin;
    final arg2 = malloc<Double>()..value = sliceEnd;
    final arg3 = malloc<Double>()..value = offset;
    try {
      ptrcallVoid(_mb_draw_animation_slice, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>(), arg3.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
      malloc.free(arg3);
    }
  }

  static final Pointer<Void> _mb_draw_end_animation =
      resolveMethodBind('CanvasItem', 'draw_end_animation', 3218959716);

  void drawEndAnimation() {
    try {
      ptrcallVoid(_mb_draw_end_animation, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_transform =
      resolveMethodBind('CanvasItem', 'get_transform', 3814499831);

  Transform2D getTransform() {
    try {
      final ret = malloc<Uint8>(Transform2D.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_transform, nativePtr, [], ret.cast());
        return Transform2D.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_global_transform =
      resolveMethodBind('CanvasItem', 'get_global_transform', 3814499831);

  Transform2D getGlobalTransform() {
    try {
      final ret = malloc<Uint8>(Transform2D.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_global_transform, nativePtr, [], ret.cast());
        return Transform2D.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_global_transform_with_canvas =
      resolveMethodBind('CanvasItem', 'get_global_transform_with_canvas', 3814499831);

  Transform2D getGlobalTransformWithCanvas() {
    try {
      final ret = malloc<Uint8>(Transform2D.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_global_transform_with_canvas, nativePtr, [], ret.cast());
        return Transform2D.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_viewport_transform =
      resolveMethodBind('CanvasItem', 'get_viewport_transform', 3814499831);

  Transform2D getViewportTransform() {
    try {
      final ret = malloc<Uint8>(Transform2D.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_viewport_transform, nativePtr, [], ret.cast());
        return Transform2D.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_viewport_rect =
      resolveMethodBind('CanvasItem', 'get_viewport_rect', 1639390495);

  Rect2 getViewportRect() {
    try {
      final ret = malloc<Uint8>(Rect2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_viewport_rect, nativePtr, [], ret.cast());
        return Rect2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_canvas_transform =
      resolveMethodBind('CanvasItem', 'get_canvas_transform', 3814499831);

  Transform2D getCanvasTransform() {
    try {
      final ret = malloc<Uint8>(Transform2D.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_canvas_transform, nativePtr, [], ret.cast());
        return Transform2D.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_screen_transform =
      resolveMethodBind('CanvasItem', 'get_screen_transform', 3814499831);

  Transform2D getScreenTransform() {
    try {
      final ret = malloc<Uint8>(Transform2D.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_screen_transform, nativePtr, [], ret.cast());
        return Transform2D.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_local_mouse_position =
      resolveMethodBind('CanvasItem', 'get_local_mouse_position', 3341600327);

  Vector2 getLocalMousePosition() {
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_local_mouse_position, nativePtr, [], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_global_mouse_position =
      resolveMethodBind('CanvasItem', 'get_global_mouse_position', 3341600327);

  Vector2 getGlobalMousePosition() {
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_global_mouse_position, nativePtr, [], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  // Skipped get_canvas(): unsupported return type "RID".
  static final Pointer<Void> _mb_get_canvas_layer_node =
      resolveMethodBind('CanvasItem', 'get_canvas_layer_node', 2602762519);

  CanvasLayer? getCanvasLayerNode() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_canvas_layer_node, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : CanvasLayer(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_world_2d =
      resolveMethodBind('CanvasItem', 'get_world_2d', 2339128592);

  World2D? getWorld2d() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_world_2d, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : World2D(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_material =
      resolveMethodBind('CanvasItem', 'set_material', 2757459619);

  void setMaterial(Material material) {
    final arg0 = malloc<Pointer<Void>>()..value = material.nativePtr;
    try {
      ptrcallVoid(_mb_set_material, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_material =
      resolveMethodBind('CanvasItem', 'get_material', 5934680);

  Material? getMaterial() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_material, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Material(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  // Skipped set_instance_shader_parameter(): an argument type is unsupported.
  // Skipped get_instance_shader_parameter(): unsupported return type "Variant".
  static final Pointer<Void> _mb_set_use_parent_material =
      resolveMethodBind('CanvasItem', 'set_use_parent_material', 2586408642);

  void setUseParentMaterial(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_use_parent_material, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_use_parent_material =
      resolveMethodBind('CanvasItem', 'get_use_parent_material', 36873697);

  bool getUseParentMaterial() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_use_parent_material, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_notify_local_transform =
      resolveMethodBind('CanvasItem', 'set_notify_local_transform', 2586408642);

  void setNotifyLocalTransform(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_notify_local_transform, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_local_transform_notification_enabled =
      resolveMethodBind('CanvasItem', 'is_local_transform_notification_enabled', 36873697);

  bool isLocalTransformNotificationEnabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_local_transform_notification_enabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_notify_transform =
      resolveMethodBind('CanvasItem', 'set_notify_transform', 2586408642);

  void setNotifyTransform(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_notify_transform, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_transform_notification_enabled =
      resolveMethodBind('CanvasItem', 'is_transform_notification_enabled', 36873697);

  bool isTransformNotificationEnabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_transform_notification_enabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_force_update_transform =
      resolveMethodBind('CanvasItem', 'force_update_transform', 3218959716);

  void forceUpdateTransform() {
    try {
      ptrcallVoid(_mb_force_update_transform, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_make_canvas_position_local =
      resolveMethodBind('CanvasItem', 'make_canvas_position_local', 2656412154);

  Vector2 makeCanvasPositionLocal(Vector2 viewportPoint) {
    final arg0 = malloc<Uint8>(Vector2.nativeSize);
    viewportPoint.writeTo(arg0, 0);
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_make_canvas_position_local, nativePtr, [arg0.cast<Void>()], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_make_input_local =
      resolveMethodBind('CanvasItem', 'make_input_local', 811130057);

  InputEvent? makeInputLocal(InputEvent event) {
    final arg0 = malloc<Pointer<Void>>()..value = event.nativePtr;
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_make_input_local, nativePtr, [arg0.cast<Void>()], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : InputEvent(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_visibility_layer =
      resolveMethodBind('CanvasItem', 'set_visibility_layer', 1286410249);

  void setVisibilityLayer(int layer) {
    final arg0 = malloc<Int64>()..value = layer;
    try {
      ptrcallVoid(_mb_set_visibility_layer, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_visibility_layer =
      resolveMethodBind('CanvasItem', 'get_visibility_layer', 3905245786);

  int getVisibilityLayer() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_visibility_layer, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_visibility_layer_bit =
      resolveMethodBind('CanvasItem', 'set_visibility_layer_bit', 300928843);

  void setVisibilityLayerBit(int layer, bool enabled) {
    final arg0 = malloc<Int64>()..value = layer;
    final arg1 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_visibility_layer_bit, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_visibility_layer_bit =
      resolveMethodBind('CanvasItem', 'get_visibility_layer_bit', 1116898809);

  bool getVisibilityLayerBit(int layer) {
    final arg0 = malloc<Int64>()..value = layer;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_visibility_layer_bit, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_texture_filter =
      resolveMethodBind('CanvasItem', 'set_texture_filter', 1037999706);

  void setTextureFilter(int mode) {
    final arg0 = malloc<Int64>()..value = mode;
    try {
      ptrcallVoid(_mb_set_texture_filter, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_texture_filter =
      resolveMethodBind('CanvasItem', 'get_texture_filter', 121960042);

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

  static final Pointer<Void> _mb_set_texture_repeat =
      resolveMethodBind('CanvasItem', 'set_texture_repeat', 1716472974);

  void setTextureRepeat(int mode) {
    final arg0 = malloc<Int64>()..value = mode;
    try {
      ptrcallVoid(_mb_set_texture_repeat, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_texture_repeat =
      resolveMethodBind('CanvasItem', 'get_texture_repeat', 2667158319);

  int getTextureRepeat() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_texture_repeat, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_clip_children_mode =
      resolveMethodBind('CanvasItem', 'set_clip_children_mode', 1319393776);

  void setClipChildrenMode(int mode) {
    final arg0 = malloc<Int64>()..value = mode;
    try {
      ptrcallVoid(_mb_set_clip_children_mode, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_clip_children_mode =
      resolveMethodBind('CanvasItem', 'get_clip_children_mode', 3581808349);

  int getClipChildrenMode() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_clip_children_mode, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_oversampling_with_scale =
      resolveMethodBind('CanvasItem', 'set_oversampling_with_scale', 872218804);

  void setOversamplingWithScale(int enabled) {
    final arg0 = malloc<Int64>()..value = enabled;
    try {
      ptrcallVoid(_mb_set_oversampling_with_scale, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_oversampling_with_scale =
      resolveMethodBind('CanvasItem', 'get_oversampling_with_scale', 2026097197);

  int getOversamplingWithScale() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_oversampling_with_scale, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
