// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class CodeHighlighter extends SyntaxHighlighter {
  CodeHighlighter(super.nativePtr);

  static final Pointer<Void> _mb_add_keyword_color =
      resolveMethodBind('CodeHighlighter', 'add_keyword_color', 1636512886);

  void addKeywordColor(String keyword, Color color) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), keyword);
    final arg1 = malloc<Uint8>(Color.nativeSize);
    color.writeTo(arg1, 0);
    try {
      ptrcallVoid(_mb_add_keyword_color, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_remove_keyword_color =
      resolveMethodBind('CodeHighlighter', 'remove_keyword_color', 83702148);

  void removeKeywordColor(String keyword) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), keyword);
    try {
      ptrcallVoid(_mb_remove_keyword_color, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_has_keyword_color =
      resolveMethodBind('CodeHighlighter', 'has_keyword_color', 3927539163);

  bool hasKeywordColor(String keyword) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), keyword);
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_has_keyword_color, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_keyword_color =
      resolveMethodBind('CodeHighlighter', 'get_keyword_color', 3855908743);

  Color getKeywordColor(String keyword) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), keyword);
    try {
      final ret = malloc<Uint8>(Color.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_keyword_color, nativePtr, [arg0.cast<Void>()], ret.cast());
        return Color.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  // Skipped set_keyword_colors(): an argument type is unsupported.
  static final Pointer<Void> _mb_clear_keyword_colors =
      resolveMethodBind('CodeHighlighter', 'clear_keyword_colors', 3218959716);

  void clearKeywordColors() {
    try {
      ptrcallVoid(_mb_clear_keyword_colors, nativePtr, []);
    } finally {
    }
  }

  // Skipped get_keyword_colors(): unsupported return type "Dictionary".
  static final Pointer<Void> _mb_add_member_keyword_color =
      resolveMethodBind('CodeHighlighter', 'add_member_keyword_color', 1636512886);

  void addMemberKeywordColor(String memberKeyword, Color color) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), memberKeyword);
    final arg1 = malloc<Uint8>(Color.nativeSize);
    color.writeTo(arg1, 0);
    try {
      ptrcallVoid(_mb_add_member_keyword_color, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_remove_member_keyword_color =
      resolveMethodBind('CodeHighlighter', 'remove_member_keyword_color', 83702148);

  void removeMemberKeywordColor(String memberKeyword) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), memberKeyword);
    try {
      ptrcallVoid(_mb_remove_member_keyword_color, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_has_member_keyword_color =
      resolveMethodBind('CodeHighlighter', 'has_member_keyword_color', 3927539163);

  bool hasMemberKeywordColor(String memberKeyword) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), memberKeyword);
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_has_member_keyword_color, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_member_keyword_color =
      resolveMethodBind('CodeHighlighter', 'get_member_keyword_color', 3855908743);

  Color getMemberKeywordColor(String memberKeyword) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), memberKeyword);
    try {
      final ret = malloc<Uint8>(Color.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_member_keyword_color, nativePtr, [arg0.cast<Void>()], ret.cast());
        return Color.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  // Skipped set_member_keyword_colors(): an argument type is unsupported.
  static final Pointer<Void> _mb_clear_member_keyword_colors =
      resolveMethodBind('CodeHighlighter', 'clear_member_keyword_colors', 3218959716);

  void clearMemberKeywordColors() {
    try {
      ptrcallVoid(_mb_clear_member_keyword_colors, nativePtr, []);
    } finally {
    }
  }

  // Skipped get_member_keyword_colors(): unsupported return type "Dictionary".
  static final Pointer<Void> _mb_add_color_region =
      resolveMethodBind('CodeHighlighter', 'add_color_region', 2924977451);

  void addColorRegion(String startKey, String endKey, Color color, bool lineOnly) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), startKey);
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg1.cast(), endKey);
    final arg2 = malloc<Uint8>(Color.nativeSize);
    color.writeTo(arg2, 0);
    final arg3 = malloc<Uint8>()..value = lineOnly ? 1 : 0;
    try {
      ptrcallVoid(_mb_add_color_region, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>(), arg3.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
      BuiltinMarshal.destroyGDString(arg1.cast());
      malloc.free(arg1);
      malloc.free(arg2);
      malloc.free(arg3);
    }
  }

  static final Pointer<Void> _mb_remove_color_region =
      resolveMethodBind('CodeHighlighter', 'remove_color_region', 83702148);

  void removeColorRegion(String startKey) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), startKey);
    try {
      ptrcallVoid(_mb_remove_color_region, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_has_color_region =
      resolveMethodBind('CodeHighlighter', 'has_color_region', 3927539163);

  bool hasColorRegion(String startKey) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), startKey);
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_has_color_region, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  // Skipped set_color_regions(): an argument type is unsupported.
  static final Pointer<Void> _mb_clear_color_regions =
      resolveMethodBind('CodeHighlighter', 'clear_color_regions', 3218959716);

  void clearColorRegions() {
    try {
      ptrcallVoid(_mb_clear_color_regions, nativePtr, []);
    } finally {
    }
  }

  // Skipped get_color_regions(): unsupported return type "Dictionary".
  static final Pointer<Void> _mb_set_function_color =
      resolveMethodBind('CodeHighlighter', 'set_function_color', 2920490490);

  void setFunctionColor(Color color) {
    final arg0 = malloc<Uint8>(Color.nativeSize);
    color.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_function_color, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_function_color =
      resolveMethodBind('CodeHighlighter', 'get_function_color', 3444240500);

  Color getFunctionColor() {
    try {
      final ret = malloc<Uint8>(Color.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_function_color, nativePtr, [], ret.cast());
        return Color.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_number_color =
      resolveMethodBind('CodeHighlighter', 'set_number_color', 2920490490);

  void setNumberColor(Color color) {
    final arg0 = malloc<Uint8>(Color.nativeSize);
    color.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_number_color, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_number_color =
      resolveMethodBind('CodeHighlighter', 'get_number_color', 3444240500);

  Color getNumberColor() {
    try {
      final ret = malloc<Uint8>(Color.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_number_color, nativePtr, [], ret.cast());
        return Color.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_symbol_color =
      resolveMethodBind('CodeHighlighter', 'set_symbol_color', 2920490490);

  void setSymbolColor(Color color) {
    final arg0 = malloc<Uint8>(Color.nativeSize);
    color.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_symbol_color, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_symbol_color =
      resolveMethodBind('CodeHighlighter', 'get_symbol_color', 3444240500);

  Color getSymbolColor() {
    try {
      final ret = malloc<Uint8>(Color.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_symbol_color, nativePtr, [], ret.cast());
        return Color.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_member_variable_color =
      resolveMethodBind('CodeHighlighter', 'set_member_variable_color', 2920490490);

  void setMemberVariableColor(Color color) {
    final arg0 = malloc<Uint8>(Color.nativeSize);
    color.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_member_variable_color, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_member_variable_color =
      resolveMethodBind('CodeHighlighter', 'get_member_variable_color', 3444240500);

  Color getMemberVariableColor() {
    try {
      final ret = malloc<Uint8>(Color.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_member_variable_color, nativePtr, [], ret.cast());
        return Color.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
