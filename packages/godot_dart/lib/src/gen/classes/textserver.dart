// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class TextServer extends RefCounted {
  TextServer(super.nativePtr);

  static final Pointer<Void> _mb_has_feature =
      resolveMethodBind('TextServer', 'has_feature', 3967367083);

  bool hasFeature(int feature) {
    final arg0 = malloc<Int64>()..value = feature;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_has_feature, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_name =
      resolveMethodBind('TextServer', 'get_name', 201670096);

  String getName() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_name, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_short_name =
      resolveMethodBind('TextServer', 'get_short_name', 201670096);

  String getShortName() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_short_name, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_features =
      resolveMethodBind('TextServer', 'get_features', 3905245786);

  int getFeatures() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_features, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_load_support_data =
      resolveMethodBind('TextServer', 'load_support_data', 2323990056);

  bool loadSupportData(String filename) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), filename);
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_load_support_data, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_support_data_filename =
      resolveMethodBind('TextServer', 'get_support_data_filename', 201670096);

  String getSupportDataFilename() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_support_data_filename, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_support_data_info =
      resolveMethodBind('TextServer', 'get_support_data_info', 201670096);

  String getSupportDataInfo() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_support_data_info, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_save_support_data =
      resolveMethodBind('TextServer', 'save_support_data', 3927539163);

  bool saveSupportData(String filename) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), filename);
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_save_support_data, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  // Skipped get_support_data(): unsupported return type "PackedByteArray".
  static final Pointer<Void> _mb_is_locale_using_support_data =
      resolveMethodBind('TextServer', 'is_locale_using_support_data', 3927539163);

  bool isLocaleUsingSupportData(String locale) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), locale);
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_locale_using_support_data, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_locale_right_to_left =
      resolveMethodBind('TextServer', 'is_locale_right_to_left', 3927539163);

  bool isLocaleRightToLeft(String locale) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), locale);
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_locale_right_to_left, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_name_to_tag =
      resolveMethodBind('TextServer', 'name_to_tag', 1321353865);

  int nameToTag(String name) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), name);
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_name_to_tag, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_tag_to_name =
      resolveMethodBind('TextServer', 'tag_to_name', 844755477);

  String tagToName(int tag) {
    final arg0 = malloc<Int64>()..value = tag;
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_tag_to_name, nativePtr, [arg0.cast<Void>()], ret.cast());
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

  // Skipped has(): an argument type is unsupported.
  // Skipped free_rid(): an argument type is unsupported.
  // Skipped create_font(): unsupported return type "RID".
  // Skipped create_font_linked_variation(): unsupported return type "RID".
  // Skipped font_set_data(): an argument type is unsupported.
  // Skipped font_set_face_index(): an argument type is unsupported.
  // Skipped font_get_face_index(): an argument type is unsupported.
  // Skipped font_get_face_count(): an argument type is unsupported.
  // Skipped font_set_style(): an argument type is unsupported.
  // Skipped font_get_style(): an argument type is unsupported.
  // Skipped font_set_name(): an argument type is unsupported.
  // Skipped font_get_name(): an argument type is unsupported.
  // Skipped font_get_ot_name_strings(): unsupported return type "Dictionary".
  // Skipped font_set_style_name(): an argument type is unsupported.
  // Skipped font_get_style_name(): an argument type is unsupported.
  // Skipped font_set_weight(): an argument type is unsupported.
  // Skipped font_get_weight(): an argument type is unsupported.
  // Skipped font_set_stretch(): an argument type is unsupported.
  // Skipped font_get_stretch(): an argument type is unsupported.
  // Skipped font_set_antialiasing(): an argument type is unsupported.
  // Skipped font_get_antialiasing(): an argument type is unsupported.
  // Skipped font_set_disable_embedded_bitmaps(): an argument type is unsupported.
  // Skipped font_get_disable_embedded_bitmaps(): an argument type is unsupported.
  // Skipped font_set_generate_mipmaps(): an argument type is unsupported.
  // Skipped font_get_generate_mipmaps(): an argument type is unsupported.
  // Skipped font_set_multichannel_signed_distance_field(): an argument type is unsupported.
  // Skipped font_is_multichannel_signed_distance_field(): an argument type is unsupported.
  // Skipped font_set_msdf_pixel_range(): an argument type is unsupported.
  // Skipped font_get_msdf_pixel_range(): an argument type is unsupported.
  // Skipped font_set_msdf_size(): an argument type is unsupported.
  // Skipped font_get_msdf_size(): an argument type is unsupported.
  // Skipped font_set_fixed_size(): an argument type is unsupported.
  // Skipped font_get_fixed_size(): an argument type is unsupported.
  // Skipped font_set_fixed_size_scale_mode(): an argument type is unsupported.
  // Skipped font_get_fixed_size_scale_mode(): an argument type is unsupported.
  // Skipped font_set_allow_system_fallback(): an argument type is unsupported.
  // Skipped font_is_allow_system_fallback(): an argument type is unsupported.
  static final Pointer<Void> _mb_font_clear_system_fallback_cache =
      resolveMethodBind('TextServer', 'font_clear_system_fallback_cache', 3218959716);

  void fontClearSystemFallbackCache() {
    try {
      ptrcallVoid(_mb_font_clear_system_fallback_cache, nativePtr, []);
    } finally {
    }
  }

  // Skipped font_set_force_autohinter(): an argument type is unsupported.
  // Skipped font_is_force_autohinter(): an argument type is unsupported.
  // Skipped font_set_modulate_color_glyphs(): an argument type is unsupported.
  // Skipped font_is_modulate_color_glyphs(): an argument type is unsupported.
  // Skipped font_get_palette_count(): an argument type is unsupported.
  // Skipped font_get_palette_name(): an argument type is unsupported.
  // Skipped font_get_palette_colors(): unsupported return type "PackedColorArray".
  // Skipped font_set_palette_custom_colors(): an argument type is unsupported.
  // Skipped font_get_palette_custom_colors(): unsupported return type "PackedColorArray".
  // Skipped font_get_used_palette(): an argument type is unsupported.
  // Skipped font_set_used_palette(): an argument type is unsupported.
  // Skipped font_set_hinting(): an argument type is unsupported.
  // Skipped font_get_hinting(): an argument type is unsupported.
  // Skipped font_set_subpixel_positioning(): an argument type is unsupported.
  // Skipped font_get_subpixel_positioning(): an argument type is unsupported.
  // Skipped font_set_keep_rounding_remainders(): an argument type is unsupported.
  // Skipped font_get_keep_rounding_remainders(): an argument type is unsupported.
  // Skipped font_set_embolden(): an argument type is unsupported.
  // Skipped font_get_embolden(): an argument type is unsupported.
  // Skipped font_set_spacing(): an argument type is unsupported.
  // Skipped font_get_spacing(): an argument type is unsupported.
  // Skipped font_set_baseline_offset(): an argument type is unsupported.
  // Skipped font_get_baseline_offset(): an argument type is unsupported.
  // Skipped font_set_transform(): an argument type is unsupported.
  // Skipped font_get_transform(): an argument type is unsupported.
  // Skipped font_set_variation_coordinates(): an argument type is unsupported.
  // Skipped font_get_variation_coordinates(): unsupported return type "Dictionary".
  // Skipped font_set_oversampling(): an argument type is unsupported.
  // Skipped font_get_oversampling(): an argument type is unsupported.
  // Skipped font_get_size_cache_list(): unsupported return type "typedarray::Vector2i".
  // Skipped font_clear_size_cache(): an argument type is unsupported.
  // Skipped font_remove_size_cache(): an argument type is unsupported.
  // Skipped font_get_size_cache_info(): unsupported return type "typedarray::Dictionary".
  // Skipped font_set_ascent(): an argument type is unsupported.
  // Skipped font_get_ascent(): an argument type is unsupported.
  // Skipped font_set_descent(): an argument type is unsupported.
  // Skipped font_get_descent(): an argument type is unsupported.
  // Skipped font_set_underline_position(): an argument type is unsupported.
  // Skipped font_get_underline_position(): an argument type is unsupported.
  // Skipped font_set_underline_thickness(): an argument type is unsupported.
  // Skipped font_get_underline_thickness(): an argument type is unsupported.
  // Skipped font_set_scale(): an argument type is unsupported.
  // Skipped font_get_scale(): an argument type is unsupported.
  // Skipped font_get_texture_count(): an argument type is unsupported.
  // Skipped font_clear_textures(): an argument type is unsupported.
  // Skipped font_remove_texture(): an argument type is unsupported.
  // Skipped font_set_texture_image(): an argument type is unsupported.
  // Skipped font_get_texture_image(): an argument type is unsupported.
  // Skipped font_set_texture_offsets(): an argument type is unsupported.
  // Skipped font_get_texture_offsets(): unsupported return type "PackedInt32Array".
  // Skipped font_get_glyph_list(): unsupported return type "PackedInt32Array".
  // Skipped font_clear_glyphs(): an argument type is unsupported.
  // Skipped font_remove_glyph(): an argument type is unsupported.
  // Skipped font_get_glyph_advance(): an argument type is unsupported.
  // Skipped font_set_glyph_advance(): an argument type is unsupported.
  // Skipped font_get_glyph_offset(): an argument type is unsupported.
  // Skipped font_set_glyph_offset(): an argument type is unsupported.
  // Skipped font_get_glyph_size(): an argument type is unsupported.
  // Skipped font_set_glyph_size(): an argument type is unsupported.
  // Skipped font_get_glyph_uv_rect(): an argument type is unsupported.
  // Skipped font_set_glyph_uv_rect(): an argument type is unsupported.
  // Skipped font_get_glyph_texture_idx(): an argument type is unsupported.
  // Skipped font_set_glyph_texture_idx(): an argument type is unsupported.
  // Skipped font_get_glyph_texture_rid(): unsupported return type "RID".
  // Skipped font_get_glyph_texture_size(): an argument type is unsupported.
  // Skipped font_get_glyph_contours(): unsupported return type "Dictionary".
  // Skipped font_get_kerning_list(): unsupported return type "typedarray::Vector2i".
  // Skipped font_clear_kerning_map(): an argument type is unsupported.
  // Skipped font_remove_kerning(): an argument type is unsupported.
  // Skipped font_set_kerning(): an argument type is unsupported.
  // Skipped font_get_kerning(): an argument type is unsupported.
  // Skipped font_get_glyph_index(): an argument type is unsupported.
  // Skipped font_get_char_from_glyph_index(): an argument type is unsupported.
  // Skipped font_has_char(): an argument type is unsupported.
  // Skipped font_get_supported_chars(): an argument type is unsupported.
  // Skipped font_get_supported_glyphs(): unsupported return type "PackedInt32Array".
  // Skipped font_render_range(): an argument type is unsupported.
  // Skipped font_render_glyph(): an argument type is unsupported.
  // Skipped font_draw_glyph(): an argument type is unsupported.
  // Skipped font_draw_glyph_outline(): an argument type is unsupported.
  // Skipped font_is_language_supported(): an argument type is unsupported.
  // Skipped font_set_language_support_override(): an argument type is unsupported.
  // Skipped font_get_language_support_override(): an argument type is unsupported.
  // Skipped font_remove_language_support_override(): an argument type is unsupported.
  // Skipped font_get_language_support_overrides(): unsupported return type "PackedStringArray".
  // Skipped font_is_script_supported(): an argument type is unsupported.
  // Skipped font_set_script_support_override(): an argument type is unsupported.
  // Skipped font_get_script_support_override(): an argument type is unsupported.
  // Skipped font_remove_script_support_override(): an argument type is unsupported.
  // Skipped font_get_script_support_overrides(): unsupported return type "PackedStringArray".
  // Skipped font_set_opentype_feature_overrides(): an argument type is unsupported.
  // Skipped font_get_opentype_feature_overrides(): unsupported return type "Dictionary".
  // Skipped font_supported_feature_list(): unsupported return type "Dictionary".
  // Skipped font_supported_variation_list(): unsupported return type "Dictionary".
  static final Pointer<Void> _mb_font_get_global_oversampling =
      resolveMethodBind('TextServer', 'font_get_global_oversampling', 1740695150);

  double fontGetGlobalOversampling() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_font_get_global_oversampling, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_font_set_global_oversampling =
      resolveMethodBind('TextServer', 'font_set_global_oversampling', 373806689);

  void fontSetGlobalOversampling(double oversampling) {
    final arg0 = malloc<Double>()..value = oversampling;
    try {
      ptrcallVoid(_mb_font_set_global_oversampling, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_hex_code_box_size =
      resolveMethodBind('TextServer', 'get_hex_code_box_size', 3016396712);

  Vector2 getHexCodeBoxSize(int size, int index) {
    final arg0 = malloc<Int64>()..value = size;
    final arg1 = malloc<Int64>()..value = index;
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_hex_code_box_size, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  // Skipped draw_hex_code_box(): an argument type is unsupported.
  // Skipped create_shaped_text(): unsupported return type "RID".
  // Skipped shaped_text_clear(): an argument type is unsupported.
  // Skipped shaped_text_duplicate(): unsupported return type "RID".
  // Skipped shaped_text_set_direction(): an argument type is unsupported.
  // Skipped shaped_text_get_direction(): an argument type is unsupported.
  // Skipped shaped_text_get_inferred_direction(): an argument type is unsupported.
  // Skipped shaped_text_set_bidi_override(): an argument type is unsupported.
  // Skipped shaped_text_set_custom_punctuation(): an argument type is unsupported.
  // Skipped shaped_text_get_custom_punctuation(): an argument type is unsupported.
  // Skipped shaped_text_set_custom_ellipsis(): an argument type is unsupported.
  // Skipped shaped_text_get_custom_ellipsis(): an argument type is unsupported.
  // Skipped shaped_text_set_orientation(): an argument type is unsupported.
  // Skipped shaped_text_get_orientation(): an argument type is unsupported.
  // Skipped shaped_text_set_preserve_invalid(): an argument type is unsupported.
  // Skipped shaped_text_get_preserve_invalid(): an argument type is unsupported.
  // Skipped shaped_text_set_preserve_control(): an argument type is unsupported.
  // Skipped shaped_text_get_preserve_control(): an argument type is unsupported.
  // Skipped shaped_text_set_spacing(): an argument type is unsupported.
  // Skipped shaped_text_get_spacing(): an argument type is unsupported.
  // Skipped shaped_text_add_string(): an argument type is unsupported.
  // Skipped shaped_text_add_object(): an argument type is unsupported.
  // Skipped shaped_text_resize_object(): an argument type is unsupported.
  // Skipped shaped_text_has_object(): an argument type is unsupported.
  // Skipped shaped_get_text(): an argument type is unsupported.
  // Skipped shaped_get_span_count(): an argument type is unsupported.
  // Skipped shaped_get_span_meta(): unsupported return type "Variant".
  // Skipped shaped_get_span_embedded_object(): unsupported return type "Variant".
  // Skipped shaped_get_span_text(): an argument type is unsupported.
  // Skipped shaped_get_span_object(): unsupported return type "Variant".
  // Skipped shaped_set_span_update_font(): an argument type is unsupported.
  // Skipped shaped_get_run_count(): an argument type is unsupported.
  // Skipped shaped_get_run_text(): an argument type is unsupported.
  // Skipped shaped_get_run_range(): an argument type is unsupported.
  // Skipped shaped_get_run_glyph_range(): an argument type is unsupported.
  // Skipped shaped_get_run_font_rid(): unsupported return type "RID".
  // Skipped shaped_get_run_font_size(): an argument type is unsupported.
  // Skipped shaped_get_run_language(): an argument type is unsupported.
  // Skipped shaped_get_run_direction(): an argument type is unsupported.
  // Skipped shaped_get_run_object(): unsupported return type "Variant".
  // Skipped shaped_text_substr(): unsupported return type "RID".
  // Skipped shaped_text_get_parent(): unsupported return type "RID".
  // Skipped shaped_text_fit_to_width(): an argument type is unsupported.
  // Skipped shaped_text_tab_align(): an argument type is unsupported.
  // Skipped shaped_text_shape(): an argument type is unsupported.
  // Skipped shaped_text_is_ready(): an argument type is unsupported.
  // Skipped shaped_text_has_visible_chars(): an argument type is unsupported.
  // Skipped shaped_text_get_glyphs(): unsupported return type "typedarray::Dictionary".
  // Skipped shaped_text_sort_logical(): unsupported return type "typedarray::Dictionary".
  // Skipped shaped_text_get_glyph_count(): an argument type is unsupported.
  // Skipped shaped_text_get_range(): an argument type is unsupported.
  // Skipped shaped_text_get_line_breaks_adv(): unsupported return type "PackedInt32Array".
  // Skipped shaped_text_get_line_breaks(): unsupported return type "PackedInt32Array".
  // Skipped shaped_text_get_word_breaks(): unsupported return type "PackedInt32Array".
  // Skipped shaped_text_get_trim_pos(): an argument type is unsupported.
  // Skipped shaped_text_get_ellipsis_pos(): an argument type is unsupported.
  // Skipped shaped_text_get_ellipsis_glyphs(): unsupported return type "typedarray::Dictionary".
  // Skipped shaped_text_get_ellipsis_glyph_count(): an argument type is unsupported.
  // Skipped shaped_text_overrun_trim_to_width(): an argument type is unsupported.
  // Skipped shaped_text_get_objects(): unsupported return type "Array".
  // Skipped shaped_text_get_object_rect(): an argument type is unsupported.
  // Skipped shaped_text_get_object_range(): an argument type is unsupported.
  // Skipped shaped_text_get_object_glyph(): an argument type is unsupported.
  // Skipped shaped_text_get_size(): an argument type is unsupported.
  // Skipped shaped_text_get_ascent(): an argument type is unsupported.
  // Skipped shaped_text_get_descent(): an argument type is unsupported.
  // Skipped shaped_text_get_width(): an argument type is unsupported.
  // Skipped shaped_text_get_underline_position(): an argument type is unsupported.
  // Skipped shaped_text_get_underline_thickness(): an argument type is unsupported.
  // Skipped shaped_text_get_carets(): unsupported return type "Dictionary".
  // Skipped shaped_text_get_selection(): unsupported return type "PackedVector2Array".
  // Skipped shaped_text_hit_test_grapheme(): an argument type is unsupported.
  // Skipped shaped_text_hit_test_position(): an argument type is unsupported.
  // Skipped shaped_text_get_grapheme_bounds(): an argument type is unsupported.
  // Skipped shaped_text_next_grapheme_pos(): an argument type is unsupported.
  // Skipped shaped_text_prev_grapheme_pos(): an argument type is unsupported.
  // Skipped shaped_text_get_character_breaks(): unsupported return type "PackedInt32Array".
  // Skipped shaped_text_next_character_pos(): an argument type is unsupported.
  // Skipped shaped_text_prev_character_pos(): an argument type is unsupported.
  // Skipped shaped_text_closest_character_pos(): an argument type is unsupported.
  // Skipped shaped_text_draw(): an argument type is unsupported.
  // Skipped shaped_text_draw_outline(): an argument type is unsupported.
  // Skipped shaped_text_get_dominant_direction_in_range(): an argument type is unsupported.
  static final Pointer<Void> _mb_format_number =
      resolveMethodBind('TextServer', 'format_number', 2664628024);

  String formatNumber(String number, String language) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), number);
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg1.cast(), language);
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_format_number, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
      BuiltinMarshal.destroyGDString(arg1.cast());
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_parse_number =
      resolveMethodBind('TextServer', 'parse_number', 2664628024);

  String parseNumber(String number, String language) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), number);
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg1.cast(), language);
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_parse_number, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
      BuiltinMarshal.destroyGDString(arg1.cast());
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_percent_sign =
      resolveMethodBind('TextServer', 'percent_sign', 993269549);

  String percentSign(String language) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), language);
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_percent_sign, nativePtr, [arg0.cast<Void>()], ret.cast());
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

  // Skipped string_get_word_breaks(): unsupported return type "PackedInt32Array".
  // Skipped string_get_character_breaks(): unsupported return type "PackedInt32Array".
  // Skipped is_confusable(): an argument type is unsupported.
  static final Pointer<Void> _mb_spoof_check =
      resolveMethodBind('TextServer', 'spoof_check', 3927539163);

  bool spoofCheck(String string) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), string);
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_spoof_check, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_strip_diacritics =
      resolveMethodBind('TextServer', 'strip_diacritics', 3135753539);

  String stripDiacritics(String string) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), string);
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_strip_diacritics, nativePtr, [arg0.cast<Void>()], ret.cast());
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

  static final Pointer<Void> _mb_is_valid_identifier =
      resolveMethodBind('TextServer', 'is_valid_identifier', 3927539163);

  bool isValidIdentifier(String string) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), string);
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_valid_identifier, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_valid_letter =
      resolveMethodBind('TextServer', 'is_valid_letter', 1116898809);

  bool isValidLetter(int unicode) {
    final arg0 = malloc<Int64>()..value = unicode;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_valid_letter, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_string_to_upper =
      resolveMethodBind('TextServer', 'string_to_upper', 2664628024);

  String stringToUpper(String string, String language) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), string);
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg1.cast(), language);
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_string_to_upper, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
      BuiltinMarshal.destroyGDString(arg1.cast());
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_string_to_lower =
      resolveMethodBind('TextServer', 'string_to_lower', 2664628024);

  String stringToLower(String string, String language) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), string);
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg1.cast(), language);
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_string_to_lower, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
      BuiltinMarshal.destroyGDString(arg1.cast());
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_string_to_title =
      resolveMethodBind('TextServer', 'string_to_title', 2664628024);

  String stringToTitle(String string, String language) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), string);
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg1.cast(), language);
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_string_to_title, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
      BuiltinMarshal.destroyGDString(arg1.cast());
      malloc.free(arg1);
    }
  }

  // Skipped parse_structured_text(): unsupported return type "typedarray::Vector3i".
}
