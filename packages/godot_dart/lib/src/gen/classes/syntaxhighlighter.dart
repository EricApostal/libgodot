// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class SyntaxHighlighter extends Resource {
  SyntaxHighlighter(super.nativePtr);

  // Skipped get_line_syntax_highlighting(): unsupported return type "Dictionary".
  static final Pointer<Void> _mb_update_cache =
      resolveMethodBind('SyntaxHighlighter', 'update_cache', 3218959716);

  void updateCache() {
    try {
      ptrcallVoid(_mb_update_cache, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_clear_highlighting_cache =
      resolveMethodBind('SyntaxHighlighter', 'clear_highlighting_cache', 3218959716);

  void clearHighlightingCache() {
    try {
      ptrcallVoid(_mb_clear_highlighting_cache, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_text_edit =
      resolveMethodBind('SyntaxHighlighter', 'get_text_edit', 1893027089);

  TextEdit? getTextEdit() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_text_edit, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : TextEdit(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
