// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class FontFile extends Font {
  FontFile(super.nativePtr);

  static final Pointer<Void> _mb_load_bitmap_font =
      resolveMethodBind('FontFile', 'load_bitmap_font', 166001499);

  int loadBitmapFont(String path) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), path);
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_load_bitmap_font, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_load_dynamic_font =
      resolveMethodBind('FontFile', 'load_dynamic_font', 166001499);

  int loadDynamicFont(String path) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), path);
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_load_dynamic_font, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  // Skipped set_data(): an argument type is unsupported.
  // Skipped get_data(): unsupported return type "PackedByteArray".
  static final Pointer<Void> _mb_set_font_name =
      resolveMethodBind('FontFile', 'set_font_name', 83702148);

  void setFontName(String name) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), name);
    try {
      ptrcallVoid(_mb_set_font_name, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_font_style_name =
      resolveMethodBind('FontFile', 'set_font_style_name', 83702148);

  void setFontStyleName(String name) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), name);
    try {
      ptrcallVoid(_mb_set_font_style_name, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_font_style =
      resolveMethodBind('FontFile', 'set_font_style', 918070724);

  void setFontStyle(int style) {
    final arg0 = malloc<Int64>()..value = style;
    try {
      ptrcallVoid(_mb_set_font_style, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_font_weight =
      resolveMethodBind('FontFile', 'set_font_weight', 1286410249);

  void setFontWeight(int weight) {
    final arg0 = malloc<Int64>()..value = weight;
    try {
      ptrcallVoid(_mb_set_font_weight, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_font_stretch =
      resolveMethodBind('FontFile', 'set_font_stretch', 1286410249);

  void setFontStretch(int stretch) {
    final arg0 = malloc<Int64>()..value = stretch;
    try {
      ptrcallVoid(_mb_set_font_stretch, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_antialiasing =
      resolveMethodBind('FontFile', 'set_antialiasing', 1669900);

  void setAntialiasing(int antialiasing) {
    final arg0 = malloc<Int64>()..value = antialiasing;
    try {
      ptrcallVoid(_mb_set_antialiasing, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_antialiasing =
      resolveMethodBind('FontFile', 'get_antialiasing', 4262718649);

  int getAntialiasing() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_antialiasing, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_disable_embedded_bitmaps =
      resolveMethodBind('FontFile', 'set_disable_embedded_bitmaps', 2586408642);

  void setDisableEmbeddedBitmaps(bool disableEmbeddedBitmaps) {
    final arg0 = malloc<Uint8>()..value = disableEmbeddedBitmaps ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_disable_embedded_bitmaps, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_disable_embedded_bitmaps =
      resolveMethodBind('FontFile', 'get_disable_embedded_bitmaps', 36873697);

  bool getDisableEmbeddedBitmaps() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_disable_embedded_bitmaps, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_generate_mipmaps =
      resolveMethodBind('FontFile', 'set_generate_mipmaps', 2586408642);

  void setGenerateMipmaps(bool generateMipmaps) {
    final arg0 = malloc<Uint8>()..value = generateMipmaps ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_generate_mipmaps, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_generate_mipmaps =
      resolveMethodBind('FontFile', 'get_generate_mipmaps', 36873697);

  bool getGenerateMipmaps() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_generate_mipmaps, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_multichannel_signed_distance_field =
      resolveMethodBind('FontFile', 'set_multichannel_signed_distance_field', 2586408642);

  void setMultichannelSignedDistanceField(bool msdf) {
    final arg0 = malloc<Uint8>()..value = msdf ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_multichannel_signed_distance_field, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_multichannel_signed_distance_field =
      resolveMethodBind('FontFile', 'is_multichannel_signed_distance_field', 36873697);

  bool isMultichannelSignedDistanceField() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_multichannel_signed_distance_field, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_msdf_pixel_range =
      resolveMethodBind('FontFile', 'set_msdf_pixel_range', 1286410249);

  void setMsdfPixelRange(int msdfPixelRange) {
    final arg0 = malloc<Int64>()..value = msdfPixelRange;
    try {
      ptrcallVoid(_mb_set_msdf_pixel_range, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_msdf_pixel_range =
      resolveMethodBind('FontFile', 'get_msdf_pixel_range', 3905245786);

  int getMsdfPixelRange() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_msdf_pixel_range, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_msdf_size =
      resolveMethodBind('FontFile', 'set_msdf_size', 1286410249);

  void setMsdfSize(int msdfSize) {
    final arg0 = malloc<Int64>()..value = msdfSize;
    try {
      ptrcallVoid(_mb_set_msdf_size, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_msdf_size =
      resolveMethodBind('FontFile', 'get_msdf_size', 3905245786);

  int getMsdfSize() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_msdf_size, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_fixed_size =
      resolveMethodBind('FontFile', 'set_fixed_size', 1286410249);

  void setFixedSize(int fixedSize) {
    final arg0 = malloc<Int64>()..value = fixedSize;
    try {
      ptrcallVoid(_mb_set_fixed_size, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_fixed_size =
      resolveMethodBind('FontFile', 'get_fixed_size', 3905245786);

  int getFixedSize() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_fixed_size, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_fixed_size_scale_mode =
      resolveMethodBind('FontFile', 'set_fixed_size_scale_mode', 1660989956);

  void setFixedSizeScaleMode(int fixedSizeScaleMode) {
    final arg0 = malloc<Int64>()..value = fixedSizeScaleMode;
    try {
      ptrcallVoid(_mb_set_fixed_size_scale_mode, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_fixed_size_scale_mode =
      resolveMethodBind('FontFile', 'get_fixed_size_scale_mode', 753873478);

  int getFixedSizeScaleMode() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_fixed_size_scale_mode, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_allow_system_fallback =
      resolveMethodBind('FontFile', 'set_allow_system_fallback', 2586408642);

  void setAllowSystemFallback(bool allowSystemFallback) {
    final arg0 = malloc<Uint8>()..value = allowSystemFallback ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_allow_system_fallback, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_allow_system_fallback =
      resolveMethodBind('FontFile', 'is_allow_system_fallback', 36873697);

  bool isAllowSystemFallback() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_allow_system_fallback, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_force_autohinter =
      resolveMethodBind('FontFile', 'set_force_autohinter', 2586408642);

  void setForceAutohinter(bool forceAutohinter) {
    final arg0 = malloc<Uint8>()..value = forceAutohinter ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_force_autohinter, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_force_autohinter =
      resolveMethodBind('FontFile', 'is_force_autohinter', 36873697);

  bool isForceAutohinter() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_force_autohinter, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_modulate_color_glyphs =
      resolveMethodBind('FontFile', 'set_modulate_color_glyphs', 2586408642);

  void setModulateColorGlyphs(bool modulate) {
    final arg0 = malloc<Uint8>()..value = modulate ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_modulate_color_glyphs, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_modulate_color_glyphs =
      resolveMethodBind('FontFile', 'is_modulate_color_glyphs', 36873697);

  bool isModulateColorGlyphs() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_modulate_color_glyphs, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_hinting =
      resolveMethodBind('FontFile', 'set_hinting', 1827459492);

  void setHinting(int hinting) {
    final arg0 = malloc<Int64>()..value = hinting;
    try {
      ptrcallVoid(_mb_set_hinting, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_hinting =
      resolveMethodBind('FontFile', 'get_hinting', 3683214614);

  int getHinting() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_hinting, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_subpixel_positioning =
      resolveMethodBind('FontFile', 'set_subpixel_positioning', 4225742182);

  void setSubpixelPositioning(int subpixelPositioning) {
    final arg0 = malloc<Int64>()..value = subpixelPositioning;
    try {
      ptrcallVoid(_mb_set_subpixel_positioning, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_subpixel_positioning =
      resolveMethodBind('FontFile', 'get_subpixel_positioning', 1069238588);

  int getSubpixelPositioning() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_subpixel_positioning, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_keep_rounding_remainders =
      resolveMethodBind('FontFile', 'set_keep_rounding_remainders', 2586408642);

  void setKeepRoundingRemainders(bool keepRoundingRemainders) {
    final arg0 = malloc<Uint8>()..value = keepRoundingRemainders ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_keep_rounding_remainders, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_keep_rounding_remainders =
      resolveMethodBind('FontFile', 'get_keep_rounding_remainders', 36873697);

  bool getKeepRoundingRemainders() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_keep_rounding_remainders, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_oversampling =
      resolveMethodBind('FontFile', 'set_oversampling', 373806689);

  void setOversampling(double oversampling) {
    final arg0 = malloc<Double>()..value = oversampling;
    try {
      ptrcallVoid(_mb_set_oversampling, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_oversampling =
      resolveMethodBind('FontFile', 'get_oversampling', 1740695150);

  double getOversampling() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_oversampling, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_cache_count =
      resolveMethodBind('FontFile', 'get_cache_count', 3905245786);

  int getCacheCount() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_cache_count, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_clear_cache =
      resolveMethodBind('FontFile', 'clear_cache', 3218959716);

  void clearCache() {
    try {
      ptrcallVoid(_mb_clear_cache, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_remove_cache =
      resolveMethodBind('FontFile', 'remove_cache', 1286410249);

  void removeCache(int cacheIndex) {
    final arg0 = malloc<Int64>()..value = cacheIndex;
    try {
      ptrcallVoid(_mb_remove_cache, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  // Skipped get_size_cache_list(): unsupported return type "typedarray::Vector2i".
  static final Pointer<Void> _mb_clear_size_cache =
      resolveMethodBind('FontFile', 'clear_size_cache', 1286410249);

  void clearSizeCache(int cacheIndex) {
    final arg0 = malloc<Int64>()..value = cacheIndex;
    try {
      ptrcallVoid(_mb_clear_size_cache, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_remove_size_cache =
      resolveMethodBind('FontFile', 'remove_size_cache', 2311374912);

  void removeSizeCache(int cacheIndex, Vector2i size) {
    final arg0 = malloc<Int64>()..value = cacheIndex;
    final arg1 = malloc<Uint8>(Vector2i.nativeSize);
    size.writeTo(arg1, 0);
    try {
      ptrcallVoid(_mb_remove_size_cache, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  // Skipped set_variation_coordinates(): an argument type is unsupported.
  // Skipped get_variation_coordinates(): unsupported return type "Dictionary".
  static final Pointer<Void> _mb_set_embolden =
      resolveMethodBind('FontFile', 'set_embolden', 1602489585);

  void setEmbolden(int cacheIndex, double strength) {
    final arg0 = malloc<Int64>()..value = cacheIndex;
    final arg1 = malloc<Double>()..value = strength;
    try {
      ptrcallVoid(_mb_set_embolden, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_embolden =
      resolveMethodBind('FontFile', 'get_embolden', 2339986948);

  double getEmbolden(int cacheIndex) {
    final arg0 = malloc<Int64>()..value = cacheIndex;
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_embolden, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_transform =
      resolveMethodBind('FontFile', 'set_transform', 30160968);

  void setTransform(int cacheIndex, Transform2D transform) {
    final arg0 = malloc<Int64>()..value = cacheIndex;
    final arg1 = malloc<Uint8>(Transform2D.nativeSize);
    transform.writeTo(arg1, 0);
    try {
      ptrcallVoid(_mb_set_transform, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_transform =
      resolveMethodBind('FontFile', 'get_transform', 3836996910);

  Transform2D getTransform(int cacheIndex) {
    final arg0 = malloc<Int64>()..value = cacheIndex;
    try {
      final ret = malloc<Uint8>(Transform2D.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_transform, nativePtr, [arg0.cast<Void>()], ret.cast());
        return Transform2D.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_extra_spacing =
      resolveMethodBind('FontFile', 'set_extra_spacing', 62942285);

  void setExtraSpacing(int cacheIndex, int spacing, int value) {
    final arg0 = malloc<Int64>()..value = cacheIndex;
    final arg1 = malloc<Int64>()..value = spacing;
    final arg2 = malloc<Int64>()..value = value;
    try {
      ptrcallVoid(_mb_set_extra_spacing, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_get_extra_spacing =
      resolveMethodBind('FontFile', 'get_extra_spacing', 1924257185);

  int getExtraSpacing(int cacheIndex, int spacing) {
    final arg0 = malloc<Int64>()..value = cacheIndex;
    final arg1 = malloc<Int64>()..value = spacing;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_extra_spacing, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_set_extra_baseline_offset =
      resolveMethodBind('FontFile', 'set_extra_baseline_offset', 1602489585);

  void setExtraBaselineOffset(int cacheIndex, double baselineOffset) {
    final arg0 = malloc<Int64>()..value = cacheIndex;
    final arg1 = malloc<Double>()..value = baselineOffset;
    try {
      ptrcallVoid(_mb_set_extra_baseline_offset, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_extra_baseline_offset =
      resolveMethodBind('FontFile', 'get_extra_baseline_offset', 2339986948);

  double getExtraBaselineOffset(int cacheIndex) {
    final arg0 = malloc<Int64>()..value = cacheIndex;
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_extra_baseline_offset, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_face_index =
      resolveMethodBind('FontFile', 'set_face_index', 3937882851);

  void setFaceIndex(int cacheIndex, int faceIndex) {
    final arg0 = malloc<Int64>()..value = cacheIndex;
    final arg1 = malloc<Int64>()..value = faceIndex;
    try {
      ptrcallVoid(_mb_set_face_index, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_face_index =
      resolveMethodBind('FontFile', 'get_face_index', 923996154);

  int getFaceIndex(int cacheIndex) {
    final arg0 = malloc<Int64>()..value = cacheIndex;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_face_index, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_cache_ascent =
      resolveMethodBind('FontFile', 'set_cache_ascent', 3506521499);

  void setCacheAscent(int cacheIndex, int size, double ascent) {
    final arg0 = malloc<Int64>()..value = cacheIndex;
    final arg1 = malloc<Int64>()..value = size;
    final arg2 = malloc<Double>()..value = ascent;
    try {
      ptrcallVoid(_mb_set_cache_ascent, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_get_cache_ascent =
      resolveMethodBind('FontFile', 'get_cache_ascent', 3085491603);

  double getCacheAscent(int cacheIndex, int size) {
    final arg0 = malloc<Int64>()..value = cacheIndex;
    final arg1 = malloc<Int64>()..value = size;
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_cache_ascent, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_set_cache_descent =
      resolveMethodBind('FontFile', 'set_cache_descent', 3506521499);

  void setCacheDescent(int cacheIndex, int size, double descent) {
    final arg0 = malloc<Int64>()..value = cacheIndex;
    final arg1 = malloc<Int64>()..value = size;
    final arg2 = malloc<Double>()..value = descent;
    try {
      ptrcallVoid(_mb_set_cache_descent, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_get_cache_descent =
      resolveMethodBind('FontFile', 'get_cache_descent', 3085491603);

  double getCacheDescent(int cacheIndex, int size) {
    final arg0 = malloc<Int64>()..value = cacheIndex;
    final arg1 = malloc<Int64>()..value = size;
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_cache_descent, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_set_cache_underline_position =
      resolveMethodBind('FontFile', 'set_cache_underline_position', 3506521499);

  void setCacheUnderlinePosition(int cacheIndex, int size, double underlinePosition) {
    final arg0 = malloc<Int64>()..value = cacheIndex;
    final arg1 = malloc<Int64>()..value = size;
    final arg2 = malloc<Double>()..value = underlinePosition;
    try {
      ptrcallVoid(_mb_set_cache_underline_position, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_get_cache_underline_position =
      resolveMethodBind('FontFile', 'get_cache_underline_position', 3085491603);

  double getCacheUnderlinePosition(int cacheIndex, int size) {
    final arg0 = malloc<Int64>()..value = cacheIndex;
    final arg1 = malloc<Int64>()..value = size;
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_cache_underline_position, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_set_cache_underline_thickness =
      resolveMethodBind('FontFile', 'set_cache_underline_thickness', 3506521499);

  void setCacheUnderlineThickness(int cacheIndex, int size, double underlineThickness) {
    final arg0 = malloc<Int64>()..value = cacheIndex;
    final arg1 = malloc<Int64>()..value = size;
    final arg2 = malloc<Double>()..value = underlineThickness;
    try {
      ptrcallVoid(_mb_set_cache_underline_thickness, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_get_cache_underline_thickness =
      resolveMethodBind('FontFile', 'get_cache_underline_thickness', 3085491603);

  double getCacheUnderlineThickness(int cacheIndex, int size) {
    final arg0 = malloc<Int64>()..value = cacheIndex;
    final arg1 = malloc<Int64>()..value = size;
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_cache_underline_thickness, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_set_cache_scale =
      resolveMethodBind('FontFile', 'set_cache_scale', 3506521499);

  void setCacheScale(int cacheIndex, int size, double scale) {
    final arg0 = malloc<Int64>()..value = cacheIndex;
    final arg1 = malloc<Int64>()..value = size;
    final arg2 = malloc<Double>()..value = scale;
    try {
      ptrcallVoid(_mb_set_cache_scale, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_get_cache_scale =
      resolveMethodBind('FontFile', 'get_cache_scale', 3085491603);

  double getCacheScale(int cacheIndex, int size) {
    final arg0 = malloc<Int64>()..value = cacheIndex;
    final arg1 = malloc<Int64>()..value = size;
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_cache_scale, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_texture_count =
      resolveMethodBind('FontFile', 'get_texture_count', 1987661582);

  int getTextureCount(int cacheIndex, Vector2i size) {
    final arg0 = malloc<Int64>()..value = cacheIndex;
    final arg1 = malloc<Uint8>(Vector2i.nativeSize);
    size.writeTo(arg1, 0);
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_texture_count, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_clear_textures =
      resolveMethodBind('FontFile', 'clear_textures', 2311374912);

  void clearTextures(int cacheIndex, Vector2i size) {
    final arg0 = malloc<Int64>()..value = cacheIndex;
    final arg1 = malloc<Uint8>(Vector2i.nativeSize);
    size.writeTo(arg1, 0);
    try {
      ptrcallVoid(_mb_clear_textures, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_remove_texture =
      resolveMethodBind('FontFile', 'remove_texture', 2328951467);

  void removeTexture(int cacheIndex, Vector2i size, int textureIndex) {
    final arg0 = malloc<Int64>()..value = cacheIndex;
    final arg1 = malloc<Uint8>(Vector2i.nativeSize);
    size.writeTo(arg1, 0);
    final arg2 = malloc<Int64>()..value = textureIndex;
    try {
      ptrcallVoid(_mb_remove_texture, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_set_texture_image =
      resolveMethodBind('FontFile', 'set_texture_image', 4157974066);

  void setTextureImage(int cacheIndex, Vector2i size, int textureIndex, Image image) {
    final arg0 = malloc<Int64>()..value = cacheIndex;
    final arg1 = malloc<Uint8>(Vector2i.nativeSize);
    size.writeTo(arg1, 0);
    final arg2 = malloc<Int64>()..value = textureIndex;
    final arg3 = malloc<Pointer<Void>>()..value = image.nativePtr;
    try {
      ptrcallVoid(_mb_set_texture_image, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>(), arg3.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
      malloc.free(arg3);
    }
  }

  static final Pointer<Void> _mb_get_texture_image =
      resolveMethodBind('FontFile', 'get_texture_image', 3878418953);

  Image? getTextureImage(int cacheIndex, Vector2i size, int textureIndex) {
    final arg0 = malloc<Int64>()..value = cacheIndex;
    final arg1 = malloc<Uint8>(Vector2i.nativeSize);
    size.writeTo(arg1, 0);
    final arg2 = malloc<Int64>()..value = textureIndex;
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_texture_image, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Image(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
    }
  }

  // Skipped set_texture_offsets(): an argument type is unsupported.
  // Skipped get_texture_offsets(): unsupported return type "PackedInt32Array".
  // Skipped get_glyph_list(): unsupported return type "PackedInt32Array".
  static final Pointer<Void> _mb_clear_glyphs =
      resolveMethodBind('FontFile', 'clear_glyphs', 2311374912);

  void clearGlyphs(int cacheIndex, Vector2i size) {
    final arg0 = malloc<Int64>()..value = cacheIndex;
    final arg1 = malloc<Uint8>(Vector2i.nativeSize);
    size.writeTo(arg1, 0);
    try {
      ptrcallVoid(_mb_clear_glyphs, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_remove_glyph =
      resolveMethodBind('FontFile', 'remove_glyph', 2328951467);

  void removeGlyph(int cacheIndex, Vector2i size, int glyph) {
    final arg0 = malloc<Int64>()..value = cacheIndex;
    final arg1 = malloc<Uint8>(Vector2i.nativeSize);
    size.writeTo(arg1, 0);
    final arg2 = malloc<Int64>()..value = glyph;
    try {
      ptrcallVoid(_mb_remove_glyph, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_set_glyph_advance =
      resolveMethodBind('FontFile', 'set_glyph_advance', 947991729);

  void setGlyphAdvance(int cacheIndex, int size, int glyph, Vector2 advance) {
    final arg0 = malloc<Int64>()..value = cacheIndex;
    final arg1 = malloc<Int64>()..value = size;
    final arg2 = malloc<Int64>()..value = glyph;
    final arg3 = malloc<Uint8>(Vector2.nativeSize);
    advance.writeTo(arg3, 0);
    try {
      ptrcallVoid(_mb_set_glyph_advance, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>(), arg3.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
      malloc.free(arg3);
    }
  }

  static final Pointer<Void> _mb_get_glyph_advance =
      resolveMethodBind('FontFile', 'get_glyph_advance', 1601573536);

  Vector2 getGlyphAdvance(int cacheIndex, int size, int glyph) {
    final arg0 = malloc<Int64>()..value = cacheIndex;
    final arg1 = malloc<Int64>()..value = size;
    final arg2 = malloc<Int64>()..value = glyph;
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_glyph_advance, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_set_glyph_offset =
      resolveMethodBind('FontFile', 'set_glyph_offset', 921719850);

  void setGlyphOffset(int cacheIndex, Vector2i size, int glyph, Vector2 offset) {
    final arg0 = malloc<Int64>()..value = cacheIndex;
    final arg1 = malloc<Uint8>(Vector2i.nativeSize);
    size.writeTo(arg1, 0);
    final arg2 = malloc<Int64>()..value = glyph;
    final arg3 = malloc<Uint8>(Vector2.nativeSize);
    offset.writeTo(arg3, 0);
    try {
      ptrcallVoid(_mb_set_glyph_offset, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>(), arg3.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
      malloc.free(arg3);
    }
  }

  static final Pointer<Void> _mb_get_glyph_offset =
      resolveMethodBind('FontFile', 'get_glyph_offset', 3205412300);

  Vector2 getGlyphOffset(int cacheIndex, Vector2i size, int glyph) {
    final arg0 = malloc<Int64>()..value = cacheIndex;
    final arg1 = malloc<Uint8>(Vector2i.nativeSize);
    size.writeTo(arg1, 0);
    final arg2 = malloc<Int64>()..value = glyph;
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_glyph_offset, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_set_glyph_size =
      resolveMethodBind('FontFile', 'set_glyph_size', 921719850);

  void setGlyphSize(int cacheIndex, Vector2i size, int glyph, Vector2 glSize) {
    final arg0 = malloc<Int64>()..value = cacheIndex;
    final arg1 = malloc<Uint8>(Vector2i.nativeSize);
    size.writeTo(arg1, 0);
    final arg2 = malloc<Int64>()..value = glyph;
    final arg3 = malloc<Uint8>(Vector2.nativeSize);
    glSize.writeTo(arg3, 0);
    try {
      ptrcallVoid(_mb_set_glyph_size, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>(), arg3.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
      malloc.free(arg3);
    }
  }

  static final Pointer<Void> _mb_get_glyph_size =
      resolveMethodBind('FontFile', 'get_glyph_size', 3205412300);

  Vector2 getGlyphSize(int cacheIndex, Vector2i size, int glyph) {
    final arg0 = malloc<Int64>()..value = cacheIndex;
    final arg1 = malloc<Uint8>(Vector2i.nativeSize);
    size.writeTo(arg1, 0);
    final arg2 = malloc<Int64>()..value = glyph;
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_glyph_size, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_set_glyph_uv_rect =
      resolveMethodBind('FontFile', 'set_glyph_uv_rect', 3821620992);

  void setGlyphUvRect(int cacheIndex, Vector2i size, int glyph, Rect2 uvRect) {
    final arg0 = malloc<Int64>()..value = cacheIndex;
    final arg1 = malloc<Uint8>(Vector2i.nativeSize);
    size.writeTo(arg1, 0);
    final arg2 = malloc<Int64>()..value = glyph;
    final arg3 = malloc<Uint8>(Rect2.nativeSize);
    uvRect.writeTo(arg3, 0);
    try {
      ptrcallVoid(_mb_set_glyph_uv_rect, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>(), arg3.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
      malloc.free(arg3);
    }
  }

  static final Pointer<Void> _mb_get_glyph_uv_rect =
      resolveMethodBind('FontFile', 'get_glyph_uv_rect', 3927917900);

  Rect2 getGlyphUvRect(int cacheIndex, Vector2i size, int glyph) {
    final arg0 = malloc<Int64>()..value = cacheIndex;
    final arg1 = malloc<Uint8>(Vector2i.nativeSize);
    size.writeTo(arg1, 0);
    final arg2 = malloc<Int64>()..value = glyph;
    try {
      final ret = malloc<Uint8>(Rect2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_glyph_uv_rect, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()], ret.cast());
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

  static final Pointer<Void> _mb_set_glyph_texture_idx =
      resolveMethodBind('FontFile', 'set_glyph_texture_idx', 355564111);

  void setGlyphTextureIdx(int cacheIndex, Vector2i size, int glyph, int textureIdx) {
    final arg0 = malloc<Int64>()..value = cacheIndex;
    final arg1 = malloc<Uint8>(Vector2i.nativeSize);
    size.writeTo(arg1, 0);
    final arg2 = malloc<Int64>()..value = glyph;
    final arg3 = malloc<Int64>()..value = textureIdx;
    try {
      ptrcallVoid(_mb_set_glyph_texture_idx, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>(), arg3.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
      malloc.free(arg3);
    }
  }

  static final Pointer<Void> _mb_get_glyph_texture_idx =
      resolveMethodBind('FontFile', 'get_glyph_texture_idx', 1629411054);

  int getGlyphTextureIdx(int cacheIndex, Vector2i size, int glyph) {
    final arg0 = malloc<Int64>()..value = cacheIndex;
    final arg1 = malloc<Uint8>(Vector2i.nativeSize);
    size.writeTo(arg1, 0);
    final arg2 = malloc<Int64>()..value = glyph;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_glyph_texture_idx, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
    }
  }

  // Skipped get_kerning_list(): unsupported return type "typedarray::Vector2i".
  static final Pointer<Void> _mb_clear_kerning_map =
      resolveMethodBind('FontFile', 'clear_kerning_map', 3937882851);

  void clearKerningMap(int cacheIndex, int size) {
    final arg0 = malloc<Int64>()..value = cacheIndex;
    final arg1 = malloc<Int64>()..value = size;
    try {
      ptrcallVoid(_mb_clear_kerning_map, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_remove_kerning =
      resolveMethodBind('FontFile', 'remove_kerning', 3930204747);

  void removeKerning(int cacheIndex, int size, Vector2i glyphPair) {
    final arg0 = malloc<Int64>()..value = cacheIndex;
    final arg1 = malloc<Int64>()..value = size;
    final arg2 = malloc<Uint8>(Vector2i.nativeSize);
    glyphPair.writeTo(arg2, 0);
    try {
      ptrcallVoid(_mb_remove_kerning, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_set_kerning =
      resolveMethodBind('FontFile', 'set_kerning', 3182200918);

  void setKerning(int cacheIndex, int size, Vector2i glyphPair, Vector2 kerning) {
    final arg0 = malloc<Int64>()..value = cacheIndex;
    final arg1 = malloc<Int64>()..value = size;
    final arg2 = malloc<Uint8>(Vector2i.nativeSize);
    glyphPair.writeTo(arg2, 0);
    final arg3 = malloc<Uint8>(Vector2.nativeSize);
    kerning.writeTo(arg3, 0);
    try {
      ptrcallVoid(_mb_set_kerning, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>(), arg3.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
      malloc.free(arg3);
    }
  }

  static final Pointer<Void> _mb_get_kerning =
      resolveMethodBind('FontFile', 'get_kerning', 1611912865);

  Vector2 getKerning(int cacheIndex, int size, Vector2i glyphPair) {
    final arg0 = malloc<Int64>()..value = cacheIndex;
    final arg1 = malloc<Int64>()..value = size;
    final arg2 = malloc<Uint8>(Vector2i.nativeSize);
    glyphPair.writeTo(arg2, 0);
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_kerning, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_render_range =
      resolveMethodBind('FontFile', 'render_range', 355564111);

  void renderRange(int cacheIndex, Vector2i size, int start, int end) {
    final arg0 = malloc<Int64>()..value = cacheIndex;
    final arg1 = malloc<Uint8>(Vector2i.nativeSize);
    size.writeTo(arg1, 0);
    final arg2 = malloc<Int64>()..value = start;
    final arg3 = malloc<Int64>()..value = end;
    try {
      ptrcallVoid(_mb_render_range, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>(), arg3.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
      malloc.free(arg3);
    }
  }

  static final Pointer<Void> _mb_render_glyph =
      resolveMethodBind('FontFile', 'render_glyph', 2328951467);

  void renderGlyph(int cacheIndex, Vector2i size, int index) {
    final arg0 = malloc<Int64>()..value = cacheIndex;
    final arg1 = malloc<Uint8>(Vector2i.nativeSize);
    size.writeTo(arg1, 0);
    final arg2 = malloc<Int64>()..value = index;
    try {
      ptrcallVoid(_mb_render_glyph, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_set_language_support_override =
      resolveMethodBind('FontFile', 'set_language_support_override', 2678287736);

  void setLanguageSupportOverride(String language, bool supported) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), language);
    final arg1 = malloc<Uint8>()..value = supported ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_language_support_override, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_language_support_override =
      resolveMethodBind('FontFile', 'get_language_support_override', 3927539163);

  bool getLanguageSupportOverride(String language) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), language);
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_language_support_override, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_remove_language_support_override =
      resolveMethodBind('FontFile', 'remove_language_support_override', 83702148);

  void removeLanguageSupportOverride(String language) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), language);
    try {
      ptrcallVoid(_mb_remove_language_support_override, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  // Skipped get_language_support_overrides(): unsupported return type "PackedStringArray".
  static final Pointer<Void> _mb_set_script_support_override =
      resolveMethodBind('FontFile', 'set_script_support_override', 2678287736);

  void setScriptSupportOverride(String script, bool supported) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), script);
    final arg1 = malloc<Uint8>()..value = supported ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_script_support_override, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_script_support_override =
      resolveMethodBind('FontFile', 'get_script_support_override', 3927539163);

  bool getScriptSupportOverride(String script) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), script);
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_script_support_override, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_remove_script_support_override =
      resolveMethodBind('FontFile', 'remove_script_support_override', 83702148);

  void removeScriptSupportOverride(String script) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), script);
    try {
      ptrcallVoid(_mb_remove_script_support_override, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  // Skipped get_script_support_overrides(): unsupported return type "PackedStringArray".
  // Skipped set_opentype_feature_overrides(): an argument type is unsupported.
  // Skipped get_opentype_feature_overrides(): unsupported return type "Dictionary".
  static final Pointer<Void> _mb_get_glyph_index =
      resolveMethodBind('FontFile', 'get_glyph_index', 864943070);

  int getGlyphIndex(int size, int char, int variationSelector) {
    final arg0 = malloc<Int64>()..value = size;
    final arg1 = malloc<Int64>()..value = char;
    final arg2 = malloc<Int64>()..value = variationSelector;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_glyph_index, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_get_char_from_glyph_index =
      resolveMethodBind('FontFile', 'get_char_from_glyph_index', 3175239445);

  int getCharFromGlyphIndex(int size, int glyphIndex) {
    final arg0 = malloc<Int64>()..value = size;
    final arg1 = malloc<Int64>()..value = glyphIndex;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_char_from_glyph_index, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

}
