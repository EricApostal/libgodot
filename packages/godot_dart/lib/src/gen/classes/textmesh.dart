// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class TextMesh extends PrimitiveMesh {
  TextMesh(super.nativePtr);

  /// Constructs a brand-new engine-owned TextMesh instance
  /// (via classdb_construct_object3), not an existing one.
  factory TextMesh.create() {
    return TextMesh(resolveClassConstructor('TextMesh'));
  }

  static final Pointer<Void> _mb_set_horizontal_alignment =
      resolveMethodBind('TextMesh', 'set_horizontal_alignment', 2312603777);

  void setHorizontalAlignment(int alignment) {
    final arg0 = malloc<Int64>()..value = alignment;
    try {
      ptrcallVoid(_mb_set_horizontal_alignment, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_horizontal_alignment =
      resolveMethodBind('TextMesh', 'get_horizontal_alignment', 341400642);

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
      resolveMethodBind('TextMesh', 'set_vertical_alignment', 1796458609);

  void setVerticalAlignment(int alignment) {
    final arg0 = malloc<Int64>()..value = alignment;
    try {
      ptrcallVoid(_mb_set_vertical_alignment, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_vertical_alignment =
      resolveMethodBind('TextMesh', 'get_vertical_alignment', 3274884059);

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
      resolveMethodBind('TextMesh', 'set_text', 83702148);

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
      resolveMethodBind('TextMesh', 'get_text', 201670096);

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

  static final Pointer<Void> _mb_set_font =
      resolveMethodBind('TextMesh', 'set_font', 1262170328);

  void setFont(Font font) {
    final arg0 = malloc<Pointer<Void>>()..value = font.nativePtr;
    try {
      ptrcallVoid(_mb_set_font, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_font =
      resolveMethodBind('TextMesh', 'get_font', 3229501585);

  Font? getFont() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_font, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Font(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_font_size =
      resolveMethodBind('TextMesh', 'set_font_size', 1286410249);

  void setFontSize(int fontSize) {
    final arg0 = malloc<Int64>()..value = fontSize;
    try {
      ptrcallVoid(_mb_set_font_size, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_font_size =
      resolveMethodBind('TextMesh', 'get_font_size', 3905245786);

  int getFontSize() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_font_size, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_line_spacing =
      resolveMethodBind('TextMesh', 'set_line_spacing', 373806689);

  void setLineSpacing(double lineSpacing) {
    final arg0 = malloc<Double>()..value = lineSpacing;
    try {
      ptrcallVoid(_mb_set_line_spacing, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_line_spacing =
      resolveMethodBind('TextMesh', 'get_line_spacing', 1740695150);

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

  static final Pointer<Void> _mb_set_autowrap_mode =
      resolveMethodBind('TextMesh', 'set_autowrap_mode', 3289138044);

  void setAutowrapMode(int autowrapMode) {
    final arg0 = malloc<Int64>()..value = autowrapMode;
    try {
      ptrcallVoid(_mb_set_autowrap_mode, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_autowrap_mode =
      resolveMethodBind('TextMesh', 'get_autowrap_mode', 1549071663);

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

  static final Pointer<Void> _mb_set_justification_flags =
      resolveMethodBind('TextMesh', 'set_justification_flags', 2877345813);

  void setJustificationFlags(int justificationFlags) {
    final arg0 = malloc<Int64>()..value = justificationFlags;
    try {
      ptrcallVoid(_mb_set_justification_flags, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_justification_flags =
      resolveMethodBind('TextMesh', 'get_justification_flags', 1583363614);

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

  static final Pointer<Void> _mb_set_depth =
      resolveMethodBind('TextMesh', 'set_depth', 373806689);

  void setDepth(double depth) {
    final arg0 = malloc<Double>()..value = depth;
    try {
      ptrcallVoid(_mb_set_depth, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_depth =
      resolveMethodBind('TextMesh', 'get_depth', 1740695150);

  double getDepth() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_depth, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_width =
      resolveMethodBind('TextMesh', 'set_width', 373806689);

  void setWidth(double width) {
    final arg0 = malloc<Double>()..value = width;
    try {
      ptrcallVoid(_mb_set_width, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_width =
      resolveMethodBind('TextMesh', 'get_width', 1740695150);

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

  static final Pointer<Void> _mb_set_pixel_size =
      resolveMethodBind('TextMesh', 'set_pixel_size', 373806689);

  void setPixelSize(double pixelSize) {
    final arg0 = malloc<Double>()..value = pixelSize;
    try {
      ptrcallVoid(_mb_set_pixel_size, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_pixel_size =
      resolveMethodBind('TextMesh', 'get_pixel_size', 1740695150);

  double getPixelSize() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_pixel_size, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_offset =
      resolveMethodBind('TextMesh', 'set_offset', 743155724);

  void setOffset(Vector2 offset) {
    final arg0 = malloc<Uint8>(Vector2.nativeSize);
    offset.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_offset, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_offset =
      resolveMethodBind('TextMesh', 'get_offset', 3341600327);

  Vector2 getOffset() {
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_offset, nativePtr, [], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_curve_step =
      resolveMethodBind('TextMesh', 'set_curve_step', 373806689);

  void setCurveStep(double curveStep) {
    final arg0 = malloc<Double>()..value = curveStep;
    try {
      ptrcallVoid(_mb_set_curve_step, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_curve_step =
      resolveMethodBind('TextMesh', 'get_curve_step', 1740695150);

  double getCurveStep() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_curve_step, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_text_direction =
      resolveMethodBind('TextMesh', 'set_text_direction', 1418190634);

  void setTextDirection(int direction) {
    final arg0 = malloc<Int64>()..value = direction;
    try {
      ptrcallVoid(_mb_set_text_direction, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_text_direction =
      resolveMethodBind('TextMesh', 'get_text_direction', 2516697328);

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
      resolveMethodBind('TextMesh', 'set_language', 83702148);

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
      resolveMethodBind('TextMesh', 'get_language', 201670096);

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

  static final Pointer<Void> _mb_set_structured_text_bidi_override =
      resolveMethodBind('TextMesh', 'set_structured_text_bidi_override', 55961453);

  void setStructuredTextBidiOverride(int parser) {
    final arg0 = malloc<Int64>()..value = parser;
    try {
      ptrcallVoid(_mb_set_structured_text_bidi_override, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_structured_text_bidi_override =
      resolveMethodBind('TextMesh', 'get_structured_text_bidi_override', 3385126229);

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
  static final Pointer<Void> _mb_set_uppercase =
      resolveMethodBind('TextMesh', 'set_uppercase', 2586408642);

  void setUppercase(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_uppercase, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_uppercase =
      resolveMethodBind('TextMesh', 'is_uppercase', 36873697);

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

}
