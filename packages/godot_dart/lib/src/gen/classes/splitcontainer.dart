// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class SplitContainer extends Container {
  SplitContainer(super.nativePtr);

  // Skipped set_split_offsets(): an argument type is unsupported.
  // Skipped get_split_offsets(): unsupported return type "PackedInt32Array".
  static final Pointer<Void> _mb_clamp_split_offset =
      resolveMethodBind('SplitContainer', 'clamp_split_offset', 1995695955);

  void clampSplitOffset(int priorityIndex) {
    final arg0 = malloc<Int64>()..value = priorityIndex;
    try {
      ptrcallVoid(_mb_clamp_split_offset, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_collapsed =
      resolveMethodBind('SplitContainer', 'set_collapsed', 2586408642);

  void setCollapsed(bool collapsed) {
    final arg0 = malloc<Uint8>()..value = collapsed ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_collapsed, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_collapsed =
      resolveMethodBind('SplitContainer', 'is_collapsed', 36873697);

  bool isCollapsed() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_collapsed, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_dragger_visibility =
      resolveMethodBind('SplitContainer', 'set_dragger_visibility', 1168273952);

  void setDraggerVisibility(int mode) {
    final arg0 = malloc<Int64>()..value = mode;
    try {
      ptrcallVoid(_mb_set_dragger_visibility, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_dragger_visibility =
      resolveMethodBind('SplitContainer', 'get_dragger_visibility', 967297479);

  int getDraggerVisibility() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_dragger_visibility, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_vertical =
      resolveMethodBind('SplitContainer', 'set_vertical', 2586408642);

  void setVertical(bool vertical) {
    final arg0 = malloc<Uint8>()..value = vertical ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_vertical, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_vertical =
      resolveMethodBind('SplitContainer', 'is_vertical', 36873697);

  bool isVertical() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_vertical, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_dragging_enabled =
      resolveMethodBind('SplitContainer', 'set_dragging_enabled', 2586408642);

  void setDraggingEnabled(bool draggingEnabled) {
    final arg0 = malloc<Uint8>()..value = draggingEnabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_dragging_enabled, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_dragging_enabled =
      resolveMethodBind('SplitContainer', 'is_dragging_enabled', 36873697);

  bool isDraggingEnabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_dragging_enabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_drag_area_margin_begin =
      resolveMethodBind('SplitContainer', 'set_drag_area_margin_begin', 1286410249);

  void setDragAreaMarginBegin(int margin) {
    final arg0 = malloc<Int64>()..value = margin;
    try {
      ptrcallVoid(_mb_set_drag_area_margin_begin, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_drag_area_margin_begin =
      resolveMethodBind('SplitContainer', 'get_drag_area_margin_begin', 3905245786);

  int getDragAreaMarginBegin() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_drag_area_margin_begin, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_drag_area_margin_end =
      resolveMethodBind('SplitContainer', 'set_drag_area_margin_end', 1286410249);

  void setDragAreaMarginEnd(int margin) {
    final arg0 = malloc<Int64>()..value = margin;
    try {
      ptrcallVoid(_mb_set_drag_area_margin_end, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_drag_area_margin_end =
      resolveMethodBind('SplitContainer', 'get_drag_area_margin_end', 3905245786);

  int getDragAreaMarginEnd() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_drag_area_margin_end, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_drag_area_offset =
      resolveMethodBind('SplitContainer', 'set_drag_area_offset', 1286410249);

  void setDragAreaOffset(int offset) {
    final arg0 = malloc<Int64>()..value = offset;
    try {
      ptrcallVoid(_mb_set_drag_area_offset, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_drag_area_offset =
      resolveMethodBind('SplitContainer', 'get_drag_area_offset', 3905245786);

  int getDragAreaOffset() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_drag_area_offset, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_drag_area_highlight_in_editor =
      resolveMethodBind('SplitContainer', 'set_drag_area_highlight_in_editor', 2586408642);

  void setDragAreaHighlightInEditor(bool dragAreaHighlightInEditor) {
    final arg0 = malloc<Uint8>()..value = dragAreaHighlightInEditor ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_drag_area_highlight_in_editor, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_drag_area_highlight_in_editor_enabled =
      resolveMethodBind('SplitContainer', 'is_drag_area_highlight_in_editor_enabled', 36873697);

  bool isDragAreaHighlightInEditorEnabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_drag_area_highlight_in_editor_enabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  // Skipped get_drag_area_controls(): unsupported return type "typedarray::Control".
  static final Pointer<Void> _mb_set_touch_dragger_enabled =
      resolveMethodBind('SplitContainer', 'set_touch_dragger_enabled', 2586408642);

  void setTouchDraggerEnabled(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_touch_dragger_enabled, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_touch_dragger_enabled =
      resolveMethodBind('SplitContainer', 'is_touch_dragger_enabled', 36873697);

  bool isTouchDraggerEnabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_touch_dragger_enabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_drag_nested_intersections =
      resolveMethodBind('SplitContainer', 'set_drag_nested_intersections', 2586408642);

  void setDragNestedIntersections(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_drag_nested_intersections, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_dragging_nested_intersections =
      resolveMethodBind('SplitContainer', 'is_dragging_nested_intersections', 36873697);

  bool isDraggingNestedIntersections() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_dragging_nested_intersections, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_drag_area_control =
      resolveMethodBind('SplitContainer', 'get_drag_area_control', 829782337);

  Control? getDragAreaControl() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_drag_area_control, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Control(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_split_offset =
      resolveMethodBind('SplitContainer', 'set_split_offset', 1286410249);

  void setSplitOffset(int offset) {
    final arg0 = malloc<Int64>()..value = offset;
    try {
      ptrcallVoid(_mb_set_split_offset, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_split_offset =
      resolveMethodBind('SplitContainer', 'get_split_offset', 3905245786);

  int getSplitOffset() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_split_offset, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
