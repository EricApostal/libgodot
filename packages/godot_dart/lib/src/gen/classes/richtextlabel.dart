// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class RichTextLabel extends Control {
  RichTextLabel(super.nativePtr);

  static final Pointer<Void> _mb_get_parsed_text =
      resolveMethodBind('RichTextLabel', 'get_parsed_text', 201670096);

  String getParsedText() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_parsed_text, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_add_text =
      resolveMethodBind('RichTextLabel', 'add_text', 83702148);

  void addText(String text) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), text);
    try {
      ptrcallVoid(_mb_add_text, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_text =
      resolveMethodBind('RichTextLabel', 'set_text', 83702148);

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

  static final Pointer<Void> _mb_add_hr =
      resolveMethodBind('RichTextLabel', 'add_hr', 16816895);

  void addHr(int width, int height, Color color, int alignment, bool widthInPercent, bool heightInPercent) {
    final arg0 = malloc<Int64>()..value = width;
    final arg1 = malloc<Int64>()..value = height;
    final arg2 = malloc<Uint8>(Color.nativeSize);
    color.writeTo(arg2, 0);
    final arg3 = malloc<Int64>()..value = alignment;
    final arg4 = malloc<Uint8>()..value = widthInPercent ? 1 : 0;
    final arg5 = malloc<Uint8>()..value = heightInPercent ? 1 : 0;
    try {
      ptrcallVoid(_mb_add_hr, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>(), arg3.cast<Void>(), arg4.cast<Void>(), arg5.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
      malloc.free(arg3);
      malloc.free(arg4);
      malloc.free(arg5);
    }
  }

  // Skipped add_image(): an argument type is unsupported.
  // Skipped update_image(): an argument type is unsupported.
  static final Pointer<Void> _mb_newline =
      resolveMethodBind('RichTextLabel', 'newline', 3218959716);

  void newline() {
    try {
      ptrcallVoid(_mb_newline, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_remove_paragraph =
      resolveMethodBind('RichTextLabel', 'remove_paragraph', 3262369265);

  bool removeParagraph(int paragraph, bool noInvalidate) {
    final arg0 = malloc<Int64>()..value = paragraph;
    final arg1 = malloc<Uint8>()..value = noInvalidate ? 1 : 0;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_remove_paragraph, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_invalidate_paragraph =
      resolveMethodBind('RichTextLabel', 'invalidate_paragraph', 3067735520);

  bool invalidateParagraph(int paragraph) {
    final arg0 = malloc<Int64>()..value = paragraph;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_invalidate_paragraph, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_push_font =
      resolveMethodBind('RichTextLabel', 'push_font', 2347424842);

  void pushFont(Font font, int fontSize) {
    final arg0 = malloc<Pointer<Void>>()..value = font.nativePtr;
    final arg1 = malloc<Int64>()..value = fontSize;
    try {
      ptrcallVoid(_mb_push_font, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_push_font_size =
      resolveMethodBind('RichTextLabel', 'push_font_size', 1286410249);

  void pushFontSize(int fontSize) {
    final arg0 = malloc<Int64>()..value = fontSize;
    try {
      ptrcallVoid(_mb_push_font_size, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_push_normal =
      resolveMethodBind('RichTextLabel', 'push_normal', 3218959716);

  void pushNormal() {
    try {
      ptrcallVoid(_mb_push_normal, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_push_bold =
      resolveMethodBind('RichTextLabel', 'push_bold', 3218959716);

  void pushBold() {
    try {
      ptrcallVoid(_mb_push_bold, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_push_bold_italics =
      resolveMethodBind('RichTextLabel', 'push_bold_italics', 3218959716);

  void pushBoldItalics() {
    try {
      ptrcallVoid(_mb_push_bold_italics, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_push_italics =
      resolveMethodBind('RichTextLabel', 'push_italics', 3218959716);

  void pushItalics() {
    try {
      ptrcallVoid(_mb_push_italics, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_push_mono =
      resolveMethodBind('RichTextLabel', 'push_mono', 3218959716);

  void pushMono() {
    try {
      ptrcallVoid(_mb_push_mono, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_push_color =
      resolveMethodBind('RichTextLabel', 'push_color', 2920490490);

  void pushColor(Color color) {
    final arg0 = malloc<Uint8>(Color.nativeSize);
    color.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_push_color, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_push_outline_size =
      resolveMethodBind('RichTextLabel', 'push_outline_size', 1286410249);

  void pushOutlineSize(int outlineSize) {
    final arg0 = malloc<Int64>()..value = outlineSize;
    try {
      ptrcallVoid(_mb_push_outline_size, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_push_outline_color =
      resolveMethodBind('RichTextLabel', 'push_outline_color', 2920490490);

  void pushOutlineColor(Color color) {
    final arg0 = malloc<Uint8>(Color.nativeSize);
    color.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_push_outline_color, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  // Skipped push_paragraph(): an argument type is unsupported.
  static final Pointer<Void> _mb_push_indent =
      resolveMethodBind('RichTextLabel', 'push_indent', 1286410249);

  void pushIndent(int level) {
    final arg0 = malloc<Int64>()..value = level;
    try {
      ptrcallVoid(_mb_push_indent, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_push_list =
      resolveMethodBind('RichTextLabel', 'push_list', 3017143144);

  void pushList(int level, int type, bool capitalize, String bullet) {
    final arg0 = malloc<Int64>()..value = level;
    final arg1 = malloc<Int64>()..value = type;
    final arg2 = malloc<Uint8>()..value = capitalize ? 1 : 0;
    final arg3 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg3.cast(), bullet);
    try {
      ptrcallVoid(_mb_push_list, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>(), arg3.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
      BuiltinMarshal.destroyGDString(arg3.cast());
      malloc.free(arg3);
    }
  }

  // Skipped push_meta(): an argument type is unsupported.
  static final Pointer<Void> _mb_push_hint =
      resolveMethodBind('RichTextLabel', 'push_hint', 83702148);

  void pushHint(String description) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), description);
    try {
      ptrcallVoid(_mb_push_hint, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_push_language =
      resolveMethodBind('RichTextLabel', 'push_language', 83702148);

  void pushLanguage(String language) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), language);
    try {
      ptrcallVoid(_mb_push_language, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_push_underline =
      resolveMethodBind('RichTextLabel', 'push_underline', 1458098034);

  void pushUnderline(Color color) {
    final arg0 = malloc<Uint8>(Color.nativeSize);
    color.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_push_underline, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_push_strikethrough =
      resolveMethodBind('RichTextLabel', 'push_strikethrough', 1458098034);

  void pushStrikethrough(Color color) {
    final arg0 = malloc<Uint8>(Color.nativeSize);
    color.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_push_strikethrough, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_push_table =
      resolveMethodBind('RichTextLabel', 'push_table', 3426862026);

  void pushTable(int columns, int inlineAlign, int alignToRow, String name) {
    final arg0 = malloc<Int64>()..value = columns;
    final arg1 = malloc<Int64>()..value = inlineAlign;
    final arg2 = malloc<Int64>()..value = alignToRow;
    final arg3 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg3.cast(), name);
    try {
      ptrcallVoid(_mb_push_table, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>(), arg3.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
      BuiltinMarshal.destroyGDString(arg3.cast());
      malloc.free(arg3);
    }
  }

  static final Pointer<Void> _mb_push_dropcap =
      resolveMethodBind('RichTextLabel', 'push_dropcap', 4061635501);

  void pushDropcap(String string, Font font, int size, Rect2 dropcapMargins, Color color, int outlineSize, Color outlineColor) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), string);
    final arg1 = malloc<Pointer<Void>>()..value = font.nativePtr;
    final arg2 = malloc<Int64>()..value = size;
    final arg3 = malloc<Uint8>(Rect2.nativeSize);
    dropcapMargins.writeTo(arg3, 0);
    final arg4 = malloc<Uint8>(Color.nativeSize);
    color.writeTo(arg4, 0);
    final arg5 = malloc<Int64>()..value = outlineSize;
    final arg6 = malloc<Uint8>(Color.nativeSize);
    outlineColor.writeTo(arg6, 0);
    try {
      ptrcallVoid(_mb_push_dropcap, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>(), arg3.cast<Void>(), arg4.cast<Void>(), arg5.cast<Void>(), arg6.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
      malloc.free(arg3);
      malloc.free(arg4);
      malloc.free(arg5);
      malloc.free(arg6);
    }
  }

  static final Pointer<Void> _mb_set_table_column_expand =
      resolveMethodBind('RichTextLabel', 'set_table_column_expand', 117236061);

  void setTableColumnExpand(int column, bool expand, int ratio, bool shrink) {
    final arg0 = malloc<Int64>()..value = column;
    final arg1 = malloc<Uint8>()..value = expand ? 1 : 0;
    final arg2 = malloc<Int64>()..value = ratio;
    final arg3 = malloc<Uint8>()..value = shrink ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_table_column_expand, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>(), arg3.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
      malloc.free(arg3);
    }
  }

  static final Pointer<Void> _mb_set_table_column_name =
      resolveMethodBind('RichTextLabel', 'set_table_column_name', 501894301);

  void setTableColumnName(int column, String name) {
    final arg0 = malloc<Int64>()..value = column;
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg1.cast(), name);
    try {
      ptrcallVoid(_mb_set_table_column_name, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      BuiltinMarshal.destroyGDString(arg1.cast());
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_set_cell_row_background_color =
      resolveMethodBind('RichTextLabel', 'set_cell_row_background_color', 3465483165);

  void setCellRowBackgroundColor(Color oddRowBg, Color evenRowBg) {
    final arg0 = malloc<Uint8>(Color.nativeSize);
    oddRowBg.writeTo(arg0, 0);
    final arg1 = malloc<Uint8>(Color.nativeSize);
    evenRowBg.writeTo(arg1, 0);
    try {
      ptrcallVoid(_mb_set_cell_row_background_color, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_set_cell_border_color =
      resolveMethodBind('RichTextLabel', 'set_cell_border_color', 2920490490);

  void setCellBorderColor(Color color) {
    final arg0 = malloc<Uint8>(Color.nativeSize);
    color.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_cell_border_color, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_cell_size_override =
      resolveMethodBind('RichTextLabel', 'set_cell_size_override', 3108078480);

  void setCellSizeOverride(Vector2 minSize, Vector2 maxSize) {
    final arg0 = malloc<Uint8>(Vector2.nativeSize);
    minSize.writeTo(arg0, 0);
    final arg1 = malloc<Uint8>(Vector2.nativeSize);
    maxSize.writeTo(arg1, 0);
    try {
      ptrcallVoid(_mb_set_cell_size_override, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_set_cell_padding =
      resolveMethodBind('RichTextLabel', 'set_cell_padding', 2046264180);

  void setCellPadding(Rect2 padding) {
    final arg0 = malloc<Uint8>(Rect2.nativeSize);
    padding.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_cell_padding, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_push_cell =
      resolveMethodBind('RichTextLabel', 'push_cell', 3218959716);

  void pushCell() {
    try {
      ptrcallVoid(_mb_push_cell, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_push_fgcolor =
      resolveMethodBind('RichTextLabel', 'push_fgcolor', 2920490490);

  void pushFgcolor(Color fgcolor) {
    final arg0 = malloc<Uint8>(Color.nativeSize);
    fgcolor.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_push_fgcolor, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_push_bgcolor =
      resolveMethodBind('RichTextLabel', 'push_bgcolor', 2920490490);

  void pushBgcolor(Color bgcolor) {
    final arg0 = malloc<Uint8>(Color.nativeSize);
    bgcolor.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_push_bgcolor, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  // Skipped push_customfx(): an argument type is unsupported.
  static final Pointer<Void> _mb_push_context =
      resolveMethodBind('RichTextLabel', 'push_context', 3218959716);

  void pushContext() {
    try {
      ptrcallVoid(_mb_push_context, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_pop_context =
      resolveMethodBind('RichTextLabel', 'pop_context', 3218959716);

  void popContext() {
    try {
      ptrcallVoid(_mb_pop_context, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_pop =
      resolveMethodBind('RichTextLabel', 'pop', 3218959716);

  void pop() {
    try {
      ptrcallVoid(_mb_pop, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_pop_all =
      resolveMethodBind('RichTextLabel', 'pop_all', 3218959716);

  void popAll() {
    try {
      ptrcallVoid(_mb_pop_all, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_clear =
      resolveMethodBind('RichTextLabel', 'clear', 3218959716);

  void clear() {
    try {
      ptrcallVoid(_mb_clear, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_structured_text_bidi_override =
      resolveMethodBind('RichTextLabel', 'set_structured_text_bidi_override', 55961453);

  void setStructuredTextBidiOverride(int parser) {
    final arg0 = malloc<Int64>()..value = parser;
    try {
      ptrcallVoid(_mb_set_structured_text_bidi_override, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_structured_text_bidi_override =
      resolveMethodBind('RichTextLabel', 'get_structured_text_bidi_override', 3385126229);

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
  static final Pointer<Void> _mb_set_text_direction =
      resolveMethodBind('RichTextLabel', 'set_text_direction', 119160795);

  void setTextDirection(int direction) {
    final arg0 = malloc<Int64>()..value = direction;
    try {
      ptrcallVoid(_mb_set_text_direction, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_text_direction =
      resolveMethodBind('RichTextLabel', 'get_text_direction', 797257663);

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
      resolveMethodBind('RichTextLabel', 'set_language', 83702148);

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
      resolveMethodBind('RichTextLabel', 'get_language', 201670096);

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

  static final Pointer<Void> _mb_set_horizontal_alignment =
      resolveMethodBind('RichTextLabel', 'set_horizontal_alignment', 2312603777);

  void setHorizontalAlignment(int alignment) {
    final arg0 = malloc<Int64>()..value = alignment;
    try {
      ptrcallVoid(_mb_set_horizontal_alignment, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_horizontal_alignment =
      resolveMethodBind('RichTextLabel', 'get_horizontal_alignment', 341400642);

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

  static final Pointer<Void> _mb_set_vertical_alignment =
      resolveMethodBind('RichTextLabel', 'set_vertical_alignment', 1796458609);

  void setVerticalAlignment(int alignment) {
    final arg0 = malloc<Int64>()..value = alignment;
    try {
      ptrcallVoid(_mb_set_vertical_alignment, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_vertical_alignment =
      resolveMethodBind('RichTextLabel', 'get_vertical_alignment', 3274884059);

  int getVerticalAlignment() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_vertical_alignment, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_justification_flags =
      resolveMethodBind('RichTextLabel', 'set_justification_flags', 2877345813);

  void setJustificationFlags(int justificationFlags) {
    final arg0 = malloc<Int64>()..value = justificationFlags;
    try {
      ptrcallVoid(_mb_set_justification_flags, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_justification_flags =
      resolveMethodBind('RichTextLabel', 'get_justification_flags', 1583363614);

  int getJustificationFlags() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_justification_flags, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  // Skipped set_tab_stops(): an argument type is unsupported.
  // Skipped get_tab_stops(): unsupported return type "PackedFloat32Array".
  static final Pointer<Void> _mb_set_autowrap_mode =
      resolveMethodBind('RichTextLabel', 'set_autowrap_mode', 3289138044);

  void setAutowrapMode(int autowrapMode) {
    final arg0 = malloc<Int64>()..value = autowrapMode;
    try {
      ptrcallVoid(_mb_set_autowrap_mode, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_autowrap_mode =
      resolveMethodBind('RichTextLabel', 'get_autowrap_mode', 1549071663);

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

  static final Pointer<Void> _mb_set_autowrap_trim_flags =
      resolveMethodBind('RichTextLabel', 'set_autowrap_trim_flags', 2809697122);

  void setAutowrapTrimFlags(int autowrapTrimFlags) {
    final arg0 = malloc<Int64>()..value = autowrapTrimFlags;
    try {
      ptrcallVoid(_mb_set_autowrap_trim_flags, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_autowrap_trim_flags =
      resolveMethodBind('RichTextLabel', 'get_autowrap_trim_flags', 2340632602);

  int getAutowrapTrimFlags() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_autowrap_trim_flags, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_meta_underline =
      resolveMethodBind('RichTextLabel', 'set_meta_underline', 2586408642);

  void setMetaUnderline(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_meta_underline, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_meta_underlined =
      resolveMethodBind('RichTextLabel', 'is_meta_underlined', 36873697);

  bool isMetaUnderlined() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_meta_underlined, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_hint_underline =
      resolveMethodBind('RichTextLabel', 'set_hint_underline', 2586408642);

  void setHintUnderline(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_hint_underline, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_hint_underlined =
      resolveMethodBind('RichTextLabel', 'is_hint_underlined', 36873697);

  bool isHintUnderlined() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_hint_underlined, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_scroll_active =
      resolveMethodBind('RichTextLabel', 'set_scroll_active', 2586408642);

  void setScrollActive(bool active) {
    final arg0 = malloc<Uint8>()..value = active ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_scroll_active, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_scroll_active =
      resolveMethodBind('RichTextLabel', 'is_scroll_active', 36873697);

  bool isScrollActive() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_scroll_active, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_scroll_follow_visible_characters =
      resolveMethodBind('RichTextLabel', 'set_scroll_follow_visible_characters', 2586408642);

  void setScrollFollowVisibleCharacters(bool follow) {
    final arg0 = malloc<Uint8>()..value = follow ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_scroll_follow_visible_characters, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_scroll_following_visible_characters =
      resolveMethodBind('RichTextLabel', 'is_scroll_following_visible_characters', 36873697);

  bool isScrollFollowingVisibleCharacters() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_scroll_following_visible_characters, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_scroll_follow =
      resolveMethodBind('RichTextLabel', 'set_scroll_follow', 2586408642);

  void setScrollFollow(bool follow) {
    final arg0 = malloc<Uint8>()..value = follow ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_scroll_follow, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_scroll_following =
      resolveMethodBind('RichTextLabel', 'is_scroll_following', 36873697);

  bool isScrollFollowing() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_scroll_following, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_v_scroll_bar =
      resolveMethodBind('RichTextLabel', 'get_v_scroll_bar', 2630340773);

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

  static final Pointer<Void> _mb_scroll_to_line =
      resolveMethodBind('RichTextLabel', 'scroll_to_line', 1286410249);

  void scrollToLine(int line) {
    final arg0 = malloc<Int64>()..value = line;
    try {
      ptrcallVoid(_mb_scroll_to_line, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_scroll_to_paragraph =
      resolveMethodBind('RichTextLabel', 'scroll_to_paragraph', 1286410249);

  void scrollToParagraph(int paragraph) {
    final arg0 = malloc<Int64>()..value = paragraph;
    try {
      ptrcallVoid(_mb_scroll_to_paragraph, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_scroll_to_selection =
      resolveMethodBind('RichTextLabel', 'scroll_to_selection', 3218959716);

  void scrollToSelection() {
    try {
      ptrcallVoid(_mb_scroll_to_selection, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_tab_size =
      resolveMethodBind('RichTextLabel', 'set_tab_size', 1286410249);

  void setTabSize(int spaces) {
    final arg0 = malloc<Int64>()..value = spaces;
    try {
      ptrcallVoid(_mb_set_tab_size, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_tab_size =
      resolveMethodBind('RichTextLabel', 'get_tab_size', 3905245786);

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

  static final Pointer<Void> _mb_set_fit_content =
      resolveMethodBind('RichTextLabel', 'set_fit_content', 2586408642);

  void setFitContent(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_fit_content, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_fit_content_enabled =
      resolveMethodBind('RichTextLabel', 'is_fit_content_enabled', 36873697);

  bool isFitContentEnabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_fit_content_enabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_selection_enabled =
      resolveMethodBind('RichTextLabel', 'set_selection_enabled', 2586408642);

  void setSelectionEnabled(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_selection_enabled, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_selection_enabled =
      resolveMethodBind('RichTextLabel', 'is_selection_enabled', 36873697);

  bool isSelectionEnabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_selection_enabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_context_menu_enabled =
      resolveMethodBind('RichTextLabel', 'set_context_menu_enabled', 2586408642);

  void setContextMenuEnabled(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_context_menu_enabled, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_context_menu_enabled =
      resolveMethodBind('RichTextLabel', 'is_context_menu_enabled', 36873697);

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

  static final Pointer<Void> _mb_set_shortcut_keys_enabled =
      resolveMethodBind('RichTextLabel', 'set_shortcut_keys_enabled', 2586408642);

  void setShortcutKeysEnabled(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_shortcut_keys_enabled, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_shortcut_keys_enabled =
      resolveMethodBind('RichTextLabel', 'is_shortcut_keys_enabled', 36873697);

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

  static final Pointer<Void> _mb_set_deselect_on_focus_loss_enabled =
      resolveMethodBind('RichTextLabel', 'set_deselect_on_focus_loss_enabled', 2586408642);

  void setDeselectOnFocusLossEnabled(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_deselect_on_focus_loss_enabled, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_deselect_on_focus_loss_enabled =
      resolveMethodBind('RichTextLabel', 'is_deselect_on_focus_loss_enabled', 36873697);

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
      resolveMethodBind('RichTextLabel', 'set_drag_and_drop_selection_enabled', 2586408642);

  void setDragAndDropSelectionEnabled(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_drag_and_drop_selection_enabled, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_drag_and_drop_selection_enabled =
      resolveMethodBind('RichTextLabel', 'is_drag_and_drop_selection_enabled', 36873697);

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

  static final Pointer<Void> _mb_get_selection_from =
      resolveMethodBind('RichTextLabel', 'get_selection_from', 3905245786);

  int getSelectionFrom() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_selection_from, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_selection_to =
      resolveMethodBind('RichTextLabel', 'get_selection_to', 3905245786);

  int getSelectionTo() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_selection_to, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_selection_line_offset =
      resolveMethodBind('RichTextLabel', 'get_selection_line_offset', 1740695150);

  double getSelectionLineOffset() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_selection_line_offset, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_select_all =
      resolveMethodBind('RichTextLabel', 'select_all', 3218959716);

  void selectAll() {
    try {
      ptrcallVoid(_mb_select_all, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_selected_text =
      resolveMethodBind('RichTextLabel', 'get_selected_text', 201670096);

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

  static final Pointer<Void> _mb_deselect =
      resolveMethodBind('RichTextLabel', 'deselect', 3218959716);

  void deselect() {
    try {
      ptrcallVoid(_mb_deselect, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_parse_bbcode =
      resolveMethodBind('RichTextLabel', 'parse_bbcode', 83702148);

  void parseBbcode(String bbcode) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), bbcode);
    try {
      ptrcallVoid(_mb_parse_bbcode, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_append_text =
      resolveMethodBind('RichTextLabel', 'append_text', 83702148);

  void appendText(String bbcode) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), bbcode);
    try {
      ptrcallVoid(_mb_append_text, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_text =
      resolveMethodBind('RichTextLabel', 'get_text', 201670096);

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

  static final Pointer<Void> _mb_is_ready =
      resolveMethodBind('RichTextLabel', 'is_ready', 36873697);

  bool isReady() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_ready, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_is_finished =
      resolveMethodBind('RichTextLabel', 'is_finished', 36873697);

  bool isFinished() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_finished, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_threaded =
      resolveMethodBind('RichTextLabel', 'set_threaded', 2586408642);

  void setThreaded(bool threaded) {
    final arg0 = malloc<Uint8>()..value = threaded ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_threaded, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_threaded =
      resolveMethodBind('RichTextLabel', 'is_threaded', 36873697);

  bool isThreaded() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_threaded, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_progress_bar_delay =
      resolveMethodBind('RichTextLabel', 'set_progress_bar_delay', 1286410249);

  void setProgressBarDelay(int delayMs) {
    final arg0 = malloc<Int64>()..value = delayMs;
    try {
      ptrcallVoid(_mb_set_progress_bar_delay, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_progress_bar_delay =
      resolveMethodBind('RichTextLabel', 'get_progress_bar_delay', 3905245786);

  int getProgressBarDelay() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_progress_bar_delay, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_visible_characters =
      resolveMethodBind('RichTextLabel', 'set_visible_characters', 1286410249);

  void setVisibleCharacters(int amount) {
    final arg0 = malloc<Int64>()..value = amount;
    try {
      ptrcallVoid(_mb_set_visible_characters, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_visible_characters =
      resolveMethodBind('RichTextLabel', 'get_visible_characters', 3905245786);

  int getVisibleCharacters() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_visible_characters, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_visible_characters_behavior =
      resolveMethodBind('RichTextLabel', 'get_visible_characters_behavior', 258789322);

  int getVisibleCharactersBehavior() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_visible_characters_behavior, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_visible_characters_behavior =
      resolveMethodBind('RichTextLabel', 'set_visible_characters_behavior', 3383839701);

  void setVisibleCharactersBehavior(int behavior) {
    final arg0 = malloc<Int64>()..value = behavior;
    try {
      ptrcallVoid(_mb_set_visible_characters_behavior, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_visible_ratio =
      resolveMethodBind('RichTextLabel', 'set_visible_ratio', 373806689);

  void setVisibleRatio(double ratio) {
    final arg0 = malloc<Double>()..value = ratio;
    try {
      ptrcallVoid(_mb_set_visible_ratio, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_visible_ratio =
      resolveMethodBind('RichTextLabel', 'get_visible_ratio', 1740695150);

  double getVisibleRatio() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_visible_ratio, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_character_line =
      resolveMethodBind('RichTextLabel', 'get_character_line', 3744713108);

  int getCharacterLine(int character) {
    final arg0 = malloc<Int64>()..value = character;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_character_line, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_character_paragraph =
      resolveMethodBind('RichTextLabel', 'get_character_paragraph', 3744713108);

  int getCharacterParagraph(int character) {
    final arg0 = malloc<Int64>()..value = character;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_character_paragraph, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_total_character_count =
      resolveMethodBind('RichTextLabel', 'get_total_character_count', 3905245786);

  int getTotalCharacterCount() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_total_character_count, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_use_bbcode =
      resolveMethodBind('RichTextLabel', 'set_use_bbcode', 2586408642);

  void setUseBbcode(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_use_bbcode, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_using_bbcode =
      resolveMethodBind('RichTextLabel', 'is_using_bbcode', 36873697);

  bool isUsingBbcode() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_using_bbcode, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_line_count =
      resolveMethodBind('RichTextLabel', 'get_line_count', 3905245786);

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

  static final Pointer<Void> _mb_get_line_range =
      resolveMethodBind('RichTextLabel', 'get_line_range', 3665014314);

  Vector2i getLineRange(int line) {
    final arg0 = malloc<Int64>()..value = line;
    try {
      final ret = malloc<Uint8>(Vector2i.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_line_range, nativePtr, [arg0.cast<Void>()], ret.cast());
        return Vector2i.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_visible_line_count =
      resolveMethodBind('RichTextLabel', 'get_visible_line_count', 3905245786);

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

  static final Pointer<Void> _mb_get_paragraph_count =
      resolveMethodBind('RichTextLabel', 'get_paragraph_count', 3905245786);

  int getParagraphCount() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_paragraph_count, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_visible_paragraph_count =
      resolveMethodBind('RichTextLabel', 'get_visible_paragraph_count', 3905245786);

  int getVisibleParagraphCount() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_visible_paragraph_count, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_content_height =
      resolveMethodBind('RichTextLabel', 'get_content_height', 3905245786);

  int getContentHeight() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_content_height, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_content_width =
      resolveMethodBind('RichTextLabel', 'get_content_width', 3905245786);

  int getContentWidth() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_content_width, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_line_height =
      resolveMethodBind('RichTextLabel', 'get_line_height', 923996154);

  int getLineHeight(int line) {
    final arg0 = malloc<Int64>()..value = line;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_line_height, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_line_width =
      resolveMethodBind('RichTextLabel', 'get_line_width', 923996154);

  int getLineWidth(int line) {
    final arg0 = malloc<Int64>()..value = line;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_line_width, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_visible_content_rect =
      resolveMethodBind('RichTextLabel', 'get_visible_content_rect', 410525958);

  Rect2i getVisibleContentRect() {
    try {
      final ret = malloc<Uint8>(Rect2i.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_visible_content_rect, nativePtr, [], ret.cast());
        return Rect2i.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_line_offset =
      resolveMethodBind('RichTextLabel', 'get_line_offset', 4025615559);

  double getLineOffset(int line) {
    final arg0 = malloc<Int64>()..value = line;
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_line_offset, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_paragraph_offset =
      resolveMethodBind('RichTextLabel', 'get_paragraph_offset', 4025615559);

  double getParagraphOffset(int paragraph) {
    final arg0 = malloc<Int64>()..value = paragraph;
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_paragraph_offset, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  // Skipped parse_expressions_for_values(): unsupported return type "Dictionary".
  // Skipped set_effects(): an argument type is unsupported.
  // Skipped get_effects(): unsupported return type "Array".
  // Skipped install_effect(): an argument type is unsupported.
  static final Pointer<Void> _mb_reload_effects =
      resolveMethodBind('RichTextLabel', 'reload_effects', 3218959716);

  void reloadEffects() {
    try {
      ptrcallVoid(_mb_reload_effects, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_menu =
      resolveMethodBind('RichTextLabel', 'get_menu', 229722558);

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
      resolveMethodBind('RichTextLabel', 'is_menu_visible', 36873697);

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
      resolveMethodBind('RichTextLabel', 'menu_option', 1286410249);

  void menuOption(int option) {
    final arg0 = malloc<Int64>()..value = option;
    try {
      ptrcallVoid(_mb_menu_option, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

}
