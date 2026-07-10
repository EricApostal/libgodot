// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class TabBar extends Control {
  TabBar(super.nativePtr);

  static final Pointer<Void> _mb_set_tab_count =
      resolveMethodBind('TabBar', 'set_tab_count', 1286410249);

  void setTabCount(int count) {
    final arg0 = malloc<Int64>()..value = count;
    try {
      ptrcallVoid(_mb_set_tab_count, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_tab_count =
      resolveMethodBind('TabBar', 'get_tab_count', 3905245786);

  int getTabCount() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_tab_count, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_current_tab =
      resolveMethodBind('TabBar', 'set_current_tab', 1286410249);

  void setCurrentTab(int tabIdx) {
    final arg0 = malloc<Int64>()..value = tabIdx;
    try {
      ptrcallVoid(_mb_set_current_tab, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_current_tab =
      resolveMethodBind('TabBar', 'get_current_tab', 3905245786);

  int getCurrentTab() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_current_tab, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_previous_tab =
      resolveMethodBind('TabBar', 'get_previous_tab', 3905245786);

  int getPreviousTab() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_previous_tab, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_select_previous_available =
      resolveMethodBind('TabBar', 'select_previous_available', 2240911060);

  bool selectPreviousAvailable() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_select_previous_available, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_select_next_available =
      resolveMethodBind('TabBar', 'select_next_available', 2240911060);

  bool selectNextAvailable() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_select_next_available, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_tab_title =
      resolveMethodBind('TabBar', 'set_tab_title', 501894301);

  void setTabTitle(int tabIdx, String title) {
    final arg0 = malloc<Int64>()..value = tabIdx;
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg1.cast(), title);
    try {
      ptrcallVoid(_mb_set_tab_title, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      BuiltinMarshal.destroyGDString(arg1.cast());
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_tab_title =
      resolveMethodBind('TabBar', 'get_tab_title', 844755477);

  String getTabTitle(int tabIdx) {
    final arg0 = malloc<Int64>()..value = tabIdx;
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_tab_title, nativePtr, [arg0.cast<Void>()], ret.cast());
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

  static final Pointer<Void> _mb_set_tab_tooltip =
      resolveMethodBind('TabBar', 'set_tab_tooltip', 501894301);

  void setTabTooltip(int tabIdx, String tooltip) {
    final arg0 = malloc<Int64>()..value = tabIdx;
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg1.cast(), tooltip);
    try {
      ptrcallVoid(_mb_set_tab_tooltip, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      BuiltinMarshal.destroyGDString(arg1.cast());
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_tab_tooltip =
      resolveMethodBind('TabBar', 'get_tab_tooltip', 844755477);

  String getTabTooltip(int tabIdx) {
    final arg0 = malloc<Int64>()..value = tabIdx;
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_tab_tooltip, nativePtr, [arg0.cast<Void>()], ret.cast());
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

  static final Pointer<Void> _mb_set_tab_text_direction =
      resolveMethodBind('TabBar', 'set_tab_text_direction', 1707680378);

  void setTabTextDirection(int tabIdx, int direction) {
    final arg0 = malloc<Int64>()..value = tabIdx;
    final arg1 = malloc<Int64>()..value = direction;
    try {
      ptrcallVoid(_mb_set_tab_text_direction, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_tab_text_direction =
      resolveMethodBind('TabBar', 'get_tab_text_direction', 4235602388);

  int getTabTextDirection(int tabIdx) {
    final arg0 = malloc<Int64>()..value = tabIdx;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_tab_text_direction, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_tab_language =
      resolveMethodBind('TabBar', 'set_tab_language', 501894301);

  void setTabLanguage(int tabIdx, String language) {
    final arg0 = malloc<Int64>()..value = tabIdx;
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg1.cast(), language);
    try {
      ptrcallVoid(_mb_set_tab_language, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      BuiltinMarshal.destroyGDString(arg1.cast());
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_tab_language =
      resolveMethodBind('TabBar', 'get_tab_language', 844755477);

  String getTabLanguage(int tabIdx) {
    final arg0 = malloc<Int64>()..value = tabIdx;
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_tab_language, nativePtr, [arg0.cast<Void>()], ret.cast());
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

  static final Pointer<Void> _mb_set_tab_icon =
      resolveMethodBind('TabBar', 'set_tab_icon', 666127730);

  void setTabIcon(int tabIdx, Texture2D icon) {
    final arg0 = malloc<Int64>()..value = tabIdx;
    final arg1 = malloc<Pointer<Void>>()..value = icon.nativePtr;
    try {
      ptrcallVoid(_mb_set_tab_icon, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_tab_icon =
      resolveMethodBind('TabBar', 'get_tab_icon', 3536238170);

  Texture2D? getTabIcon(int tabIdx) {
    final arg0 = malloc<Int64>()..value = tabIdx;
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_tab_icon, nativePtr, [arg0.cast<Void>()], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Texture2D(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_tab_icon_max_width =
      resolveMethodBind('TabBar', 'set_tab_icon_max_width', 3937882851);

  void setTabIconMaxWidth(int tabIdx, int width) {
    final arg0 = malloc<Int64>()..value = tabIdx;
    final arg1 = malloc<Int64>()..value = width;
    try {
      ptrcallVoid(_mb_set_tab_icon_max_width, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_tab_icon_max_width =
      resolveMethodBind('TabBar', 'get_tab_icon_max_width', 923996154);

  int getTabIconMaxWidth(int tabIdx) {
    final arg0 = malloc<Int64>()..value = tabIdx;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_tab_icon_max_width, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_tab_button_icon =
      resolveMethodBind('TabBar', 'set_tab_button_icon', 666127730);

  void setTabButtonIcon(int tabIdx, Texture2D icon) {
    final arg0 = malloc<Int64>()..value = tabIdx;
    final arg1 = malloc<Pointer<Void>>()..value = icon.nativePtr;
    try {
      ptrcallVoid(_mb_set_tab_button_icon, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_tab_button_icon =
      resolveMethodBind('TabBar', 'get_tab_button_icon', 3536238170);

  Texture2D? getTabButtonIcon(int tabIdx) {
    final arg0 = malloc<Int64>()..value = tabIdx;
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_tab_button_icon, nativePtr, [arg0.cast<Void>()], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Texture2D(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_tab_disabled =
      resolveMethodBind('TabBar', 'set_tab_disabled', 300928843);

  void setTabDisabled(int tabIdx, bool disabled) {
    final arg0 = malloc<Int64>()..value = tabIdx;
    final arg1 = malloc<Uint8>()..value = disabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_tab_disabled, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_is_tab_disabled =
      resolveMethodBind('TabBar', 'is_tab_disabled', 1116898809);

  bool isTabDisabled(int tabIdx) {
    final arg0 = malloc<Int64>()..value = tabIdx;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_tab_disabled, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_tab_hidden =
      resolveMethodBind('TabBar', 'set_tab_hidden', 300928843);

  void setTabHidden(int tabIdx, bool hidden) {
    final arg0 = malloc<Int64>()..value = tabIdx;
    final arg1 = malloc<Uint8>()..value = hidden ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_tab_hidden, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_is_tab_hidden =
      resolveMethodBind('TabBar', 'is_tab_hidden', 1116898809);

  bool isTabHidden(int tabIdx) {
    final arg0 = malloc<Int64>()..value = tabIdx;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_tab_hidden, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  // Skipped set_tab_metadata(): an argument type is unsupported.
  // Skipped get_tab_metadata(): unsupported return type "Variant".
  static final Pointer<Void> _mb_remove_tab =
      resolveMethodBind('TabBar', 'remove_tab', 1286410249);

  void removeTab(int tabIdx) {
    final arg0 = malloc<Int64>()..value = tabIdx;
    try {
      ptrcallVoid(_mb_remove_tab, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_add_tab =
      resolveMethodBind('TabBar', 'add_tab', 1465444425);

  void addTab(String title, Texture2D icon) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), title);
    final arg1 = malloc<Pointer<Void>>()..value = icon.nativePtr;
    try {
      ptrcallVoid(_mb_add_tab, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_tab_idx_at_point =
      resolveMethodBind('TabBar', 'get_tab_idx_at_point', 3820158470);

  int getTabIdxAtPoint(Vector2 point) {
    final arg0 = malloc<Uint8>(Vector2.nativeSize);
    point.writeTo(arg0, 0);
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_tab_idx_at_point, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_tab_alignment =
      resolveMethodBind('TabBar', 'set_tab_alignment', 2413632353);

  void setTabAlignment(int alignment) {
    final arg0 = malloc<Int64>()..value = alignment;
    try {
      ptrcallVoid(_mb_set_tab_alignment, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_tab_alignment =
      resolveMethodBind('TabBar', 'get_tab_alignment', 2178122193);

  int getTabAlignment() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_tab_alignment, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_clip_tabs =
      resolveMethodBind('TabBar', 'set_clip_tabs', 2586408642);

  void setClipTabs(bool clipTabs) {
    final arg0 = malloc<Uint8>()..value = clipTabs ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_clip_tabs, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_clip_tabs =
      resolveMethodBind('TabBar', 'get_clip_tabs', 36873697);

  bool getClipTabs() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_clip_tabs, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_tab_offset =
      resolveMethodBind('TabBar', 'get_tab_offset', 3905245786);

  int getTabOffset() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_tab_offset, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_offset_buttons_visible =
      resolveMethodBind('TabBar', 'get_offset_buttons_visible', 36873697);

  bool getOffsetButtonsVisible() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_offset_buttons_visible, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_ensure_tab_visible =
      resolveMethodBind('TabBar', 'ensure_tab_visible', 1286410249);

  void ensureTabVisible(int idx) {
    final arg0 = malloc<Int64>()..value = idx;
    try {
      ptrcallVoid(_mb_ensure_tab_visible, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_tab_rect =
      resolveMethodBind('TabBar', 'get_tab_rect', 3327874267);

  Rect2 getTabRect(int tabIdx) {
    final arg0 = malloc<Int64>()..value = tabIdx;
    try {
      final ret = malloc<Uint8>(Rect2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_tab_rect, nativePtr, [arg0.cast<Void>()], ret.cast());
        return Rect2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_move_tab =
      resolveMethodBind('TabBar', 'move_tab', 3937882851);

  void moveTab(int from, int to) {
    final arg0 = malloc<Int64>()..value = from;
    final arg1 = malloc<Int64>()..value = to;
    try {
      ptrcallVoid(_mb_move_tab, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_set_close_with_middle_mouse =
      resolveMethodBind('TabBar', 'set_close_with_middle_mouse', 2586408642);

  void setCloseWithMiddleMouse(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_close_with_middle_mouse, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_close_with_middle_mouse =
      resolveMethodBind('TabBar', 'get_close_with_middle_mouse', 36873697);

  bool getCloseWithMiddleMouse() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_close_with_middle_mouse, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_tab_close_display_policy =
      resolveMethodBind('TabBar', 'set_tab_close_display_policy', 2212906737);

  void setTabCloseDisplayPolicy(int policy) {
    final arg0 = malloc<Int64>()..value = policy;
    try {
      ptrcallVoid(_mb_set_tab_close_display_policy, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_tab_close_display_policy =
      resolveMethodBind('TabBar', 'get_tab_close_display_policy', 2956568028);

  int getTabCloseDisplayPolicy() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_tab_close_display_policy, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_max_tab_width =
      resolveMethodBind('TabBar', 'set_max_tab_width', 1286410249);

  void setMaxTabWidth(int width) {
    final arg0 = malloc<Int64>()..value = width;
    try {
      ptrcallVoid(_mb_set_max_tab_width, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_max_tab_width =
      resolveMethodBind('TabBar', 'get_max_tab_width', 3905245786);

  int getMaxTabWidth() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_max_tab_width, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_scrolling_enabled =
      resolveMethodBind('TabBar', 'set_scrolling_enabled', 2586408642);

  void setScrollingEnabled(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_scrolling_enabled, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_scrolling_enabled =
      resolveMethodBind('TabBar', 'get_scrolling_enabled', 36873697);

  bool getScrollingEnabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_scrolling_enabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_drag_to_rearrange_enabled =
      resolveMethodBind('TabBar', 'set_drag_to_rearrange_enabled', 2586408642);

  void setDragToRearrangeEnabled(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_drag_to_rearrange_enabled, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_drag_to_rearrange_enabled =
      resolveMethodBind('TabBar', 'get_drag_to_rearrange_enabled', 36873697);

  bool getDragToRearrangeEnabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_drag_to_rearrange_enabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_switch_on_drag_hover =
      resolveMethodBind('TabBar', 'set_switch_on_drag_hover', 2586408642);

  void setSwitchOnDragHover(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_switch_on_drag_hover, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_switch_on_drag_hover =
      resolveMethodBind('TabBar', 'get_switch_on_drag_hover', 36873697);

  bool getSwitchOnDragHover() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_switch_on_drag_hover, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_tabs_rearrange_group =
      resolveMethodBind('TabBar', 'set_tabs_rearrange_group', 1286410249);

  void setTabsRearrangeGroup(int groupId) {
    final arg0 = malloc<Int64>()..value = groupId;
    try {
      ptrcallVoid(_mb_set_tabs_rearrange_group, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_tabs_rearrange_group =
      resolveMethodBind('TabBar', 'get_tabs_rearrange_group', 3905245786);

  int getTabsRearrangeGroup() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_tabs_rearrange_group, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_scroll_to_selected =
      resolveMethodBind('TabBar', 'set_scroll_to_selected', 2586408642);

  void setScrollToSelected(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_scroll_to_selected, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_scroll_to_selected =
      resolveMethodBind('TabBar', 'get_scroll_to_selected', 36873697);

  bool getScrollToSelected() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_scroll_to_selected, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_select_with_rmb =
      resolveMethodBind('TabBar', 'set_select_with_rmb', 2586408642);

  void setSelectWithRmb(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_select_with_rmb, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_select_with_rmb =
      resolveMethodBind('TabBar', 'get_select_with_rmb', 36873697);

  bool getSelectWithRmb() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_select_with_rmb, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_deselect_enabled =
      resolveMethodBind('TabBar', 'set_deselect_enabled', 2586408642);

  void setDeselectEnabled(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_deselect_enabled, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_deselect_enabled =
      resolveMethodBind('TabBar', 'get_deselect_enabled', 36873697);

  bool getDeselectEnabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_deselect_enabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_clear_tabs =
      resolveMethodBind('TabBar', 'clear_tabs', 3218959716);

  void clearTabs() {
    try {
      ptrcallVoid(_mb_clear_tabs, nativePtr, []);
    } finally {
    }
  }

}
