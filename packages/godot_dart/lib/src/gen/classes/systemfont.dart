// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class SystemFont extends Font {
  SystemFont(super.nativePtr);

  /// Constructs a brand-new engine-owned SystemFont instance
  /// (via classdb_construct_object3), not an existing one.
  factory SystemFont.create() {
    return SystemFont(resolveClassConstructor('SystemFont'));
  }

  static final Pointer<Void> _mb_set_antialiasing =
      resolveMethodBind('SystemFont', 'set_antialiasing', 1669900);

  void setAntialiasing(int antialiasing) {
    final arg0 = malloc<Int64>()..value = antialiasing;
    try {
      ptrcallVoid(_mb_set_antialiasing, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_antialiasing =
      resolveMethodBind('SystemFont', 'get_antialiasing', 4262718649);

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
      resolveMethodBind('SystemFont', 'set_disable_embedded_bitmaps', 2586408642);

  void setDisableEmbeddedBitmaps(bool disableEmbeddedBitmaps) {
    final arg0 = malloc<Uint8>()..value = disableEmbeddedBitmaps ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_disable_embedded_bitmaps, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_disable_embedded_bitmaps =
      resolveMethodBind('SystemFont', 'get_disable_embedded_bitmaps', 36873697);

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
      resolveMethodBind('SystemFont', 'set_generate_mipmaps', 2586408642);

  void setGenerateMipmaps(bool generateMipmaps) {
    final arg0 = malloc<Uint8>()..value = generateMipmaps ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_generate_mipmaps, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_generate_mipmaps =
      resolveMethodBind('SystemFont', 'get_generate_mipmaps', 36873697);

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

  static final Pointer<Void> _mb_set_allow_system_fallback =
      resolveMethodBind('SystemFont', 'set_allow_system_fallback', 2586408642);

  void setAllowSystemFallback(bool allowSystemFallback) {
    final arg0 = malloc<Uint8>()..value = allowSystemFallback ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_allow_system_fallback, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_allow_system_fallback =
      resolveMethodBind('SystemFont', 'is_allow_system_fallback', 36873697);

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
      resolveMethodBind('SystemFont', 'set_force_autohinter', 2586408642);

  void setForceAutohinter(bool forceAutohinter) {
    final arg0 = malloc<Uint8>()..value = forceAutohinter ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_force_autohinter, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_force_autohinter =
      resolveMethodBind('SystemFont', 'is_force_autohinter', 36873697);

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
      resolveMethodBind('SystemFont', 'set_modulate_color_glyphs', 2586408642);

  void setModulateColorGlyphs(bool modulate) {
    final arg0 = malloc<Uint8>()..value = modulate ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_modulate_color_glyphs, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_modulate_color_glyphs =
      resolveMethodBind('SystemFont', 'is_modulate_color_glyphs', 36873697);

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
      resolveMethodBind('SystemFont', 'set_hinting', 1827459492);

  void setHinting(int hinting) {
    final arg0 = malloc<Int64>()..value = hinting;
    try {
      ptrcallVoid(_mb_set_hinting, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_hinting =
      resolveMethodBind('SystemFont', 'get_hinting', 3683214614);

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
      resolveMethodBind('SystemFont', 'set_subpixel_positioning', 4225742182);

  void setSubpixelPositioning(int subpixelPositioning) {
    final arg0 = malloc<Int64>()..value = subpixelPositioning;
    try {
      ptrcallVoid(_mb_set_subpixel_positioning, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_subpixel_positioning =
      resolveMethodBind('SystemFont', 'get_subpixel_positioning', 1069238588);

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
      resolveMethodBind('SystemFont', 'set_keep_rounding_remainders', 2586408642);

  void setKeepRoundingRemainders(bool keepRoundingRemainders) {
    final arg0 = malloc<Uint8>()..value = keepRoundingRemainders ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_keep_rounding_remainders, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_keep_rounding_remainders =
      resolveMethodBind('SystemFont', 'get_keep_rounding_remainders', 36873697);

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

  static final Pointer<Void> _mb_set_multichannel_signed_distance_field =
      resolveMethodBind('SystemFont', 'set_multichannel_signed_distance_field', 2586408642);

  void setMultichannelSignedDistanceField(bool msdf) {
    final arg0 = malloc<Uint8>()..value = msdf ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_multichannel_signed_distance_field, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_multichannel_signed_distance_field =
      resolveMethodBind('SystemFont', 'is_multichannel_signed_distance_field', 36873697);

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
      resolveMethodBind('SystemFont', 'set_msdf_pixel_range', 1286410249);

  void setMsdfPixelRange(int msdfPixelRange) {
    final arg0 = malloc<Int64>()..value = msdfPixelRange;
    try {
      ptrcallVoid(_mb_set_msdf_pixel_range, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_msdf_pixel_range =
      resolveMethodBind('SystemFont', 'get_msdf_pixel_range', 3905245786);

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
      resolveMethodBind('SystemFont', 'set_msdf_size', 1286410249);

  void setMsdfSize(int msdfSize) {
    final arg0 = malloc<Int64>()..value = msdfSize;
    try {
      ptrcallVoid(_mb_set_msdf_size, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_msdf_size =
      resolveMethodBind('SystemFont', 'get_msdf_size', 3905245786);

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

  static final Pointer<Void> _mb_set_oversampling =
      resolveMethodBind('SystemFont', 'set_oversampling', 373806689);

  void setOversampling(double oversampling) {
    final arg0 = malloc<Double>()..value = oversampling;
    try {
      ptrcallVoid(_mb_set_oversampling, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_oversampling =
      resolveMethodBind('SystemFont', 'get_oversampling', 1740695150);

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

  // Skipped get_font_names(): unsupported return type "PackedStringArray".
  // Skipped set_font_names(): an argument type is unsupported.
  static final Pointer<Void> _mb_get_font_italic =
      resolveMethodBind('SystemFont', 'get_font_italic', 36873697);

  bool getFontItalic() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_font_italic, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_font_italic =
      resolveMethodBind('SystemFont', 'set_font_italic', 2586408642);

  void setFontItalic(bool italic) {
    final arg0 = malloc<Uint8>()..value = italic ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_font_italic, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_font_weight =
      resolveMethodBind('SystemFont', 'set_font_weight', 1286410249);

  void setFontWeight(int weight) {
    final arg0 = malloc<Int64>()..value = weight;
    try {
      ptrcallVoid(_mb_set_font_weight, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_font_stretch =
      resolveMethodBind('SystemFont', 'set_font_stretch', 1286410249);

  void setFontStretch(int stretch) {
    final arg0 = malloc<Int64>()..value = stretch;
    try {
      ptrcallVoid(_mb_set_font_stretch, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

}
