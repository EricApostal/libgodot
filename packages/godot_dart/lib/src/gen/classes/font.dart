// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class Font extends Resource {
  Font(super.nativePtr);

  // Skipped set_fallbacks(): an argument type is unsupported.
  // Skipped get_fallbacks(): unsupported return type "typedarray::Font".
  // Skipped find_variation(): unsupported return type "RID".
  // Skipped get_rids(): unsupported return type "typedarray::RID".
  static final Pointer<Void> _mb_get_height =
      resolveMethodBind('Font', 'get_height', 378113874);

  double getHeight(int fontSize) {
    final arg0 = malloc<Int64>()..value = fontSize;
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_height, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_ascent =
      resolveMethodBind('Font', 'get_ascent', 378113874);

  double getAscent(int fontSize) {
    final arg0 = malloc<Int64>()..value = fontSize;
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_ascent, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_descent =
      resolveMethodBind('Font', 'get_descent', 378113874);

  double getDescent(int fontSize) {
    final arg0 = malloc<Int64>()..value = fontSize;
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_descent, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_underline_position =
      resolveMethodBind('Font', 'get_underline_position', 378113874);

  double getUnderlinePosition(int fontSize) {
    final arg0 = malloc<Int64>()..value = fontSize;
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_underline_position, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_underline_thickness =
      resolveMethodBind('Font', 'get_underline_thickness', 378113874);

  double getUnderlineThickness(int fontSize) {
    final arg0 = malloc<Int64>()..value = fontSize;
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_underline_thickness, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_font_name =
      resolveMethodBind('Font', 'get_font_name', 201670096);

  String getFontName() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_font_name, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_font_style_name =
      resolveMethodBind('Font', 'get_font_style_name', 201670096);

  String getFontStyleName() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_font_style_name, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  // Skipped get_ot_name_strings(): unsupported return type "Dictionary".
  static final Pointer<Void> _mb_get_font_style =
      resolveMethodBind('Font', 'get_font_style', 2520224254);

  int getFontStyle() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_font_style, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_font_weight =
      resolveMethodBind('Font', 'get_font_weight', 3905245786);

  int getFontWeight() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_font_weight, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_font_stretch =
      resolveMethodBind('Font', 'get_font_stretch', 3905245786);

  int getFontStretch() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_font_stretch, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_palette_count =
      resolveMethodBind('Font', 'get_palette_count', 3905245786);

  int getPaletteCount() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_palette_count, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_palette_name =
      resolveMethodBind('Font', 'get_palette_name', 844755477);

  String getPaletteName(int index) {
    final arg0 = malloc<Int64>()..value = index;
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_palette_name, nativePtr, [arg0.cast<Void>()], ret.cast());
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

  // Skipped get_palette_colors(): unsupported return type "PackedColorArray".
  static final Pointer<Void> _mb_get_spacing =
      resolveMethodBind('Font', 'get_spacing', 1310880908);

  int getSpacing(int spacing) {
    final arg0 = malloc<Int64>()..value = spacing;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_spacing, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  // Skipped get_opentype_features(): unsupported return type "Dictionary".
  static final Pointer<Void> _mb_set_cache_capacity =
      resolveMethodBind('Font', 'set_cache_capacity', 3937882851);

  void setCacheCapacity(int singleLine, int multiLine) {
    final arg0 = malloc<Int64>()..value = singleLine;
    final arg1 = malloc<Int64>()..value = multiLine;
    try {
      ptrcallVoid(_mb_set_cache_capacity, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_string_size =
      resolveMethodBind('Font', 'get_string_size', 1868866121);

  Vector2 getStringSize(String text, int alignment, double width, int fontSize, int justificationFlags, int direction, int orientation) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), text);
    final arg1 = malloc<Int64>()..value = alignment;
    final arg2 = malloc<Double>()..value = width;
    final arg3 = malloc<Int64>()..value = fontSize;
    final arg4 = malloc<Int64>()..value = justificationFlags;
    final arg5 = malloc<Int64>()..value = direction;
    final arg6 = malloc<Int64>()..value = orientation;
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_string_size, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>(), arg3.cast<Void>(), arg4.cast<Void>(), arg5.cast<Void>(), arg6.cast<Void>()], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
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

  static final Pointer<Void> _mb_get_multiline_string_size =
      resolveMethodBind('Font', 'get_multiline_string_size', 519636710);

  Vector2 getMultilineStringSize(String text, int alignment, double width, int fontSize, int maxLines, int brkFlags, int justificationFlags, int direction, int orientation) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), text);
    final arg1 = malloc<Int64>()..value = alignment;
    final arg2 = malloc<Double>()..value = width;
    final arg3 = malloc<Int64>()..value = fontSize;
    final arg4 = malloc<Int64>()..value = maxLines;
    final arg5 = malloc<Int64>()..value = brkFlags;
    final arg6 = malloc<Int64>()..value = justificationFlags;
    final arg7 = malloc<Int64>()..value = direction;
    final arg8 = malloc<Int64>()..value = orientation;
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_multiline_string_size, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>(), arg3.cast<Void>(), arg4.cast<Void>(), arg5.cast<Void>(), arg6.cast<Void>(), arg7.cast<Void>(), arg8.cast<Void>()], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
      malloc.free(arg3);
      malloc.free(arg4);
      malloc.free(arg5);
      malloc.free(arg6);
      malloc.free(arg7);
      malloc.free(arg8);
    }
  }

  // Skipped draw_string(): an argument type is unsupported.
  // Skipped draw_multiline_string(): an argument type is unsupported.
  // Skipped draw_string_outline(): an argument type is unsupported.
  // Skipped draw_multiline_string_outline(): an argument type is unsupported.
  static final Pointer<Void> _mb_get_char_size =
      resolveMethodBind('Font', 'get_char_size', 3016396712);

  Vector2 getCharSize(int char, int fontSize) {
    final arg0 = malloc<Int64>()..value = char;
    final arg1 = malloc<Int64>()..value = fontSize;
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_char_size, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  // Skipped draw_char(): an argument type is unsupported.
  // Skipped draw_char_outline(): an argument type is unsupported.
  static final Pointer<Void> _mb_has_char =
      resolveMethodBind('Font', 'has_char', 1116898809);

  bool hasChar(int char) {
    final arg0 = malloc<Int64>()..value = char;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_has_char, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_supported_chars =
      resolveMethodBind('Font', 'get_supported_chars', 201670096);

  String getSupportedChars() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_supported_chars, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_is_language_supported =
      resolveMethodBind('Font', 'is_language_supported', 3927539163);

  bool isLanguageSupported(String language) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), language);
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_language_supported, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_script_supported =
      resolveMethodBind('Font', 'is_script_supported', 3927539163);

  bool isScriptSupported(String script) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), script);
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_script_supported, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  // Skipped get_supported_feature_list(): unsupported return type "Dictionary".
  // Skipped get_supported_variation_list(): unsupported return type "Dictionary".
  static final Pointer<Void> _mb_get_face_count =
      resolveMethodBind('Font', 'get_face_count', 3905245786);

  int getFaceCount() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_face_count, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
