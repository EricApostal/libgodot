// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class TabContainer extends Container {
  TabContainer(super.nativePtr);

  static final Pointer<Void> _mb_get_tab_count =
      resolveMethodBind('TabContainer', 'get_tab_count', 3905245786);

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
      resolveMethodBind('TabContainer', 'set_current_tab', 1286410249);

  void setCurrentTab(int tabIdx) {
    final arg0 = malloc<Int64>()..value = tabIdx;
    try {
      ptrcallVoid(_mb_set_current_tab, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_current_tab =
      resolveMethodBind('TabContainer', 'get_current_tab', 3905245786);

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
      resolveMethodBind('TabContainer', 'get_previous_tab', 3905245786);

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
      resolveMethodBind('TabContainer', 'select_previous_available', 2240911060);

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
      resolveMethodBind('TabContainer', 'select_next_available', 2240911060);

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

  static final Pointer<Void> _mb_get_current_tab_control =
      resolveMethodBind('TabContainer', 'get_current_tab_control', 2783021301);

  Control? getCurrentTabControl() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_current_tab_control, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Control(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_tab_bar =
      resolveMethodBind('TabContainer', 'get_tab_bar', 1865451809);

  TabBar? getTabBar() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_tab_bar, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : TabBar(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_tab_control =
      resolveMethodBind('TabContainer', 'get_tab_control', 1065994134);

  Control? getTabControl(int tabIdx) {
    final arg0 = malloc<Int64>()..value = tabIdx;
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_tab_control, nativePtr, [arg0.cast<Void>()], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Control(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_tab_alignment =
      resolveMethodBind('TabContainer', 'set_tab_alignment', 2413632353);

  void setTabAlignment(int alignment) {
    final arg0 = malloc<Int64>()..value = alignment;
    try {
      ptrcallVoid(_mb_set_tab_alignment, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_tab_alignment =
      resolveMethodBind('TabContainer', 'get_tab_alignment', 2178122193);

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

  static final Pointer<Void> _mb_set_tabs_position =
      resolveMethodBind('TabContainer', 'set_tabs_position', 256673370);

  void setTabsPosition(int tabsPosition) {
    final arg0 = malloc<Int64>()..value = tabsPosition;
    try {
      ptrcallVoid(_mb_set_tabs_position, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_tabs_position =
      resolveMethodBind('TabContainer', 'get_tabs_position', 919937023);

  int getTabsPosition() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_tabs_position, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_clip_tabs =
      resolveMethodBind('TabContainer', 'set_clip_tabs', 2586408642);

  void setClipTabs(bool clipTabs) {
    final arg0 = malloc<Uint8>()..value = clipTabs ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_clip_tabs, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_clip_tabs =
      resolveMethodBind('TabContainer', 'get_clip_tabs', 36873697);

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

  static final Pointer<Void> _mb_set_tabs_visible =
      resolveMethodBind('TabContainer', 'set_tabs_visible', 2586408642);

  void setTabsVisible(bool visible) {
    final arg0 = malloc<Uint8>()..value = visible ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_tabs_visible, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_are_tabs_visible =
      resolveMethodBind('TabContainer', 'are_tabs_visible', 36873697);

  bool areTabsVisible() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_are_tabs_visible, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_all_tabs_in_front =
      resolveMethodBind('TabContainer', 'set_all_tabs_in_front', 2586408642);

  void setAllTabsInFront(bool isFront) {
    final arg0 = malloc<Uint8>()..value = isFront ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_all_tabs_in_front, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_all_tabs_in_front =
      resolveMethodBind('TabContainer', 'is_all_tabs_in_front', 36873697);

  bool isAllTabsInFront() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_all_tabs_in_front, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_tab_title =
      resolveMethodBind('TabContainer', 'set_tab_title', 501894301);

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
      resolveMethodBind('TabContainer', 'get_tab_title', 844755477);

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
      resolveMethodBind('TabContainer', 'set_tab_tooltip', 501894301);

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
      resolveMethodBind('TabContainer', 'get_tab_tooltip', 844755477);

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

  static final Pointer<Void> _mb_set_tab_icon =
      resolveMethodBind('TabContainer', 'set_tab_icon', 666127730);

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
      resolveMethodBind('TabContainer', 'get_tab_icon', 3536238170);

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
      resolveMethodBind('TabContainer', 'set_tab_icon_max_width', 3937882851);

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
      resolveMethodBind('TabContainer', 'get_tab_icon_max_width', 923996154);

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

  static final Pointer<Void> _mb_set_tab_disabled =
      resolveMethodBind('TabContainer', 'set_tab_disabled', 300928843);

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
      resolveMethodBind('TabContainer', 'is_tab_disabled', 1116898809);

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
      resolveMethodBind('TabContainer', 'set_tab_hidden', 300928843);

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
      resolveMethodBind('TabContainer', 'is_tab_hidden', 1116898809);

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
  static final Pointer<Void> _mb_set_tab_button_icon =
      resolveMethodBind('TabContainer', 'set_tab_button_icon', 666127730);

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
      resolveMethodBind('TabContainer', 'get_tab_button_icon', 3536238170);

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

  static final Pointer<Void> _mb_get_tab_idx_at_point =
      resolveMethodBind('TabContainer', 'get_tab_idx_at_point', 3820158470);

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

  static final Pointer<Void> _mb_get_tab_idx_from_control =
      resolveMethodBind('TabContainer', 'get_tab_idx_from_control', 2787397975);

  int getTabIdxFromControl(Control control) {
    final arg0 = malloc<Pointer<Void>>()..value = control.nativePtr;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_tab_idx_from_control, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_popup =
      resolveMethodBind('TabContainer', 'set_popup', 1078189570);

  void setPopup(Node popup) {
    final arg0 = malloc<Pointer<Void>>()..value = popup.nativePtr;
    try {
      ptrcallVoid(_mb_set_popup, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_popup =
      resolveMethodBind('TabContainer', 'get_popup', 111095082);

  Popup? getPopup() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_popup, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Popup(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_switch_on_drag_hover =
      resolveMethodBind('TabContainer', 'set_switch_on_drag_hover', 2586408642);

  void setSwitchOnDragHover(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_switch_on_drag_hover, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_switch_on_drag_hover =
      resolveMethodBind('TabContainer', 'get_switch_on_drag_hover', 36873697);

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

  static final Pointer<Void> _mb_set_drag_to_rearrange_enabled =
      resolveMethodBind('TabContainer', 'set_drag_to_rearrange_enabled', 2586408642);

  void setDragToRearrangeEnabled(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_drag_to_rearrange_enabled, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_drag_to_rearrange_enabled =
      resolveMethodBind('TabContainer', 'get_drag_to_rearrange_enabled', 36873697);

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

  static final Pointer<Void> _mb_set_tabs_rearrange_group =
      resolveMethodBind('TabContainer', 'set_tabs_rearrange_group', 1286410249);

  void setTabsRearrangeGroup(int groupId) {
    final arg0 = malloc<Int64>()..value = groupId;
    try {
      ptrcallVoid(_mb_set_tabs_rearrange_group, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_tabs_rearrange_group =
      resolveMethodBind('TabContainer', 'get_tabs_rearrange_group', 3905245786);

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

  static final Pointer<Void> _mb_set_use_hidden_tabs_for_min_size =
      resolveMethodBind('TabContainer', 'set_use_hidden_tabs_for_min_size', 2586408642);

  void setUseHiddenTabsForMinSize(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_use_hidden_tabs_for_min_size, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_use_hidden_tabs_for_min_size =
      resolveMethodBind('TabContainer', 'get_use_hidden_tabs_for_min_size', 36873697);

  bool getUseHiddenTabsForMinSize() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_use_hidden_tabs_for_min_size, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_tab_focus_mode =
      resolveMethodBind('TabContainer', 'set_tab_focus_mode', 3232914922);

  void setTabFocusMode(int focusMode) {
    final arg0 = malloc<Int64>()..value = focusMode;
    try {
      ptrcallVoid(_mb_set_tab_focus_mode, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_tab_focus_mode =
      resolveMethodBind('TabContainer', 'get_tab_focus_mode', 2132829277);

  int getTabFocusMode() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_tab_focus_mode, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_deselect_enabled =
      resolveMethodBind('TabContainer', 'set_deselect_enabled', 2586408642);

  void setDeselectEnabled(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_deselect_enabled, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_deselect_enabled =
      resolveMethodBind('TabContainer', 'get_deselect_enabled', 36873697);

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

}
