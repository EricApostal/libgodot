// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class ThemeDB extends GodotObject {
  ThemeDB(super.nativePtr);

  /// Constructs a brand-new engine-owned ThemeDB instance
  /// (via classdb_construct_object3), not an existing one.
  factory ThemeDB.create() {
    return ThemeDB(resolveClassConstructor('ThemeDB'));
  }

  static final Pointer<Void> _mb_get_default_theme =
      resolveMethodBind('ThemeDB', 'get_default_theme', 754276358);

  Theme? getDefaultTheme() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_default_theme, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Theme(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_project_theme =
      resolveMethodBind('ThemeDB', 'get_project_theme', 754276358);

  Theme? getProjectTheme() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_project_theme, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Theme(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_fallback_base_scale =
      resolveMethodBind('ThemeDB', 'set_fallback_base_scale', 373806689);

  void setFallbackBaseScale(double baseScale) {
    final arg0 = malloc<Double>()..value = baseScale;
    try {
      ptrcallVoid(_mb_set_fallback_base_scale, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_fallback_base_scale =
      resolveMethodBind('ThemeDB', 'get_fallback_base_scale', 191475506);

  double getFallbackBaseScale() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_fallback_base_scale, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_fallback_font =
      resolveMethodBind('ThemeDB', 'set_fallback_font', 1262170328);

  void setFallbackFont(Font font) {
    final arg0 = malloc<Pointer<Void>>()..value = font.nativePtr;
    try {
      ptrcallVoid(_mb_set_fallback_font, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_fallback_font =
      resolveMethodBind('ThemeDB', 'get_fallback_font', 3656929885);

  Font? getFallbackFont() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_fallback_font, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Font(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_fallback_font_size =
      resolveMethodBind('ThemeDB', 'set_fallback_font_size', 1286410249);

  void setFallbackFontSize(int fontSize) {
    final arg0 = malloc<Int64>()..value = fontSize;
    try {
      ptrcallVoid(_mb_set_fallback_font_size, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_fallback_font_size =
      resolveMethodBind('ThemeDB', 'get_fallback_font_size', 2455072627);

  int getFallbackFontSize() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_fallback_font_size, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_fallback_icon =
      resolveMethodBind('ThemeDB', 'set_fallback_icon', 4051416890);

  void setFallbackIcon(Texture2D icon) {
    final arg0 = malloc<Pointer<Void>>()..value = icon.nativePtr;
    try {
      ptrcallVoid(_mb_set_fallback_icon, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_fallback_icon =
      resolveMethodBind('ThemeDB', 'get_fallback_icon', 255860311);

  Texture2D? getFallbackIcon() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_fallback_icon, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Texture2D(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_fallback_stylebox =
      resolveMethodBind('ThemeDB', 'set_fallback_stylebox', 2797200388);

  void setFallbackStylebox(StyleBox stylebox) {
    final arg0 = malloc<Pointer<Void>>()..value = stylebox.nativePtr;
    try {
      ptrcallVoid(_mb_set_fallback_stylebox, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_fallback_stylebox =
      resolveMethodBind('ThemeDB', 'get_fallback_stylebox', 496040854);

  StyleBox? getFallbackStylebox() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_fallback_stylebox, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : StyleBox(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
