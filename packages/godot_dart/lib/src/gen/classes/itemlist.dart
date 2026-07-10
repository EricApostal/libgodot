// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class ItemList extends Control {
  ItemList(super.nativePtr);

  /// Constructs a brand-new engine-owned ItemList instance
  /// (via classdb_construct_object3), not an existing one.
  factory ItemList.create() {
    return ItemList(resolveClassConstructor('ItemList'));
  }

  static final Pointer<Void> _mb_add_item =
      resolveMethodBind('ItemList', 'add_item', 359861678);

  int addItem(String text, Texture2D icon, bool selectable) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), text);
    final arg1 = malloc<Pointer<Void>>()..value = icon.nativePtr;
    final arg2 = malloc<Uint8>()..value = selectable ? 1 : 0;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_add_item, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_add_icon_item =
      resolveMethodBind('ItemList', 'add_icon_item', 4256579627);

  int addIconItem(Texture2D icon, bool selectable) {
    final arg0 = malloc<Pointer<Void>>()..value = icon.nativePtr;
    final arg1 = malloc<Uint8>()..value = selectable ? 1 : 0;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_add_icon_item, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_set_item_text =
      resolveMethodBind('ItemList', 'set_item_text', 501894301);

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

  static final Pointer<Void> _mb_get_item_text =
      resolveMethodBind('ItemList', 'get_item_text', 844755477);

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

  static final Pointer<Void> _mb_set_item_icon =
      resolveMethodBind('ItemList', 'set_item_icon', 666127730);

  void setItemIcon(int idx, Texture2D icon) {
    final arg0 = malloc<Int64>()..value = idx;
    final arg1 = malloc<Pointer<Void>>()..value = icon.nativePtr;
    try {
      ptrcallVoid(_mb_set_item_icon, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_item_icon =
      resolveMethodBind('ItemList', 'get_item_icon', 3536238170);

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

  static final Pointer<Void> _mb_set_item_text_direction =
      resolveMethodBind('ItemList', 'set_item_text_direction', 1707680378);

  void setItemTextDirection(int idx, int direction) {
    final arg0 = malloc<Int64>()..value = idx;
    final arg1 = malloc<Int64>()..value = direction;
    try {
      ptrcallVoid(_mb_set_item_text_direction, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_item_text_direction =
      resolveMethodBind('ItemList', 'get_item_text_direction', 4235602388);

  int getItemTextDirection(int idx) {
    final arg0 = malloc<Int64>()..value = idx;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_item_text_direction, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_item_language =
      resolveMethodBind('ItemList', 'set_item_language', 501894301);

  void setItemLanguage(int idx, String language) {
    final arg0 = malloc<Int64>()..value = idx;
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg1.cast(), language);
    try {
      ptrcallVoid(_mb_set_item_language, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      BuiltinMarshal.destroyGDString(arg1.cast());
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_item_language =
      resolveMethodBind('ItemList', 'get_item_language', 844755477);

  String getItemLanguage(int idx) {
    final arg0 = malloc<Int64>()..value = idx;
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_item_language, nativePtr, [arg0.cast<Void>()], ret.cast());
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

  static final Pointer<Void> _mb_set_item_auto_translate_mode =
      resolveMethodBind('ItemList', 'set_item_auto_translate_mode', 287402019);

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

  static final Pointer<Void> _mb_get_item_auto_translate_mode =
      resolveMethodBind('ItemList', 'get_item_auto_translate_mode', 906302372);

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

  static final Pointer<Void> _mb_set_item_icon_transposed =
      resolveMethodBind('ItemList', 'set_item_icon_transposed', 300928843);

  void setItemIconTransposed(int idx, bool transposed) {
    final arg0 = malloc<Int64>()..value = idx;
    final arg1 = malloc<Uint8>()..value = transposed ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_item_icon_transposed, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_is_item_icon_transposed =
      resolveMethodBind('ItemList', 'is_item_icon_transposed', 1116898809);

  bool isItemIconTransposed(int idx) {
    final arg0 = malloc<Int64>()..value = idx;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_item_icon_transposed, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_item_icon_region =
      resolveMethodBind('ItemList', 'set_item_icon_region', 1356297692);

  void setItemIconRegion(int idx, Rect2 rect) {
    final arg0 = malloc<Int64>()..value = idx;
    final arg1 = malloc<Uint8>(Rect2.nativeSize);
    rect.writeTo(arg1, 0);
    try {
      ptrcallVoid(_mb_set_item_icon_region, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_item_icon_region =
      resolveMethodBind('ItemList', 'get_item_icon_region', 3327874267);

  Rect2 getItemIconRegion(int idx) {
    final arg0 = malloc<Int64>()..value = idx;
    try {
      final ret = malloc<Uint8>(Rect2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_item_icon_region, nativePtr, [arg0.cast<Void>()], ret.cast());
        return Rect2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_item_icon_modulate =
      resolveMethodBind('ItemList', 'set_item_icon_modulate', 2878471219);

  void setItemIconModulate(int idx, Color modulate) {
    final arg0 = malloc<Int64>()..value = idx;
    final arg1 = malloc<Uint8>(Color.nativeSize);
    modulate.writeTo(arg1, 0);
    try {
      ptrcallVoid(_mb_set_item_icon_modulate, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_item_icon_modulate =
      resolveMethodBind('ItemList', 'get_item_icon_modulate', 3457211756);

  Color getItemIconModulate(int idx) {
    final arg0 = malloc<Int64>()..value = idx;
    try {
      final ret = malloc<Uint8>(Color.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_item_icon_modulate, nativePtr, [arg0.cast<Void>()], ret.cast());
        return Color.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_item_selectable =
      resolveMethodBind('ItemList', 'set_item_selectable', 300928843);

  void setItemSelectable(int idx, bool selectable) {
    final arg0 = malloc<Int64>()..value = idx;
    final arg1 = malloc<Uint8>()..value = selectable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_item_selectable, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_is_item_selectable =
      resolveMethodBind('ItemList', 'is_item_selectable', 1116898809);

  bool isItemSelectable(int idx) {
    final arg0 = malloc<Int64>()..value = idx;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_item_selectable, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_item_disabled =
      resolveMethodBind('ItemList', 'set_item_disabled', 300928843);

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

  static final Pointer<Void> _mb_is_item_disabled =
      resolveMethodBind('ItemList', 'is_item_disabled', 1116898809);

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

  // Skipped set_item_metadata(): an argument type is unsupported.
  // Skipped get_item_metadata(): unsupported return type "Variant".
  static final Pointer<Void> _mb_set_item_custom_bg_color =
      resolveMethodBind('ItemList', 'set_item_custom_bg_color', 2878471219);

  void setItemCustomBgColor(int idx, Color customBgColor) {
    final arg0 = malloc<Int64>()..value = idx;
    final arg1 = malloc<Uint8>(Color.nativeSize);
    customBgColor.writeTo(arg1, 0);
    try {
      ptrcallVoid(_mb_set_item_custom_bg_color, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_item_custom_bg_color =
      resolveMethodBind('ItemList', 'get_item_custom_bg_color', 3457211756);

  Color getItemCustomBgColor(int idx) {
    final arg0 = malloc<Int64>()..value = idx;
    try {
      final ret = malloc<Uint8>(Color.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_item_custom_bg_color, nativePtr, [arg0.cast<Void>()], ret.cast());
        return Color.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_item_custom_fg_color =
      resolveMethodBind('ItemList', 'set_item_custom_fg_color', 2878471219);

  void setItemCustomFgColor(int idx, Color customFgColor) {
    final arg0 = malloc<Int64>()..value = idx;
    final arg1 = malloc<Uint8>(Color.nativeSize);
    customFgColor.writeTo(arg1, 0);
    try {
      ptrcallVoid(_mb_set_item_custom_fg_color, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_item_custom_fg_color =
      resolveMethodBind('ItemList', 'get_item_custom_fg_color', 3457211756);

  Color getItemCustomFgColor(int idx) {
    final arg0 = malloc<Int64>()..value = idx;
    try {
      final ret = malloc<Uint8>(Color.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_item_custom_fg_color, nativePtr, [arg0.cast<Void>()], ret.cast());
        return Color.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_item_rect =
      resolveMethodBind('ItemList', 'get_item_rect', 159227807);

  Rect2 getItemRect(int idx, bool expand) {
    final arg0 = malloc<Int64>()..value = idx;
    final arg1 = malloc<Uint8>()..value = expand ? 1 : 0;
    try {
      final ret = malloc<Uint8>(Rect2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_item_rect, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return Rect2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_set_item_tooltip_enabled =
      resolveMethodBind('ItemList', 'set_item_tooltip_enabled', 300928843);

  void setItemTooltipEnabled(int idx, bool enable) {
    final arg0 = malloc<Int64>()..value = idx;
    final arg1 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_item_tooltip_enabled, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_is_item_tooltip_enabled =
      resolveMethodBind('ItemList', 'is_item_tooltip_enabled', 1116898809);

  bool isItemTooltipEnabled(int idx) {
    final arg0 = malloc<Int64>()..value = idx;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_item_tooltip_enabled, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_item_tooltip =
      resolveMethodBind('ItemList', 'set_item_tooltip', 501894301);

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

  static final Pointer<Void> _mb_get_item_tooltip =
      resolveMethodBind('ItemList', 'get_item_tooltip', 844755477);

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

  static final Pointer<Void> _mb_select =
      resolveMethodBind('ItemList', 'select', 972357352);

  void select(int idx, bool single) {
    final arg0 = malloc<Int64>()..value = idx;
    final arg1 = malloc<Uint8>()..value = single ? 1 : 0;
    try {
      ptrcallVoid(_mb_select, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_deselect =
      resolveMethodBind('ItemList', 'deselect', 1286410249);

  void deselect(int idx) {
    final arg0 = malloc<Int64>()..value = idx;
    try {
      ptrcallVoid(_mb_deselect, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_deselect_all =
      resolveMethodBind('ItemList', 'deselect_all', 3218959716);

  void deselectAll() {
    try {
      ptrcallVoid(_mb_deselect_all, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_is_selected =
      resolveMethodBind('ItemList', 'is_selected', 1116898809);

  bool isSelected(int idx) {
    final arg0 = malloc<Int64>()..value = idx;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_selected, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  // Skipped get_selected_items(): unsupported return type "PackedInt32Array".
  static final Pointer<Void> _mb_move_item =
      resolveMethodBind('ItemList', 'move_item', 3937882851);

  void moveItem(int fromIdx, int toIdx) {
    final arg0 = malloc<Int64>()..value = fromIdx;
    final arg1 = malloc<Int64>()..value = toIdx;
    try {
      ptrcallVoid(_mb_move_item, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_set_item_count =
      resolveMethodBind('ItemList', 'set_item_count', 1286410249);

  void setItemCount(int count) {
    final arg0 = malloc<Int64>()..value = count;
    try {
      ptrcallVoid(_mb_set_item_count, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_item_count =
      resolveMethodBind('ItemList', 'get_item_count', 3905245786);

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

  static final Pointer<Void> _mb_remove_item =
      resolveMethodBind('ItemList', 'remove_item', 1286410249);

  void removeItem(int idx) {
    final arg0 = malloc<Int64>()..value = idx;
    try {
      ptrcallVoid(_mb_remove_item, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_clear =
      resolveMethodBind('ItemList', 'clear', 3218959716);

  void clear() {
    try {
      ptrcallVoid(_mb_clear, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_sort_items_by_text =
      resolveMethodBind('ItemList', 'sort_items_by_text', 3218959716);

  void sortItemsByText() {
    try {
      ptrcallVoid(_mb_sort_items_by_text, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_fixed_column_width =
      resolveMethodBind('ItemList', 'set_fixed_column_width', 1286410249);

  void setFixedColumnWidth(int width) {
    final arg0 = malloc<Int64>()..value = width;
    try {
      ptrcallVoid(_mb_set_fixed_column_width, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_fixed_column_width =
      resolveMethodBind('ItemList', 'get_fixed_column_width', 3905245786);

  int getFixedColumnWidth() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_fixed_column_width, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_same_column_width =
      resolveMethodBind('ItemList', 'set_same_column_width', 2586408642);

  void setSameColumnWidth(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_same_column_width, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_same_column_width =
      resolveMethodBind('ItemList', 'is_same_column_width', 36873697);

  bool isSameColumnWidth() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_same_column_width, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_max_text_lines =
      resolveMethodBind('ItemList', 'set_max_text_lines', 1286410249);

  void setMaxTextLines(int lines) {
    final arg0 = malloc<Int64>()..value = lines;
    try {
      ptrcallVoid(_mb_set_max_text_lines, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_max_text_lines =
      resolveMethodBind('ItemList', 'get_max_text_lines', 3905245786);

  int getMaxTextLines() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_max_text_lines, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_max_columns =
      resolveMethodBind('ItemList', 'set_max_columns', 1286410249);

  void setMaxColumns(int amount) {
    final arg0 = malloc<Int64>()..value = amount;
    try {
      ptrcallVoid(_mb_set_max_columns, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_max_columns =
      resolveMethodBind('ItemList', 'get_max_columns', 3905245786);

  int getMaxColumns() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_max_columns, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_select_mode =
      resolveMethodBind('ItemList', 'set_select_mode', 928267388);

  void setSelectMode(int mode) {
    final arg0 = malloc<Int64>()..value = mode;
    try {
      ptrcallVoid(_mb_set_select_mode, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_select_mode =
      resolveMethodBind('ItemList', 'get_select_mode', 1191945842);

  int getSelectMode() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_select_mode, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_icon_mode =
      resolveMethodBind('ItemList', 'set_icon_mode', 2025053633);

  void setIconMode(int mode) {
    final arg0 = malloc<Int64>()..value = mode;
    try {
      ptrcallVoid(_mb_set_icon_mode, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_icon_mode =
      resolveMethodBind('ItemList', 'get_icon_mode', 3353929232);

  int getIconMode() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_icon_mode, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_fixed_icon_size =
      resolveMethodBind('ItemList', 'set_fixed_icon_size', 1130785943);

  void setFixedIconSize(Vector2i size) {
    final arg0 = malloc<Uint8>(Vector2i.nativeSize);
    size.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_fixed_icon_size, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_fixed_icon_size =
      resolveMethodBind('ItemList', 'get_fixed_icon_size', 3690982128);

  Vector2i getFixedIconSize() {
    try {
      final ret = malloc<Uint8>(Vector2i.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_fixed_icon_size, nativePtr, [], ret.cast());
        return Vector2i.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_icon_scale =
      resolveMethodBind('ItemList', 'set_icon_scale', 373806689);

  void setIconScale(double scale) {
    final arg0 = malloc<Double>()..value = scale;
    try {
      ptrcallVoid(_mb_set_icon_scale, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_icon_scale =
      resolveMethodBind('ItemList', 'get_icon_scale', 1740695150);

  double getIconScale() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_icon_scale, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_allow_rmb_select =
      resolveMethodBind('ItemList', 'set_allow_rmb_select', 2586408642);

  void setAllowRmbSelect(bool allow) {
    final arg0 = malloc<Uint8>()..value = allow ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_allow_rmb_select, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_allow_rmb_select =
      resolveMethodBind('ItemList', 'get_allow_rmb_select', 36873697);

  bool getAllowRmbSelect() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_allow_rmb_select, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_allow_reselect =
      resolveMethodBind('ItemList', 'set_allow_reselect', 2586408642);

  void setAllowReselect(bool allow) {
    final arg0 = malloc<Uint8>()..value = allow ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_allow_reselect, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_allow_reselect =
      resolveMethodBind('ItemList', 'get_allow_reselect', 36873697);

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

  static final Pointer<Void> _mb_set_allow_search =
      resolveMethodBind('ItemList', 'set_allow_search', 2586408642);

  void setAllowSearch(bool allow) {
    final arg0 = malloc<Uint8>()..value = allow ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_allow_search, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_allow_search =
      resolveMethodBind('ItemList', 'get_allow_search', 36873697);

  bool getAllowSearch() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_allow_search, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_auto_width =
      resolveMethodBind('ItemList', 'set_auto_width', 2586408642);

  void setAutoWidth(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_auto_width, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_has_auto_width =
      resolveMethodBind('ItemList', 'has_auto_width', 36873697);

  bool hasAutoWidth() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_has_auto_width, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_auto_height =
      resolveMethodBind('ItemList', 'set_auto_height', 2586408642);

  void setAutoHeight(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_auto_height, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_has_auto_height =
      resolveMethodBind('ItemList', 'has_auto_height', 36873697);

  bool hasAutoHeight() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_has_auto_height, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_is_anything_selected =
      resolveMethodBind('ItemList', 'is_anything_selected', 2240911060);

  bool isAnythingSelected() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_anything_selected, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_item_at_position =
      resolveMethodBind('ItemList', 'get_item_at_position', 2300324924);

  int getItemAtPosition(Vector2 position, bool exact) {
    final arg0 = malloc<Uint8>(Vector2.nativeSize);
    position.writeTo(arg0, 0);
    final arg1 = malloc<Uint8>()..value = exact ? 1 : 0;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_item_at_position, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_ensure_current_is_visible =
      resolveMethodBind('ItemList', 'ensure_current_is_visible', 3218959716);

  void ensureCurrentIsVisible() {
    try {
      ptrcallVoid(_mb_ensure_current_is_visible, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_center_on_current =
      resolveMethodBind('ItemList', 'center_on_current', 3058350285);

  void centerOnCurrent(bool centerVerically, bool centerHorizontally) {
    final arg0 = malloc<Uint8>()..value = centerVerically ? 1 : 0;
    final arg1 = malloc<Uint8>()..value = centerHorizontally ? 1 : 0;
    try {
      ptrcallVoid(_mb_center_on_current, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_v_scroll_bar =
      resolveMethodBind('ItemList', 'get_v_scroll_bar', 2630340773);

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

  static final Pointer<Void> _mb_get_h_scroll_bar =
      resolveMethodBind('ItemList', 'get_h_scroll_bar', 4004517983);

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

  static final Pointer<Void> _mb_set_scroll_hint_mode =
      resolveMethodBind('ItemList', 'set_scroll_hint_mode', 2917787337);

  void setScrollHintMode(int scrollHintMode) {
    final arg0 = malloc<Int64>()..value = scrollHintMode;
    try {
      ptrcallVoid(_mb_set_scroll_hint_mode, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_scroll_hint_mode =
      resolveMethodBind('ItemList', 'get_scroll_hint_mode', 2522227939);

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
      resolveMethodBind('ItemList', 'set_tile_scroll_hint', 2586408642);

  void setTileScrollHint(bool tileScrollHint) {
    final arg0 = malloc<Uint8>()..value = tileScrollHint ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_tile_scroll_hint, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_scroll_hint_tiled =
      resolveMethodBind('ItemList', 'is_scroll_hint_tiled', 2240911060);

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

  static final Pointer<Void> _mb_set_text_overrun_behavior =
      resolveMethodBind('ItemList', 'set_text_overrun_behavior', 1008890932);

  void setTextOverrunBehavior(int overrunBehavior) {
    final arg0 = malloc<Int64>()..value = overrunBehavior;
    try {
      ptrcallVoid(_mb_set_text_overrun_behavior, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_text_overrun_behavior =
      resolveMethodBind('ItemList', 'get_text_overrun_behavior', 3779142101);

  int getTextOverrunBehavior() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_text_overrun_behavior, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_wraparound_items =
      resolveMethodBind('ItemList', 'set_wraparound_items', 2586408642);

  void setWraparoundItems(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_wraparound_items, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_has_wraparound_items =
      resolveMethodBind('ItemList', 'has_wraparound_items', 36873697);

  bool hasWraparoundItems() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_has_wraparound_items, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_force_update_list_size =
      resolveMethodBind('ItemList', 'force_update_list_size', 3218959716);

  void forceUpdateListSize() {
    try {
      ptrcallVoid(_mb_force_update_list_size, nativePtr, []);
    } finally {
    }
  }

}
