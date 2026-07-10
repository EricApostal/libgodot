// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class Camera2D extends Node2D {
  Camera2D(super.nativePtr);

  /// Constructs a brand-new engine-owned Camera2D instance
  /// (via classdb_construct_object3), not an existing one.
  factory Camera2D.create() {
    return Camera2D(resolveClassConstructor('Camera2D'));
  }

  static final Pointer<Void> _mb_set_offset =
      resolveMethodBind('Camera2D', 'set_offset', 743155724);

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
      resolveMethodBind('Camera2D', 'get_offset', 3341600327);

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

  static final Pointer<Void> _mb_set_anchor_mode =
      resolveMethodBind('Camera2D', 'set_anchor_mode', 2050398218);

  void setAnchorMode(int anchorMode) {
    final arg0 = malloc<Int64>()..value = anchorMode;
    try {
      ptrcallVoid(_mb_set_anchor_mode, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_anchor_mode =
      resolveMethodBind('Camera2D', 'get_anchor_mode', 155978067);

  int getAnchorMode() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_anchor_mode, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_ignore_rotation =
      resolveMethodBind('Camera2D', 'set_ignore_rotation', 2586408642);

  void setIgnoreRotation(bool ignore) {
    final arg0 = malloc<Uint8>()..value = ignore ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_ignore_rotation, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_ignoring_rotation =
      resolveMethodBind('Camera2D', 'is_ignoring_rotation', 36873697);

  bool isIgnoringRotation() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_ignoring_rotation, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_process_callback =
      resolveMethodBind('Camera2D', 'set_process_callback', 4201947462);

  void setProcessCallback(int mode) {
    final arg0 = malloc<Int64>()..value = mode;
    try {
      ptrcallVoid(_mb_set_process_callback, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_process_callback =
      resolveMethodBind('Camera2D', 'get_process_callback', 2325344499);

  int getProcessCallback() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_process_callback, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_enabled =
      resolveMethodBind('Camera2D', 'set_enabled', 2586408642);

  void setEnabled(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_enabled, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_enabled =
      resolveMethodBind('Camera2D', 'is_enabled', 36873697);

  bool isEnabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_enabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_make_current =
      resolveMethodBind('Camera2D', 'make_current', 3218959716);

  void makeCurrent() {
    try {
      ptrcallVoid(_mb_make_current, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_is_current =
      resolveMethodBind('Camera2D', 'is_current', 36873697);

  bool isCurrent() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_current, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_limit_enabled =
      resolveMethodBind('Camera2D', 'set_limit_enabled', 2586408642);

  void setLimitEnabled(bool limitEnabled) {
    final arg0 = malloc<Uint8>()..value = limitEnabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_limit_enabled, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_limit_enabled =
      resolveMethodBind('Camera2D', 'is_limit_enabled', 36873697);

  bool isLimitEnabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_limit_enabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_limit =
      resolveMethodBind('Camera2D', 'set_limit', 437707142);

  void setLimit(int margin, int limit) {
    final arg0 = malloc<Int64>()..value = margin;
    final arg1 = malloc<Int64>()..value = limit;
    try {
      ptrcallVoid(_mb_set_limit, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_limit =
      resolveMethodBind('Camera2D', 'get_limit', 1983885014);

  int getLimit(int margin) {
    final arg0 = malloc<Int64>()..value = margin;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_limit, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_limit_smoothing_enabled =
      resolveMethodBind('Camera2D', 'set_limit_smoothing_enabled', 2586408642);

  void setLimitSmoothingEnabled(bool limitSmoothingEnabled) {
    final arg0 = malloc<Uint8>()..value = limitSmoothingEnabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_limit_smoothing_enabled, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_limit_smoothing_enabled =
      resolveMethodBind('Camera2D', 'is_limit_smoothing_enabled', 36873697);

  bool isLimitSmoothingEnabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_limit_smoothing_enabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_drag_vertical_enabled =
      resolveMethodBind('Camera2D', 'set_drag_vertical_enabled', 2586408642);

  void setDragVerticalEnabled(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_drag_vertical_enabled, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_drag_vertical_enabled =
      resolveMethodBind('Camera2D', 'is_drag_vertical_enabled', 36873697);

  bool isDragVerticalEnabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_drag_vertical_enabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_drag_horizontal_enabled =
      resolveMethodBind('Camera2D', 'set_drag_horizontal_enabled', 2586408642);

  void setDragHorizontalEnabled(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_drag_horizontal_enabled, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_drag_horizontal_enabled =
      resolveMethodBind('Camera2D', 'is_drag_horizontal_enabled', 36873697);

  bool isDragHorizontalEnabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_drag_horizontal_enabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_drag_vertical_offset =
      resolveMethodBind('Camera2D', 'set_drag_vertical_offset', 373806689);

  void setDragVerticalOffset(double offset) {
    final arg0 = malloc<Double>()..value = offset;
    try {
      ptrcallVoid(_mb_set_drag_vertical_offset, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_drag_vertical_offset =
      resolveMethodBind('Camera2D', 'get_drag_vertical_offset', 1740695150);

  double getDragVerticalOffset() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_drag_vertical_offset, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_drag_horizontal_offset =
      resolveMethodBind('Camera2D', 'set_drag_horizontal_offset', 373806689);

  void setDragHorizontalOffset(double offset) {
    final arg0 = malloc<Double>()..value = offset;
    try {
      ptrcallVoid(_mb_set_drag_horizontal_offset, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_drag_horizontal_offset =
      resolveMethodBind('Camera2D', 'get_drag_horizontal_offset', 1740695150);

  double getDragHorizontalOffset() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_drag_horizontal_offset, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_drag_margin =
      resolveMethodBind('Camera2D', 'set_drag_margin', 4290182280);

  void setDragMargin(int margin, double dragMargin) {
    final arg0 = malloc<Int64>()..value = margin;
    final arg1 = malloc<Double>()..value = dragMargin;
    try {
      ptrcallVoid(_mb_set_drag_margin, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_drag_margin =
      resolveMethodBind('Camera2D', 'get_drag_margin', 2869120046);

  double getDragMargin(int margin) {
    final arg0 = malloc<Int64>()..value = margin;
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_drag_margin, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_target_position =
      resolveMethodBind('Camera2D', 'get_target_position', 3341600327);

  Vector2 getTargetPosition() {
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_target_position, nativePtr, [], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_screen_center_position =
      resolveMethodBind('Camera2D', 'get_screen_center_position', 3341600327);

  Vector2 getScreenCenterPosition() {
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_screen_center_position, nativePtr, [], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_screen_rotation =
      resolveMethodBind('Camera2D', 'get_screen_rotation', 1740695150);

  double getScreenRotation() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_screen_rotation, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_zoom =
      resolveMethodBind('Camera2D', 'set_zoom', 743155724);

  void setZoom(Vector2 zoom) {
    final arg0 = malloc<Uint8>(Vector2.nativeSize);
    zoom.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_zoom, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_zoom =
      resolveMethodBind('Camera2D', 'get_zoom', 3341600327);

  Vector2 getZoom() {
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_zoom, nativePtr, [], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_custom_viewport =
      resolveMethodBind('Camera2D', 'set_custom_viewport', 1078189570);

  void setCustomViewport(Node viewport) {
    final arg0 = malloc<Pointer<Void>>()..value = viewport.nativePtr;
    try {
      ptrcallVoid(_mb_set_custom_viewport, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_custom_viewport =
      resolveMethodBind('Camera2D', 'get_custom_viewport', 3160264692);

  Node? getCustomViewport() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_custom_viewport, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Node(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_position_smoothing_speed =
      resolveMethodBind('Camera2D', 'set_position_smoothing_speed', 373806689);

  void setPositionSmoothingSpeed(double positionSmoothingSpeed) {
    final arg0 = malloc<Double>()..value = positionSmoothingSpeed;
    try {
      ptrcallVoid(_mb_set_position_smoothing_speed, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_position_smoothing_speed =
      resolveMethodBind('Camera2D', 'get_position_smoothing_speed', 1740695150);

  double getPositionSmoothingSpeed() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_position_smoothing_speed, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_position_smoothing_enabled =
      resolveMethodBind('Camera2D', 'set_position_smoothing_enabled', 2586408642);

  void setPositionSmoothingEnabled(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_position_smoothing_enabled, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_position_smoothing_enabled =
      resolveMethodBind('Camera2D', 'is_position_smoothing_enabled', 36873697);

  bool isPositionSmoothingEnabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_position_smoothing_enabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_rotation_smoothing_enabled =
      resolveMethodBind('Camera2D', 'set_rotation_smoothing_enabled', 2586408642);

  void setRotationSmoothingEnabled(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_rotation_smoothing_enabled, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_rotation_smoothing_enabled =
      resolveMethodBind('Camera2D', 'is_rotation_smoothing_enabled', 36873697);

  bool isRotationSmoothingEnabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_rotation_smoothing_enabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_rotation_smoothing_speed =
      resolveMethodBind('Camera2D', 'set_rotation_smoothing_speed', 373806689);

  void setRotationSmoothingSpeed(double speed) {
    final arg0 = malloc<Double>()..value = speed;
    try {
      ptrcallVoid(_mb_set_rotation_smoothing_speed, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_rotation_smoothing_speed =
      resolveMethodBind('Camera2D', 'get_rotation_smoothing_speed', 1740695150);

  double getRotationSmoothingSpeed() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_rotation_smoothing_speed, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_force_update_scroll =
      resolveMethodBind('Camera2D', 'force_update_scroll', 3218959716);

  void forceUpdateScroll() {
    try {
      ptrcallVoid(_mb_force_update_scroll, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_reset_smoothing =
      resolveMethodBind('Camera2D', 'reset_smoothing', 3218959716);

  void resetSmoothing() {
    try {
      ptrcallVoid(_mb_reset_smoothing, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_align =
      resolveMethodBind('Camera2D', 'align', 3218959716);

  void align() {
    try {
      ptrcallVoid(_mb_align, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_screen_drawing_enabled =
      resolveMethodBind('Camera2D', 'set_screen_drawing_enabled', 2586408642);

  void setScreenDrawingEnabled(bool screenDrawingEnabled) {
    final arg0 = malloc<Uint8>()..value = screenDrawingEnabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_screen_drawing_enabled, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_screen_drawing_enabled =
      resolveMethodBind('Camera2D', 'is_screen_drawing_enabled', 36873697);

  bool isScreenDrawingEnabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_screen_drawing_enabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_limit_drawing_enabled =
      resolveMethodBind('Camera2D', 'set_limit_drawing_enabled', 2586408642);

  void setLimitDrawingEnabled(bool limitDrawingEnabled) {
    final arg0 = malloc<Uint8>()..value = limitDrawingEnabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_limit_drawing_enabled, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_limit_drawing_enabled =
      resolveMethodBind('Camera2D', 'is_limit_drawing_enabled', 36873697);

  bool isLimitDrawingEnabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_limit_drawing_enabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_margin_drawing_enabled =
      resolveMethodBind('Camera2D', 'set_margin_drawing_enabled', 2586408642);

  void setMarginDrawingEnabled(bool marginDrawingEnabled) {
    final arg0 = malloc<Uint8>()..value = marginDrawingEnabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_margin_drawing_enabled, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_margin_drawing_enabled =
      resolveMethodBind('Camera2D', 'is_margin_drawing_enabled', 36873697);

  bool isMarginDrawingEnabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_margin_drawing_enabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
