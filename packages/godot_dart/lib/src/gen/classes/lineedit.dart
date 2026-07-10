// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class LineEdit extends Control {
  LineEdit(super.nativePtr);

  static final Pointer<Void> _mb_has_ime_text =
      resolveMethodBind('LineEdit', 'has_ime_text', 36873697);

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
      resolveMethodBind('LineEdit', 'cancel_ime', 3218959716);

  void cancelIme() {
    try {
      ptrcallVoid(_mb_cancel_ime, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_apply_ime =
      resolveMethodBind('LineEdit', 'apply_ime', 3218959716);

  void applyIme() {
    try {
      ptrcallVoid(_mb_apply_ime, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_horizontal_alignment =
      resolveMethodBind('LineEdit', 'set_horizontal_alignment', 2312603777);

  void setHorizontalAlignment(int alignment) {
    final arg0 = malloc<Int64>()..value = alignment;
    try {
      ptrcallVoid(_mb_set_horizontal_alignment, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_horizontal_alignment =
      resolveMethodBind('LineEdit', 'get_horizontal_alignment', 341400642);

  int getHorizontalAlignment() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_horizontal_alignment, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_edit =
      resolveMethodBind('LineEdit', 'edit', 107499316);

  void edit(bool hideFocus) {
    final arg0 = malloc<Uint8>()..value = hideFocus ? 1 : 0;
    try {
      ptrcallVoid(_mb_edit, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_unedit =
      resolveMethodBind('LineEdit', 'unedit', 3218959716);

  void unedit() {
    try {
      ptrcallVoid(_mb_unedit, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_is_editing =
      resolveMethodBind('LineEdit', 'is_editing', 36873697);

  bool isEditing() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_editing, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_keep_editing_on_text_submit =
      resolveMethodBind('LineEdit', 'set_keep_editing_on_text_submit', 2586408642);

  void setKeepEditingOnTextSubmit(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_keep_editing_on_text_submit, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_editing_kept_on_text_submit =
      resolveMethodBind('LineEdit', 'is_editing_kept_on_text_submit', 36873697);

  bool isEditingKeptOnTextSubmit() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_editing_kept_on_text_submit, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_clear =
      resolveMethodBind('LineEdit', 'clear', 3218959716);

  void clear() {
    try {
      ptrcallVoid(_mb_clear, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_select =
      resolveMethodBind('LineEdit', 'select', 1328111411);

  void select(int from, int to) {
    final arg0 = malloc<Int64>()..value = from;
    final arg1 = malloc<Int64>()..value = to;
    try {
      ptrcallVoid(_mb_select, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_select_all =
      resolveMethodBind('LineEdit', 'select_all', 3218959716);

  void selectAll() {
    try {
      ptrcallVoid(_mb_select_all, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_deselect =
      resolveMethodBind('LineEdit', 'deselect', 3218959716);

  void deselect() {
    try {
      ptrcallVoid(_mb_deselect, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_has_undo =
      resolveMethodBind('LineEdit', 'has_undo', 36873697);

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
      resolveMethodBind('LineEdit', 'has_redo', 36873697);

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

  static final Pointer<Void> _mb_has_selection =
      resolveMethodBind('LineEdit', 'has_selection', 36873697);

  bool hasSelection() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_has_selection, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_selected_text =
      resolveMethodBind('LineEdit', 'get_selected_text', 2841200299);

  String getSelectedText() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_selected_text, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_selection_from_column =
      resolveMethodBind('LineEdit', 'get_selection_from_column', 3905245786);

  int getSelectionFromColumn() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_selection_from_column, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_selection_to_column =
      resolveMethodBind('LineEdit', 'get_selection_to_column', 3905245786);

  int getSelectionToColumn() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_selection_to_column, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_text =
      resolveMethodBind('LineEdit', 'set_text', 83702148);

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
      resolveMethodBind('LineEdit', 'get_text', 201670096);

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

  static final Pointer<Void> _mb_get_draw_control_chars =
      resolveMethodBind('LineEdit', 'get_draw_control_chars', 36873697);

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
      resolveMethodBind('LineEdit', 'set_draw_control_chars', 2586408642);

  void setDrawControlChars(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_draw_control_chars, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_text_direction =
      resolveMethodBind('LineEdit', 'set_text_direction', 119160795);

  void setTextDirection(int direction) {
    final arg0 = malloc<Int64>()..value = direction;
    try {
      ptrcallVoid(_mb_set_text_direction, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_text_direction =
      resolveMethodBind('LineEdit', 'get_text_direction', 797257663);

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
      resolveMethodBind('LineEdit', 'set_language', 83702148);

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
      resolveMethodBind('LineEdit', 'get_language', 201670096);

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
      resolveMethodBind('LineEdit', 'set_structured_text_bidi_override', 55961453);

  void setStructuredTextBidiOverride(int parser) {
    final arg0 = malloc<Int64>()..value = parser;
    try {
      ptrcallVoid(_mb_set_structured_text_bidi_override, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_structured_text_bidi_override =
      resolveMethodBind('LineEdit', 'get_structured_text_bidi_override', 3385126229);

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
  static final Pointer<Void> _mb_set_placeholder =
      resolveMethodBind('LineEdit', 'set_placeholder', 83702148);

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
      resolveMethodBind('LineEdit', 'get_placeholder', 201670096);

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

  static final Pointer<Void> _mb_set_caret_column =
      resolveMethodBind('LineEdit', 'set_caret_column', 1286410249);

  void setCaretColumn(int position) {
    final arg0 = malloc<Int64>()..value = position;
    try {
      ptrcallVoid(_mb_set_caret_column, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_caret_column =
      resolveMethodBind('LineEdit', 'get_caret_column', 3905245786);

  int getCaretColumn() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_caret_column, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_next_composite_character_column =
      resolveMethodBind('LineEdit', 'get_next_composite_character_column', 923996154);

  int getNextCompositeCharacterColumn(int column) {
    final arg0 = malloc<Int64>()..value = column;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_next_composite_character_column, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_previous_composite_character_column =
      resolveMethodBind('LineEdit', 'get_previous_composite_character_column', 923996154);

  int getPreviousCompositeCharacterColumn(int column) {
    final arg0 = malloc<Int64>()..value = column;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_previous_composite_character_column, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_scroll_offset =
      resolveMethodBind('LineEdit', 'get_scroll_offset', 1740695150);

  double getScrollOffset() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_scroll_offset, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_expand_to_text_length_enabled =
      resolveMethodBind('LineEdit', 'set_expand_to_text_length_enabled', 2586408642);

  void setExpandToTextLengthEnabled(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_expand_to_text_length_enabled, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_expand_to_text_length_enabled =
      resolveMethodBind('LineEdit', 'is_expand_to_text_length_enabled', 36873697);

  bool isExpandToTextLengthEnabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_expand_to_text_length_enabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_caret_blink_enabled =
      resolveMethodBind('LineEdit', 'set_caret_blink_enabled', 2586408642);

  void setCaretBlinkEnabled(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_caret_blink_enabled, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_caret_blink_enabled =
      resolveMethodBind('LineEdit', 'is_caret_blink_enabled', 36873697);

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

  static final Pointer<Void> _mb_set_caret_mid_grapheme_enabled =
      resolveMethodBind('LineEdit', 'set_caret_mid_grapheme_enabled', 2586408642);

  void setCaretMidGraphemeEnabled(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_caret_mid_grapheme_enabled, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_caret_mid_grapheme_enabled =
      resolveMethodBind('LineEdit', 'is_caret_mid_grapheme_enabled', 36873697);

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

  static final Pointer<Void> _mb_set_caret_force_displayed =
      resolveMethodBind('LineEdit', 'set_caret_force_displayed', 2586408642);

  void setCaretForceDisplayed(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_caret_force_displayed, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_caret_force_displayed =
      resolveMethodBind('LineEdit', 'is_caret_force_displayed', 36873697);

  bool isCaretForceDisplayed() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_caret_force_displayed, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_caret_blink_interval =
      resolveMethodBind('LineEdit', 'set_caret_blink_interval', 373806689);

  void setCaretBlinkInterval(double interval) {
    final arg0 = malloc<Double>()..value = interval;
    try {
      ptrcallVoid(_mb_set_caret_blink_interval, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_caret_blink_interval =
      resolveMethodBind('LineEdit', 'get_caret_blink_interval', 1740695150);

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

  static final Pointer<Void> _mb_set_max_length =
      resolveMethodBind('LineEdit', 'set_max_length', 1286410249);

  void setMaxLength(int chars) {
    final arg0 = malloc<Int64>()..value = chars;
    try {
      ptrcallVoid(_mb_set_max_length, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_max_length =
      resolveMethodBind('LineEdit', 'get_max_length', 3905245786);

  int getMaxLength() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_max_length, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_insert_text_at_caret =
      resolveMethodBind('LineEdit', 'insert_text_at_caret', 83702148);

  void insertTextAtCaret(String text) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), text);
    try {
      ptrcallVoid(_mb_insert_text_at_caret, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_delete_char_at_caret =
      resolveMethodBind('LineEdit', 'delete_char_at_caret', 3218959716);

  void deleteCharAtCaret() {
    try {
      ptrcallVoid(_mb_delete_char_at_caret, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_delete_text =
      resolveMethodBind('LineEdit', 'delete_text', 3937882851);

  void deleteText(int fromColumn, int toColumn) {
    final arg0 = malloc<Int64>()..value = fromColumn;
    final arg1 = malloc<Int64>()..value = toColumn;
    try {
      ptrcallVoid(_mb_delete_text, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_set_editable =
      resolveMethodBind('LineEdit', 'set_editable', 2586408642);

  void setEditable(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_editable, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_editable =
      resolveMethodBind('LineEdit', 'is_editable', 36873697);

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

  static final Pointer<Void> _mb_set_secret =
      resolveMethodBind('LineEdit', 'set_secret', 2586408642);

  void setSecret(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_secret, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_secret =
      resolveMethodBind('LineEdit', 'is_secret', 36873697);

  bool isSecret() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_secret, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_secret_character =
      resolveMethodBind('LineEdit', 'set_secret_character', 83702148);

  void setSecretCharacter(String character) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), character);
    try {
      ptrcallVoid(_mb_set_secret_character, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_secret_character =
      resolveMethodBind('LineEdit', 'get_secret_character', 201670096);

  String getSecretCharacter() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_secret_character, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_menu_option =
      resolveMethodBind('LineEdit', 'menu_option', 1286410249);

  void menuOption(int option) {
    final arg0 = malloc<Int64>()..value = option;
    try {
      ptrcallVoid(_mb_menu_option, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_menu =
      resolveMethodBind('LineEdit', 'get_menu', 229722558);

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
      resolveMethodBind('LineEdit', 'is_menu_visible', 36873697);

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

  static final Pointer<Void> _mb_set_context_menu_enabled =
      resolveMethodBind('LineEdit', 'set_context_menu_enabled', 2586408642);

  void setContextMenuEnabled(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_context_menu_enabled, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_context_menu_enabled =
      resolveMethodBind('LineEdit', 'is_context_menu_enabled', 2240911060);

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
      resolveMethodBind('LineEdit', 'set_emoji_menu_enabled', 2586408642);

  void setEmojiMenuEnabled(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_emoji_menu_enabled, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_emoji_menu_enabled =
      resolveMethodBind('LineEdit', 'is_emoji_menu_enabled', 36873697);

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
      resolveMethodBind('LineEdit', 'set_backspace_deletes_composite_character_enabled', 2586408642);

  void setBackspaceDeletesCompositeCharacterEnabled(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_backspace_deletes_composite_character_enabled, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_backspace_deletes_composite_character_enabled =
      resolveMethodBind('LineEdit', 'is_backspace_deletes_composite_character_enabled', 36873697);

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

  static final Pointer<Void> _mb_set_virtual_keyboard_enabled =
      resolveMethodBind('LineEdit', 'set_virtual_keyboard_enabled', 2586408642);

  void setVirtualKeyboardEnabled(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_virtual_keyboard_enabled, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_virtual_keyboard_enabled =
      resolveMethodBind('LineEdit', 'is_virtual_keyboard_enabled', 36873697);

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
      resolveMethodBind('LineEdit', 'set_virtual_keyboard_show_on_focus', 2586408642);

  void setVirtualKeyboardShowOnFocus(bool showOnFocus) {
    final arg0 = malloc<Uint8>()..value = showOnFocus ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_virtual_keyboard_show_on_focus, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_virtual_keyboard_show_on_focus =
      resolveMethodBind('LineEdit', 'get_virtual_keyboard_show_on_focus', 36873697);

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

  static final Pointer<Void> _mb_set_virtual_keyboard_type =
      resolveMethodBind('LineEdit', 'set_virtual_keyboard_type', 2696893573);

  void setVirtualKeyboardType(int type) {
    final arg0 = malloc<Int64>()..value = type;
    try {
      ptrcallVoid(_mb_set_virtual_keyboard_type, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_virtual_keyboard_type =
      resolveMethodBind('LineEdit', 'get_virtual_keyboard_type', 1928699316);

  int getVirtualKeyboardType() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_virtual_keyboard_type, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_clear_button_enabled =
      resolveMethodBind('LineEdit', 'set_clear_button_enabled', 2586408642);

  void setClearButtonEnabled(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_clear_button_enabled, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_clear_button_enabled =
      resolveMethodBind('LineEdit', 'is_clear_button_enabled', 36873697);

  bool isClearButtonEnabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_clear_button_enabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_shortcut_keys_enabled =
      resolveMethodBind('LineEdit', 'set_shortcut_keys_enabled', 2586408642);

  void setShortcutKeysEnabled(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_shortcut_keys_enabled, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_shortcut_keys_enabled =
      resolveMethodBind('LineEdit', 'is_shortcut_keys_enabled', 36873697);

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

  static final Pointer<Void> _mb_set_middle_mouse_paste_enabled =
      resolveMethodBind('LineEdit', 'set_middle_mouse_paste_enabled', 2586408642);

  void setMiddleMousePasteEnabled(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_middle_mouse_paste_enabled, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_middle_mouse_paste_enabled =
      resolveMethodBind('LineEdit', 'is_middle_mouse_paste_enabled', 36873697);

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

  static final Pointer<Void> _mb_set_selecting_enabled =
      resolveMethodBind('LineEdit', 'set_selecting_enabled', 2586408642);

  void setSelectingEnabled(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_selecting_enabled, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_selecting_enabled =
      resolveMethodBind('LineEdit', 'is_selecting_enabled', 36873697);

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
      resolveMethodBind('LineEdit', 'set_deselect_on_focus_loss_enabled', 2586408642);

  void setDeselectOnFocusLossEnabled(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_deselect_on_focus_loss_enabled, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_deselect_on_focus_loss_enabled =
      resolveMethodBind('LineEdit', 'is_deselect_on_focus_loss_enabled', 36873697);

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
      resolveMethodBind('LineEdit', 'set_drag_and_drop_selection_enabled', 2586408642);

  void setDragAndDropSelectionEnabled(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_drag_and_drop_selection_enabled, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_drag_and_drop_selection_enabled =
      resolveMethodBind('LineEdit', 'is_drag_and_drop_selection_enabled', 36873697);

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

  static final Pointer<Void> _mb_set_right_icon =
      resolveMethodBind('LineEdit', 'set_right_icon', 4051416890);

  void setRightIcon(Texture2D icon) {
    final arg0 = malloc<Pointer<Void>>()..value = icon.nativePtr;
    try {
      ptrcallVoid(_mb_set_right_icon, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_right_icon =
      resolveMethodBind('LineEdit', 'get_right_icon', 255860311);

  Texture2D? getRightIcon() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_right_icon, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Texture2D(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_icon_expand_mode =
      resolveMethodBind('LineEdit', 'set_icon_expand_mode', 3019903192);

  void setIconExpandMode(int mode) {
    final arg0 = malloc<Int64>()..value = mode;
    try {
      ptrcallVoid(_mb_set_icon_expand_mode, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_icon_expand_mode =
      resolveMethodBind('LineEdit', 'get_icon_expand_mode', 3273584435);

  int getIconExpandMode() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_icon_expand_mode, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_right_icon_scale =
      resolveMethodBind('LineEdit', 'set_right_icon_scale', 373806689);

  void setRightIconScale(double scale) {
    final arg0 = malloc<Double>()..value = scale;
    try {
      ptrcallVoid(_mb_set_right_icon_scale, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_right_icon_scale =
      resolveMethodBind('LineEdit', 'get_right_icon_scale', 1740695150);

  double getRightIconScale() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_right_icon_scale, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_flat =
      resolveMethodBind('LineEdit', 'set_flat', 2586408642);

  void setFlat(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_flat, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_flat =
      resolveMethodBind('LineEdit', 'is_flat', 36873697);

  bool isFlat() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_flat, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_select_all_on_focus =
      resolveMethodBind('LineEdit', 'set_select_all_on_focus', 2586408642);

  void setSelectAllOnFocus(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_select_all_on_focus, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_select_all_on_focus =
      resolveMethodBind('LineEdit', 'is_select_all_on_focus', 36873697);

  bool isSelectAllOnFocus() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_select_all_on_focus, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
