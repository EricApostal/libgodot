// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class Label extends Control {
  Label(super.nativePtr);

  /// Constructs a brand-new engine-owned Label instance
  /// (via classdb_construct_object3), not an existing one.
  factory Label.create() {
    return Label(resolveClassConstructor('Label'));
  }

  static final Pointer<Void> _mb_set_horizontal_alignment =
      resolveMethodBind('Label', 'set_horizontal_alignment', 2312603777);

  void setHorizontalAlignment(int alignment) {
    final arg0 = malloc<Int64>()..value = alignment;
    try {
      ptrcallVoid(_mb_set_horizontal_alignment, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_horizontal_alignment =
      resolveMethodBind('Label', 'get_horizontal_alignment', 341400642);

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
      resolveMethodBind('Label', 'set_vertical_alignment', 1796458609);

  void setVerticalAlignment(int alignment) {
    final arg0 = malloc<Int64>()..value = alignment;
    try {
      ptrcallVoid(_mb_set_vertical_alignment, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_vertical_alignment =
      resolveMethodBind('Label', 'get_vertical_alignment', 3274884059);

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

  static final Pointer<Void> _mb_set_text =
      resolveMethodBind('Label', 'set_text', 83702148);

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

  static final Pointer<Void> _mb_get_text =
      resolveMethodBind('Label', 'get_text', 201670096);

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

  static final Pointer<Void> _mb_set_label_settings =
      resolveMethodBind('Label', 'set_label_settings', 1030653839);

  void setLabelSettings(LabelSettings settings) {
    final arg0 = malloc<Pointer<Void>>()..value = settings.nativePtr;
    try {
      ptrcallVoid(_mb_set_label_settings, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_label_settings =
      resolveMethodBind('Label', 'get_label_settings', 826676056);

  LabelSettings? getLabelSettings() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_label_settings, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : LabelSettings(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_text_direction =
      resolveMethodBind('Label', 'set_text_direction', 119160795);

  void setTextDirection(int direction) {
    final arg0 = malloc<Int64>()..value = direction;
    try {
      ptrcallVoid(_mb_set_text_direction, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_text_direction =
      resolveMethodBind('Label', 'get_text_direction', 797257663);

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
      resolveMethodBind('Label', 'set_language', 83702148);

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
      resolveMethodBind('Label', 'get_language', 201670096);

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

  static final Pointer<Void> _mb_set_paragraph_separator =
      resolveMethodBind('Label', 'set_paragraph_separator', 83702148);

  void setParagraphSeparator(String paragraphSeparator) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), paragraphSeparator);
    try {
      ptrcallVoid(_mb_set_paragraph_separator, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_paragraph_separator =
      resolveMethodBind('Label', 'get_paragraph_separator', 201670096);

  String getParagraphSeparator() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_paragraph_separator, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_autowrap_mode =
      resolveMethodBind('Label', 'set_autowrap_mode', 3289138044);

  void setAutowrapMode(int autowrapMode) {
    final arg0 = malloc<Int64>()..value = autowrapMode;
    try {
      ptrcallVoid(_mb_set_autowrap_mode, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_autowrap_mode =
      resolveMethodBind('Label', 'get_autowrap_mode', 1549071663);

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
      resolveMethodBind('Label', 'set_autowrap_trim_flags', 2809697122);

  void setAutowrapTrimFlags(int autowrapTrimFlags) {
    final arg0 = malloc<Int64>()..value = autowrapTrimFlags;
    try {
      ptrcallVoid(_mb_set_autowrap_trim_flags, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_autowrap_trim_flags =
      resolveMethodBind('Label', 'get_autowrap_trim_flags', 2340632602);

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

  static final Pointer<Void> _mb_set_justification_flags =
      resolveMethodBind('Label', 'set_justification_flags', 2877345813);

  void setJustificationFlags(int justificationFlags) {
    final arg0 = malloc<Int64>()..value = justificationFlags;
    try {
      ptrcallVoid(_mb_set_justification_flags, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_justification_flags =
      resolveMethodBind('Label', 'get_justification_flags', 1583363614);

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

  static final Pointer<Void> _mb_set_clip_text =
      resolveMethodBind('Label', 'set_clip_text', 2586408642);

  void setClipText(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_clip_text, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_clipping_text =
      resolveMethodBind('Label', 'is_clipping_text', 36873697);

  bool isClippingText() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_clipping_text, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  // Skipped set_tab_stops(): an argument type is unsupported.
  // Skipped get_tab_stops(): unsupported return type "PackedFloat32Array".
  static final Pointer<Void> _mb_set_text_overrun_behavior =
      resolveMethodBind('Label', 'set_text_overrun_behavior', 1008890932);

  void setTextOverrunBehavior(int overrunBehavior) {
    final arg0 = malloc<Int64>()..value = overrunBehavior;
    try {
      ptrcallVoid(_mb_set_text_overrun_behavior, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_text_overrun_behavior =
      resolveMethodBind('Label', 'get_text_overrun_behavior', 3779142101);

  int getTextOverrunBehavior() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_text_overrun_behavior, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_ellipsis_char =
      resolveMethodBind('Label', 'set_ellipsis_char', 83702148);

  void setEllipsisChar(String char) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), char);
    try {
      ptrcallVoid(_mb_set_ellipsis_char, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_ellipsis_char =
      resolveMethodBind('Label', 'get_ellipsis_char', 201670096);

  String getEllipsisChar() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_ellipsis_char, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_uppercase =
      resolveMethodBind('Label', 'set_uppercase', 2586408642);

  void setUppercase(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_uppercase, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_uppercase =
      resolveMethodBind('Label', 'is_uppercase', 36873697);

  bool isUppercase() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_uppercase, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_line_height =
      resolveMethodBind('Label', 'get_line_height', 181039630);

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

  static final Pointer<Void> _mb_get_line_count =
      resolveMethodBind('Label', 'get_line_count', 3905245786);

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

  static final Pointer<Void> _mb_get_visible_line_count =
      resolveMethodBind('Label', 'get_visible_line_count', 3905245786);

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

  static final Pointer<Void> _mb_get_total_character_count =
      resolveMethodBind('Label', 'get_total_character_count', 3905245786);

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

  static final Pointer<Void> _mb_set_visible_characters =
      resolveMethodBind('Label', 'set_visible_characters', 1286410249);

  void setVisibleCharacters(int amount) {
    final arg0 = malloc<Int64>()..value = amount;
    try {
      ptrcallVoid(_mb_set_visible_characters, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_visible_characters =
      resolveMethodBind('Label', 'get_visible_characters', 3905245786);

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
      resolveMethodBind('Label', 'get_visible_characters_behavior', 258789322);

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
      resolveMethodBind('Label', 'set_visible_characters_behavior', 3383839701);

  void setVisibleCharactersBehavior(int behavior) {
    final arg0 = malloc<Int64>()..value = behavior;
    try {
      ptrcallVoid(_mb_set_visible_characters_behavior, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_visible_ratio =
      resolveMethodBind('Label', 'set_visible_ratio', 373806689);

  void setVisibleRatio(double ratio) {
    final arg0 = malloc<Double>()..value = ratio;
    try {
      ptrcallVoid(_mb_set_visible_ratio, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_visible_ratio =
      resolveMethodBind('Label', 'get_visible_ratio', 1740695150);

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

  static final Pointer<Void> _mb_set_lines_skipped =
      resolveMethodBind('Label', 'set_lines_skipped', 1286410249);

  void setLinesSkipped(int linesSkipped) {
    final arg0 = malloc<Int64>()..value = linesSkipped;
    try {
      ptrcallVoid(_mb_set_lines_skipped, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_lines_skipped =
      resolveMethodBind('Label', 'get_lines_skipped', 3905245786);

  int getLinesSkipped() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_lines_skipped, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_max_lines_visible =
      resolveMethodBind('Label', 'set_max_lines_visible', 1286410249);

  void setMaxLinesVisible(int linesVisible) {
    final arg0 = malloc<Int64>()..value = linesVisible;
    try {
      ptrcallVoid(_mb_set_max_lines_visible, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_max_lines_visible =
      resolveMethodBind('Label', 'get_max_lines_visible', 3905245786);

  int getMaxLinesVisible() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_max_lines_visible, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_structured_text_bidi_override =
      resolveMethodBind('Label', 'set_structured_text_bidi_override', 55961453);

  void setStructuredTextBidiOverride(int parser) {
    final arg0 = malloc<Int64>()..value = parser;
    try {
      ptrcallVoid(_mb_set_structured_text_bidi_override, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_structured_text_bidi_override =
      resolveMethodBind('Label', 'get_structured_text_bidi_override', 3385126229);

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
  static final Pointer<Void> _mb_get_character_bounds =
      resolveMethodBind('Label', 'get_character_bounds', 3327874267);

  Rect2 getCharacterBounds(int pos) {
    final arg0 = malloc<Int64>()..value = pos;
    try {
      final ret = malloc<Uint8>(Rect2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_character_bounds, nativePtr, [arg0.cast<Void>()], ret.cast());
        return Rect2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

}
