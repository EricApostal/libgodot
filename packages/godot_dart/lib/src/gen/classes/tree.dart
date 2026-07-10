// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class Tree extends Control {
  Tree(super.nativePtr);

  static final Pointer<Void> _mb_clear =
      resolveMethodBind('Tree', 'clear', 3218959716);

  void clear() {
    try {
      ptrcallVoid(_mb_clear, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_create_item =
      resolveMethodBind('Tree', 'create_item', 528467046);

  TreeItem? createItem(TreeItem parent, int index) {
    final arg0 = malloc<Pointer<Void>>()..value = parent.nativePtr;
    final arg1 = malloc<Int64>()..value = index;
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_create_item, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : TreeItem(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_root =
      resolveMethodBind('Tree', 'get_root', 1514277247);

  TreeItem? getRoot() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_root, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : TreeItem(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_column_custom_minimum_width =
      resolveMethodBind('Tree', 'set_column_custom_minimum_width', 3937882851);

  void setColumnCustomMinimumWidth(int column, int minWidth) {
    final arg0 = malloc<Int64>()..value = column;
    final arg1 = malloc<Int64>()..value = minWidth;
    try {
      ptrcallVoid(_mb_set_column_custom_minimum_width, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_set_column_expand =
      resolveMethodBind('Tree', 'set_column_expand', 300928843);

  void setColumnExpand(int column, bool expand) {
    final arg0 = malloc<Int64>()..value = column;
    final arg1 = malloc<Uint8>()..value = expand ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_column_expand, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_set_column_expand_ratio =
      resolveMethodBind('Tree', 'set_column_expand_ratio', 3937882851);

  void setColumnExpandRatio(int column, int ratio) {
    final arg0 = malloc<Int64>()..value = column;
    final arg1 = malloc<Int64>()..value = ratio;
    try {
      ptrcallVoid(_mb_set_column_expand_ratio, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_set_column_clip_content =
      resolveMethodBind('Tree', 'set_column_clip_content', 300928843);

  void setColumnClipContent(int column, bool enable) {
    final arg0 = malloc<Int64>()..value = column;
    final arg1 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_column_clip_content, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_is_column_expanding =
      resolveMethodBind('Tree', 'is_column_expanding', 1116898809);

  bool isColumnExpanding(int column) {
    final arg0 = malloc<Int64>()..value = column;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_column_expanding, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_column_clipping_content =
      resolveMethodBind('Tree', 'is_column_clipping_content', 1116898809);

  bool isColumnClippingContent(int column) {
    final arg0 = malloc<Int64>()..value = column;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_column_clipping_content, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_column_expand_ratio =
      resolveMethodBind('Tree', 'get_column_expand_ratio', 923996154);

  int getColumnExpandRatio(int column) {
    final arg0 = malloc<Int64>()..value = column;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_column_expand_ratio, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_column_width =
      resolveMethodBind('Tree', 'get_column_width', 923996154);

  int getColumnWidth(int column) {
    final arg0 = malloc<Int64>()..value = column;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_column_width, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  // Skipped get_custom_drawing_canvas_item(): unsupported return type "RID".
  static final Pointer<Void> _mb_set_hide_root =
      resolveMethodBind('Tree', 'set_hide_root', 2586408642);

  void setHideRoot(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_hide_root, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_root_hidden =
      resolveMethodBind('Tree', 'is_root_hidden', 36873697);

  bool isRootHidden() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_root_hidden, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_next_selected =
      resolveMethodBind('Tree', 'get_next_selected', 873446299);

  TreeItem? getNextSelected(TreeItem from) {
    final arg0 = malloc<Pointer<Void>>()..value = from.nativePtr;
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_next_selected, nativePtr, [arg0.cast<Void>()], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : TreeItem(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_selected =
      resolveMethodBind('Tree', 'get_selected', 1514277247);

  TreeItem? getSelected() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_selected, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : TreeItem(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_selected =
      resolveMethodBind('Tree', 'set_selected', 2662547442);

  void setSelected(TreeItem item, int column) {
    final arg0 = malloc<Pointer<Void>>()..value = item.nativePtr;
    final arg1 = malloc<Int64>()..value = column;
    try {
      ptrcallVoid(_mb_set_selected, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_selected_column =
      resolveMethodBind('Tree', 'get_selected_column', 3905245786);

  int getSelectedColumn() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_selected_column, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_pressed_button =
      resolveMethodBind('Tree', 'get_pressed_button', 3905245786);

  int getPressedButton() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_pressed_button, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_select_mode =
      resolveMethodBind('Tree', 'set_select_mode', 3223887270);

  void setSelectMode(int mode) {
    final arg0 = malloc<Int64>()..value = mode;
    try {
      ptrcallVoid(_mb_set_select_mode, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_select_mode =
      resolveMethodBind('Tree', 'get_select_mode', 100748571);

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

  static final Pointer<Void> _mb_deselect_all =
      resolveMethodBind('Tree', 'deselect_all', 3218959716);

  void deselectAll() {
    try {
      ptrcallVoid(_mb_deselect_all, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_columns =
      resolveMethodBind('Tree', 'set_columns', 1286410249);

  void setColumns(int amount) {
    final arg0 = malloc<Int64>()..value = amount;
    try {
      ptrcallVoid(_mb_set_columns, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_columns =
      resolveMethodBind('Tree', 'get_columns', 3905245786);

  int getColumns() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_columns, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_edited =
      resolveMethodBind('Tree', 'get_edited', 1514277247);

  TreeItem? getEdited() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_edited, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : TreeItem(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_edited_column =
      resolveMethodBind('Tree', 'get_edited_column', 3905245786);

  int getEditedColumn() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_edited_column, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_edit_selected =
      resolveMethodBind('Tree', 'edit_selected', 2595650253);

  bool editSelected(bool forceEdit) {
    final arg0 = malloc<Uint8>()..value = forceEdit ? 1 : 0;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_edit_selected, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_custom_popup_rect =
      resolveMethodBind('Tree', 'get_custom_popup_rect', 1639390495);

  Rect2 getCustomPopupRect() {
    try {
      final ret = malloc<Uint8>(Rect2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_custom_popup_rect, nativePtr, [], ret.cast());
        return Rect2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_item_area_rect =
      resolveMethodBind('Tree', 'get_item_area_rect', 47968679);

  Rect2 getItemAreaRect(TreeItem item, int column, int buttonIndex) {
    final arg0 = malloc<Pointer<Void>>()..value = item.nativePtr;
    final arg1 = malloc<Int64>()..value = column;
    final arg2 = malloc<Int64>()..value = buttonIndex;
    try {
      final ret = malloc<Uint8>(Rect2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_item_area_rect, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()], ret.cast());
        return Rect2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_get_item_at_position =
      resolveMethodBind('Tree', 'get_item_at_position', 4193340126);

  TreeItem? getItemAtPosition(Vector2 position) {
    final arg0 = malloc<Uint8>(Vector2.nativeSize);
    position.writeTo(arg0, 0);
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_item_at_position, nativePtr, [arg0.cast<Void>()], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : TreeItem(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_column_at_position =
      resolveMethodBind('Tree', 'get_column_at_position', 3820158470);

  int getColumnAtPosition(Vector2 position) {
    final arg0 = malloc<Uint8>(Vector2.nativeSize);
    position.writeTo(arg0, 0);
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_column_at_position, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_drop_section_at_position =
      resolveMethodBind('Tree', 'get_drop_section_at_position', 3820158470);

  int getDropSectionAtPosition(Vector2 position) {
    final arg0 = malloc<Uint8>(Vector2.nativeSize);
    position.writeTo(arg0, 0);
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_drop_section_at_position, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_button_id_at_position =
      resolveMethodBind('Tree', 'get_button_id_at_position', 3820158470);

  int getButtonIdAtPosition(Vector2 position) {
    final arg0 = malloc<Uint8>(Vector2.nativeSize);
    position.writeTo(arg0, 0);
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_button_id_at_position, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_ensure_cursor_is_visible =
      resolveMethodBind('Tree', 'ensure_cursor_is_visible', 3218959716);

  void ensureCursorIsVisible() {
    try {
      ptrcallVoid(_mb_ensure_cursor_is_visible, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_column_titles_visible =
      resolveMethodBind('Tree', 'set_column_titles_visible', 2586408642);

  void setColumnTitlesVisible(bool visible) {
    final arg0 = malloc<Uint8>()..value = visible ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_column_titles_visible, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_are_column_titles_visible =
      resolveMethodBind('Tree', 'are_column_titles_visible', 36873697);

  bool areColumnTitlesVisible() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_are_column_titles_visible, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_column_title =
      resolveMethodBind('Tree', 'set_column_title', 501894301);

  void setColumnTitle(int column, String title) {
    final arg0 = malloc<Int64>()..value = column;
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg1.cast(), title);
    try {
      ptrcallVoid(_mb_set_column_title, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      BuiltinMarshal.destroyGDString(arg1.cast());
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_column_title =
      resolveMethodBind('Tree', 'get_column_title', 844755477);

  String getColumnTitle(int column) {
    final arg0 = malloc<Int64>()..value = column;
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_column_title, nativePtr, [arg0.cast<Void>()], ret.cast());
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

  static final Pointer<Void> _mb_set_column_title_tooltip_text =
      resolveMethodBind('Tree', 'set_column_title_tooltip_text', 501894301);

  void setColumnTitleTooltipText(int column, String tooltipText) {
    final arg0 = malloc<Int64>()..value = column;
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg1.cast(), tooltipText);
    try {
      ptrcallVoid(_mb_set_column_title_tooltip_text, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      BuiltinMarshal.destroyGDString(arg1.cast());
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_column_title_tooltip_text =
      resolveMethodBind('Tree', 'get_column_title_tooltip_text', 844755477);

  String getColumnTitleTooltipText(int column) {
    final arg0 = malloc<Int64>()..value = column;
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_column_title_tooltip_text, nativePtr, [arg0.cast<Void>()], ret.cast());
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

  static final Pointer<Void> _mb_set_column_title_alignment =
      resolveMethodBind('Tree', 'set_column_title_alignment', 3276431499);

  void setColumnTitleAlignment(int column, int titleAlignment) {
    final arg0 = malloc<Int64>()..value = column;
    final arg1 = malloc<Int64>()..value = titleAlignment;
    try {
      ptrcallVoid(_mb_set_column_title_alignment, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_column_title_alignment =
      resolveMethodBind('Tree', 'get_column_title_alignment', 4171562184);

  int getColumnTitleAlignment(int column) {
    final arg0 = malloc<Int64>()..value = column;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_column_title_alignment, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_column_title_direction =
      resolveMethodBind('Tree', 'set_column_title_direction', 1707680378);

  void setColumnTitleDirection(int column, int direction) {
    final arg0 = malloc<Int64>()..value = column;
    final arg1 = malloc<Int64>()..value = direction;
    try {
      ptrcallVoid(_mb_set_column_title_direction, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_column_title_direction =
      resolveMethodBind('Tree', 'get_column_title_direction', 4235602388);

  int getColumnTitleDirection(int column) {
    final arg0 = malloc<Int64>()..value = column;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_column_title_direction, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_column_title_language =
      resolveMethodBind('Tree', 'set_column_title_language', 501894301);

  void setColumnTitleLanguage(int column, String language) {
    final arg0 = malloc<Int64>()..value = column;
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg1.cast(), language);
    try {
      ptrcallVoid(_mb_set_column_title_language, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      BuiltinMarshal.destroyGDString(arg1.cast());
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_column_title_language =
      resolveMethodBind('Tree', 'get_column_title_language', 844755477);

  String getColumnTitleLanguage(int column) {
    final arg0 = malloc<Int64>()..value = column;
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_column_title_language, nativePtr, [arg0.cast<Void>()], ret.cast());
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

  static final Pointer<Void> _mb_get_scroll =
      resolveMethodBind('Tree', 'get_scroll', 3341600327);

  Vector2 getScroll() {
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_scroll, nativePtr, [], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_scroll_to_item =
      resolveMethodBind('Tree', 'scroll_to_item', 1314737213);

  void scrollToItem(TreeItem item, bool centerOnItem) {
    final arg0 = malloc<Pointer<Void>>()..value = item.nativePtr;
    final arg1 = malloc<Uint8>()..value = centerOnItem ? 1 : 0;
    try {
      ptrcallVoid(_mb_scroll_to_item, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_set_h_scroll_enabled =
      resolveMethodBind('Tree', 'set_h_scroll_enabled', 2586408642);

  void setHScrollEnabled(bool hScroll) {
    final arg0 = malloc<Uint8>()..value = hScroll ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_h_scroll_enabled, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_h_scroll_enabled =
      resolveMethodBind('Tree', 'is_h_scroll_enabled', 36873697);

  bool isHScrollEnabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_h_scroll_enabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_v_scroll_enabled =
      resolveMethodBind('Tree', 'set_v_scroll_enabled', 2586408642);

  void setVScrollEnabled(bool hScroll) {
    final arg0 = malloc<Uint8>()..value = hScroll ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_v_scroll_enabled, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_v_scroll_enabled =
      resolveMethodBind('Tree', 'is_v_scroll_enabled', 36873697);

  bool isVScrollEnabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_v_scroll_enabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_scroll_hint_mode =
      resolveMethodBind('Tree', 'set_scroll_hint_mode', 415911924);

  void setScrollHintMode(int scrollHintMode) {
    final arg0 = malloc<Int64>()..value = scrollHintMode;
    try {
      ptrcallVoid(_mb_set_scroll_hint_mode, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_scroll_hint_mode =
      resolveMethodBind('Tree', 'get_scroll_hint_mode', 553087187);

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
      resolveMethodBind('Tree', 'set_tile_scroll_hint', 2586408642);

  void setTileScrollHint(bool tileScrollHint) {
    final arg0 = malloc<Uint8>()..value = tileScrollHint ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_tile_scroll_hint, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_scroll_hint_tiled =
      resolveMethodBind('Tree', 'is_scroll_hint_tiled', 2240911060);

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

  static final Pointer<Void> _mb_set_hide_folding =
      resolveMethodBind('Tree', 'set_hide_folding', 2586408642);

  void setHideFolding(bool hide_) {
    final arg0 = malloc<Uint8>()..value = hide_ ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_hide_folding, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_folding_hidden =
      resolveMethodBind('Tree', 'is_folding_hidden', 36873697);

  bool isFoldingHidden() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_folding_hidden, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_enable_recursive_folding =
      resolveMethodBind('Tree', 'set_enable_recursive_folding', 2586408642);

  void setEnableRecursiveFolding(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_enable_recursive_folding, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_recursive_folding_enabled =
      resolveMethodBind('Tree', 'is_recursive_folding_enabled', 36873697);

  bool isRecursiveFoldingEnabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_recursive_folding_enabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_enable_drag_unfolding =
      resolveMethodBind('Tree', 'set_enable_drag_unfolding', 2586408642);

  void setEnableDragUnfolding(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_enable_drag_unfolding, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_drag_unfolding_enabled =
      resolveMethodBind('Tree', 'is_drag_unfolding_enabled', 36873697);

  bool isDragUnfoldingEnabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_drag_unfolding_enabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_drop_mode_flags =
      resolveMethodBind('Tree', 'set_drop_mode_flags', 1286410249);

  void setDropModeFlags(int flags) {
    final arg0 = malloc<Int64>()..value = flags;
    try {
      ptrcallVoid(_mb_set_drop_mode_flags, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_drop_mode_flags =
      resolveMethodBind('Tree', 'get_drop_mode_flags', 3905245786);

  int getDropModeFlags() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_drop_mode_flags, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_allow_rmb_select =
      resolveMethodBind('Tree', 'set_allow_rmb_select', 2586408642);

  void setAllowRmbSelect(bool allow) {
    final arg0 = malloc<Uint8>()..value = allow ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_allow_rmb_select, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_allow_rmb_select =
      resolveMethodBind('Tree', 'get_allow_rmb_select', 36873697);

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
      resolveMethodBind('Tree', 'set_allow_reselect', 2586408642);

  void setAllowReselect(bool allow) {
    final arg0 = malloc<Uint8>()..value = allow ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_allow_reselect, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_allow_reselect =
      resolveMethodBind('Tree', 'get_allow_reselect', 36873697);

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
      resolveMethodBind('Tree', 'set_allow_search', 2586408642);

  void setAllowSearch(bool allow) {
    final arg0 = malloc<Uint8>()..value = allow ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_allow_search, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_allow_search =
      resolveMethodBind('Tree', 'get_allow_search', 36873697);

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

  static final Pointer<Void> _mb_set_auto_tooltip =
      resolveMethodBind('Tree', 'set_auto_tooltip', 2586408642);

  void setAutoTooltip(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_auto_tooltip, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_auto_tooltip_enabled =
      resolveMethodBind('Tree', 'is_auto_tooltip_enabled', 36873697);

  bool isAutoTooltipEnabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_auto_tooltip_enabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
