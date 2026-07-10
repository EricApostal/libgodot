// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class ScrollContainer extends Container {
  ScrollContainer(super.nativePtr);

  /// Constructs a brand-new engine-owned ScrollContainer instance
  /// (via classdb_construct_object3), not an existing one.
  factory ScrollContainer.create() {
    return ScrollContainer(resolveClassConstructor('ScrollContainer'));
  }

  static final Pointer<Void> _mb_set_h_scroll =
      resolveMethodBind('ScrollContainer', 'set_h_scroll', 1286410249);

  void setHScroll(int value) {
    final arg0 = malloc<Int64>()..value = value;
    try {
      ptrcallVoid(_mb_set_h_scroll, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_h_scroll =
      resolveMethodBind('ScrollContainer', 'get_h_scroll', 3905245786);

  int getHScroll() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_h_scroll, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_v_scroll =
      resolveMethodBind('ScrollContainer', 'set_v_scroll', 1286410249);

  void setVScroll(int value) {
    final arg0 = malloc<Int64>()..value = value;
    try {
      ptrcallVoid(_mb_set_v_scroll, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_v_scroll =
      resolveMethodBind('ScrollContainer', 'get_v_scroll', 3905245786);

  int getVScroll() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_v_scroll, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_horizontal_custom_step =
      resolveMethodBind('ScrollContainer', 'set_horizontal_custom_step', 373806689);

  void setHorizontalCustomStep(double value) {
    final arg0 = malloc<Double>()..value = value;
    try {
      ptrcallVoid(_mb_set_horizontal_custom_step, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_horizontal_custom_step =
      resolveMethodBind('ScrollContainer', 'get_horizontal_custom_step', 1740695150);

  double getHorizontalCustomStep() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_horizontal_custom_step, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_vertical_custom_step =
      resolveMethodBind('ScrollContainer', 'set_vertical_custom_step', 373806689);

  void setVerticalCustomStep(double value) {
    final arg0 = malloc<Double>()..value = value;
    try {
      ptrcallVoid(_mb_set_vertical_custom_step, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_vertical_custom_step =
      resolveMethodBind('ScrollContainer', 'get_vertical_custom_step', 1740695150);

  double getVerticalCustomStep() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_vertical_custom_step, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_horizontal_scroll_mode =
      resolveMethodBind('ScrollContainer', 'set_horizontal_scroll_mode', 2750506364);

  void setHorizontalScrollMode(int enable) {
    final arg0 = malloc<Int64>()..value = enable;
    try {
      ptrcallVoid(_mb_set_horizontal_scroll_mode, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_horizontal_scroll_mode =
      resolveMethodBind('ScrollContainer', 'get_horizontal_scroll_mode', 3987985145);

  int getHorizontalScrollMode() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_horizontal_scroll_mode, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_vertical_scroll_mode =
      resolveMethodBind('ScrollContainer', 'set_vertical_scroll_mode', 2750506364);

  void setVerticalScrollMode(int enable) {
    final arg0 = malloc<Int64>()..value = enable;
    try {
      ptrcallVoid(_mb_set_vertical_scroll_mode, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_vertical_scroll_mode =
      resolveMethodBind('ScrollContainer', 'get_vertical_scroll_mode', 3987985145);

  int getVerticalScrollMode() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_vertical_scroll_mode, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_scroll_horizontal_by_default =
      resolveMethodBind('ScrollContainer', 'set_scroll_horizontal_by_default', 2586408642);

  void setScrollHorizontalByDefault(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_scroll_horizontal_by_default, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_scroll_horizontal_by_default =
      resolveMethodBind('ScrollContainer', 'is_scroll_horizontal_by_default', 36873697);

  bool isScrollHorizontalByDefault() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_scroll_horizontal_by_default, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_deadzone =
      resolveMethodBind('ScrollContainer', 'set_deadzone', 1286410249);

  void setDeadzone(int deadzone) {
    final arg0 = malloc<Int64>()..value = deadzone;
    try {
      ptrcallVoid(_mb_set_deadzone, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_deadzone =
      resolveMethodBind('ScrollContainer', 'get_deadzone', 3905245786);

  int getDeadzone() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_deadzone, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_scroll_hint_mode =
      resolveMethodBind('ScrollContainer', 'set_scroll_hint_mode', 578158943);

  void setScrollHintMode(int scrollHintMode) {
    final arg0 = malloc<Int64>()..value = scrollHintMode;
    try {
      ptrcallVoid(_mb_set_scroll_hint_mode, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_scroll_hint_mode =
      resolveMethodBind('ScrollContainer', 'get_scroll_hint_mode', 246835423);

  int getScrollHintMode() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_scroll_hint_mode, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_tile_scroll_hint =
      resolveMethodBind('ScrollContainer', 'set_tile_scroll_hint', 2586408642);

  void setTileScrollHint(bool tileScrollHint) {
    final arg0 = malloc<Uint8>()..value = tileScrollHint ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_tile_scroll_hint, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_scroll_hint_tiled =
      resolveMethodBind('ScrollContainer', 'is_scroll_hint_tiled', 2240911060);

  bool isScrollHintTiled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_scroll_hint_tiled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_follow_focus =
      resolveMethodBind('ScrollContainer', 'set_follow_focus', 2586408642);

  void setFollowFocus(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_follow_focus, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_following_focus =
      resolveMethodBind('ScrollContainer', 'is_following_focus', 36873697);

  bool isFollowingFocus() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_following_focus, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_h_scroll_bar =
      resolveMethodBind('ScrollContainer', 'get_h_scroll_bar', 4004517983);

  HScrollBar? getHScrollBar() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_h_scroll_bar, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : HScrollBar(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_v_scroll_bar =
      resolveMethodBind('ScrollContainer', 'get_v_scroll_bar', 2630340773);

  VScrollBar? getVScrollBar() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_v_scroll_bar, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : VScrollBar(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_ensure_control_visible =
      resolveMethodBind('ScrollContainer', 'ensure_control_visible', 1496901182);

  void ensureControlVisible(Control control) {
    final arg0 = malloc<Pointer<Void>>()..value = control.nativePtr;
    try {
      ptrcallVoid(_mb_ensure_control_visible, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_draw_focus_border =
      resolveMethodBind('ScrollContainer', 'set_draw_focus_border', 2586408642);

  void setDrawFocusBorder(bool draw) {
    final arg0 = malloc<Uint8>()..value = draw ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_draw_focus_border, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_draw_focus_border =
      resolveMethodBind('ScrollContainer', 'get_draw_focus_border', 2240911060);

  bool getDrawFocusBorder() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_draw_focus_border, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
