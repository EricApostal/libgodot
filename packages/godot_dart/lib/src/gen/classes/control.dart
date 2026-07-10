// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class Control extends CanvasItem {
  Control(super.nativePtr);

  /// Constructs a brand-new engine-owned Control instance
  /// (via classdb_construct_object3), not an existing one.
  factory Control.create() {
    return Control(resolveClassConstructor('Control'));
  }

  static final Pointer<Void> _mb_accept_event =
      resolveMethodBind('Control', 'accept_event', 3218959716);

  void acceptEvent() {
    try {
      ptrcallVoid(_mb_accept_event, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_maximum_size =
      resolveMethodBind('Control', 'get_maximum_size', 3341600327);

  Vector2 getMaximumSize() {
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_maximum_size, nativePtr, [], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_combined_maximum_size =
      resolveMethodBind('Control', 'get_combined_maximum_size', 3341600327);

  Vector2 getCombinedMaximumSize() {
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_combined_maximum_size, nativePtr, [], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_minimum_size =
      resolveMethodBind('Control', 'get_minimum_size', 3341600327);

  Vector2 getMinimumSize() {
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_minimum_size, nativePtr, [], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_combined_minimum_size =
      resolveMethodBind('Control', 'get_combined_minimum_size', 3341600327);

  Vector2 getCombinedMinimumSize() {
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_combined_minimum_size, nativePtr, [], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_propagate_maximum_size =
      resolveMethodBind('Control', 'set_propagate_maximum_size', 2586408642);

  void setPropagateMaximumSize(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_propagate_maximum_size, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_propagating_maximum_size =
      resolveMethodBind('Control', 'is_propagating_maximum_size', 2240911060);

  bool isPropagatingMaximumSize() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_propagating_maximum_size, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_bound_minimum_size =
      resolveMethodBind('Control', 'get_bound_minimum_size', 3341600327);

  Vector2 getBoundMinimumSize() {
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_bound_minimum_size, nativePtr, [], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_anchors_preset =
      resolveMethodBind('Control', 'set_anchors_preset', 509135270);

  void setAnchorsPreset(int preset, bool keepOffsets) {
    final arg0 = malloc<Int64>()..value = preset;
    final arg1 = malloc<Uint8>()..value = keepOffsets ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_anchors_preset, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_set_offsets_preset =
      resolveMethodBind('Control', 'set_offsets_preset', 3724524307);

  void setOffsetsPreset(int preset, int resizeMode, int margin) {
    final arg0 = malloc<Int64>()..value = preset;
    final arg1 = malloc<Int64>()..value = resizeMode;
    final arg2 = malloc<Int64>()..value = margin;
    try {
      ptrcallVoid(_mb_set_offsets_preset, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_set_anchors_and_offsets_preset =
      resolveMethodBind('Control', 'set_anchors_and_offsets_preset', 3724524307);

  void setAnchorsAndOffsetsPreset(int preset, int resizeMode, int margin) {
    final arg0 = malloc<Int64>()..value = preset;
    final arg1 = malloc<Int64>()..value = resizeMode;
    final arg2 = malloc<Int64>()..value = margin;
    try {
      ptrcallVoid(_mb_set_anchors_and_offsets_preset, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_set_anchor =
      resolveMethodBind('Control', 'set_anchor', 2302782885);

  void setAnchor(int side, double anchor, bool keepOffset, bool pushOppositeAnchor) {
    final arg0 = malloc<Int64>()..value = side;
    final arg1 = malloc<Double>()..value = anchor;
    final arg2 = malloc<Uint8>()..value = keepOffset ? 1 : 0;
    final arg3 = malloc<Uint8>()..value = pushOppositeAnchor ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_anchor, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>(), arg3.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
      malloc.free(arg3);
    }
  }

  static final Pointer<Void> _mb_get_anchor =
      resolveMethodBind('Control', 'get_anchor', 2869120046);

  double getAnchor(int side) {
    final arg0 = malloc<Int64>()..value = side;
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_anchor, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_offset =
      resolveMethodBind('Control', 'set_offset', 4290182280);

  void setOffset(int side, double offset) {
    final arg0 = malloc<Int64>()..value = side;
    final arg1 = malloc<Double>()..value = offset;
    try {
      ptrcallVoid(_mb_set_offset, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_offset =
      resolveMethodBind('Control', 'get_offset', 2869120046);

  double getOffset(int offset) {
    final arg0 = malloc<Int64>()..value = offset;
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_offset, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_anchor_and_offset =
      resolveMethodBind('Control', 'set_anchor_and_offset', 4031722181);

  void setAnchorAndOffset(int side, double anchor, double offset, bool pushOppositeAnchor) {
    final arg0 = malloc<Int64>()..value = side;
    final arg1 = malloc<Double>()..value = anchor;
    final arg2 = malloc<Double>()..value = offset;
    final arg3 = malloc<Uint8>()..value = pushOppositeAnchor ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_anchor_and_offset, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>(), arg3.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
      malloc.free(arg3);
    }
  }

  static final Pointer<Void> _mb_set_begin =
      resolveMethodBind('Control', 'set_begin', 743155724);

  void setBegin(Vector2 position) {
    final arg0 = malloc<Uint8>(Vector2.nativeSize);
    position.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_begin, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_end =
      resolveMethodBind('Control', 'set_end', 743155724);

  void setEnd(Vector2 position) {
    final arg0 = malloc<Uint8>(Vector2.nativeSize);
    position.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_end, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_position =
      resolveMethodBind('Control', 'set_position', 2436320129);

  void setPosition(Vector2 position, bool keepOffsets) {
    final arg0 = malloc<Uint8>(Vector2.nativeSize);
    position.writeTo(arg0, 0);
    final arg1 = malloc<Uint8>()..value = keepOffsets ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_position, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_set_size =
      resolveMethodBind('Control', 'set_size', 2436320129);

  void setSize(Vector2 size, bool keepOffsets) {
    final arg0 = malloc<Uint8>(Vector2.nativeSize);
    size.writeTo(arg0, 0);
    final arg1 = malloc<Uint8>()..value = keepOffsets ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_size, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_reset_size =
      resolveMethodBind('Control', 'reset_size', 3218959716);

  void resetSize() {
    try {
      ptrcallVoid(_mb_reset_size, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_custom_maximum_size =
      resolveMethodBind('Control', 'set_custom_maximum_size', 743155724);

  void setCustomMaximumSize(Vector2 size) {
    final arg0 = malloc<Uint8>(Vector2.nativeSize);
    size.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_custom_maximum_size, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_custom_minimum_size =
      resolveMethodBind('Control', 'set_custom_minimum_size', 743155724);

  void setCustomMinimumSize(Vector2 size) {
    final arg0 = malloc<Uint8>(Vector2.nativeSize);
    size.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_custom_minimum_size, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_global_position =
      resolveMethodBind('Control', 'set_global_position', 2436320129);

  void setGlobalPosition(Vector2 position, bool keepOffsets) {
    final arg0 = malloc<Uint8>(Vector2.nativeSize);
    position.writeTo(arg0, 0);
    final arg1 = malloc<Uint8>()..value = keepOffsets ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_global_position, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_set_rotation =
      resolveMethodBind('Control', 'set_rotation', 373806689);

  void setRotation(double radians) {
    final arg0 = malloc<Double>()..value = radians;
    try {
      ptrcallVoid(_mb_set_rotation, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_rotation_degrees =
      resolveMethodBind('Control', 'set_rotation_degrees', 373806689);

  void setRotationDegrees(double degrees) {
    final arg0 = malloc<Double>()..value = degrees;
    try {
      ptrcallVoid(_mb_set_rotation_degrees, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_scale =
      resolveMethodBind('Control', 'set_scale', 743155724);

  void setScale(Vector2 scale) {
    final arg0 = malloc<Uint8>(Vector2.nativeSize);
    scale.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_scale, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_pivot_offset =
      resolveMethodBind('Control', 'set_pivot_offset', 743155724);

  void setPivotOffset(Vector2 pivotOffset) {
    final arg0 = malloc<Uint8>(Vector2.nativeSize);
    pivotOffset.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_pivot_offset, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_pivot_offset_ratio =
      resolveMethodBind('Control', 'set_pivot_offset_ratio', 743155724);

  void setPivotOffsetRatio(Vector2 ratio) {
    final arg0 = malloc<Uint8>(Vector2.nativeSize);
    ratio.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_pivot_offset_ratio, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_begin =
      resolveMethodBind('Control', 'get_begin', 3341600327);

  Vector2 getBegin() {
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_begin, nativePtr, [], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_end =
      resolveMethodBind('Control', 'get_end', 3341600327);

  Vector2 getEnd() {
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_end, nativePtr, [], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_position =
      resolveMethodBind('Control', 'get_position', 3341600327);

  Vector2 getPosition() {
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_position, nativePtr, [], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_size =
      resolveMethodBind('Control', 'get_size', 3341600327);

  Vector2 getSize() {
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_size, nativePtr, [], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_rotation =
      resolveMethodBind('Control', 'get_rotation', 1740695150);

  double getRotation() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_rotation, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_rotation_degrees =
      resolveMethodBind('Control', 'get_rotation_degrees', 1740695150);

  double getRotationDegrees() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_rotation_degrees, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_scale =
      resolveMethodBind('Control', 'get_scale', 3341600327);

  Vector2 getScale() {
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_scale, nativePtr, [], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_pivot_offset =
      resolveMethodBind('Control', 'get_pivot_offset', 3341600327);

  Vector2 getPivotOffset() {
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_pivot_offset, nativePtr, [], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_pivot_offset_ratio =
      resolveMethodBind('Control', 'get_pivot_offset_ratio', 3341600327);

  Vector2 getPivotOffsetRatio() {
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_pivot_offset_ratio, nativePtr, [], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_combined_pivot_offset =
      resolveMethodBind('Control', 'get_combined_pivot_offset', 3341600327);

  Vector2 getCombinedPivotOffset() {
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_combined_pivot_offset, nativePtr, [], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_custom_maximum_size =
      resolveMethodBind('Control', 'get_custom_maximum_size', 3341600327);

  Vector2 getCustomMaximumSize() {
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_custom_maximum_size, nativePtr, [], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_custom_minimum_size =
      resolveMethodBind('Control', 'get_custom_minimum_size', 3341600327);

  Vector2 getCustomMinimumSize() {
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_custom_minimum_size, nativePtr, [], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_parent_area_size =
      resolveMethodBind('Control', 'get_parent_area_size', 3341600327);

  Vector2 getParentAreaSize() {
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_parent_area_size, nativePtr, [], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_global_position =
      resolveMethodBind('Control', 'get_global_position', 3341600327);

  Vector2 getGlobalPosition() {
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_global_position, nativePtr, [], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_screen_position =
      resolveMethodBind('Control', 'get_screen_position', 3341600327);

  Vector2 getScreenPosition() {
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_screen_position, nativePtr, [], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_rect =
      resolveMethodBind('Control', 'get_rect', 1639390495);

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

  static final Pointer<Void> _mb_get_global_rect =
      resolveMethodBind('Control', 'get_global_rect', 1639390495);

  Rect2 getGlobalRect() {
    try {
      final ret = malloc<Uint8>(Rect2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_global_rect, nativePtr, [], ret.cast());
        return Rect2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_focus_mode =
      resolveMethodBind('Control', 'set_focus_mode', 3232914922);

  void setFocusMode(int mode) {
    final arg0 = malloc<Int64>()..value = mode;
    try {
      ptrcallVoid(_mb_set_focus_mode, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_focus_mode =
      resolveMethodBind('Control', 'get_focus_mode', 2132829277);

  int getFocusMode() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_focus_mode, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_focus_mode_with_override =
      resolveMethodBind('Control', 'get_focus_mode_with_override', 2132829277);

  int getFocusModeWithOverride() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_focus_mode_with_override, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_focus_behavior_recursive =
      resolveMethodBind('Control', 'set_focus_behavior_recursive', 4256832521);

  void setFocusBehaviorRecursive(int focusBehaviorRecursive) {
    final arg0 = malloc<Int64>()..value = focusBehaviorRecursive;
    try {
      ptrcallVoid(_mb_set_focus_behavior_recursive, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_focus_behavior_recursive =
      resolveMethodBind('Control', 'get_focus_behavior_recursive', 2435707181);

  int getFocusBehaviorRecursive() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_focus_behavior_recursive, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_has_focus =
      resolveMethodBind('Control', 'has_focus', 3302206351);

  bool hasFocus(bool ignoreHiddenFocus) {
    final arg0 = malloc<Uint8>()..value = ignoreHiddenFocus ? 1 : 0;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_has_focus, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_grab_focus =
      resolveMethodBind('Control', 'grab_focus', 107499316);

  void grabFocus(bool hideFocus) {
    final arg0 = malloc<Uint8>()..value = hideFocus ? 1 : 0;
    try {
      ptrcallVoid(_mb_grab_focus, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_release_focus =
      resolveMethodBind('Control', 'release_focus', 3218959716);

  void releaseFocus() {
    try {
      ptrcallVoid(_mb_release_focus, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_find_prev_valid_focus =
      resolveMethodBind('Control', 'find_prev_valid_focus', 2783021301);

  Control? findPrevValidFocus() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_find_prev_valid_focus, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Control(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_find_next_valid_focus =
      resolveMethodBind('Control', 'find_next_valid_focus', 2783021301);

  Control? findNextValidFocus() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_find_next_valid_focus, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Control(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_find_valid_focus_neighbor =
      resolveMethodBind('Control', 'find_valid_focus_neighbor', 1543910170);

  Control? findValidFocusNeighbor(int side) {
    final arg0 = malloc<Int64>()..value = side;
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_find_valid_focus_neighbor, nativePtr, [arg0.cast<Void>()], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Control(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_h_size_flags =
      resolveMethodBind('Control', 'set_h_size_flags', 394851643);

  void setHSizeFlags(int flags) {
    final arg0 = malloc<Int64>()..value = flags;
    try {
      ptrcallVoid(_mb_set_h_size_flags, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_h_size_flags =
      resolveMethodBind('Control', 'get_h_size_flags', 3781367401);

  int getHSizeFlags() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_h_size_flags, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_stretch_ratio =
      resolveMethodBind('Control', 'set_stretch_ratio', 373806689);

  void setStretchRatio(double ratio) {
    final arg0 = malloc<Double>()..value = ratio;
    try {
      ptrcallVoid(_mb_set_stretch_ratio, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_stretch_ratio =
      resolveMethodBind('Control', 'get_stretch_ratio', 1740695150);

  double getStretchRatio() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_stretch_ratio, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_v_size_flags =
      resolveMethodBind('Control', 'set_v_size_flags', 394851643);

  void setVSizeFlags(int flags) {
    final arg0 = malloc<Int64>()..value = flags;
    try {
      ptrcallVoid(_mb_set_v_size_flags, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_v_size_flags =
      resolveMethodBind('Control', 'get_v_size_flags', 3781367401);

  int getVSizeFlags() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_v_size_flags, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_offset_transform_enabled =
      resolveMethodBind('Control', 'set_offset_transform_enabled', 2586408642);

  void setOffsetTransformEnabled(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_offset_transform_enabled, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_offset_transform_enabled =
      resolveMethodBind('Control', 'is_offset_transform_enabled', 36873697);

  bool isOffsetTransformEnabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_offset_transform_enabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_offset_transform_position =
      resolveMethodBind('Control', 'set_offset_transform_position', 743155724);

  void setOffsetTransformPosition(Vector2 offset) {
    final arg0 = malloc<Uint8>(Vector2.nativeSize);
    offset.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_offset_transform_position, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_offset_transform_position =
      resolveMethodBind('Control', 'get_offset_transform_position', 3341600327);

  Vector2 getOffsetTransformPosition() {
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_offset_transform_position, nativePtr, [], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_offset_transform_position_ratio =
      resolveMethodBind('Control', 'set_offset_transform_position_ratio', 743155724);

  void setOffsetTransformPositionRatio(Vector2 offset) {
    final arg0 = malloc<Uint8>(Vector2.nativeSize);
    offset.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_offset_transform_position_ratio, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_offset_transform_position_ratio =
      resolveMethodBind('Control', 'get_offset_transform_position_ratio', 3341600327);

  Vector2 getOffsetTransformPositionRatio() {
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_offset_transform_position_ratio, nativePtr, [], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_offset_transform_scale =
      resolveMethodBind('Control', 'set_offset_transform_scale', 743155724);

  void setOffsetTransformScale(Vector2 scale) {
    final arg0 = malloc<Uint8>(Vector2.nativeSize);
    scale.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_offset_transform_scale, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_offset_transform_scale =
      resolveMethodBind('Control', 'get_offset_transform_scale', 3341600327);

  Vector2 getOffsetTransformScale() {
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_offset_transform_scale, nativePtr, [], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_offset_transform_rotation =
      resolveMethodBind('Control', 'set_offset_transform_rotation', 373806689);

  void setOffsetTransformRotation(double rotation) {
    final arg0 = malloc<Double>()..value = rotation;
    try {
      ptrcallVoid(_mb_set_offset_transform_rotation, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_offset_transform_rotation =
      resolveMethodBind('Control', 'get_offset_transform_rotation', 1740695150);

  double getOffsetTransformRotation() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_offset_transform_rotation, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_offset_transform_pivot =
      resolveMethodBind('Control', 'set_offset_transform_pivot', 743155724);

  void setOffsetTransformPivot(Vector2 pivot) {
    final arg0 = malloc<Uint8>(Vector2.nativeSize);
    pivot.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_offset_transform_pivot, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_offset_transform_pivot =
      resolveMethodBind('Control', 'get_offset_transform_pivot', 3341600327);

  Vector2 getOffsetTransformPivot() {
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_offset_transform_pivot, nativePtr, [], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_offset_transform_pivot_ratio =
      resolveMethodBind('Control', 'set_offset_transform_pivot_ratio', 743155724);

  void setOffsetTransformPivotRatio(Vector2 pivot) {
    final arg0 = malloc<Uint8>(Vector2.nativeSize);
    pivot.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_offset_transform_pivot_ratio, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_offset_transform_pivot_ratio =
      resolveMethodBind('Control', 'get_offset_transform_pivot_ratio', 3341600327);

  Vector2 getOffsetTransformPivotRatio() {
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_offset_transform_pivot_ratio, nativePtr, [], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_offset_transform_visual_only =
      resolveMethodBind('Control', 'set_offset_transform_visual_only', 2586408642);

  void setOffsetTransformVisualOnly(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_offset_transform_visual_only, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_offset_transform_visual_only =
      resolveMethodBind('Control', 'is_offset_transform_visual_only', 36873697);

  bool isOffsetTransformVisualOnly() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_offset_transform_visual_only, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_theme =
      resolveMethodBind('Control', 'set_theme', 2326690814);

  void setTheme(Theme theme) {
    final arg0 = malloc<Pointer<Void>>()..value = theme.nativePtr;
    try {
      ptrcallVoid(_mb_set_theme, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_theme =
      resolveMethodBind('Control', 'get_theme', 3846893731);

  Theme? getTheme() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_theme, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Theme(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_theme_type_variation =
      resolveMethodBind('Control', 'set_theme_type_variation', 3304788590);

  void setThemeTypeVariation(String themeType) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), themeType);
    try {
      ptrcallVoid(_mb_set_theme_type_variation, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_theme_type_variation =
      resolveMethodBind('Control', 'get_theme_type_variation', 2002593661);

  String getThemeTypeVariation() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_theme_type_variation, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readStringName(ret.cast());
        BuiltinMarshal.destroyStringName(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_begin_bulk_theme_override =
      resolveMethodBind('Control', 'begin_bulk_theme_override', 3218959716);

  void beginBulkThemeOverride() {
    try {
      ptrcallVoid(_mb_begin_bulk_theme_override, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_end_bulk_theme_override =
      resolveMethodBind('Control', 'end_bulk_theme_override', 3218959716);

  void endBulkThemeOverride() {
    try {
      ptrcallVoid(_mb_end_bulk_theme_override, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_add_theme_icon_override =
      resolveMethodBind('Control', 'add_theme_icon_override', 1373065600);

  void addThemeIconOverride(String name, Texture2D texture) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), name);
    final arg1 = malloc<Pointer<Void>>()..value = texture.nativePtr;
    try {
      ptrcallVoid(_mb_add_theme_icon_override, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_add_theme_stylebox_override =
      resolveMethodBind('Control', 'add_theme_stylebox_override', 4188838905);

  void addThemeStyleboxOverride(String name, StyleBox stylebox) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), name);
    final arg1 = malloc<Pointer<Void>>()..value = stylebox.nativePtr;
    try {
      ptrcallVoid(_mb_add_theme_stylebox_override, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_add_theme_font_override =
      resolveMethodBind('Control', 'add_theme_font_override', 3518018674);

  void addThemeFontOverride(String name, Font font) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), name);
    final arg1 = malloc<Pointer<Void>>()..value = font.nativePtr;
    try {
      ptrcallVoid(_mb_add_theme_font_override, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_add_theme_font_size_override =
      resolveMethodBind('Control', 'add_theme_font_size_override', 2415702435);

  void addThemeFontSizeOverride(String name, int fontSize) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), name);
    final arg1 = malloc<Int64>()..value = fontSize;
    try {
      ptrcallVoid(_mb_add_theme_font_size_override, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_add_theme_color_override =
      resolveMethodBind('Control', 'add_theme_color_override', 4260178595);

  void addThemeColorOverride(String name, Color color) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), name);
    final arg1 = malloc<Uint8>(Color.nativeSize);
    color.writeTo(arg1, 0);
    try {
      ptrcallVoid(_mb_add_theme_color_override, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_add_theme_constant_override =
      resolveMethodBind('Control', 'add_theme_constant_override', 2415702435);

  void addThemeConstantOverride(String name, int constant) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), name);
    final arg1 = malloc<Int64>()..value = constant;
    try {
      ptrcallVoid(_mb_add_theme_constant_override, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_remove_theme_icon_override =
      resolveMethodBind('Control', 'remove_theme_icon_override', 3304788590);

  void removeThemeIconOverride(String name) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), name);
    try {
      ptrcallVoid(_mb_remove_theme_icon_override, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_remove_theme_stylebox_override =
      resolveMethodBind('Control', 'remove_theme_stylebox_override', 3304788590);

  void removeThemeStyleboxOverride(String name) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), name);
    try {
      ptrcallVoid(_mb_remove_theme_stylebox_override, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_remove_theme_font_override =
      resolveMethodBind('Control', 'remove_theme_font_override', 3304788590);

  void removeThemeFontOverride(String name) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), name);
    try {
      ptrcallVoid(_mb_remove_theme_font_override, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_remove_theme_font_size_override =
      resolveMethodBind('Control', 'remove_theme_font_size_override', 3304788590);

  void removeThemeFontSizeOverride(String name) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), name);
    try {
      ptrcallVoid(_mb_remove_theme_font_size_override, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_remove_theme_color_override =
      resolveMethodBind('Control', 'remove_theme_color_override', 3304788590);

  void removeThemeColorOverride(String name) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), name);
    try {
      ptrcallVoid(_mb_remove_theme_color_override, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_remove_theme_constant_override =
      resolveMethodBind('Control', 'remove_theme_constant_override', 3304788590);

  void removeThemeConstantOverride(String name) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), name);
    try {
      ptrcallVoid(_mb_remove_theme_constant_override, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_theme_icon =
      resolveMethodBind('Control', 'get_theme_icon', 3163973443);

  Texture2D? getThemeIcon(String name, String themeType) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), name);
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg1.cast(), themeType);
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_theme_icon, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Texture2D(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
      BuiltinMarshal.destroyStringName(arg1.cast());
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_theme_stylebox =
      resolveMethodBind('Control', 'get_theme_stylebox', 604739069);

  StyleBox? getThemeStylebox(String name, String themeType) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), name);
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg1.cast(), themeType);
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_theme_stylebox, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : StyleBox(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
      BuiltinMarshal.destroyStringName(arg1.cast());
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_theme_font =
      resolveMethodBind('Control', 'get_theme_font', 2826986490);

  Font? getThemeFont(String name, String themeType) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), name);
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg1.cast(), themeType);
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_theme_font, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Font(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
      BuiltinMarshal.destroyStringName(arg1.cast());
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_theme_font_size =
      resolveMethodBind('Control', 'get_theme_font_size', 1327056374);

  int getThemeFontSize(String name, String themeType) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), name);
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg1.cast(), themeType);
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_theme_font_size, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
      BuiltinMarshal.destroyStringName(arg1.cast());
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_theme_color =
      resolveMethodBind('Control', 'get_theme_color', 2798751242);

  Color getThemeColor(String name, String themeType) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), name);
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg1.cast(), themeType);
    try {
      final ret = malloc<Uint8>(Color.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_theme_color, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return Color.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
      BuiltinMarshal.destroyStringName(arg1.cast());
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_theme_constant =
      resolveMethodBind('Control', 'get_theme_constant', 1327056374);

  int getThemeConstant(String name, String themeType) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), name);
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg1.cast(), themeType);
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_theme_constant, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
      BuiltinMarshal.destroyStringName(arg1.cast());
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_has_theme_icon_override =
      resolveMethodBind('Control', 'has_theme_icon_override', 2619796661);

  bool hasThemeIconOverride(String name) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), name);
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_has_theme_icon_override, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_has_theme_stylebox_override =
      resolveMethodBind('Control', 'has_theme_stylebox_override', 2619796661);

  bool hasThemeStyleboxOverride(String name) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), name);
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_has_theme_stylebox_override, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_has_theme_font_override =
      resolveMethodBind('Control', 'has_theme_font_override', 2619796661);

  bool hasThemeFontOverride(String name) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), name);
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_has_theme_font_override, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_has_theme_font_size_override =
      resolveMethodBind('Control', 'has_theme_font_size_override', 2619796661);

  bool hasThemeFontSizeOverride(String name) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), name);
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_has_theme_font_size_override, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_has_theme_color_override =
      resolveMethodBind('Control', 'has_theme_color_override', 2619796661);

  bool hasThemeColorOverride(String name) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), name);
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_has_theme_color_override, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_has_theme_constant_override =
      resolveMethodBind('Control', 'has_theme_constant_override', 2619796661);

  bool hasThemeConstantOverride(String name) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), name);
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_has_theme_constant_override, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_has_theme_icon =
      resolveMethodBind('Control', 'has_theme_icon', 866386512);

  bool hasThemeIcon(String name, String themeType) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), name);
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg1.cast(), themeType);
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_has_theme_icon, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
      BuiltinMarshal.destroyStringName(arg1.cast());
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_has_theme_stylebox =
      resolveMethodBind('Control', 'has_theme_stylebox', 866386512);

  bool hasThemeStylebox(String name, String themeType) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), name);
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg1.cast(), themeType);
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_has_theme_stylebox, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
      BuiltinMarshal.destroyStringName(arg1.cast());
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_has_theme_font =
      resolveMethodBind('Control', 'has_theme_font', 866386512);

  bool hasThemeFont(String name, String themeType) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), name);
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg1.cast(), themeType);
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_has_theme_font, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
      BuiltinMarshal.destroyStringName(arg1.cast());
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_has_theme_font_size =
      resolveMethodBind('Control', 'has_theme_font_size', 866386512);

  bool hasThemeFontSize(String name, String themeType) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), name);
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg1.cast(), themeType);
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_has_theme_font_size, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
      BuiltinMarshal.destroyStringName(arg1.cast());
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_has_theme_color =
      resolveMethodBind('Control', 'has_theme_color', 866386512);

  bool hasThemeColor(String name, String themeType) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), name);
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg1.cast(), themeType);
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_has_theme_color, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
      BuiltinMarshal.destroyStringName(arg1.cast());
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_has_theme_constant =
      resolveMethodBind('Control', 'has_theme_constant', 866386512);

  bool hasThemeConstant(String name, String themeType) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), name);
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg1.cast(), themeType);
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_has_theme_constant, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
      BuiltinMarshal.destroyStringName(arg1.cast());
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_theme_default_base_scale =
      resolveMethodBind('Control', 'get_theme_default_base_scale', 1740695150);

  double getThemeDefaultBaseScale() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_theme_default_base_scale, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_theme_default_font =
      resolveMethodBind('Control', 'get_theme_default_font', 3229501585);

  Font? getThemeDefaultFont() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_theme_default_font, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Font(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_theme_default_font_size =
      resolveMethodBind('Control', 'get_theme_default_font_size', 3905245786);

  int getThemeDefaultFontSize() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_theme_default_font_size, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_parent_control =
      resolveMethodBind('Control', 'get_parent_control', 2783021301);

  Control? getParentControl() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_parent_control, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Control(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_h_grow_direction =
      resolveMethodBind('Control', 'set_h_grow_direction', 2022385301);

  void setHGrowDirection(int direction) {
    final arg0 = malloc<Int64>()..value = direction;
    try {
      ptrcallVoid(_mb_set_h_grow_direction, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_h_grow_direction =
      resolveMethodBind('Control', 'get_h_grow_direction', 3635610155);

  int getHGrowDirection() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_h_grow_direction, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_v_grow_direction =
      resolveMethodBind('Control', 'set_v_grow_direction', 2022385301);

  void setVGrowDirection(int direction) {
    final arg0 = malloc<Int64>()..value = direction;
    try {
      ptrcallVoid(_mb_set_v_grow_direction, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_v_grow_direction =
      resolveMethodBind('Control', 'get_v_grow_direction', 3635610155);

  int getVGrowDirection() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_v_grow_direction, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_tooltip_auto_translate_mode =
      resolveMethodBind('Control', 'set_tooltip_auto_translate_mode', 776149714);

  void setTooltipAutoTranslateMode(int mode) {
    final arg0 = malloc<Int64>()..value = mode;
    try {
      ptrcallVoid(_mb_set_tooltip_auto_translate_mode, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_tooltip_auto_translate_mode =
      resolveMethodBind('Control', 'get_tooltip_auto_translate_mode', 2498906432);

  int getTooltipAutoTranslateMode() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_tooltip_auto_translate_mode, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_tooltip_text =
      resolveMethodBind('Control', 'set_tooltip_text', 83702148);

  void setTooltipText(String hint) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), hint);
    try {
      ptrcallVoid(_mb_set_tooltip_text, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_tooltip_text =
      resolveMethodBind('Control', 'get_tooltip_text', 201670096);

  String getTooltipText() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_tooltip_text, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_tooltip =
      resolveMethodBind('Control', 'get_tooltip', 2895288280);

  String getTooltip(Vector2 atPosition) {
    final arg0 = malloc<Uint8>(Vector2.nativeSize);
    atPosition.writeTo(arg0, 0);
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_tooltip, nativePtr, [arg0.cast<Void>()], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_translation_context =
      resolveMethodBind('Control', 'set_translation_context', 3304788590);

  void setTranslationContext(String context) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), context);
    try {
      ptrcallVoid(_mb_set_translation_context, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_translation_context =
      resolveMethodBind('Control', 'get_translation_context', 2002593661);

  String getTranslationContext() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_translation_context, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readStringName(ret.cast());
        BuiltinMarshal.destroyStringName(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_default_cursor_shape =
      resolveMethodBind('Control', 'set_default_cursor_shape', 217062046);

  void setDefaultCursorShape(int shape) {
    final arg0 = malloc<Int64>()..value = shape;
    try {
      ptrcallVoid(_mb_set_default_cursor_shape, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_default_cursor_shape =
      resolveMethodBind('Control', 'get_default_cursor_shape', 2359535750);

  int getDefaultCursorShape() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_default_cursor_shape, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_cursor_shape =
      resolveMethodBind('Control', 'get_cursor_shape', 1395773853);

  int getCursorShape(Vector2 atPosition) {
    final arg0 = malloc<Uint8>(Vector2.nativeSize);
    atPosition.writeTo(arg0, 0);
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_cursor_shape, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  // Skipped set_focus_neighbor(): an argument type is unsupported.
  // Skipped get_focus_neighbor(): unsupported return type "NodePath".
  // Skipped set_focus_next(): an argument type is unsupported.
  // Skipped get_focus_next(): unsupported return type "NodePath".
  // Skipped set_focus_previous(): an argument type is unsupported.
  // Skipped get_focus_previous(): unsupported return type "NodePath".
  // Skipped force_drag(): an argument type is unsupported.
  static final Pointer<Void> _mb_accessibility_drag =
      resolveMethodBind('Control', 'accessibility_drag', 3218959716);

  void accessibilityDrag() {
    try {
      ptrcallVoid(_mb_accessibility_drag, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_accessibility_drop =
      resolveMethodBind('Control', 'accessibility_drop', 3218959716);

  void accessibilityDrop() {
    try {
      ptrcallVoid(_mb_accessibility_drop, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_accessibility_name =
      resolveMethodBind('Control', 'set_accessibility_name', 83702148);

  void setAccessibilityName(String name) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), name);
    try {
      ptrcallVoid(_mb_set_accessibility_name, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_accessibility_name =
      resolveMethodBind('Control', 'get_accessibility_name', 201670096);

  String getAccessibilityName() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_accessibility_name, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_accessibility_description =
      resolveMethodBind('Control', 'set_accessibility_description', 83702148);

  void setAccessibilityDescription(String description) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), description);
    try {
      ptrcallVoid(_mb_set_accessibility_description, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_accessibility_description =
      resolveMethodBind('Control', 'get_accessibility_description', 201670096);

  String getAccessibilityDescription() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_accessibility_description, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_accessibility_live =
      resolveMethodBind('Control', 'set_accessibility_live', 353443434);

  void setAccessibilityLive(int mode) {
    final arg0 = malloc<Int64>()..value = mode;
    try {
      ptrcallVoid(_mb_set_accessibility_live, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_accessibility_live =
      resolveMethodBind('Control', 'get_accessibility_live', 2858591811);

  int getAccessibilityLive() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_accessibility_live, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  // Skipped set_accessibility_controls_nodes(): an argument type is unsupported.
  // Skipped get_accessibility_controls_nodes(): unsupported return type "typedarray::NodePath".
  // Skipped set_accessibility_described_by_nodes(): an argument type is unsupported.
  // Skipped get_accessibility_described_by_nodes(): unsupported return type "typedarray::NodePath".
  // Skipped set_accessibility_labeled_by_nodes(): an argument type is unsupported.
  // Skipped get_accessibility_labeled_by_nodes(): unsupported return type "typedarray::NodePath".
  // Skipped set_accessibility_flow_to_nodes(): an argument type is unsupported.
  // Skipped get_accessibility_flow_to_nodes(): unsupported return type "typedarray::NodePath".
  static final Pointer<Void> _mb_set_mouse_filter =
      resolveMethodBind('Control', 'set_mouse_filter', 3891156122);

  void setMouseFilter(int filter) {
    final arg0 = malloc<Int64>()..value = filter;
    try {
      ptrcallVoid(_mb_set_mouse_filter, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_mouse_filter =
      resolveMethodBind('Control', 'get_mouse_filter', 1572545674);

  int getMouseFilter() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_mouse_filter, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_mouse_filter_with_override =
      resolveMethodBind('Control', 'get_mouse_filter_with_override', 1572545674);

  int getMouseFilterWithOverride() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_mouse_filter_with_override, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_mouse_behavior_recursive =
      resolveMethodBind('Control', 'set_mouse_behavior_recursive', 849284636);

  void setMouseBehaviorRecursive(int mouseBehaviorRecursive) {
    final arg0 = malloc<Int64>()..value = mouseBehaviorRecursive;
    try {
      ptrcallVoid(_mb_set_mouse_behavior_recursive, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_mouse_behavior_recursive =
      resolveMethodBind('Control', 'get_mouse_behavior_recursive', 3779367402);

  int getMouseBehaviorRecursive() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_mouse_behavior_recursive, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_force_pass_scroll_events =
      resolveMethodBind('Control', 'set_force_pass_scroll_events', 2586408642);

  void setForcePassScrollEvents(bool forcePassScrollEvents) {
    final arg0 = malloc<Uint8>()..value = forcePassScrollEvents ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_force_pass_scroll_events, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_force_pass_scroll_events =
      resolveMethodBind('Control', 'is_force_pass_scroll_events', 36873697);

  bool isForcePassScrollEvents() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_force_pass_scroll_events, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_clip_contents =
      resolveMethodBind('Control', 'set_clip_contents', 2586408642);

  void setClipContents(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_clip_contents, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_clipping_contents =
      resolveMethodBind('Control', 'is_clipping_contents', 2240911060);

  bool isClippingContents() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_clipping_contents, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_grab_click_focus =
      resolveMethodBind('Control', 'grab_click_focus', 3218959716);

  void grabClickFocus() {
    try {
      ptrcallVoid(_mb_grab_click_focus, nativePtr, []);
    } finally {
    }
  }

  // Skipped set_drag_forwarding(): an argument type is unsupported.
  static final Pointer<Void> _mb_set_drag_preview =
      resolveMethodBind('Control', 'set_drag_preview', 1496901182);

  void setDragPreview(Control control) {
    final arg0 = malloc<Pointer<Void>>()..value = control.nativePtr;
    try {
      ptrcallVoid(_mb_set_drag_preview, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_drag_successful =
      resolveMethodBind('Control', 'is_drag_successful', 36873697);

  bool isDragSuccessful() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_drag_successful, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_warp_mouse =
      resolveMethodBind('Control', 'warp_mouse', 743155724);

  void warpMouse(Vector2 position) {
    final arg0 = malloc<Uint8>(Vector2.nativeSize);
    position.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_warp_mouse, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_shortcut_context =
      resolveMethodBind('Control', 'set_shortcut_context', 1078189570);

  void setShortcutContext(Node node) {
    final arg0 = malloc<Pointer<Void>>()..value = node.nativePtr;
    try {
      ptrcallVoid(_mb_set_shortcut_context, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_shortcut_context =
      resolveMethodBind('Control', 'get_shortcut_context', 3160264692);

  Node? getShortcutContext() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_shortcut_context, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Node(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_update_maximum_size =
      resolveMethodBind('Control', 'update_maximum_size', 3218959716);

  void updateMaximumSize() {
    try {
      ptrcallVoid(_mb_update_maximum_size, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_update_minimum_size =
      resolveMethodBind('Control', 'update_minimum_size', 3218959716);

  void updateMinimumSize() {
    try {
      ptrcallVoid(_mb_update_minimum_size, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_layout_direction =
      resolveMethodBind('Control', 'set_layout_direction', 3310692370);

  void setLayoutDirection(int direction) {
    final arg0 = malloc<Int64>()..value = direction;
    try {
      ptrcallVoid(_mb_set_layout_direction, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_layout_direction =
      resolveMethodBind('Control', 'get_layout_direction', 1546772008);

  int getLayoutDirection() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_layout_direction, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_is_layout_rtl =
      resolveMethodBind('Control', 'is_layout_rtl', 36873697);

  bool isLayoutRtl() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_layout_rtl, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_auto_translate =
      resolveMethodBind('Control', 'set_auto_translate', 2586408642);

  void setAutoTranslate(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_auto_translate, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_auto_translating =
      resolveMethodBind('Control', 'is_auto_translating', 36873697);

  bool isAutoTranslating() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_auto_translating, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_localize_numeral_system =
      resolveMethodBind('Control', 'set_localize_numeral_system', 2586408642);

  void setLocalizeNumeralSystem(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_localize_numeral_system, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_localizing_numeral_system =
      resolveMethodBind('Control', 'is_localizing_numeral_system', 36873697);

  bool isLocalizingNumeralSystem() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_localizing_numeral_system, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
