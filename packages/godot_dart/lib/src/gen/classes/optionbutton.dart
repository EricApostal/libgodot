// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class OptionButton extends Button {
  OptionButton(super.nativePtr);

  static final Pointer<Void> _mb_add_item =
      resolveMethodBind('OptionButton', 'add_item', 2697778442);

  void addItem(String label, int id) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), label);
    final arg1 = malloc<Int64>()..value = id;
    try {
      ptrcallVoid(_mb_add_item, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_add_icon_item =
      resolveMethodBind('OptionButton', 'add_icon_item', 3781678508);

  void addIconItem(Texture2D texture, String label, int id) {
    final arg0 = malloc<Pointer<Void>>()..value = texture.nativePtr;
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg1.cast(), label);
    final arg2 = malloc<Int64>()..value = id;
    try {
      ptrcallVoid(_mb_add_icon_item, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      BuiltinMarshal.destroyGDString(arg1.cast());
      malloc.free(arg1);
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_set_item_text =
      resolveMethodBind('OptionButton', 'set_item_text', 501894301);

  void setItemText(int idx, String text) {
    final arg0 = malloc<Int64>()..value = idx;
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg1.cast(), text);
    try {
      ptrcallVoid(_mb_set_item_text, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      BuiltinMarshal.destroyGDString(arg1.cast());
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_set_item_icon =
      resolveMethodBind('OptionButton', 'set_item_icon', 666127730);

  void setItemIcon(int idx, Texture2D texture) {
    final arg0 = malloc<Int64>()..value = idx;
    final arg1 = malloc<Pointer<Void>>()..value = texture.nativePtr;
    try {
      ptrcallVoid(_mb_set_item_icon, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_set_item_disabled =
      resolveMethodBind('OptionButton', 'set_item_disabled', 300928843);

  void setItemDisabled(int idx, bool disabled) {
    final arg0 = malloc<Int64>()..value = idx;
    final arg1 = malloc<Uint8>()..value = disabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_item_disabled, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_set_item_id =
      resolveMethodBind('OptionButton', 'set_item_id', 3937882851);

  void setItemId(int idx, int id) {
    final arg0 = malloc<Int64>()..value = idx;
    final arg1 = malloc<Int64>()..value = id;
    try {
      ptrcallVoid(_mb_set_item_id, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  // Skipped set_item_metadata(): an argument type is unsupported.
  static final Pointer<Void> _mb_set_item_tooltip =
      resolveMethodBind('OptionButton', 'set_item_tooltip', 501894301);

  void setItemTooltip(int idx, String tooltip) {
    final arg0 = malloc<Int64>()..value = idx;
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg1.cast(), tooltip);
    try {
      ptrcallVoid(_mb_set_item_tooltip, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      BuiltinMarshal.destroyGDString(arg1.cast());
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_set_item_auto_translate_mode =
      resolveMethodBind('OptionButton', 'set_item_auto_translate_mode', 287402019);

  void setItemAutoTranslateMode(int idx, int mode) {
    final arg0 = malloc<Int64>()..value = idx;
    final arg1 = malloc<Int64>()..value = mode;
    try {
      ptrcallVoid(_mb_set_item_auto_translate_mode, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_set_search_bar_enabled =
      resolveMethodBind('OptionButton', 'set_search_bar_enabled', 2586408642);

  void setSearchBarEnabled(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_search_bar_enabled, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_search_bar_min_item_count =
      resolveMethodBind('OptionButton', 'set_search_bar_min_item_count', 1286410249);

  void setSearchBarMinItemCount(int count) {
    final arg0 = malloc<Int64>()..value = count;
    try {
      ptrcallVoid(_mb_set_search_bar_min_item_count, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_search_bar_min_item_count =
      resolveMethodBind('OptionButton', 'get_search_bar_min_item_count', 3905245786);

  int getSearchBarMinItemCount() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_search_bar_min_item_count, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_search_bar_fuzzy_search_enabled =
      resolveMethodBind('OptionButton', 'set_search_bar_fuzzy_search_enabled', 2586408642);

  void setSearchBarFuzzySearchEnabled(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_search_bar_fuzzy_search_enabled, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_search_bar_fuzzy_search_enabled =
      resolveMethodBind('OptionButton', 'is_search_bar_fuzzy_search_enabled', 36873697);

  bool isSearchBarFuzzySearchEnabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_search_bar_fuzzy_search_enabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_search_bar_fuzzy_search_max_misses =
      resolveMethodBind('OptionButton', 'set_search_bar_fuzzy_search_max_misses', 1286410249);

  void setSearchBarFuzzySearchMaxMisses(int maxMisses) {
    final arg0 = malloc<Int64>()..value = maxMisses;
    try {
      ptrcallVoid(_mb_set_search_bar_fuzzy_search_max_misses, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_search_bar_fuzzy_search_max_misses =
      resolveMethodBind('OptionButton', 'get_search_bar_fuzzy_search_max_misses', 3905245786);

  int getSearchBarFuzzySearchMaxMisses() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_search_bar_fuzzy_search_max_misses, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_item_text =
      resolveMethodBind('OptionButton', 'get_item_text', 844755477);

  String getItemText(int idx) {
    final arg0 = malloc<Int64>()..value = idx;
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_item_text, nativePtr, [arg0.cast<Void>()], ret.cast());
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

  static final Pointer<Void> _mb_get_item_icon =
      resolveMethodBind('OptionButton', 'get_item_icon', 3536238170);

  Texture2D? getItemIcon(int idx) {
    final arg0 = malloc<Int64>()..value = idx;
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_item_icon, nativePtr, [arg0.cast<Void>()], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Texture2D(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_item_id =
      resolveMethodBind('OptionButton', 'get_item_id', 923996154);

  int getItemId(int idx) {
    final arg0 = malloc<Int64>()..value = idx;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_item_id, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_item_index =
      resolveMethodBind('OptionButton', 'get_item_index', 923996154);

  int getItemIndex(int id) {
    final arg0 = malloc<Int64>()..value = id;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_item_index, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  // Skipped get_item_metadata(): unsupported return type "Variant".
  static final Pointer<Void> _mb_get_item_tooltip =
      resolveMethodBind('OptionButton', 'get_item_tooltip', 844755477);

  String getItemTooltip(int idx) {
    final arg0 = malloc<Int64>()..value = idx;
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_item_tooltip, nativePtr, [arg0.cast<Void>()], ret.cast());
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

  static final Pointer<Void> _mb_get_item_auto_translate_mode =
      resolveMethodBind('OptionButton', 'get_item_auto_translate_mode', 906302372);

  int getItemAutoTranslateMode(int idx) {
    final arg0 = malloc<Int64>()..value = idx;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_item_auto_translate_mode, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_item_disabled =
      resolveMethodBind('OptionButton', 'is_item_disabled', 1116898809);

  bool isItemDisabled(int idx) {
    final arg0 = malloc<Int64>()..value = idx;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_item_disabled, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_item_separator =
      resolveMethodBind('OptionButton', 'is_item_separator', 1116898809);

  bool isItemSeparator(int idx) {
    final arg0 = malloc<Int64>()..value = idx;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_item_separator, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_search_bar_enabled =
      resolveMethodBind('OptionButton', 'is_search_bar_enabled', 36873697);

  bool isSearchBarEnabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_search_bar_enabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_add_separator =
      resolveMethodBind('OptionButton', 'add_separator', 3005725572);

  void addSeparator(String text) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), text);
    try {
      ptrcallVoid(_mb_add_separator, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_clear =
      resolveMethodBind('OptionButton', 'clear', 3218959716);

  void clear() {
    try {
      ptrcallVoid(_mb_clear, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_select =
      resolveMethodBind('OptionButton', 'select', 1286410249);

  void select(int idx) {
    final arg0 = malloc<Int64>()..value = idx;
    try {
      ptrcallVoid(_mb_select, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_selected =
      resolveMethodBind('OptionButton', 'get_selected', 3905245786);

  int getSelected() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_selected, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_selected_id =
      resolveMethodBind('OptionButton', 'get_selected_id', 3905245786);

  int getSelectedId() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_selected_id, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  // Skipped get_selected_metadata(): unsupported return type "Variant".
  static final Pointer<Void> _mb_remove_item =
      resolveMethodBind('OptionButton', 'remove_item', 1286410249);

  void removeItem(int idx) {
    final arg0 = malloc<Int64>()..value = idx;
    try {
      ptrcallVoid(_mb_remove_item, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_popup =
      resolveMethodBind('OptionButton', 'get_popup', 229722558);

  PopupMenu? getPopup() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_popup, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : PopupMenu(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_show_popup =
      resolveMethodBind('OptionButton', 'show_popup', 3218959716);

  void showPopup() {
    try {
      ptrcallVoid(_mb_show_popup, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_item_count =
      resolveMethodBind('OptionButton', 'set_item_count', 1286410249);

  void setItemCount(int count) {
    final arg0 = malloc<Int64>()..value = count;
    try {
      ptrcallVoid(_mb_set_item_count, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_item_count =
      resolveMethodBind('OptionButton', 'get_item_count', 3905245786);

  int getItemCount() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_item_count, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_has_selectable_items =
      resolveMethodBind('OptionButton', 'has_selectable_items', 36873697);

  bool hasSelectableItems() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_has_selectable_items, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_selectable_item =
      resolveMethodBind('OptionButton', 'get_selectable_item', 894402480);

  int getSelectableItem(bool fromLast) {
    final arg0 = malloc<Uint8>()..value = fromLast ? 1 : 0;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_selectable_item, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_fit_to_longest_item =
      resolveMethodBind('OptionButton', 'set_fit_to_longest_item', 2586408642);

  void setFitToLongestItem(bool fit) {
    final arg0 = malloc<Uint8>()..value = fit ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_fit_to_longest_item, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_fit_to_longest_item =
      resolveMethodBind('OptionButton', 'is_fit_to_longest_item', 36873697);

  bool isFitToLongestItem() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_fit_to_longest_item, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_allow_reselect =
      resolveMethodBind('OptionButton', 'set_allow_reselect', 2586408642);

  void setAllowReselect(bool allow) {
    final arg0 = malloc<Uint8>()..value = allow ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_allow_reselect, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_allow_reselect =
      resolveMethodBind('OptionButton', 'get_allow_reselect', 36873697);

  bool getAllowReselect() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_allow_reselect, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_disable_shortcuts =
      resolveMethodBind('OptionButton', 'set_disable_shortcuts', 2586408642);

  void setDisableShortcuts(bool disabled) {
    final arg0 = malloc<Uint8>()..value = disabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_disable_shortcuts, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

}
