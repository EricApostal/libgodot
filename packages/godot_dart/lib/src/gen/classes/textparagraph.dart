// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class TextParagraph extends RefCounted {
  TextParagraph(super.nativePtr);

  /// Constructs a brand-new engine-owned TextParagraph instance
  /// (via classdb_construct_object3), not an existing one.
  factory TextParagraph.create() {
    return TextParagraph(resolveClassConstructor('TextParagraph'));
  }

  static final Pointer<Void> _mb_clear =
      resolveMethodBind('TextParagraph', 'clear', 3218959716);

  void clear() {
    try {
      ptrcallVoid(_mb_clear, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_duplicate =
      resolveMethodBind('TextParagraph', 'duplicate', 3607706709);

  TextParagraph? duplicate() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_duplicate, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : TextParagraph(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_direction =
      resolveMethodBind('TextParagraph', 'set_direction', 1418190634);

  void setDirection(int direction) {
    final arg0 = malloc<Int64>()..value = direction;
    try {
      ptrcallVoid(_mb_set_direction, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_direction =
      resolveMethodBind('TextParagraph', 'get_direction', 2516697328);

  int getDirection() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_direction, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_inferred_direction =
      resolveMethodBind('TextParagraph', 'get_inferred_direction', 2516697328);

  int getInferredDirection() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_inferred_direction, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_custom_punctuation =
      resolveMethodBind('TextParagraph', 'set_custom_punctuation', 83702148);

  void setCustomPunctuation(String customPunctuation) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), customPunctuation);
    try {
      ptrcallVoid(_mb_set_custom_punctuation, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_custom_punctuation =
      resolveMethodBind('TextParagraph', 'get_custom_punctuation', 201670096);

  String getCustomPunctuation() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_custom_punctuation, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_orientation =
      resolveMethodBind('TextParagraph', 'set_orientation', 42823726);

  void setOrientation(int orientation) {
    final arg0 = malloc<Int64>()..value = orientation;
    try {
      ptrcallVoid(_mb_set_orientation, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_orientation =
      resolveMethodBind('TextParagraph', 'get_orientation', 175768116);

  int getOrientation() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_orientation, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_preserve_invalid =
      resolveMethodBind('TextParagraph', 'set_preserve_invalid', 2586408642);

  void setPreserveInvalid(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_preserve_invalid, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_preserve_invalid =
      resolveMethodBind('TextParagraph', 'get_preserve_invalid', 36873697);

  bool getPreserveInvalid() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_preserve_invalid, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_preserve_control =
      resolveMethodBind('TextParagraph', 'set_preserve_control', 2586408642);

  void setPreserveControl(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_preserve_control, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_preserve_control =
      resolveMethodBind('TextParagraph', 'get_preserve_control', 36873697);

  bool getPreserveControl() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_preserve_control, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  // Skipped set_bidi_override(): an argument type is unsupported.
  static final Pointer<Void> _mb_set_dropcap =
      resolveMethodBind('TextParagraph', 'set_dropcap', 2498990330);

  bool setDropcap(String text, Font font, int fontSize, Rect2 dropcapMargins, String language) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), text);
    final arg1 = malloc<Pointer<Void>>()..value = font.nativePtr;
    final arg2 = malloc<Int64>()..value = fontSize;
    final arg3 = malloc<Uint8>(Rect2.nativeSize);
    dropcapMargins.writeTo(arg3, 0);
    final arg4 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg4.cast(), language);
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_set_dropcap, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>(), arg3.cast<Void>(), arg4.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
      malloc.free(arg3);
      BuiltinMarshal.destroyGDString(arg4.cast());
      malloc.free(arg4);
    }
  }

  static final Pointer<Void> _mb_clear_dropcap =
      resolveMethodBind('TextParagraph', 'clear_dropcap', 3218959716);

  void clearDropcap() {
    try {
      ptrcallVoid(_mb_clear_dropcap, nativePtr, []);
    } finally {
    }
  }

  // Skipped add_string(): an argument type is unsupported.
  // Skipped add_object(): an argument type is unsupported.
  // Skipped resize_object(): an argument type is unsupported.
  // Skipped has_object(): an argument type is unsupported.
  static final Pointer<Void> _mb_set_alignment =
      resolveMethodBind('TextParagraph', 'set_alignment', 2312603777);

  void setAlignment(int alignment) {
    final arg0 = malloc<Int64>()..value = alignment;
    try {
      ptrcallVoid(_mb_set_alignment, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_alignment =
      resolveMethodBind('TextParagraph', 'get_alignment', 341400642);

  int getAlignment() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_alignment, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  // Skipped tab_align(): an argument type is unsupported.
  static final Pointer<Void> _mb_set_break_flags =
      resolveMethodBind('TextParagraph', 'set_break_flags', 2809697122);

  void setBreakFlags(int flags) {
    final arg0 = malloc<Int64>()..value = flags;
    try {
      ptrcallVoid(_mb_set_break_flags, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_break_flags =
      resolveMethodBind('TextParagraph', 'get_break_flags', 2340632602);

  int getBreakFlags() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_break_flags, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_justification_flags =
      resolveMethodBind('TextParagraph', 'set_justification_flags', 2877345813);

  void setJustificationFlags(int flags) {
    final arg0 = malloc<Int64>()..value = flags;
    try {
      ptrcallVoid(_mb_set_justification_flags, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_justification_flags =
      resolveMethodBind('TextParagraph', 'get_justification_flags', 1583363614);

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

  static final Pointer<Void> _mb_set_text_overrun_behavior =
      resolveMethodBind('TextParagraph', 'set_text_overrun_behavior', 1008890932);

  void setTextOverrunBehavior(int overrunBehavior) {
    final arg0 = malloc<Int64>()..value = overrunBehavior;
    try {
      ptrcallVoid(_mb_set_text_overrun_behavior, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_text_overrun_behavior =
      resolveMethodBind('TextParagraph', 'get_text_overrun_behavior', 3779142101);

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
      resolveMethodBind('TextParagraph', 'set_ellipsis_char', 83702148);

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
      resolveMethodBind('TextParagraph', 'get_ellipsis_char', 201670096);

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

  static final Pointer<Void> _mb_set_width =
      resolveMethodBind('TextParagraph', 'set_width', 373806689);

  void setWidth(double width) {
    final arg0 = malloc<Double>()..value = width;
    try {
      ptrcallVoid(_mb_set_width, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_width =
      resolveMethodBind('TextParagraph', 'get_width', 1740695150);

  double getWidth() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_width, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_non_wrapped_size =
      resolveMethodBind('TextParagraph', 'get_non_wrapped_size', 3341600327);

  Vector2 getNonWrappedSize() {
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_non_wrapped_size, nativePtr, [], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_size =
      resolveMethodBind('TextParagraph', 'get_size', 3341600327);

  Vector2 getSize() {
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_size, nativePtr, [], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  // Skipped get_rid(): unsupported return type "RID".
  // Skipped get_line_rid(): unsupported return type "RID".
  // Skipped get_dropcap_rid(): unsupported return type "RID".
  static final Pointer<Void> _mb_get_range =
      resolveMethodBind('TextParagraph', 'get_range', 3690982128);

  Vector2i getRange() {
    try {
      final ret = malloc<Uint8>(Vector2i.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_range, nativePtr, [], ret.cast());
        return Vector2i.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_line_count =
      resolveMethodBind('TextParagraph', 'get_line_count', 3905245786);

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

  static final Pointer<Void> _mb_set_max_lines_visible =
      resolveMethodBind('TextParagraph', 'set_max_lines_visible', 1286410249);

  void setMaxLinesVisible(int maxLinesVisible) {
    final arg0 = malloc<Int64>()..value = maxLinesVisible;
    try {
      ptrcallVoid(_mb_set_max_lines_visible, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_max_lines_visible =
      resolveMethodBind('TextParagraph', 'get_max_lines_visible', 3905245786);

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

  static final Pointer<Void> _mb_set_line_spacing =
      resolveMethodBind('TextParagraph', 'set_line_spacing', 373806689);

  void setLineSpacing(double lineSpacing) {
    final arg0 = malloc<Double>()..value = lineSpacing;
    try {
      ptrcallVoid(_mb_set_line_spacing, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_line_spacing =
      resolveMethodBind('TextParagraph', 'get_line_spacing', 1740695150);

  double getLineSpacing() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_line_spacing, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  // Skipped get_line_objects(): unsupported return type "Array".
  // Skipped get_line_object_rect(): an argument type is unsupported.
  static final Pointer<Void> _mb_get_line_size =
      resolveMethodBind('TextParagraph', 'get_line_size', 2299179447);

  Vector2 getLineSize(int line) {
    final arg0 = malloc<Int64>()..value = line;
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_line_size, nativePtr, [arg0.cast<Void>()], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_line_range =
      resolveMethodBind('TextParagraph', 'get_line_range', 880721226);

  Vector2i getLineRange(int line) {
    final arg0 = malloc<Int64>()..value = line;
    try {
      final ret = malloc<Uint8>(Vector2i.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_line_range, nativePtr, [arg0.cast<Void>()], ret.cast());
        return Vector2i.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_line_ascent =
      resolveMethodBind('TextParagraph', 'get_line_ascent', 2339986948);

  double getLineAscent(int line) {
    final arg0 = malloc<Int64>()..value = line;
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_line_ascent, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_line_descent =
      resolveMethodBind('TextParagraph', 'get_line_descent', 2339986948);

  double getLineDescent(int line) {
    final arg0 = malloc<Int64>()..value = line;
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_line_descent, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_line_width =
      resolveMethodBind('TextParagraph', 'get_line_width', 2339986948);

  double getLineWidth(int line) {
    final arg0 = malloc<Int64>()..value = line;
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_line_width, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_line_underline_position =
      resolveMethodBind('TextParagraph', 'get_line_underline_position', 2339986948);

  double getLineUnderlinePosition(int line) {
    final arg0 = malloc<Int64>()..value = line;
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_line_underline_position, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_line_underline_thickness =
      resolveMethodBind('TextParagraph', 'get_line_underline_thickness', 2339986948);

  double getLineUnderlineThickness(int line) {
    final arg0 = malloc<Int64>()..value = line;
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_line_underline_thickness, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_dropcap_size =
      resolveMethodBind('TextParagraph', 'get_dropcap_size', 3341600327);

  Vector2 getDropcapSize() {
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_dropcap_size, nativePtr, [], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_dropcap_lines =
      resolveMethodBind('TextParagraph', 'get_dropcap_lines', 3905245786);

  int getDropcapLines() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_dropcap_lines, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  // Skipped draw(): an argument type is unsupported.
  // Skipped draw_outline(): an argument type is unsupported.
  // Skipped draw_line(): an argument type is unsupported.
  // Skipped draw_line_outline(): an argument type is unsupported.
  // Skipped draw_dropcap(): an argument type is unsupported.
  // Skipped draw_dropcap_outline(): an argument type is unsupported.
  static final Pointer<Void> _mb_hit_test =
      resolveMethodBind('TextParagraph', 'hit_test', 3820158470);

  int hitTest(Vector2 coords) {
    final arg0 = malloc<Uint8>(Vector2.nativeSize);
    coords.writeTo(arg0, 0);
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_hit_test, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

}
