// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class CodeEdit extends TextEdit {
  CodeEdit(super.nativePtr);

  static final Pointer<Void> _mb_set_indent_size =
      resolveMethodBind('CodeEdit', 'set_indent_size', 1286410249);

  void setIndentSize(int size) {
    final arg0 = malloc<Int64>()..value = size;
    try {
      ptrcallVoid(_mb_set_indent_size, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_indent_size =
      resolveMethodBind('CodeEdit', 'get_indent_size', 3905245786);

  int getIndentSize() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_indent_size, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_indent_using_spaces =
      resolveMethodBind('CodeEdit', 'set_indent_using_spaces', 2586408642);

  void setIndentUsingSpaces(bool useSpaces) {
    final arg0 = malloc<Uint8>()..value = useSpaces ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_indent_using_spaces, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_indent_using_spaces =
      resolveMethodBind('CodeEdit', 'is_indent_using_spaces', 36873697);

  bool isIndentUsingSpaces() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_indent_using_spaces, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_auto_indent_enabled =
      resolveMethodBind('CodeEdit', 'set_auto_indent_enabled', 2586408642);

  void setAutoIndentEnabled(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_auto_indent_enabled, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_auto_indent_enabled =
      resolveMethodBind('CodeEdit', 'is_auto_indent_enabled', 36873697);

  bool isAutoIndentEnabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_auto_indent_enabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  // Skipped set_auto_indent_prefixes(): an argument type is unsupported.
  // Skipped get_auto_indent_prefixes(): unsupported return type "typedarray::String".
  static final Pointer<Void> _mb_do_indent =
      resolveMethodBind('CodeEdit', 'do_indent', 3218959716);

  void doIndent() {
    try {
      ptrcallVoid(_mb_do_indent, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_indent_lines =
      resolveMethodBind('CodeEdit', 'indent_lines', 3218959716);

  void indentLines() {
    try {
      ptrcallVoid(_mb_indent_lines, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_unindent_lines =
      resolveMethodBind('CodeEdit', 'unindent_lines', 3218959716);

  void unindentLines() {
    try {
      ptrcallVoid(_mb_unindent_lines, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_convert_indent =
      resolveMethodBind('CodeEdit', 'convert_indent', 423910286);

  void convertIndent(int fromLine, int toLine) {
    final arg0 = malloc<Int64>()..value = fromLine;
    final arg1 = malloc<Int64>()..value = toLine;
    try {
      ptrcallVoid(_mb_convert_indent, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_set_auto_brace_completion_enabled =
      resolveMethodBind('CodeEdit', 'set_auto_brace_completion_enabled', 2586408642);

  void setAutoBraceCompletionEnabled(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_auto_brace_completion_enabled, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_auto_brace_completion_enabled =
      resolveMethodBind('CodeEdit', 'is_auto_brace_completion_enabled', 36873697);

  bool isAutoBraceCompletionEnabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_auto_brace_completion_enabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_highlight_matching_braces_enabled =
      resolveMethodBind('CodeEdit', 'set_highlight_matching_braces_enabled', 2586408642);

  void setHighlightMatchingBracesEnabled(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_highlight_matching_braces_enabled, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_highlight_matching_braces_enabled =
      resolveMethodBind('CodeEdit', 'is_highlight_matching_braces_enabled', 36873697);

  bool isHighlightMatchingBracesEnabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_highlight_matching_braces_enabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_add_auto_brace_completion_pair =
      resolveMethodBind('CodeEdit', 'add_auto_brace_completion_pair', 3186203200);

  void addAutoBraceCompletionPair(String startKey, String endKey) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), startKey);
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg1.cast(), endKey);
    try {
      ptrcallVoid(_mb_add_auto_brace_completion_pair, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
      BuiltinMarshal.destroyGDString(arg1.cast());
      malloc.free(arg1);
    }
  }

  // Skipped set_auto_brace_completion_pairs(): an argument type is unsupported.
  // Skipped get_auto_brace_completion_pairs(): unsupported return type "Dictionary".
  static final Pointer<Void> _mb_has_auto_brace_completion_open_key =
      resolveMethodBind('CodeEdit', 'has_auto_brace_completion_open_key', 3927539163);

  bool hasAutoBraceCompletionOpenKey(String openKey) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), openKey);
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_has_auto_brace_completion_open_key, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_has_auto_brace_completion_close_key =
      resolveMethodBind('CodeEdit', 'has_auto_brace_completion_close_key', 3927539163);

  bool hasAutoBraceCompletionCloseKey(String closeKey) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), closeKey);
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_has_auto_brace_completion_close_key, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_auto_brace_completion_close_key =
      resolveMethodBind('CodeEdit', 'get_auto_brace_completion_close_key', 3135753539);

  String getAutoBraceCompletionCloseKey(String openKey) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), openKey);
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_auto_brace_completion_close_key, nativePtr, [arg0.cast<Void>()], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_draw_breakpoints_gutter =
      resolveMethodBind('CodeEdit', 'set_draw_breakpoints_gutter', 2586408642);

  void setDrawBreakpointsGutter(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_draw_breakpoints_gutter, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_drawing_breakpoints_gutter =
      resolveMethodBind('CodeEdit', 'is_drawing_breakpoints_gutter', 36873697);

  bool isDrawingBreakpointsGutter() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_drawing_breakpoints_gutter, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_draw_bookmarks_gutter =
      resolveMethodBind('CodeEdit', 'set_draw_bookmarks_gutter', 2586408642);

  void setDrawBookmarksGutter(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_draw_bookmarks_gutter, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_drawing_bookmarks_gutter =
      resolveMethodBind('CodeEdit', 'is_drawing_bookmarks_gutter', 36873697);

  bool isDrawingBookmarksGutter() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_drawing_bookmarks_gutter, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_draw_executing_lines_gutter =
      resolveMethodBind('CodeEdit', 'set_draw_executing_lines_gutter', 2586408642);

  void setDrawExecutingLinesGutter(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_draw_executing_lines_gutter, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_drawing_executing_lines_gutter =
      resolveMethodBind('CodeEdit', 'is_drawing_executing_lines_gutter', 36873697);

  bool isDrawingExecutingLinesGutter() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_drawing_executing_lines_gutter, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_line_as_breakpoint =
      resolveMethodBind('CodeEdit', 'set_line_as_breakpoint', 300928843);

  void setLineAsBreakpoint(int line, bool breakpointed) {
    final arg0 = malloc<Int64>()..value = line;
    final arg1 = malloc<Uint8>()..value = breakpointed ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_line_as_breakpoint, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_is_line_breakpointed =
      resolveMethodBind('CodeEdit', 'is_line_breakpointed', 1116898809);

  bool isLineBreakpointed(int line) {
    final arg0 = malloc<Int64>()..value = line;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_line_breakpointed, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_clear_breakpointed_lines =
      resolveMethodBind('CodeEdit', 'clear_breakpointed_lines', 3218959716);

  void clearBreakpointedLines() {
    try {
      ptrcallVoid(_mb_clear_breakpointed_lines, nativePtr, []);
    } finally {
    }
  }

  // Skipped get_breakpointed_lines(): unsupported return type "PackedInt32Array".
  static final Pointer<Void> _mb_set_line_as_bookmarked =
      resolveMethodBind('CodeEdit', 'set_line_as_bookmarked', 300928843);

  void setLineAsBookmarked(int line, bool bookmarked) {
    final arg0 = malloc<Int64>()..value = line;
    final arg1 = malloc<Uint8>()..value = bookmarked ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_line_as_bookmarked, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_is_line_bookmarked =
      resolveMethodBind('CodeEdit', 'is_line_bookmarked', 1116898809);

  bool isLineBookmarked(int line) {
    final arg0 = malloc<Int64>()..value = line;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_line_bookmarked, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_clear_bookmarked_lines =
      resolveMethodBind('CodeEdit', 'clear_bookmarked_lines', 3218959716);

  void clearBookmarkedLines() {
    try {
      ptrcallVoid(_mb_clear_bookmarked_lines, nativePtr, []);
    } finally {
    }
  }

  // Skipped get_bookmarked_lines(): unsupported return type "PackedInt32Array".
  static final Pointer<Void> _mb_set_line_as_executing =
      resolveMethodBind('CodeEdit', 'set_line_as_executing', 300928843);

  void setLineAsExecuting(int line, bool executing) {
    final arg0 = malloc<Int64>()..value = line;
    final arg1 = malloc<Uint8>()..value = executing ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_line_as_executing, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_is_line_executing =
      resolveMethodBind('CodeEdit', 'is_line_executing', 1116898809);

  bool isLineExecuting(int line) {
    final arg0 = malloc<Int64>()..value = line;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_line_executing, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_clear_executing_lines =
      resolveMethodBind('CodeEdit', 'clear_executing_lines', 3218959716);

  void clearExecutingLines() {
    try {
      ptrcallVoid(_mb_clear_executing_lines, nativePtr, []);
    } finally {
    }
  }

  // Skipped get_executing_lines(): unsupported return type "PackedInt32Array".
  static final Pointer<Void> _mb_set_draw_line_numbers =
      resolveMethodBind('CodeEdit', 'set_draw_line_numbers', 2586408642);

  void setDrawLineNumbers(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_draw_line_numbers, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_draw_line_numbers_enabled =
      resolveMethodBind('CodeEdit', 'is_draw_line_numbers_enabled', 36873697);

  bool isDrawLineNumbersEnabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_draw_line_numbers_enabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_line_numbers_zero_padded =
      resolveMethodBind('CodeEdit', 'set_line_numbers_zero_padded', 2586408642);

  void setLineNumbersZeroPadded(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_line_numbers_zero_padded, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_line_numbers_zero_padded =
      resolveMethodBind('CodeEdit', 'is_line_numbers_zero_padded', 36873697);

  bool isLineNumbersZeroPadded() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_line_numbers_zero_padded, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_line_numbers_min_digits =
      resolveMethodBind('CodeEdit', 'set_line_numbers_min_digits', 1286410249);

  void setLineNumbersMinDigits(int count) {
    final arg0 = malloc<Int64>()..value = count;
    try {
      ptrcallVoid(_mb_set_line_numbers_min_digits, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_line_numbers_min_digits =
      resolveMethodBind('CodeEdit', 'get_line_numbers_min_digits', 3905245786);

  int getLineNumbersMinDigits() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_line_numbers_min_digits, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_draw_fold_gutter =
      resolveMethodBind('CodeEdit', 'set_draw_fold_gutter', 2586408642);

  void setDrawFoldGutter(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_draw_fold_gutter, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_drawing_fold_gutter =
      resolveMethodBind('CodeEdit', 'is_drawing_fold_gutter', 36873697);

  bool isDrawingFoldGutter() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_drawing_fold_gutter, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_line_folding_enabled =
      resolveMethodBind('CodeEdit', 'set_line_folding_enabled', 2586408642);

  void setLineFoldingEnabled(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_line_folding_enabled, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_line_folding_enabled =
      resolveMethodBind('CodeEdit', 'is_line_folding_enabled', 36873697);

  bool isLineFoldingEnabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_line_folding_enabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_can_fold_line =
      resolveMethodBind('CodeEdit', 'can_fold_line', 1116898809);

  bool canFoldLine(int line) {
    final arg0 = malloc<Int64>()..value = line;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_can_fold_line, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_fold_line =
      resolveMethodBind('CodeEdit', 'fold_line', 1286410249);

  void foldLine(int line) {
    final arg0 = malloc<Int64>()..value = line;
    try {
      ptrcallVoid(_mb_fold_line, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_unfold_line =
      resolveMethodBind('CodeEdit', 'unfold_line', 1286410249);

  void unfoldLine(int line) {
    final arg0 = malloc<Int64>()..value = line;
    try {
      ptrcallVoid(_mb_unfold_line, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_fold_all_lines =
      resolveMethodBind('CodeEdit', 'fold_all_lines', 3218959716);

  void foldAllLines() {
    try {
      ptrcallVoid(_mb_fold_all_lines, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_unfold_all_lines =
      resolveMethodBind('CodeEdit', 'unfold_all_lines', 3218959716);

  void unfoldAllLines() {
    try {
      ptrcallVoid(_mb_unfold_all_lines, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_toggle_foldable_line =
      resolveMethodBind('CodeEdit', 'toggle_foldable_line', 1286410249);

  void toggleFoldableLine(int line) {
    final arg0 = malloc<Int64>()..value = line;
    try {
      ptrcallVoid(_mb_toggle_foldable_line, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_toggle_foldable_lines_at_carets =
      resolveMethodBind('CodeEdit', 'toggle_foldable_lines_at_carets', 3218959716);

  void toggleFoldableLinesAtCarets() {
    try {
      ptrcallVoid(_mb_toggle_foldable_lines_at_carets, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_is_line_folded =
      resolveMethodBind('CodeEdit', 'is_line_folded', 1116898809);

  bool isLineFolded(int line) {
    final arg0 = malloc<Int64>()..value = line;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_line_folded, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  // Skipped get_folded_lines(): unsupported return type "typedarray::int".
  static final Pointer<Void> _mb_create_code_region =
      resolveMethodBind('CodeEdit', 'create_code_region', 3218959716);

  void createCodeRegion() {
    try {
      ptrcallVoid(_mb_create_code_region, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_code_region_start_tag =
      resolveMethodBind('CodeEdit', 'get_code_region_start_tag', 201670096);

  String getCodeRegionStartTag() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_code_region_start_tag, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_code_region_end_tag =
      resolveMethodBind('CodeEdit', 'get_code_region_end_tag', 201670096);

  String getCodeRegionEndTag() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_code_region_end_tag, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_code_region_tags =
      resolveMethodBind('CodeEdit', 'set_code_region_tags', 708800718);

  void setCodeRegionTags(String start, String end) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), start);
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg1.cast(), end);
    try {
      ptrcallVoid(_mb_set_code_region_tags, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
      BuiltinMarshal.destroyGDString(arg1.cast());
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_is_line_code_region_start =
      resolveMethodBind('CodeEdit', 'is_line_code_region_start', 1116898809);

  bool isLineCodeRegionStart(int line) {
    final arg0 = malloc<Int64>()..value = line;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_line_code_region_start, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_line_code_region_end =
      resolveMethodBind('CodeEdit', 'is_line_code_region_end', 1116898809);

  bool isLineCodeRegionEnd(int line) {
    final arg0 = malloc<Int64>()..value = line;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_line_code_region_end, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_add_string_delimiter =
      resolveMethodBind('CodeEdit', 'add_string_delimiter', 3146098955);

  void addStringDelimiter(String startKey, String endKey, bool lineOnly) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), startKey);
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg1.cast(), endKey);
    final arg2 = malloc<Uint8>()..value = lineOnly ? 1 : 0;
    try {
      ptrcallVoid(_mb_add_string_delimiter, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
      BuiltinMarshal.destroyGDString(arg1.cast());
      malloc.free(arg1);
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_remove_string_delimiter =
      resolveMethodBind('CodeEdit', 'remove_string_delimiter', 83702148);

  void removeStringDelimiter(String startKey) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), startKey);
    try {
      ptrcallVoid(_mb_remove_string_delimiter, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_has_string_delimiter =
      resolveMethodBind('CodeEdit', 'has_string_delimiter', 3927539163);

  bool hasStringDelimiter(String startKey) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), startKey);
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_has_string_delimiter, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  // Skipped set_string_delimiters(): an argument type is unsupported.
  static final Pointer<Void> _mb_clear_string_delimiters =
      resolveMethodBind('CodeEdit', 'clear_string_delimiters', 3218959716);

  void clearStringDelimiters() {
    try {
      ptrcallVoid(_mb_clear_string_delimiters, nativePtr, []);
    } finally {
    }
  }

  // Skipped get_string_delimiters(): unsupported return type "typedarray::String".
  static final Pointer<Void> _mb_is_in_string =
      resolveMethodBind('CodeEdit', 'is_in_string', 688195400);

  int isInString(int line, int column) {
    final arg0 = malloc<Int64>()..value = line;
    final arg1 = malloc<Int64>()..value = column;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_is_in_string, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_add_comment_delimiter =
      resolveMethodBind('CodeEdit', 'add_comment_delimiter', 3146098955);

  void addCommentDelimiter(String startKey, String endKey, bool lineOnly) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), startKey);
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg1.cast(), endKey);
    final arg2 = malloc<Uint8>()..value = lineOnly ? 1 : 0;
    try {
      ptrcallVoid(_mb_add_comment_delimiter, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
      BuiltinMarshal.destroyGDString(arg1.cast());
      malloc.free(arg1);
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_remove_comment_delimiter =
      resolveMethodBind('CodeEdit', 'remove_comment_delimiter', 83702148);

  void removeCommentDelimiter(String startKey) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), startKey);
    try {
      ptrcallVoid(_mb_remove_comment_delimiter, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_has_comment_delimiter =
      resolveMethodBind('CodeEdit', 'has_comment_delimiter', 3927539163);

  bool hasCommentDelimiter(String startKey) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), startKey);
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_has_comment_delimiter, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  // Skipped set_comment_delimiters(): an argument type is unsupported.
  static final Pointer<Void> _mb_clear_comment_delimiters =
      resolveMethodBind('CodeEdit', 'clear_comment_delimiters', 3218959716);

  void clearCommentDelimiters() {
    try {
      ptrcallVoid(_mb_clear_comment_delimiters, nativePtr, []);
    } finally {
    }
  }

  // Skipped get_comment_delimiters(): unsupported return type "typedarray::String".
  static final Pointer<Void> _mb_is_in_comment =
      resolveMethodBind('CodeEdit', 'is_in_comment', 688195400);

  int isInComment(int line, int column) {
    final arg0 = malloc<Int64>()..value = line;
    final arg1 = malloc<Int64>()..value = column;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_is_in_comment, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_delimiter_start_key =
      resolveMethodBind('CodeEdit', 'get_delimiter_start_key', 844755477);

  String getDelimiterStartKey(int delimiterIndex) {
    final arg0 = malloc<Int64>()..value = delimiterIndex;
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_delimiter_start_key, nativePtr, [arg0.cast<Void>()], ret.cast());
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

  static final Pointer<Void> _mb_get_delimiter_end_key =
      resolveMethodBind('CodeEdit', 'get_delimiter_end_key', 844755477);

  String getDelimiterEndKey(int delimiterIndex) {
    final arg0 = malloc<Int64>()..value = delimiterIndex;
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_delimiter_end_key, nativePtr, [arg0.cast<Void>()], ret.cast());
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

  static final Pointer<Void> _mb_get_delimiter_start_position =
      resolveMethodBind('CodeEdit', 'get_delimiter_start_position', 3016396712);

  Vector2 getDelimiterStartPosition(int line, int column) {
    final arg0 = malloc<Int64>()..value = line;
    final arg1 = malloc<Int64>()..value = column;
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_delimiter_start_position, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_delimiter_end_position =
      resolveMethodBind('CodeEdit', 'get_delimiter_end_position', 3016396712);

  Vector2 getDelimiterEndPosition(int line, int column) {
    final arg0 = malloc<Int64>()..value = line;
    final arg1 = malloc<Int64>()..value = column;
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_delimiter_end_position, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_set_code_hint =
      resolveMethodBind('CodeEdit', 'set_code_hint', 83702148);

  void setCodeHint(String codeHint) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), codeHint);
    try {
      ptrcallVoid(_mb_set_code_hint, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_code_hint_draw_below =
      resolveMethodBind('CodeEdit', 'set_code_hint_draw_below', 2586408642);

  void setCodeHintDrawBelow(bool drawBelow) {
    final arg0 = malloc<Uint8>()..value = drawBelow ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_code_hint_draw_below, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_text_for_code_completion =
      resolveMethodBind('CodeEdit', 'get_text_for_code_completion', 201670096);

  String getTextForCodeCompletion() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_text_for_code_completion, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_request_code_completion =
      resolveMethodBind('CodeEdit', 'request_code_completion', 107499316);

  void requestCodeCompletion(bool force) {
    final arg0 = malloc<Uint8>()..value = force ? 1 : 0;
    try {
      ptrcallVoid(_mb_request_code_completion, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  // Skipped add_code_completion_option(): an argument type is unsupported.
  static final Pointer<Void> _mb_update_code_completion_options =
      resolveMethodBind('CodeEdit', 'update_code_completion_options', 2586408642);

  void updateCodeCompletionOptions(bool force) {
    final arg0 = malloc<Uint8>()..value = force ? 1 : 0;
    try {
      ptrcallVoid(_mb_update_code_completion_options, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  // Skipped get_code_completion_options(): unsupported return type "typedarray::Dictionary".
  // Skipped get_code_completion_option(): unsupported return type "Dictionary".
  static final Pointer<Void> _mb_get_code_completion_selected_index =
      resolveMethodBind('CodeEdit', 'get_code_completion_selected_index', 3905245786);

  int getCodeCompletionSelectedIndex() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_code_completion_selected_index, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_code_completion_selected_index =
      resolveMethodBind('CodeEdit', 'set_code_completion_selected_index', 1286410249);

  void setCodeCompletionSelectedIndex(int index) {
    final arg0 = malloc<Int64>()..value = index;
    try {
      ptrcallVoid(_mb_set_code_completion_selected_index, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_confirm_code_completion =
      resolveMethodBind('CodeEdit', 'confirm_code_completion', 107499316);

  void confirmCodeCompletion(bool replace) {
    final arg0 = malloc<Uint8>()..value = replace ? 1 : 0;
    try {
      ptrcallVoid(_mb_confirm_code_completion, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_cancel_code_completion =
      resolveMethodBind('CodeEdit', 'cancel_code_completion', 3218959716);

  void cancelCodeCompletion() {
    try {
      ptrcallVoid(_mb_cancel_code_completion, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_code_completion_enabled =
      resolveMethodBind('CodeEdit', 'set_code_completion_enabled', 2586408642);

  void setCodeCompletionEnabled(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_code_completion_enabled, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_code_completion_enabled =
      resolveMethodBind('CodeEdit', 'is_code_completion_enabled', 36873697);

  bool isCodeCompletionEnabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_code_completion_enabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  // Skipped set_code_completion_prefixes(): an argument type is unsupported.
  // Skipped get_code_completion_prefixes(): unsupported return type "typedarray::String".
  // Skipped set_line_length_guidelines(): an argument type is unsupported.
  // Skipped get_line_length_guidelines(): unsupported return type "typedarray::int".
  static final Pointer<Void> _mb_set_symbol_lookup_on_click_enabled =
      resolveMethodBind('CodeEdit', 'set_symbol_lookup_on_click_enabled', 2586408642);

  void setSymbolLookupOnClickEnabled(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_symbol_lookup_on_click_enabled, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_symbol_lookup_on_click_enabled =
      resolveMethodBind('CodeEdit', 'is_symbol_lookup_on_click_enabled', 36873697);

  bool isSymbolLookupOnClickEnabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_symbol_lookup_on_click_enabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_text_for_symbol_lookup =
      resolveMethodBind('CodeEdit', 'get_text_for_symbol_lookup', 201670096);

  String getTextForSymbolLookup() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_text_for_symbol_lookup, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_text_with_cursor_char =
      resolveMethodBind('CodeEdit', 'get_text_with_cursor_char', 1391810591);

  String getTextWithCursorChar(int line, int column) {
    final arg0 = malloc<Int64>()..value = line;
    final arg1 = malloc<Int64>()..value = column;
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_text_with_cursor_char, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
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

  static final Pointer<Void> _mb_set_symbol_lookup_word_as_valid =
      resolveMethodBind('CodeEdit', 'set_symbol_lookup_word_as_valid', 2586408642);

  void setSymbolLookupWordAsValid(bool valid) {
    final arg0 = malloc<Uint8>()..value = valid ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_symbol_lookup_word_as_valid, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_symbol_tooltip_on_hover_enabled =
      resolveMethodBind('CodeEdit', 'set_symbol_tooltip_on_hover_enabled', 2586408642);

  void setSymbolTooltipOnHoverEnabled(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_symbol_tooltip_on_hover_enabled, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_symbol_tooltip_on_hover_enabled =
      resolveMethodBind('CodeEdit', 'is_symbol_tooltip_on_hover_enabled', 36873697);

  bool isSymbolTooltipOnHoverEnabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_symbol_tooltip_on_hover_enabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_move_lines_up =
      resolveMethodBind('CodeEdit', 'move_lines_up', 3218959716);

  void moveLinesUp() {
    try {
      ptrcallVoid(_mb_move_lines_up, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_move_lines_down =
      resolveMethodBind('CodeEdit', 'move_lines_down', 3218959716);

  void moveLinesDown() {
    try {
      ptrcallVoid(_mb_move_lines_down, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_delete_lines =
      resolveMethodBind('CodeEdit', 'delete_lines', 3218959716);

  void deleteLines() {
    try {
      ptrcallVoid(_mb_delete_lines, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_join_lines =
      resolveMethodBind('CodeEdit', 'join_lines', 4063782979);

  void joinLines(String lineEnding) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), lineEnding);
    try {
      ptrcallVoid(_mb_join_lines, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_duplicate_selection =
      resolveMethodBind('CodeEdit', 'duplicate_selection', 3218959716);

  void duplicateSelection() {
    try {
      ptrcallVoid(_mb_duplicate_selection, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_duplicate_lines =
      resolveMethodBind('CodeEdit', 'duplicate_lines', 3218959716);

  void duplicateLines() {
    try {
      ptrcallVoid(_mb_duplicate_lines, nativePtr, []);
    } finally {
    }
  }

}
