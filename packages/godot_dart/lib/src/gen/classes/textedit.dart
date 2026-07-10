// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class TextEdit extends Control {
  TextEdit(super.nativePtr);

  static final Pointer<Void> _mb_has_ime_text =
      resolveMethodBind('TextEdit', 'has_ime_text', 36873697);

  bool hasImeText() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_has_ime_text, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_cancel_ime =
      resolveMethodBind('TextEdit', 'cancel_ime', 3218959716);

  void cancelIme() {
    try {
      ptrcallVoid(_mb_cancel_ime, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_apply_ime =
      resolveMethodBind('TextEdit', 'apply_ime', 3218959716);

  void applyIme() {
    try {
      ptrcallVoid(_mb_apply_ime, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_editable =
      resolveMethodBind('TextEdit', 'set_editable', 2586408642);

  void setEditable(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_editable, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_editable =
      resolveMethodBind('TextEdit', 'is_editable', 36873697);

  bool isEditable() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_editable, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_text_direction =
      resolveMethodBind('TextEdit', 'set_text_direction', 119160795);

  void setTextDirection(int direction) {
    final arg0 = malloc<Int64>()..value = direction;
    try {
      ptrcallVoid(_mb_set_text_direction, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_text_direction =
      resolveMethodBind('TextEdit', 'get_text_direction', 797257663);

  int getTextDirection() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_text_direction, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_language =
      resolveMethodBind('TextEdit', 'set_language', 83702148);

  void setLanguage(String language) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), language);
    try {
      ptrcallVoid(_mb_set_language, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_language =
      resolveMethodBind('TextEdit', 'get_language', 201670096);

  String getLanguage() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_language, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_structured_text_bidi_override =
      resolveMethodBind('TextEdit', 'set_structured_text_bidi_override', 55961453);

  void setStructuredTextBidiOverride(int parser) {
    final arg0 = malloc<Int64>()..value = parser;
    try {
      ptrcallVoid(_mb_set_structured_text_bidi_override, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_structured_text_bidi_override =
      resolveMethodBind('TextEdit', 'get_structured_text_bidi_override', 3385126229);

  int getStructuredTextBidiOverride() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_structured_text_bidi_override, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  // Skipped set_structured_text_bidi_override_options(): an argument type is unsupported.
  // Skipped get_structured_text_bidi_override_options(): unsupported return type "Array".
  static final Pointer<Void> _mb_set_tab_size =
      resolveMethodBind('TextEdit', 'set_tab_size', 1286410249);

  void setTabSize(int size) {
    final arg0 = malloc<Int64>()..value = size;
    try {
      ptrcallVoid(_mb_set_tab_size, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_tab_size =
      resolveMethodBind('TextEdit', 'get_tab_size', 3905245786);

  int getTabSize() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_tab_size, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_indent_wrapped_lines =
      resolveMethodBind('TextEdit', 'set_indent_wrapped_lines', 2586408642);

  void setIndentWrappedLines(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_indent_wrapped_lines, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_indent_wrapped_lines =
      resolveMethodBind('TextEdit', 'is_indent_wrapped_lines', 36873697);

  bool isIndentWrappedLines() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_indent_wrapped_lines, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_tab_input_mode =
      resolveMethodBind('TextEdit', 'set_tab_input_mode', 2586408642);

  void setTabInputMode(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_tab_input_mode, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_tab_input_mode =
      resolveMethodBind('TextEdit', 'get_tab_input_mode', 36873697);

  bool getTabInputMode() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_tab_input_mode, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_overtype_mode_enabled =
      resolveMethodBind('TextEdit', 'set_overtype_mode_enabled', 2586408642);

  void setOvertypeModeEnabled(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_overtype_mode_enabled, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_overtype_mode_enabled =
      resolveMethodBind('TextEdit', 'is_overtype_mode_enabled', 36873697);

  bool isOvertypeModeEnabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_overtype_mode_enabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_context_menu_enabled =
      resolveMethodBind('TextEdit', 'set_context_menu_enabled', 2586408642);

  void setContextMenuEnabled(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_context_menu_enabled, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_context_menu_enabled =
      resolveMethodBind('TextEdit', 'is_context_menu_enabled', 36873697);

  bool isContextMenuEnabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_context_menu_enabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_emoji_menu_enabled =
      resolveMethodBind('TextEdit', 'set_emoji_menu_enabled', 2586408642);

  void setEmojiMenuEnabled(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_emoji_menu_enabled, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_emoji_menu_enabled =
      resolveMethodBind('TextEdit', 'is_emoji_menu_enabled', 36873697);

  bool isEmojiMenuEnabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_emoji_menu_enabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_backspace_deletes_composite_character_enabled =
      resolveMethodBind('TextEdit', 'set_backspace_deletes_composite_character_enabled', 2586408642);

  void setBackspaceDeletesCompositeCharacterEnabled(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_backspace_deletes_composite_character_enabled, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_backspace_deletes_composite_character_enabled =
      resolveMethodBind('TextEdit', 'is_backspace_deletes_composite_character_enabled', 36873697);

  bool isBackspaceDeletesCompositeCharacterEnabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_backspace_deletes_composite_character_enabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_shortcut_keys_enabled =
      resolveMethodBind('TextEdit', 'set_shortcut_keys_enabled', 2586408642);

  void setShortcutKeysEnabled(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_shortcut_keys_enabled, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_shortcut_keys_enabled =
      resolveMethodBind('TextEdit', 'is_shortcut_keys_enabled', 36873697);

  bool isShortcutKeysEnabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_shortcut_keys_enabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_virtual_keyboard_enabled =
      resolveMethodBind('TextEdit', 'set_virtual_keyboard_enabled', 2586408642);

  void setVirtualKeyboardEnabled(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_virtual_keyboard_enabled, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_virtual_keyboard_enabled =
      resolveMethodBind('TextEdit', 'is_virtual_keyboard_enabled', 36873697);

  bool isVirtualKeyboardEnabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_virtual_keyboard_enabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_virtual_keyboard_show_on_focus =
      resolveMethodBind('TextEdit', 'set_virtual_keyboard_show_on_focus', 2586408642);

  void setVirtualKeyboardShowOnFocus(bool showOnFocus) {
    final arg0 = malloc<Uint8>()..value = showOnFocus ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_virtual_keyboard_show_on_focus, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_virtual_keyboard_show_on_focus =
      resolveMethodBind('TextEdit', 'get_virtual_keyboard_show_on_focus', 36873697);

  bool getVirtualKeyboardShowOnFocus() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_virtual_keyboard_show_on_focus, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_middle_mouse_paste_enabled =
      resolveMethodBind('TextEdit', 'set_middle_mouse_paste_enabled', 2586408642);

  void setMiddleMousePasteEnabled(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_middle_mouse_paste_enabled, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_middle_mouse_paste_enabled =
      resolveMethodBind('TextEdit', 'is_middle_mouse_paste_enabled', 36873697);

  bool isMiddleMousePasteEnabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_middle_mouse_paste_enabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_empty_selection_clipboard_enabled =
      resolveMethodBind('TextEdit', 'set_empty_selection_clipboard_enabled', 2586408642);

  void setEmptySelectionClipboardEnabled(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_empty_selection_clipboard_enabled, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_empty_selection_clipboard_enabled =
      resolveMethodBind('TextEdit', 'is_empty_selection_clipboard_enabled', 36873697);

  bool isEmptySelectionClipboardEnabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_empty_selection_clipboard_enabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_clear =
      resolveMethodBind('TextEdit', 'clear', 3218959716);

  void clear() {
    try {
      ptrcallVoid(_mb_clear, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_text =
      resolveMethodBind('TextEdit', 'set_text', 83702148);

  void setText(String text) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), text);
    try {
      ptrcallVoid(_mb_set_text, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_text =
      resolveMethodBind('TextEdit', 'get_text', 201670096);

  String getText() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_text, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_line_count =
      resolveMethodBind('TextEdit', 'get_line_count', 3905245786);

  int getLineCount() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_line_count, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_placeholder =
      resolveMethodBind('TextEdit', 'set_placeholder', 83702148);

  void setPlaceholder(String text) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), text);
    try {
      ptrcallVoid(_mb_set_placeholder, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_placeholder =
      resolveMethodBind('TextEdit', 'get_placeholder', 201670096);

  String getPlaceholder() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_placeholder, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_line =
      resolveMethodBind('TextEdit', 'set_line', 501894301);

  void setLine(int line, String newText) {
    final arg0 = malloc<Int64>()..value = line;
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg1.cast(), newText);
    try {
      ptrcallVoid(_mb_set_line, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      BuiltinMarshal.destroyGDString(arg1.cast());
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_line =
      resolveMethodBind('TextEdit', 'get_line', 844755477);

  String getLine(int line) {
    final arg0 = malloc<Int64>()..value = line;
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_line, nativePtr, [arg0.cast<Void>()], ret.cast());
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

  static final Pointer<Void> _mb_get_line_with_ime =
      resolveMethodBind('TextEdit', 'get_line_with_ime', 844755477);

  String getLineWithIme(int line) {
    final arg0 = malloc<Int64>()..value = line;
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_line_with_ime, nativePtr, [arg0.cast<Void>()], ret.cast());
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

  static final Pointer<Void> _mb_get_line_width =
      resolveMethodBind('TextEdit', 'get_line_width', 688195400);

  int getLineWidth(int line, int wrapIndex) {
    final arg0 = malloc<Int64>()..value = line;
    final arg1 = malloc<Int64>()..value = wrapIndex;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_line_width, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_line_height =
      resolveMethodBind('TextEdit', 'get_line_height', 3905245786);

  int getLineHeight() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_line_height, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_indent_level =
      resolveMethodBind('TextEdit', 'get_indent_level', 923996154);

  int getIndentLevel(int line) {
    final arg0 = malloc<Int64>()..value = line;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_indent_level, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_first_non_whitespace_column =
      resolveMethodBind('TextEdit', 'get_first_non_whitespace_column', 923996154);

  int getFirstNonWhitespaceColumn(int line) {
    final arg0 = malloc<Int64>()..value = line;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_first_non_whitespace_column, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_swap_lines =
      resolveMethodBind('TextEdit', 'swap_lines', 3937882851);

  void swapLines(int fromLine, int toLine) {
    final arg0 = malloc<Int64>()..value = fromLine;
    final arg1 = malloc<Int64>()..value = toLine;
    try {
      ptrcallVoid(_mb_swap_lines, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_insert_line_at =
      resolveMethodBind('TextEdit', 'insert_line_at', 501894301);

  void insertLineAt(int line, String text) {
    final arg0 = malloc<Int64>()..value = line;
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg1.cast(), text);
    try {
      ptrcallVoid(_mb_insert_line_at, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      BuiltinMarshal.destroyGDString(arg1.cast());
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_remove_line_at =
      resolveMethodBind('TextEdit', 'remove_line_at', 972357352);

  void removeLineAt(int line, bool moveCaretsDown) {
    final arg0 = malloc<Int64>()..value = line;
    final arg1 = malloc<Uint8>()..value = moveCaretsDown ? 1 : 0;
    try {
      ptrcallVoid(_mb_remove_line_at, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_insert_text_at_caret =
      resolveMethodBind('TextEdit', 'insert_text_at_caret', 2697778442);

  void insertTextAtCaret(String text, int caretIndex) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), text);
    final arg1 = malloc<Int64>()..value = caretIndex;
    try {
      ptrcallVoid(_mb_insert_text_at_caret, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_insert_text =
      resolveMethodBind('TextEdit', 'insert_text', 1881564334);

  void insertText(String text, int line, int column, bool beforeSelectionBegin, bool beforeSelectionEnd) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), text);
    final arg1 = malloc<Int64>()..value = line;
    final arg2 = malloc<Int64>()..value = column;
    final arg3 = malloc<Uint8>()..value = beforeSelectionBegin ? 1 : 0;
    final arg4 = malloc<Uint8>()..value = beforeSelectionEnd ? 1 : 0;
    try {
      ptrcallVoid(_mb_insert_text, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>(), arg3.cast<Void>(), arg4.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
      malloc.free(arg3);
      malloc.free(arg4);
    }
  }

  static final Pointer<Void> _mb_remove_text =
      resolveMethodBind('TextEdit', 'remove_text', 4275841770);

  void removeText(int fromLine, int fromColumn, int toLine, int toColumn) {
    final arg0 = malloc<Int64>()..value = fromLine;
    final arg1 = malloc<Int64>()..value = fromColumn;
    final arg2 = malloc<Int64>()..value = toLine;
    final arg3 = malloc<Int64>()..value = toColumn;
    try {
      ptrcallVoid(_mb_remove_text, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>(), arg3.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
      malloc.free(arg3);
    }
  }

  static final Pointer<Void> _mb_get_last_unhidden_line =
      resolveMethodBind('TextEdit', 'get_last_unhidden_line', 3905245786);

  int getLastUnhiddenLine() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_last_unhidden_line, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_next_visible_line_offset_from =
      resolveMethodBind('TextEdit', 'get_next_visible_line_offset_from', 3175239445);

  int getNextVisibleLineOffsetFrom(int line, int visibleAmount) {
    final arg0 = malloc<Int64>()..value = line;
    final arg1 = malloc<Int64>()..value = visibleAmount;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_next_visible_line_offset_from, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_next_visible_line_index_offset_from =
      resolveMethodBind('TextEdit', 'get_next_visible_line_index_offset_from', 3386475622);

  Vector2i getNextVisibleLineIndexOffsetFrom(int line, int wrapIndex, int visibleAmount) {
    final arg0 = malloc<Int64>()..value = line;
    final arg1 = malloc<Int64>()..value = wrapIndex;
    final arg2 = malloc<Int64>()..value = visibleAmount;
    try {
      final ret = malloc<Uint8>(Vector2i.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_next_visible_line_index_offset_from, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()], ret.cast());
        return Vector2i.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_backspace =
      resolveMethodBind('TextEdit', 'backspace', 1025054187);

  void backspace(int caretIndex) {
    final arg0 = malloc<Int64>()..value = caretIndex;
    try {
      ptrcallVoid(_mb_backspace, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_cut =
      resolveMethodBind('TextEdit', 'cut', 1025054187);

  void cut(int caretIndex) {
    final arg0 = malloc<Int64>()..value = caretIndex;
    try {
      ptrcallVoid(_mb_cut, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_copy =
      resolveMethodBind('TextEdit', 'copy', 1025054187);

  void copy(int caretIndex) {
    final arg0 = malloc<Int64>()..value = caretIndex;
    try {
      ptrcallVoid(_mb_copy, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_paste =
      resolveMethodBind('TextEdit', 'paste', 1025054187);

  void paste(int caretIndex) {
    final arg0 = malloc<Int64>()..value = caretIndex;
    try {
      ptrcallVoid(_mb_paste, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_paste_primary_clipboard =
      resolveMethodBind('TextEdit', 'paste_primary_clipboard', 1025054187);

  void pastePrimaryClipboard(int caretIndex) {
    final arg0 = malloc<Int64>()..value = caretIndex;
    try {
      ptrcallVoid(_mb_paste_primary_clipboard, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_start_action =
      resolveMethodBind('TextEdit', 'start_action', 2834827583);

  void startAction(int action) {
    final arg0 = malloc<Int64>()..value = action;
    try {
      ptrcallVoid(_mb_start_action, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_end_action =
      resolveMethodBind('TextEdit', 'end_action', 3218959716);

  void endAction() {
    try {
      ptrcallVoid(_mb_end_action, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_begin_complex_operation =
      resolveMethodBind('TextEdit', 'begin_complex_operation', 3218959716);

  void beginComplexOperation() {
    try {
      ptrcallVoid(_mb_begin_complex_operation, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_end_complex_operation =
      resolveMethodBind('TextEdit', 'end_complex_operation', 3218959716);

  void endComplexOperation() {
    try {
      ptrcallVoid(_mb_end_complex_operation, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_has_undo =
      resolveMethodBind('TextEdit', 'has_undo', 36873697);

  bool hasUndo() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_has_undo, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_has_redo =
      resolveMethodBind('TextEdit', 'has_redo', 36873697);

  bool hasRedo() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_has_redo, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_undo =
      resolveMethodBind('TextEdit', 'undo', 3218959716);

  void undo() {
    try {
      ptrcallVoid(_mb_undo, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_redo =
      resolveMethodBind('TextEdit', 'redo', 3218959716);

  void redo() {
    try {
      ptrcallVoid(_mb_redo, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_clear_undo_history =
      resolveMethodBind('TextEdit', 'clear_undo_history', 3218959716);

  void clearUndoHistory() {
    try {
      ptrcallVoid(_mb_clear_undo_history, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_tag_saved_version =
      resolveMethodBind('TextEdit', 'tag_saved_version', 3218959716);

  void tagSavedVersion() {
    try {
      ptrcallVoid(_mb_tag_saved_version, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_version =
      resolveMethodBind('TextEdit', 'get_version', 3905245786);

  int getVersion() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_version, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_saved_version =
      resolveMethodBind('TextEdit', 'get_saved_version', 3905245786);

  int getSavedVersion() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_saved_version, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_search_text =
      resolveMethodBind('TextEdit', 'set_search_text', 83702148);

  void setSearchText(String searchText) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), searchText);
    try {
      ptrcallVoid(_mb_set_search_text, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_search_flags =
      resolveMethodBind('TextEdit', 'set_search_flags', 1286410249);

  void setSearchFlags(int flags) {
    final arg0 = malloc<Int64>()..value = flags;
    try {
      ptrcallVoid(_mb_set_search_flags, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_search =
      resolveMethodBind('TextEdit', 'search', 1203739136);

  Vector2i search(String text, int flags, int fromLine, int fromColumn) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), text);
    final arg1 = malloc<Int64>()..value = flags;
    final arg2 = malloc<Int64>()..value = fromLine;
    final arg3 = malloc<Int64>()..value = fromColumn;
    try {
      final ret = malloc<Uint8>(Vector2i.nativeSize);
      try {
        ptrcallWithReturn(_mb_search, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>(), arg3.cast<Void>()], ret.cast());
        return Vector2i.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
      malloc.free(arg3);
    }
  }

  // Skipped set_tooltip_request_func(): an argument type is unsupported.
  static final Pointer<Void> _mb_get_local_mouse_pos =
      resolveMethodBind('TextEdit', 'get_local_mouse_pos', 3341600327);

  Vector2 getLocalMousePos() {
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_local_mouse_pos, nativePtr, [], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_word_at_pos =
      resolveMethodBind('TextEdit', 'get_word_at_pos', 3674420000);

  String getWordAtPos(Vector2 position) {
    final arg0 = malloc<Uint8>(Vector2.nativeSize);
    position.writeTo(arg0, 0);
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_word_at_pos, nativePtr, [arg0.cast<Void>()], ret.cast());
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

  static final Pointer<Void> _mb_get_line_column_at_pos =
      resolveMethodBind('TextEdit', 'get_line_column_at_pos', 3472935744);

  Vector2i getLineColumnAtPos(Vector2i position, bool clampLine, bool clampColumn) {
    final arg0 = malloc<Uint8>(Vector2i.nativeSize);
    position.writeTo(arg0, 0);
    final arg1 = malloc<Uint8>()..value = clampLine ? 1 : 0;
    final arg2 = malloc<Uint8>()..value = clampColumn ? 1 : 0;
    try {
      final ret = malloc<Uint8>(Vector2i.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_line_column_at_pos, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()], ret.cast());
        return Vector2i.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_get_pos_at_line_column =
      resolveMethodBind('TextEdit', 'get_pos_at_line_column', 410388347);

  Vector2i getPosAtLineColumn(int line, int column) {
    final arg0 = malloc<Int64>()..value = line;
    final arg1 = malloc<Int64>()..value = column;
    try {
      final ret = malloc<Uint8>(Vector2i.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_pos_at_line_column, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return Vector2i.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_rect_at_line_column =
      resolveMethodBind('TextEdit', 'get_rect_at_line_column', 3256618057);

  Rect2i getRectAtLineColumn(int line, int column) {
    final arg0 = malloc<Int64>()..value = line;
    final arg1 = malloc<Int64>()..value = column;
    try {
      final ret = malloc<Uint8>(Rect2i.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_rect_at_line_column, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return Rect2i.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_minimap_line_at_pos =
      resolveMethodBind('TextEdit', 'get_minimap_line_at_pos', 2485466453);

  int getMinimapLineAtPos(Vector2i position) {
    final arg0 = malloc<Uint8>(Vector2i.nativeSize);
    position.writeTo(arg0, 0);
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_minimap_line_at_pos, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_dragging_cursor =
      resolveMethodBind('TextEdit', 'is_dragging_cursor', 36873697);

  bool isDraggingCursor() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_dragging_cursor, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_is_mouse_over_selection =
      resolveMethodBind('TextEdit', 'is_mouse_over_selection', 1840282309);

  bool isMouseOverSelection(bool edges, int caretIndex) {
    final arg0 = malloc<Uint8>()..value = edges ? 1 : 0;
    final arg1 = malloc<Int64>()..value = caretIndex;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_mouse_over_selection, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_set_caret_type =
      resolveMethodBind('TextEdit', 'set_caret_type', 1211596914);

  void setCaretType(int type) {
    final arg0 = malloc<Int64>()..value = type;
    try {
      ptrcallVoid(_mb_set_caret_type, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_caret_type =
      resolveMethodBind('TextEdit', 'get_caret_type', 2830252959);

  int getCaretType() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_caret_type, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_caret_blink_enabled =
      resolveMethodBind('TextEdit', 'set_caret_blink_enabled', 2586408642);

  void setCaretBlinkEnabled(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_caret_blink_enabled, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_caret_blink_enabled =
      resolveMethodBind('TextEdit', 'is_caret_blink_enabled', 36873697);

  bool isCaretBlinkEnabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_caret_blink_enabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_caret_blink_interval =
      resolveMethodBind('TextEdit', 'set_caret_blink_interval', 373806689);

  void setCaretBlinkInterval(double interval) {
    final arg0 = malloc<Double>()..value = interval;
    try {
      ptrcallVoid(_mb_set_caret_blink_interval, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_caret_blink_interval =
      resolveMethodBind('TextEdit', 'get_caret_blink_interval', 1740695150);

  double getCaretBlinkInterval() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_caret_blink_interval, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_draw_caret_when_editable_disabled =
      resolveMethodBind('TextEdit', 'set_draw_caret_when_editable_disabled', 2586408642);

  void setDrawCaretWhenEditableDisabled(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_draw_caret_when_editable_disabled, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_drawing_caret_when_editable_disabled =
      resolveMethodBind('TextEdit', 'is_drawing_caret_when_editable_disabled', 36873697);

  bool isDrawingCaretWhenEditableDisabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_drawing_caret_when_editable_disabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_move_caret_on_right_click_enabled =
      resolveMethodBind('TextEdit', 'set_move_caret_on_right_click_enabled', 2586408642);

  void setMoveCaretOnRightClickEnabled(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_move_caret_on_right_click_enabled, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_move_caret_on_right_click_enabled =
      resolveMethodBind('TextEdit', 'is_move_caret_on_right_click_enabled', 36873697);

  bool isMoveCaretOnRightClickEnabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_move_caret_on_right_click_enabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_caret_mid_grapheme_enabled =
      resolveMethodBind('TextEdit', 'set_caret_mid_grapheme_enabled', 2586408642);

  void setCaretMidGraphemeEnabled(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_caret_mid_grapheme_enabled, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_caret_mid_grapheme_enabled =
      resolveMethodBind('TextEdit', 'is_caret_mid_grapheme_enabled', 36873697);

  bool isCaretMidGraphemeEnabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_caret_mid_grapheme_enabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_multiple_carets_enabled =
      resolveMethodBind('TextEdit', 'set_multiple_carets_enabled', 2586408642);

  void setMultipleCaretsEnabled(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_multiple_carets_enabled, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_multiple_carets_enabled =
      resolveMethodBind('TextEdit', 'is_multiple_carets_enabled', 36873697);

  bool isMultipleCaretsEnabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_multiple_carets_enabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_add_caret =
      resolveMethodBind('TextEdit', 'add_caret', 50157827);

  int addCaret(int line, int column) {
    final arg0 = malloc<Int64>()..value = line;
    final arg1 = malloc<Int64>()..value = column;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_add_caret, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_remove_caret =
      resolveMethodBind('TextEdit', 'remove_caret', 1286410249);

  void removeCaret(int caret) {
    final arg0 = malloc<Int64>()..value = caret;
    try {
      ptrcallVoid(_mb_remove_caret, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_remove_secondary_carets =
      resolveMethodBind('TextEdit', 'remove_secondary_carets', 3218959716);

  void removeSecondaryCarets() {
    try {
      ptrcallVoid(_mb_remove_secondary_carets, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_caret_count =
      resolveMethodBind('TextEdit', 'get_caret_count', 3905245786);

  int getCaretCount() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_caret_count, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_add_caret_at_carets =
      resolveMethodBind('TextEdit', 'add_caret_at_carets', 2586408642);

  void addCaretAtCarets(bool below) {
    final arg0 = malloc<Uint8>()..value = below ? 1 : 0;
    try {
      ptrcallVoid(_mb_add_caret_at_carets, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  // Skipped get_sorted_carets(): unsupported return type "PackedInt32Array".
  static final Pointer<Void> _mb_collapse_carets =
      resolveMethodBind('TextEdit', 'collapse_carets', 228654177);

  void collapseCarets(int fromLine, int fromColumn, int toLine, int toColumn, bool inclusive) {
    final arg0 = malloc<Int64>()..value = fromLine;
    final arg1 = malloc<Int64>()..value = fromColumn;
    final arg2 = malloc<Int64>()..value = toLine;
    final arg3 = malloc<Int64>()..value = toColumn;
    final arg4 = malloc<Uint8>()..value = inclusive ? 1 : 0;
    try {
      ptrcallVoid(_mb_collapse_carets, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>(), arg3.cast<Void>(), arg4.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
      malloc.free(arg3);
      malloc.free(arg4);
    }
  }

  static final Pointer<Void> _mb_merge_overlapping_carets =
      resolveMethodBind('TextEdit', 'merge_overlapping_carets', 3218959716);

  void mergeOverlappingCarets() {
    try {
      ptrcallVoid(_mb_merge_overlapping_carets, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_begin_multicaret_edit =
      resolveMethodBind('TextEdit', 'begin_multicaret_edit', 3218959716);

  void beginMulticaretEdit() {
    try {
      ptrcallVoid(_mb_begin_multicaret_edit, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_end_multicaret_edit =
      resolveMethodBind('TextEdit', 'end_multicaret_edit', 3218959716);

  void endMulticaretEdit() {
    try {
      ptrcallVoid(_mb_end_multicaret_edit, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_is_in_mulitcaret_edit =
      resolveMethodBind('TextEdit', 'is_in_mulitcaret_edit', 36873697);

  bool isInMulitcaretEdit() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_in_mulitcaret_edit, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_multicaret_edit_ignore_caret =
      resolveMethodBind('TextEdit', 'multicaret_edit_ignore_caret', 1116898809);

  bool multicaretEditIgnoreCaret(int caretIndex) {
    final arg0 = malloc<Int64>()..value = caretIndex;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_multicaret_edit_ignore_caret, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_caret_visible =
      resolveMethodBind('TextEdit', 'is_caret_visible', 1051549951);

  bool isCaretVisible(int caretIndex) {
    final arg0 = malloc<Int64>()..value = caretIndex;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_caret_visible, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_caret_draw_pos =
      resolveMethodBind('TextEdit', 'get_caret_draw_pos', 478253731);

  Vector2 getCaretDrawPos(int caretIndex) {
    final arg0 = malloc<Int64>()..value = caretIndex;
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_caret_draw_pos, nativePtr, [arg0.cast<Void>()], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_caret_line =
      resolveMethodBind('TextEdit', 'set_caret_line', 1302582944);

  void setCaretLine(int line, bool adjustViewport, bool canBeHidden, int wrapIndex, int caretIndex) {
    final arg0 = malloc<Int64>()..value = line;
    final arg1 = malloc<Uint8>()..value = adjustViewport ? 1 : 0;
    final arg2 = malloc<Uint8>()..value = canBeHidden ? 1 : 0;
    final arg3 = malloc<Int64>()..value = wrapIndex;
    final arg4 = malloc<Int64>()..value = caretIndex;
    try {
      ptrcallVoid(_mb_set_caret_line, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>(), arg3.cast<Void>(), arg4.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
      malloc.free(arg3);
      malloc.free(arg4);
    }
  }

  static final Pointer<Void> _mb_get_caret_line =
      resolveMethodBind('TextEdit', 'get_caret_line', 1591665591);

  int getCaretLine(int caretIndex) {
    final arg0 = malloc<Int64>()..value = caretIndex;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_caret_line, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_caret_column =
      resolveMethodBind('TextEdit', 'set_caret_column', 3796796178);

  void setCaretColumn(int column, bool adjustViewport, int caretIndex) {
    final arg0 = malloc<Int64>()..value = column;
    final arg1 = malloc<Uint8>()..value = adjustViewport ? 1 : 0;
    final arg2 = malloc<Int64>()..value = caretIndex;
    try {
      ptrcallVoid(_mb_set_caret_column, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_get_caret_column =
      resolveMethodBind('TextEdit', 'get_caret_column', 1591665591);

  int getCaretColumn(int caretIndex) {
    final arg0 = malloc<Int64>()..value = caretIndex;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_caret_column, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_next_composite_character_column =
      resolveMethodBind('TextEdit', 'get_next_composite_character_column', 3175239445);

  int getNextCompositeCharacterColumn(int line, int column) {
    final arg0 = malloc<Int64>()..value = line;
    final arg1 = malloc<Int64>()..value = column;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_next_composite_character_column, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_previous_composite_character_column =
      resolveMethodBind('TextEdit', 'get_previous_composite_character_column', 3175239445);

  int getPreviousCompositeCharacterColumn(int line, int column) {
    final arg0 = malloc<Int64>()..value = line;
    final arg1 = malloc<Int64>()..value = column;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_previous_composite_character_column, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_caret_wrap_index =
      resolveMethodBind('TextEdit', 'get_caret_wrap_index', 1591665591);

  int getCaretWrapIndex(int caretIndex) {
    final arg0 = malloc<Int64>()..value = caretIndex;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_caret_wrap_index, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_word_under_caret =
      resolveMethodBind('TextEdit', 'get_word_under_caret', 3929349208);

  String getWordUnderCaret(int caretIndex) {
    final arg0 = malloc<Int64>()..value = caretIndex;
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_word_under_caret, nativePtr, [arg0.cast<Void>()], ret.cast());
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

  static final Pointer<Void> _mb_set_use_default_word_separators =
      resolveMethodBind('TextEdit', 'set_use_default_word_separators', 2586408642);

  void setUseDefaultWordSeparators(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_use_default_word_separators, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_default_word_separators_enabled =
      resolveMethodBind('TextEdit', 'is_default_word_separators_enabled', 36873697);

  bool isDefaultWordSeparatorsEnabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_default_word_separators_enabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_use_custom_word_separators =
      resolveMethodBind('TextEdit', 'set_use_custom_word_separators', 2586408642);

  void setUseCustomWordSeparators(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_use_custom_word_separators, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_custom_word_separators_enabled =
      resolveMethodBind('TextEdit', 'is_custom_word_separators_enabled', 36873697);

  bool isCustomWordSeparatorsEnabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_custom_word_separators_enabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_custom_word_separators =
      resolveMethodBind('TextEdit', 'set_custom_word_separators', 83702148);

  void setCustomWordSeparators(String customWordSeparators) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), customWordSeparators);
    try {
      ptrcallVoid(_mb_set_custom_word_separators, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_custom_word_separators =
      resolveMethodBind('TextEdit', 'get_custom_word_separators', 201670096);

  String getCustomWordSeparators() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_custom_word_separators, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_selecting_enabled =
      resolveMethodBind('TextEdit', 'set_selecting_enabled', 2586408642);

  void setSelectingEnabled(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_selecting_enabled, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_selecting_enabled =
      resolveMethodBind('TextEdit', 'is_selecting_enabled', 36873697);

  bool isSelectingEnabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_selecting_enabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_deselect_on_focus_loss_enabled =
      resolveMethodBind('TextEdit', 'set_deselect_on_focus_loss_enabled', 2586408642);

  void setDeselectOnFocusLossEnabled(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_deselect_on_focus_loss_enabled, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_deselect_on_focus_loss_enabled =
      resolveMethodBind('TextEdit', 'is_deselect_on_focus_loss_enabled', 36873697);

  bool isDeselectOnFocusLossEnabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_deselect_on_focus_loss_enabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_drag_and_drop_selection_enabled =
      resolveMethodBind('TextEdit', 'set_drag_and_drop_selection_enabled', 2586408642);

  void setDragAndDropSelectionEnabled(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_drag_and_drop_selection_enabled, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_drag_and_drop_selection_enabled =
      resolveMethodBind('TextEdit', 'is_drag_and_drop_selection_enabled', 36873697);

  bool isDragAndDropSelectionEnabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_drag_and_drop_selection_enabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_selection_mode =
      resolveMethodBind('TextEdit', 'set_selection_mode', 1658801786);

  void setSelectionMode(int mode) {
    final arg0 = malloc<Int64>()..value = mode;
    try {
      ptrcallVoid(_mb_set_selection_mode, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_selection_mode =
      resolveMethodBind('TextEdit', 'get_selection_mode', 3750106938);

  int getSelectionMode() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_selection_mode, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_select_all =
      resolveMethodBind('TextEdit', 'select_all', 3218959716);

  void selectAll() {
    try {
      ptrcallVoid(_mb_select_all, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_select_word_under_caret =
      resolveMethodBind('TextEdit', 'select_word_under_caret', 1025054187);

  void selectWordUnderCaret(int caretIndex) {
    final arg0 = malloc<Int64>()..value = caretIndex;
    try {
      ptrcallVoid(_mb_select_word_under_caret, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_add_selection_for_next_occurrence =
      resolveMethodBind('TextEdit', 'add_selection_for_next_occurrence', 3218959716);

  void addSelectionForNextOccurrence() {
    try {
      ptrcallVoid(_mb_add_selection_for_next_occurrence, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_skip_selection_for_next_occurrence =
      resolveMethodBind('TextEdit', 'skip_selection_for_next_occurrence', 3218959716);

  void skipSelectionForNextOccurrence() {
    try {
      ptrcallVoid(_mb_skip_selection_for_next_occurrence, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_select =
      resolveMethodBind('TextEdit', 'select', 2560984452);

  void select(int originLine, int originColumn, int caretLine, int caretColumn, int caretIndex) {
    final arg0 = malloc<Int64>()..value = originLine;
    final arg1 = malloc<Int64>()..value = originColumn;
    final arg2 = malloc<Int64>()..value = caretLine;
    final arg3 = malloc<Int64>()..value = caretColumn;
    final arg4 = malloc<Int64>()..value = caretIndex;
    try {
      ptrcallVoid(_mb_select, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>(), arg3.cast<Void>(), arg4.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
      malloc.free(arg3);
      malloc.free(arg4);
    }
  }

  static final Pointer<Void> _mb_has_selection =
      resolveMethodBind('TextEdit', 'has_selection', 2824505868);

  bool hasSelection(int caretIndex) {
    final arg0 = malloc<Int64>()..value = caretIndex;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_has_selection, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_selected_text =
      resolveMethodBind('TextEdit', 'get_selected_text', 2309358862);

  String getSelectedText(int caretIndex) {
    final arg0 = malloc<Int64>()..value = caretIndex;
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_selected_text, nativePtr, [arg0.cast<Void>()], ret.cast());
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

  static final Pointer<Void> _mb_get_selection_at_line_column =
      resolveMethodBind('TextEdit', 'get_selection_at_line_column', 1810224333);

  int getSelectionAtLineColumn(int line, int column, bool includeEdges, bool onlySelections) {
    final arg0 = malloc<Int64>()..value = line;
    final arg1 = malloc<Int64>()..value = column;
    final arg2 = malloc<Uint8>()..value = includeEdges ? 1 : 0;
    final arg3 = malloc<Uint8>()..value = onlySelections ? 1 : 0;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_selection_at_line_column, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>(), arg3.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
      malloc.free(arg3);
    }
  }

  // Skipped get_line_ranges_from_carets(): unsupported return type "typedarray::Vector2i".
  static final Pointer<Void> _mb_get_selection_origin_line =
      resolveMethodBind('TextEdit', 'get_selection_origin_line', 1591665591);

  int getSelectionOriginLine(int caretIndex) {
    final arg0 = malloc<Int64>()..value = caretIndex;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_selection_origin_line, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_selection_origin_column =
      resolveMethodBind('TextEdit', 'get_selection_origin_column', 1591665591);

  int getSelectionOriginColumn(int caretIndex) {
    final arg0 = malloc<Int64>()..value = caretIndex;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_selection_origin_column, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_selection_origin_line =
      resolveMethodBind('TextEdit', 'set_selection_origin_line', 195434140);

  void setSelectionOriginLine(int line, bool canBeHidden, int wrapIndex, int caretIndex) {
    final arg0 = malloc<Int64>()..value = line;
    final arg1 = malloc<Uint8>()..value = canBeHidden ? 1 : 0;
    final arg2 = malloc<Int64>()..value = wrapIndex;
    final arg3 = malloc<Int64>()..value = caretIndex;
    try {
      ptrcallVoid(_mb_set_selection_origin_line, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>(), arg3.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
      malloc.free(arg3);
    }
  }

  static final Pointer<Void> _mb_set_selection_origin_column =
      resolveMethodBind('TextEdit', 'set_selection_origin_column', 2230941749);

  void setSelectionOriginColumn(int column, int caretIndex) {
    final arg0 = malloc<Int64>()..value = column;
    final arg1 = malloc<Int64>()..value = caretIndex;
    try {
      ptrcallVoid(_mb_set_selection_origin_column, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_selection_from_line =
      resolveMethodBind('TextEdit', 'get_selection_from_line', 1591665591);

  int getSelectionFromLine(int caretIndex) {
    final arg0 = malloc<Int64>()..value = caretIndex;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_selection_from_line, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_selection_from_column =
      resolveMethodBind('TextEdit', 'get_selection_from_column', 1591665591);

  int getSelectionFromColumn(int caretIndex) {
    final arg0 = malloc<Int64>()..value = caretIndex;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_selection_from_column, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_selection_to_line =
      resolveMethodBind('TextEdit', 'get_selection_to_line', 1591665591);

  int getSelectionToLine(int caretIndex) {
    final arg0 = malloc<Int64>()..value = caretIndex;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_selection_to_line, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_selection_to_column =
      resolveMethodBind('TextEdit', 'get_selection_to_column', 1591665591);

  int getSelectionToColumn(int caretIndex) {
    final arg0 = malloc<Int64>()..value = caretIndex;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_selection_to_column, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_caret_after_selection_origin =
      resolveMethodBind('TextEdit', 'is_caret_after_selection_origin', 1051549951);

  bool isCaretAfterSelectionOrigin(int caretIndex) {
    final arg0 = malloc<Int64>()..value = caretIndex;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_caret_after_selection_origin, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_deselect =
      resolveMethodBind('TextEdit', 'deselect', 1025054187);

  void deselect(int caretIndex) {
    final arg0 = malloc<Int64>()..value = caretIndex;
    try {
      ptrcallVoid(_mb_deselect, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_delete_selection =
      resolveMethodBind('TextEdit', 'delete_selection', 1025054187);

  void deleteSelection(int caretIndex) {
    final arg0 = malloc<Int64>()..value = caretIndex;
    try {
      ptrcallVoid(_mb_delete_selection, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_selection_handle_enabled =
      resolveMethodBind('TextEdit', 'set_selection_handle_enabled', 2586408642);

  void setSelectionHandleEnabled(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_selection_handle_enabled, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_selection_handle_enabled =
      resolveMethodBind('TextEdit', 'is_selection_handle_enabled', 36873697);

  bool isSelectionHandleEnabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_selection_handle_enabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_line_wrapping_mode =
      resolveMethodBind('TextEdit', 'set_line_wrapping_mode', 2525115309);

  void setLineWrappingMode(int mode) {
    final arg0 = malloc<Int64>()..value = mode;
    try {
      ptrcallVoid(_mb_set_line_wrapping_mode, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_line_wrapping_mode =
      resolveMethodBind('TextEdit', 'get_line_wrapping_mode', 3562716114);

  int getLineWrappingMode() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_line_wrapping_mode, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_autowrap_mode =
      resolveMethodBind('TextEdit', 'set_autowrap_mode', 3289138044);

  void setAutowrapMode(int autowrapMode) {
    final arg0 = malloc<Int64>()..value = autowrapMode;
    try {
      ptrcallVoid(_mb_set_autowrap_mode, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_autowrap_mode =
      resolveMethodBind('TextEdit', 'get_autowrap_mode', 1549071663);

  int getAutowrapMode() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_autowrap_mode, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_is_line_wrapped =
      resolveMethodBind('TextEdit', 'is_line_wrapped', 1116898809);

  bool isLineWrapped(int line) {
    final arg0 = malloc<Int64>()..value = line;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_line_wrapped, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_line_wrap_count =
      resolveMethodBind('TextEdit', 'get_line_wrap_count', 923996154);

  int getLineWrapCount(int line) {
    final arg0 = malloc<Int64>()..value = line;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_line_wrap_count, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_line_wrap_index_at_column =
      resolveMethodBind('TextEdit', 'get_line_wrap_index_at_column', 3175239445);

  int getLineWrapIndexAtColumn(int line, int column) {
    final arg0 = malloc<Int64>()..value = line;
    final arg1 = malloc<Int64>()..value = column;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_line_wrap_index_at_column, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  // Skipped get_line_wrapped_text(): unsupported return type "PackedStringArray".
  static final Pointer<Void> _mb_set_smooth_scroll_enabled =
      resolveMethodBind('TextEdit', 'set_smooth_scroll_enabled', 2586408642);

  void setSmoothScrollEnabled(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_smooth_scroll_enabled, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_smooth_scroll_enabled =
      resolveMethodBind('TextEdit', 'is_smooth_scroll_enabled', 36873697);

  bool isSmoothScrollEnabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_smooth_scroll_enabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_v_scroll_bar =
      resolveMethodBind('TextEdit', 'get_v_scroll_bar', 3226026593);

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
      resolveMethodBind('TextEdit', 'get_h_scroll_bar', 3774687988);

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

  static final Pointer<Void> _mb_set_v_scroll =
      resolveMethodBind('TextEdit', 'set_v_scroll', 373806689);

  void setVScroll(double value) {
    final arg0 = malloc<Double>()..value = value;
    try {
      ptrcallVoid(_mb_set_v_scroll, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_v_scroll =
      resolveMethodBind('TextEdit', 'get_v_scroll', 1740695150);

  double getVScroll() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_v_scroll, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_h_scroll =
      resolveMethodBind('TextEdit', 'set_h_scroll', 1286410249);

  void setHScroll(int value) {
    final arg0 = malloc<Int64>()..value = value;
    try {
      ptrcallVoid(_mb_set_h_scroll, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_h_scroll =
      resolveMethodBind('TextEdit', 'get_h_scroll', 3905245786);

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

  static final Pointer<Void> _mb_set_scroll_past_end_of_file_enabled =
      resolveMethodBind('TextEdit', 'set_scroll_past_end_of_file_enabled', 2586408642);

  void setScrollPastEndOfFileEnabled(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_scroll_past_end_of_file_enabled, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_scroll_past_end_of_file_enabled =
      resolveMethodBind('TextEdit', 'is_scroll_past_end_of_file_enabled', 36873697);

  bool isScrollPastEndOfFileEnabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_scroll_past_end_of_file_enabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_v_scroll_speed =
      resolveMethodBind('TextEdit', 'set_v_scroll_speed', 373806689);

  void setVScrollSpeed(double speed) {
    final arg0 = malloc<Double>()..value = speed;
    try {
      ptrcallVoid(_mb_set_v_scroll_speed, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_v_scroll_speed =
      resolveMethodBind('TextEdit', 'get_v_scroll_speed', 1740695150);

  double getVScrollSpeed() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_v_scroll_speed, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_fit_content_height_enabled =
      resolveMethodBind('TextEdit', 'set_fit_content_height_enabled', 2586408642);

  void setFitContentHeightEnabled(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_fit_content_height_enabled, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_fit_content_height_enabled =
      resolveMethodBind('TextEdit', 'is_fit_content_height_enabled', 36873697);

  bool isFitContentHeightEnabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_fit_content_height_enabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_fit_content_width_enabled =
      resolveMethodBind('TextEdit', 'set_fit_content_width_enabled', 2586408642);

  void setFitContentWidthEnabled(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_fit_content_width_enabled, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_fit_content_width_enabled =
      resolveMethodBind('TextEdit', 'is_fit_content_width_enabled', 36873697);

  bool isFitContentWidthEnabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_fit_content_width_enabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_scroll_pos_for_line =
      resolveMethodBind('TextEdit', 'get_scroll_pos_for_line', 3929084198);

  double getScrollPosForLine(int line, int wrapIndex) {
    final arg0 = malloc<Int64>()..value = line;
    final arg1 = malloc<Int64>()..value = wrapIndex;
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_scroll_pos_for_line, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_set_line_as_first_visible =
      resolveMethodBind('TextEdit', 'set_line_as_first_visible', 2230941749);

  void setLineAsFirstVisible(int line, int wrapIndex) {
    final arg0 = malloc<Int64>()..value = line;
    final arg1 = malloc<Int64>()..value = wrapIndex;
    try {
      ptrcallVoid(_mb_set_line_as_first_visible, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_first_visible_line =
      resolveMethodBind('TextEdit', 'get_first_visible_line', 3905245786);

  int getFirstVisibleLine() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_first_visible_line, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_is_line_in_viewport =
      resolveMethodBind('TextEdit', 'is_line_in_viewport', 1116898809);

  bool isLineInViewport(int line) {
    final arg0 = malloc<Int64>()..value = line;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_line_in_viewport, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_line_as_center_visible =
      resolveMethodBind('TextEdit', 'set_line_as_center_visible', 2230941749);

  void setLineAsCenterVisible(int line, int wrapIndex) {
    final arg0 = malloc<Int64>()..value = line;
    final arg1 = malloc<Int64>()..value = wrapIndex;
    try {
      ptrcallVoid(_mb_set_line_as_center_visible, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_set_line_as_last_visible =
      resolveMethodBind('TextEdit', 'set_line_as_last_visible', 2230941749);

  void setLineAsLastVisible(int line, int wrapIndex) {
    final arg0 = malloc<Int64>()..value = line;
    final arg1 = malloc<Int64>()..value = wrapIndex;
    try {
      ptrcallVoid(_mb_set_line_as_last_visible, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_last_full_visible_line =
      resolveMethodBind('TextEdit', 'get_last_full_visible_line', 3905245786);

  int getLastFullVisibleLine() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_last_full_visible_line, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_last_full_visible_line_wrap_index =
      resolveMethodBind('TextEdit', 'get_last_full_visible_line_wrap_index', 3905245786);

  int getLastFullVisibleLineWrapIndex() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_last_full_visible_line_wrap_index, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_visible_line_count =
      resolveMethodBind('TextEdit', 'get_visible_line_count', 3905245786);

  int getVisibleLineCount() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_visible_line_count, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_visible_line_count_in_range =
      resolveMethodBind('TextEdit', 'get_visible_line_count_in_range', 3175239445);

  int getVisibleLineCountInRange(int fromLine, int toLine) {
    final arg0 = malloc<Int64>()..value = fromLine;
    final arg1 = malloc<Int64>()..value = toLine;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_visible_line_count_in_range, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_total_visible_line_count =
      resolveMethodBind('TextEdit', 'get_total_visible_line_count', 3905245786);

  int getTotalVisibleLineCount() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_total_visible_line_count, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_adjust_viewport_to_caret =
      resolveMethodBind('TextEdit', 'adjust_viewport_to_caret', 1995695955);

  void adjustViewportToCaret(int caretIndex) {
    final arg0 = malloc<Int64>()..value = caretIndex;
    try {
      ptrcallVoid(_mb_adjust_viewport_to_caret, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_center_viewport_to_caret =
      resolveMethodBind('TextEdit', 'center_viewport_to_caret', 1995695955);

  void centerViewportToCaret(int caretIndex) {
    final arg0 = malloc<Int64>()..value = caretIndex;
    try {
      ptrcallVoid(_mb_center_viewport_to_caret, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_draw_minimap =
      resolveMethodBind('TextEdit', 'set_draw_minimap', 2586408642);

  void setDrawMinimap(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_draw_minimap, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_drawing_minimap =
      resolveMethodBind('TextEdit', 'is_drawing_minimap', 36873697);

  bool isDrawingMinimap() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_drawing_minimap, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_minimap_width =
      resolveMethodBind('TextEdit', 'set_minimap_width', 1286410249);

  void setMinimapWidth(int width) {
    final arg0 = malloc<Int64>()..value = width;
    try {
      ptrcallVoid(_mb_set_minimap_width, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_minimap_width =
      resolveMethodBind('TextEdit', 'get_minimap_width', 3905245786);

  int getMinimapWidth() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_minimap_width, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_minimap_visible_lines =
      resolveMethodBind('TextEdit', 'get_minimap_visible_lines', 3905245786);

  int getMinimapVisibleLines() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_minimap_visible_lines, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_add_gutter =
      resolveMethodBind('TextEdit', 'add_gutter', 1025054187);

  void addGutter(int at) {
    final arg0 = malloc<Int64>()..value = at;
    try {
      ptrcallVoid(_mb_add_gutter, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_remove_gutter =
      resolveMethodBind('TextEdit', 'remove_gutter', 1286410249);

  void removeGutter(int gutter) {
    final arg0 = malloc<Int64>()..value = gutter;
    try {
      ptrcallVoid(_mb_remove_gutter, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_gutter_count =
      resolveMethodBind('TextEdit', 'get_gutter_count', 3905245786);

  int getGutterCount() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_gutter_count, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_gutter_name =
      resolveMethodBind('TextEdit', 'set_gutter_name', 501894301);

  void setGutterName(int gutter, String name) {
    final arg0 = malloc<Int64>()..value = gutter;
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg1.cast(), name);
    try {
      ptrcallVoid(_mb_set_gutter_name, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      BuiltinMarshal.destroyGDString(arg1.cast());
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_gutter_name =
      resolveMethodBind('TextEdit', 'get_gutter_name', 844755477);

  String getGutterName(int gutter) {
    final arg0 = malloc<Int64>()..value = gutter;
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_gutter_name, nativePtr, [arg0.cast<Void>()], ret.cast());
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

  static final Pointer<Void> _mb_set_gutter_type =
      resolveMethodBind('TextEdit', 'set_gutter_type', 1088959071);

  void setGutterType(int gutter, int type) {
    final arg0 = malloc<Int64>()..value = gutter;
    final arg1 = malloc<Int64>()..value = type;
    try {
      ptrcallVoid(_mb_set_gutter_type, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_gutter_type =
      resolveMethodBind('TextEdit', 'get_gutter_type', 1159699127);

  int getGutterType(int gutter) {
    final arg0 = malloc<Int64>()..value = gutter;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_gutter_type, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_gutter_width =
      resolveMethodBind('TextEdit', 'set_gutter_width', 3937882851);

  void setGutterWidth(int gutter, int width) {
    final arg0 = malloc<Int64>()..value = gutter;
    final arg1 = malloc<Int64>()..value = width;
    try {
      ptrcallVoid(_mb_set_gutter_width, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_gutter_width =
      resolveMethodBind('TextEdit', 'get_gutter_width', 923996154);

  int getGutterWidth(int gutter) {
    final arg0 = malloc<Int64>()..value = gutter;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_gutter_width, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_gutter_draw =
      resolveMethodBind('TextEdit', 'set_gutter_draw', 300928843);

  void setGutterDraw(int gutter, bool draw) {
    final arg0 = malloc<Int64>()..value = gutter;
    final arg1 = malloc<Uint8>()..value = draw ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_gutter_draw, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_is_gutter_drawn =
      resolveMethodBind('TextEdit', 'is_gutter_drawn', 1116898809);

  bool isGutterDrawn(int gutter) {
    final arg0 = malloc<Int64>()..value = gutter;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_gutter_drawn, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_gutter_clickable =
      resolveMethodBind('TextEdit', 'set_gutter_clickable', 300928843);

  void setGutterClickable(int gutter, bool clickable) {
    final arg0 = malloc<Int64>()..value = gutter;
    final arg1 = malloc<Uint8>()..value = clickable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_gutter_clickable, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_is_gutter_clickable =
      resolveMethodBind('TextEdit', 'is_gutter_clickable', 1116898809);

  bool isGutterClickable(int gutter) {
    final arg0 = malloc<Int64>()..value = gutter;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_gutter_clickable, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_gutter_overwritable =
      resolveMethodBind('TextEdit', 'set_gutter_overwritable', 300928843);

  void setGutterOverwritable(int gutter, bool overwritable) {
    final arg0 = malloc<Int64>()..value = gutter;
    final arg1 = malloc<Uint8>()..value = overwritable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_gutter_overwritable, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_is_gutter_overwritable =
      resolveMethodBind('TextEdit', 'is_gutter_overwritable', 1116898809);

  bool isGutterOverwritable(int gutter) {
    final arg0 = malloc<Int64>()..value = gutter;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_gutter_overwritable, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_merge_gutters =
      resolveMethodBind('TextEdit', 'merge_gutters', 3937882851);

  void mergeGutters(int fromLine, int toLine) {
    final arg0 = malloc<Int64>()..value = fromLine;
    final arg1 = malloc<Int64>()..value = toLine;
    try {
      ptrcallVoid(_mb_merge_gutters, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  // Skipped set_gutter_custom_draw(): an argument type is unsupported.
  static final Pointer<Void> _mb_get_total_gutter_width =
      resolveMethodBind('TextEdit', 'get_total_gutter_width', 3905245786);

  int getTotalGutterWidth() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_total_gutter_width, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  // Skipped set_line_gutter_metadata(): an argument type is unsupported.
  // Skipped get_line_gutter_metadata(): unsupported return type "Variant".
  static final Pointer<Void> _mb_set_line_gutter_text =
      resolveMethodBind('TextEdit', 'set_line_gutter_text', 2285447957);

  void setLineGutterText(int line, int gutter, String text) {
    final arg0 = malloc<Int64>()..value = line;
    final arg1 = malloc<Int64>()..value = gutter;
    final arg2 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg2.cast(), text);
    try {
      ptrcallVoid(_mb_set_line_gutter_text, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      BuiltinMarshal.destroyGDString(arg2.cast());
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_get_line_gutter_text =
      resolveMethodBind('TextEdit', 'get_line_gutter_text', 1391810591);

  String getLineGutterText(int line, int gutter) {
    final arg0 = malloc<Int64>()..value = line;
    final arg1 = malloc<Int64>()..value = gutter;
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_line_gutter_text, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_set_line_gutter_icon =
      resolveMethodBind('TextEdit', 'set_line_gutter_icon', 176101966);

  void setLineGutterIcon(int line, int gutter, Texture2D icon) {
    final arg0 = malloc<Int64>()..value = line;
    final arg1 = malloc<Int64>()..value = gutter;
    final arg2 = malloc<Pointer<Void>>()..value = icon.nativePtr;
    try {
      ptrcallVoid(_mb_set_line_gutter_icon, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_get_line_gutter_icon =
      resolveMethodBind('TextEdit', 'get_line_gutter_icon', 2584904275);

  Texture2D? getLineGutterIcon(int line, int gutter) {
    final arg0 = malloc<Int64>()..value = line;
    final arg1 = malloc<Int64>()..value = gutter;
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_line_gutter_icon, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Texture2D(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_set_line_gutter_item_color =
      resolveMethodBind('TextEdit', 'set_line_gutter_item_color', 3733378741);

  void setLineGutterItemColor(int line, int gutter, Color color) {
    final arg0 = malloc<Int64>()..value = line;
    final arg1 = malloc<Int64>()..value = gutter;
    final arg2 = malloc<Uint8>(Color.nativeSize);
    color.writeTo(arg2, 0);
    try {
      ptrcallVoid(_mb_set_line_gutter_item_color, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_get_line_gutter_item_color =
      resolveMethodBind('TextEdit', 'get_line_gutter_item_color', 2165839948);

  Color getLineGutterItemColor(int line, int gutter) {
    final arg0 = malloc<Int64>()..value = line;
    final arg1 = malloc<Int64>()..value = gutter;
    try {
      final ret = malloc<Uint8>(Color.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_line_gutter_item_color, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return Color.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_set_line_gutter_clickable =
      resolveMethodBind('TextEdit', 'set_line_gutter_clickable', 1383440665);

  void setLineGutterClickable(int line, int gutter, bool clickable) {
    final arg0 = malloc<Int64>()..value = line;
    final arg1 = malloc<Int64>()..value = gutter;
    final arg2 = malloc<Uint8>()..value = clickable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_line_gutter_clickable, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_is_line_gutter_clickable =
      resolveMethodBind('TextEdit', 'is_line_gutter_clickable', 2522259332);

  bool isLineGutterClickable(int line, int gutter) {
    final arg0 = malloc<Int64>()..value = line;
    final arg1 = malloc<Int64>()..value = gutter;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_line_gutter_clickable, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_set_line_background_color =
      resolveMethodBind('TextEdit', 'set_line_background_color', 2878471219);

  void setLineBackgroundColor(int line, Color color) {
    final arg0 = malloc<Int64>()..value = line;
    final arg1 = malloc<Uint8>(Color.nativeSize);
    color.writeTo(arg1, 0);
    try {
      ptrcallVoid(_mb_set_line_background_color, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_line_background_color =
      resolveMethodBind('TextEdit', 'get_line_background_color', 3457211756);

  Color getLineBackgroundColor(int line) {
    final arg0 = malloc<Int64>()..value = line;
    try {
      final ret = malloc<Uint8>(Color.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_line_background_color, nativePtr, [arg0.cast<Void>()], ret.cast());
        return Color.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_syntax_highlighter =
      resolveMethodBind('TextEdit', 'set_syntax_highlighter', 2765644541);

  void setSyntaxHighlighter(SyntaxHighlighter syntaxHighlighter) {
    final arg0 = malloc<Pointer<Void>>()..value = syntaxHighlighter.nativePtr;
    try {
      ptrcallVoid(_mb_set_syntax_highlighter, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_syntax_highlighter =
      resolveMethodBind('TextEdit', 'get_syntax_highlighter', 2721131626);

  SyntaxHighlighter? getSyntaxHighlighter() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_syntax_highlighter, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : SyntaxHighlighter(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_highlight_current_line =
      resolveMethodBind('TextEdit', 'set_highlight_current_line', 2586408642);

  void setHighlightCurrentLine(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_highlight_current_line, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_highlight_current_line_enabled =
      resolveMethodBind('TextEdit', 'is_highlight_current_line_enabled', 36873697);

  bool isHighlightCurrentLineEnabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_highlight_current_line_enabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_highlight_all_occurrences =
      resolveMethodBind('TextEdit', 'set_highlight_all_occurrences', 2586408642);

  void setHighlightAllOccurrences(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_highlight_all_occurrences, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_highlight_all_occurrences_enabled =
      resolveMethodBind('TextEdit', 'is_highlight_all_occurrences_enabled', 36873697);

  bool isHighlightAllOccurrencesEnabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_highlight_all_occurrences_enabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_draw_control_chars =
      resolveMethodBind('TextEdit', 'get_draw_control_chars', 36873697);

  bool getDrawControlChars() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_draw_control_chars, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_draw_control_chars =
      resolveMethodBind('TextEdit', 'set_draw_control_chars', 2586408642);

  void setDrawControlChars(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_draw_control_chars, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_draw_tabs =
      resolveMethodBind('TextEdit', 'set_draw_tabs', 2586408642);

  void setDrawTabs(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_draw_tabs, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_drawing_tabs =
      resolveMethodBind('TextEdit', 'is_drawing_tabs', 36873697);

  bool isDrawingTabs() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_drawing_tabs, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_draw_spaces =
      resolveMethodBind('TextEdit', 'set_draw_spaces', 2586408642);

  void setDrawSpaces(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_draw_spaces, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_drawing_spaces =
      resolveMethodBind('TextEdit', 'is_drawing_spaces', 36873697);

  bool isDrawingSpaces() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_drawing_spaces, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_menu =
      resolveMethodBind('TextEdit', 'get_menu', 229722558);

  PopupMenu? getMenu() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_menu, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : PopupMenu(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_is_menu_visible =
      resolveMethodBind('TextEdit', 'is_menu_visible', 36873697);

  bool isMenuVisible() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_menu_visible, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_menu_option =
      resolveMethodBind('TextEdit', 'menu_option', 1286410249);

  void menuOption(int option) {
    final arg0 = malloc<Int64>()..value = option;
    try {
      ptrcallVoid(_mb_menu_option, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_adjust_carets_after_edit =
      resolveMethodBind('TextEdit', 'adjust_carets_after_edit', 1770277138);

  void adjustCaretsAfterEdit(int caret, int fromLine, int fromCol, int toLine, int toCol) {
    final arg0 = malloc<Int64>()..value = caret;
    final arg1 = malloc<Int64>()..value = fromLine;
    final arg2 = malloc<Int64>()..value = fromCol;
    final arg3 = malloc<Int64>()..value = toLine;
    final arg4 = malloc<Int64>()..value = toCol;
    try {
      ptrcallVoid(_mb_adjust_carets_after_edit, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>(), arg3.cast<Void>(), arg4.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
      malloc.free(arg3);
      malloc.free(arg4);
    }
  }

  // Skipped get_caret_index_edit_order(): unsupported return type "PackedInt32Array".
  static final Pointer<Void> _mb_get_selection_line =
      resolveMethodBind('TextEdit', 'get_selection_line', 1591665591);

  int getSelectionLine(int caretIndex) {
    final arg0 = malloc<Int64>()..value = caretIndex;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_selection_line, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_selection_column =
      resolveMethodBind('TextEdit', 'get_selection_column', 1591665591);

  int getSelectionColumn(int caretIndex) {
    final arg0 = malloc<Int64>()..value = caretIndex;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_selection_column, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

}
