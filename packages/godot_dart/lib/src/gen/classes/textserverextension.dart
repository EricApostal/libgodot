// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class TextServerExtension extends TextServer {
  TextServerExtension(super.nativePtr);

  /// Constructs a brand-new engine-owned TextServerExtension instance
  /// (via classdb_construct_object3), not an existing one.
  factory TextServerExtension.create() {
    return TextServerExtension(resolveClassConstructor('TextServerExtension'));
  }

  /// Override to hook into Godot's `_has_feature` virtual.
  bool hasFeature(int feature) => false;

  /// Override to hook into Godot's `_get_name` virtual.
  String getName() => '';

  /// Override to hook into Godot's `_get_short_name` virtual.
  String getShortName() => '';

  /// Override to hook into Godot's `_get_features` virtual.
  int getFeatures() => 0;

  // Skipped virtual _free_rid(): an argument type is unsupported ("RID").
  // Skipped virtual _has(): an argument type is unsupported ("RID").
  /// Override to hook into Godot's `_load_support_data` virtual.
  bool loadSupportData(String filename) => false;

  /// Override to hook into Godot's `_get_support_data_filename` virtual.
  String getSupportDataFilename() => '';

  /// Override to hook into Godot's `_get_support_data_info` virtual.
  String getSupportDataInfo() => '';

  /// Override to hook into Godot's `_save_support_data` virtual.
  bool saveSupportData(String filename) => false;

  // Skipped virtual _get_support_data(): unsupported return type "PackedByteArray".
  /// Override to hook into Godot's `_is_locale_using_support_data` virtual.
  bool isLocaleUsingSupportData(String locale) => false;

  /// Override to hook into Godot's `_is_locale_right_to_left` virtual.
  bool isLocaleRightToLeft(String locale) => false;

  /// Override to hook into Godot's `_name_to_tag` virtual.
  int nameToTag(String name) => 0;

  /// Override to hook into Godot's `_tag_to_name` virtual.
  String tagToName(int tag) => '';

  // Skipped virtual _create_font(): unsupported return type "RID".
  // Skipped virtual _create_font_linked_variation(): unsupported return type "RID".
  // Skipped virtual _font_set_data(): an argument type is unsupported ("RID").
  // Skipped virtual _font_set_data_ptr(): an argument type is unsupported ("RID").
  // Skipped virtual _font_set_face_index(): an argument type is unsupported ("RID").
  // Skipped virtual _font_get_face_index(): an argument type is unsupported ("RID").
  // Skipped virtual _font_get_face_count(): an argument type is unsupported ("RID").
  // Skipped virtual _font_set_style(): an argument type is unsupported ("RID").
  // Skipped virtual _font_get_style(): an argument type is unsupported ("RID").
  // Skipped virtual _font_set_name(): an argument type is unsupported ("RID").
  // Skipped virtual _font_get_name(): an argument type is unsupported ("RID").
  // Skipped virtual _font_get_ot_name_strings(): unsupported return type "Dictionary".
  // Skipped virtual _font_set_style_name(): an argument type is unsupported ("RID").
  // Skipped virtual _font_get_style_name(): an argument type is unsupported ("RID").
  // Skipped virtual _font_set_weight(): an argument type is unsupported ("RID").
  // Skipped virtual _font_get_weight(): an argument type is unsupported ("RID").
  // Skipped virtual _font_set_stretch(): an argument type is unsupported ("RID").
  // Skipped virtual _font_get_stretch(): an argument type is unsupported ("RID").
  // Skipped virtual _font_set_antialiasing(): an argument type is unsupported ("RID").
  // Skipped virtual _font_get_antialiasing(): an argument type is unsupported ("RID").
  // Skipped virtual _font_set_disable_embedded_bitmaps(): an argument type is unsupported ("RID").
  // Skipped virtual _font_get_disable_embedded_bitmaps(): an argument type is unsupported ("RID").
  // Skipped virtual _font_set_generate_mipmaps(): an argument type is unsupported ("RID").
  // Skipped virtual _font_get_generate_mipmaps(): an argument type is unsupported ("RID").
  // Skipped virtual _font_set_multichannel_signed_distance_field(): an argument type is unsupported ("RID").
  // Skipped virtual _font_is_multichannel_signed_distance_field(): an argument type is unsupported ("RID").
  // Skipped virtual _font_set_msdf_pixel_range(): an argument type is unsupported ("RID").
  // Skipped virtual _font_get_msdf_pixel_range(): an argument type is unsupported ("RID").
  // Skipped virtual _font_set_msdf_size(): an argument type is unsupported ("RID").
  // Skipped virtual _font_get_msdf_size(): an argument type is unsupported ("RID").
  // Skipped virtual _font_set_fixed_size(): an argument type is unsupported ("RID").
  // Skipped virtual _font_get_fixed_size(): an argument type is unsupported ("RID").
  // Skipped virtual _font_set_fixed_size_scale_mode(): an argument type is unsupported ("RID").
  // Skipped virtual _font_get_fixed_size_scale_mode(): an argument type is unsupported ("RID").
  // Skipped virtual _font_set_allow_system_fallback(): an argument type is unsupported ("RID").
  // Skipped virtual _font_is_allow_system_fallback(): an argument type is unsupported ("RID").
  /// Override to hook into Godot's `_font_clear_system_fallback_cache` virtual.
  void fontClearSystemFallbackCache() {}

  // Skipped virtual _font_set_force_autohinter(): an argument type is unsupported ("RID").
  // Skipped virtual _font_is_force_autohinter(): an argument type is unsupported ("RID").
  // Skipped virtual _font_set_modulate_color_glyphs(): an argument type is unsupported ("RID").
  // Skipped virtual _font_is_modulate_color_glyphs(): an argument type is unsupported ("RID").
  // Skipped virtual _font_get_palette_count(): an argument type is unsupported ("RID").
  // Skipped virtual _font_get_palette_name(): an argument type is unsupported ("RID").
  // Skipped virtual _font_get_palette_colors(): unsupported return type "PackedColorArray".
  // Skipped virtual _font_set_palette_custom_colors(): an argument type is unsupported ("RID").
  // Skipped virtual _font_get_palette_custom_colors(): unsupported return type "PackedColorArray".
  // Skipped virtual _font_get_used_palette(): an argument type is unsupported ("RID").
  // Skipped virtual _font_set_used_palette(): an argument type is unsupported ("RID").
  // Skipped virtual _font_set_hinting(): an argument type is unsupported ("RID").
  // Skipped virtual _font_get_hinting(): an argument type is unsupported ("RID").
  // Skipped virtual _font_set_subpixel_positioning(): an argument type is unsupported ("RID").
  // Skipped virtual _font_get_subpixel_positioning(): an argument type is unsupported ("RID").
  // Skipped virtual _font_set_keep_rounding_remainders(): an argument type is unsupported ("RID").
  // Skipped virtual _font_get_keep_rounding_remainders(): an argument type is unsupported ("RID").
  // Skipped virtual _font_set_embolden(): an argument type is unsupported ("RID").
  // Skipped virtual _font_get_embolden(): an argument type is unsupported ("RID").
  // Skipped virtual _font_set_spacing(): an argument type is unsupported ("RID").
  // Skipped virtual _font_get_spacing(): an argument type is unsupported ("RID").
  // Skipped virtual _font_set_baseline_offset(): an argument type is unsupported ("RID").
  // Skipped virtual _font_get_baseline_offset(): an argument type is unsupported ("RID").
  // Skipped virtual _font_set_transform(): an argument type is unsupported ("RID").
  // Skipped virtual _font_get_transform(): an argument type is unsupported ("RID").
  // Skipped virtual _font_set_variation_coordinates(): an argument type is unsupported ("RID").
  // Skipped virtual _font_get_variation_coordinates(): unsupported return type "Dictionary".
  // Skipped virtual _font_set_oversampling(): an argument type is unsupported ("RID").
  // Skipped virtual _font_get_oversampling(): an argument type is unsupported ("RID").
  // Skipped virtual _font_get_size_cache_list(): unsupported return type "typedarray::Vector2i".
  // Skipped virtual _font_clear_size_cache(): an argument type is unsupported ("RID").
  // Skipped virtual _font_remove_size_cache(): an argument type is unsupported ("RID").
  // Skipped virtual _font_get_size_cache_info(): unsupported return type "typedarray::Dictionary".
  // Skipped virtual _font_set_ascent(): an argument type is unsupported ("RID").
  // Skipped virtual _font_get_ascent(): an argument type is unsupported ("RID").
  // Skipped virtual _font_set_descent(): an argument type is unsupported ("RID").
  // Skipped virtual _font_get_descent(): an argument type is unsupported ("RID").
  // Skipped virtual _font_set_underline_position(): an argument type is unsupported ("RID").
  // Skipped virtual _font_get_underline_position(): an argument type is unsupported ("RID").
  // Skipped virtual _font_set_underline_thickness(): an argument type is unsupported ("RID").
  // Skipped virtual _font_get_underline_thickness(): an argument type is unsupported ("RID").
  // Skipped virtual _font_set_scale(): an argument type is unsupported ("RID").
  // Skipped virtual _font_get_scale(): an argument type is unsupported ("RID").
  // Skipped virtual _font_get_texture_count(): an argument type is unsupported ("RID").
  // Skipped virtual _font_clear_textures(): an argument type is unsupported ("RID").
  // Skipped virtual _font_remove_texture(): an argument type is unsupported ("RID").
  // Skipped virtual _font_set_texture_image(): an argument type is unsupported ("RID").
  // Skipped virtual _font_get_texture_image(): an argument type is unsupported ("RID").
  // Skipped virtual _font_set_texture_offsets(): an argument type is unsupported ("RID").
  // Skipped virtual _font_get_texture_offsets(): unsupported return type "PackedInt32Array".
  // Skipped virtual _font_get_glyph_list(): unsupported return type "PackedInt32Array".
  // Skipped virtual _font_clear_glyphs(): an argument type is unsupported ("RID").
  // Skipped virtual _font_remove_glyph(): an argument type is unsupported ("RID").
  // Skipped virtual _font_get_glyph_advance(): an argument type is unsupported ("RID").
  // Skipped virtual _font_set_glyph_advance(): an argument type is unsupported ("RID").
  // Skipped virtual _font_get_glyph_offset(): an argument type is unsupported ("RID").
  // Skipped virtual _font_set_glyph_offset(): an argument type is unsupported ("RID").
  // Skipped virtual _font_get_glyph_size(): an argument type is unsupported ("RID").
  // Skipped virtual _font_set_glyph_size(): an argument type is unsupported ("RID").
  // Skipped virtual _font_get_glyph_uv_rect(): an argument type is unsupported ("RID").
  // Skipped virtual _font_set_glyph_uv_rect(): an argument type is unsupported ("RID").
  // Skipped virtual _font_get_glyph_texture_idx(): an argument type is unsupported ("RID").
  // Skipped virtual _font_set_glyph_texture_idx(): an argument type is unsupported ("RID").
  // Skipped virtual _font_get_glyph_texture_rid(): unsupported return type "RID".
  // Skipped virtual _font_get_glyph_texture_size(): an argument type is unsupported ("RID").
  // Skipped virtual _font_get_glyph_contours(): unsupported return type "Dictionary".
  // Skipped virtual _font_get_kerning_list(): unsupported return type "typedarray::Vector2i".
  // Skipped virtual _font_clear_kerning_map(): an argument type is unsupported ("RID").
  // Skipped virtual _font_remove_kerning(): an argument type is unsupported ("RID").
  // Skipped virtual _font_set_kerning(): an argument type is unsupported ("RID").
  // Skipped virtual _font_get_kerning(): an argument type is unsupported ("RID").
  // Skipped virtual _font_get_glyph_index(): an argument type is unsupported ("RID").
  // Skipped virtual _font_get_char_from_glyph_index(): an argument type is unsupported ("RID").
  // Skipped virtual _font_has_char(): an argument type is unsupported ("RID").
  // Skipped virtual _font_get_supported_chars(): an argument type is unsupported ("RID").
  // Skipped virtual _font_get_supported_glyphs(): unsupported return type "PackedInt32Array".
  // Skipped virtual _font_render_range(): an argument type is unsupported ("RID").
  // Skipped virtual _font_render_glyph(): an argument type is unsupported ("RID").
  // Skipped virtual _font_draw_glyph(): an argument type is unsupported ("RID").
  // Skipped virtual _font_draw_glyph_outline(): an argument type is unsupported ("RID").
  // Skipped virtual _font_is_language_supported(): an argument type is unsupported ("RID").
  // Skipped virtual _font_set_language_support_override(): an argument type is unsupported ("RID").
  // Skipped virtual _font_get_language_support_override(): an argument type is unsupported ("RID").
  // Skipped virtual _font_remove_language_support_override(): an argument type is unsupported ("RID").
  // Skipped virtual _font_get_language_support_overrides(): unsupported return type "PackedStringArray".
  // Skipped virtual _font_is_script_supported(): an argument type is unsupported ("RID").
  // Skipped virtual _font_set_script_support_override(): an argument type is unsupported ("RID").
  // Skipped virtual _font_get_script_support_override(): an argument type is unsupported ("RID").
  // Skipped virtual _font_remove_script_support_override(): an argument type is unsupported ("RID").
  // Skipped virtual _font_get_script_support_overrides(): unsupported return type "PackedStringArray".
  // Skipped virtual _font_set_opentype_feature_overrides(): an argument type is unsupported ("RID").
  // Skipped virtual _font_get_opentype_feature_overrides(): unsupported return type "Dictionary".
  // Skipped virtual _font_supported_feature_list(): unsupported return type "Dictionary".
  // Skipped virtual _font_supported_variation_list(): unsupported return type "Dictionary".
  /// Override to hook into Godot's `_font_get_global_oversampling` virtual.
  double fontGetGlobalOversampling() => 0.0;

  /// Override to hook into Godot's `_font_set_global_oversampling` virtual.
  void fontSetGlobalOversampling(double oversampling) {}

  /// Override to hook into Godot's `_reference_oversampling_level` virtual.
  void referenceOversamplingLevel(double oversampling) {}

  /// Override to hook into Godot's `_unreference_oversampling_level` virtual.
  void unreferenceOversamplingLevel(double oversampling) {}

  /// Override to hook into Godot's `_get_hex_code_box_size` virtual.
  Vector2 getHexCodeBoxSize(int size, int index) => const Vector2(0.0, 0.0);

  // Skipped virtual _draw_hex_code_box(): an argument type is unsupported ("RID").
  // Skipped virtual _create_shaped_text(): unsupported return type "RID".
  // Skipped virtual _shaped_text_clear(): an argument type is unsupported ("RID").
  // Skipped virtual _shaped_text_duplicate(): unsupported return type "RID".
  // Skipped virtual _shaped_text_set_direction(): an argument type is unsupported ("RID").
  // Skipped virtual _shaped_text_get_direction(): an argument type is unsupported ("RID").
  // Skipped virtual _shaped_text_get_inferred_direction(): an argument type is unsupported ("RID").
  // Skipped virtual _shaped_text_set_bidi_override(): an argument type is unsupported ("RID").
  // Skipped virtual _shaped_text_set_custom_punctuation(): an argument type is unsupported ("RID").
  // Skipped virtual _shaped_text_get_custom_punctuation(): an argument type is unsupported ("RID").
  // Skipped virtual _shaped_text_set_custom_ellipsis(): an argument type is unsupported ("RID").
  // Skipped virtual _shaped_text_get_custom_ellipsis(): an argument type is unsupported ("RID").
  // Skipped virtual _shaped_text_set_orientation(): an argument type is unsupported ("RID").
  // Skipped virtual _shaped_text_get_orientation(): an argument type is unsupported ("RID").
  // Skipped virtual _shaped_text_set_preserve_invalid(): an argument type is unsupported ("RID").
  // Skipped virtual _shaped_text_get_preserve_invalid(): an argument type is unsupported ("RID").
  // Skipped virtual _shaped_text_set_preserve_control(): an argument type is unsupported ("RID").
  // Skipped virtual _shaped_text_get_preserve_control(): an argument type is unsupported ("RID").
  // Skipped virtual _shaped_text_set_spacing(): an argument type is unsupported ("RID").
  // Skipped virtual _shaped_text_get_spacing(): an argument type is unsupported ("RID").
  // Skipped virtual _shaped_text_add_string(): an argument type is unsupported ("RID").
  // Skipped virtual _shaped_text_add_object(): an argument type is unsupported ("RID").
  // Skipped virtual _shaped_text_resize_object(): an argument type is unsupported ("RID").
  // Skipped virtual _shaped_text_has_object(): an argument type is unsupported ("RID").
  // Skipped virtual _shaped_get_text(): an argument type is unsupported ("RID").
  // Skipped virtual _shaped_get_span_count(): an argument type is unsupported ("RID").
  // Skipped virtual _shaped_get_span_meta(): unsupported return type "Variant".
  // Skipped virtual _shaped_get_span_embedded_object(): unsupported return type "Variant".
  // Skipped virtual _shaped_get_span_text(): an argument type is unsupported ("RID").
  // Skipped virtual _shaped_get_span_object(): unsupported return type "Variant".
  // Skipped virtual _shaped_set_span_update_font(): an argument type is unsupported ("RID").
  // Skipped virtual _shaped_get_run_count(): an argument type is unsupported ("RID").
  // Skipped virtual _shaped_get_run_text(): an argument type is unsupported ("RID").
  // Skipped virtual _shaped_get_run_range(): an argument type is unsupported ("RID").
  // Skipped virtual _shaped_get_run_glyph_range(): an argument type is unsupported ("RID").
  // Skipped virtual _shaped_get_run_font_rid(): unsupported return type "RID".
  // Skipped virtual _shaped_get_run_font_size(): an argument type is unsupported ("RID").
  // Skipped virtual _shaped_get_run_language(): an argument type is unsupported ("RID").
  // Skipped virtual _shaped_get_run_direction(): an argument type is unsupported ("RID").
  // Skipped virtual _shaped_get_run_object(): unsupported return type "Variant".
  // Skipped virtual _shaped_text_substr(): unsupported return type "RID".
  // Skipped virtual _shaped_text_get_parent(): unsupported return type "RID".
  // Skipped virtual _shaped_text_fit_to_width(): an argument type is unsupported ("RID").
  // Skipped virtual _shaped_text_tab_align(): an argument type is unsupported ("RID").
  // Skipped virtual _shaped_text_shape(): an argument type is unsupported ("RID").
  // Skipped virtual _shaped_text_update_breaks(): an argument type is unsupported ("RID").
  // Skipped virtual _shaped_text_update_justification_ops(): an argument type is unsupported ("RID").
  // Skipped virtual _shaped_text_is_ready(): an argument type is unsupported ("RID").
  // Skipped virtual _shaped_text_get_glyphs(): unsupported return type "const Glyph*".
  // Skipped virtual _shaped_text_sort_logical(): unsupported return type "const Glyph*".
  // Skipped virtual _shaped_text_get_glyph_count(): an argument type is unsupported ("RID").
  // Skipped virtual _shaped_text_get_range(): an argument type is unsupported ("RID").
  // Skipped virtual _shaped_text_get_line_breaks_adv(): unsupported return type "PackedInt32Array".
  // Skipped virtual _shaped_text_get_line_breaks(): unsupported return type "PackedInt32Array".
  // Skipped virtual _shaped_text_get_word_breaks(): unsupported return type "PackedInt32Array".
  // Skipped virtual _shaped_text_get_trim_pos(): an argument type is unsupported ("RID").
  // Skipped virtual _shaped_text_get_ellipsis_pos(): an argument type is unsupported ("RID").
  // Skipped virtual _shaped_text_get_ellipsis_glyph_count(): an argument type is unsupported ("RID").
  // Skipped virtual _shaped_text_get_ellipsis_glyphs(): unsupported return type "const Glyph*".
  // Skipped virtual _shaped_text_overrun_trim_to_width(): an argument type is unsupported ("RID").
  // Skipped virtual _shaped_text_get_objects(): unsupported return type "Array".
  // Skipped virtual _shaped_text_get_object_rect(): an argument type is unsupported ("RID").
  // Skipped virtual _shaped_text_get_object_range(): an argument type is unsupported ("RID").
  // Skipped virtual _shaped_text_get_object_glyph(): an argument type is unsupported ("RID").
  // Skipped virtual _shaped_text_get_size(): an argument type is unsupported ("RID").
  // Skipped virtual _shaped_text_get_ascent(): an argument type is unsupported ("RID").
  // Skipped virtual _shaped_text_get_descent(): an argument type is unsupported ("RID").
  // Skipped virtual _shaped_text_get_width(): an argument type is unsupported ("RID").
  // Skipped virtual _shaped_text_get_underline_position(): an argument type is unsupported ("RID").
  // Skipped virtual _shaped_text_get_underline_thickness(): an argument type is unsupported ("RID").
  // Skipped virtual _shaped_text_get_dominant_direction_in_range(): an argument type is unsupported ("RID").
  // Skipped virtual _shaped_text_get_carets(): an argument type is unsupported ("RID").
  // Skipped virtual _shaped_text_get_selection(): unsupported return type "PackedVector2Array".
  // Skipped virtual _shaped_text_hit_test_grapheme(): an argument type is unsupported ("RID").
  // Skipped virtual _shaped_text_hit_test_position(): an argument type is unsupported ("RID").
  // Skipped virtual _shaped_text_draw(): an argument type is unsupported ("RID").
  // Skipped virtual _shaped_text_draw_outline(): an argument type is unsupported ("RID").
  // Skipped virtual _shaped_text_get_grapheme_bounds(): an argument type is unsupported ("RID").
  // Skipped virtual _shaped_text_next_grapheme_pos(): an argument type is unsupported ("RID").
  // Skipped virtual _shaped_text_prev_grapheme_pos(): an argument type is unsupported ("RID").
  // Skipped virtual _shaped_text_get_character_breaks(): unsupported return type "PackedInt32Array".
  // Skipped virtual _shaped_text_next_character_pos(): an argument type is unsupported ("RID").
  // Skipped virtual _shaped_text_prev_character_pos(): an argument type is unsupported ("RID").
  // Skipped virtual _shaped_text_closest_character_pos(): an argument type is unsupported ("RID").
  /// Override to hook into Godot's `_format_number` virtual.
  String formatNumber(String number, String language) => '';

  /// Override to hook into Godot's `_parse_number` virtual.
  String parseNumber(String number, String language) => '';

  /// Override to hook into Godot's `_percent_sign` virtual.
  String percentSign(String language) => '';

  /// Override to hook into Godot's `_strip_diacritics` virtual.
  String stripDiacritics(String string) => '';

  /// Override to hook into Godot's `_is_valid_identifier` virtual.
  bool isValidIdentifier(String string) => false;

  /// Override to hook into Godot's `_is_valid_letter` virtual.
  bool isValidLetter(int unicode) => false;

  // Skipped virtual _string_get_word_breaks(): unsupported return type "PackedInt32Array".
  // Skipped virtual _string_get_character_breaks(): unsupported return type "PackedInt32Array".
  // Skipped virtual _is_confusable(): an argument type is unsupported ("PackedStringArray").
  /// Override to hook into Godot's `_spoof_check` virtual.
  bool spoofCheck(String string) => false;

  /// Override to hook into Godot's `_string_to_upper` virtual.
  String stringToUpper(String string, String language) => '';

  /// Override to hook into Godot's `_string_to_lower` virtual.
  String stringToLower(String string, String language) => '';

  /// Override to hook into Godot's `_string_to_title` virtual.
  String stringToTitle(String string, String language) => '';

  // Skipped virtual _parse_structured_text(): unsupported return type "typedarray::Vector3i".
  /// Override to hook into Godot's `_cleanup` virtual.
  void cleanup() {}

}
