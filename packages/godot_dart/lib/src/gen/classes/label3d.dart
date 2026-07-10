// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class Label3D extends GeometryInstance3D {
  Label3D(super.nativePtr);

  /// Constructs a brand-new engine-owned Label3D instance
  /// (via classdb_construct_object3), not an existing one.
  factory Label3D.create() {
    return Label3D(resolveClassConstructor('Label3D'));
  }

  static final Pointer<Void> _mb_set_horizontal_alignment =
      resolveMethodBind('Label3D', 'set_horizontal_alignment', 2312603777);

  void setHorizontalAlignment(int alignment) {
    final arg0 = malloc<Int64>()..value = alignment;
    try {
      ptrcallVoid(_mb_set_horizontal_alignment, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_horizontal_alignment =
      resolveMethodBind('Label3D', 'get_horizontal_alignment', 341400642);

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
      resolveMethodBind('Label3D', 'set_vertical_alignment', 1796458609);

  void setVerticalAlignment(int alignment) {
    final arg0 = malloc<Int64>()..value = alignment;
    try {
      ptrcallVoid(_mb_set_vertical_alignment, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_vertical_alignment =
      resolveMethodBind('Label3D', 'get_vertical_alignment', 3274884059);

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

  static final Pointer<Void> _mb_set_modulate =
      resolveMethodBind('Label3D', 'set_modulate', 2920490490);

  void setModulate(Color modulate) {
    final arg0 = malloc<Uint8>(Color.nativeSize);
    modulate.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_modulate, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_modulate =
      resolveMethodBind('Label3D', 'get_modulate', 3444240500);

  Color getModulate() {
    try {
      final ret = malloc<Uint8>(Color.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_modulate, nativePtr, [], ret.cast());
        return Color.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_outline_modulate =
      resolveMethodBind('Label3D', 'set_outline_modulate', 2920490490);

  void setOutlineModulate(Color modulate) {
    final arg0 = malloc<Uint8>(Color.nativeSize);
    modulate.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_outline_modulate, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_outline_modulate =
      resolveMethodBind('Label3D', 'get_outline_modulate', 3444240500);

  Color getOutlineModulate() {
    try {
      final ret = malloc<Uint8>(Color.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_outline_modulate, nativePtr, [], ret.cast());
        return Color.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_text =
      resolveMethodBind('Label3D', 'set_text', 83702148);

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
      resolveMethodBind('Label3D', 'get_text', 201670096);

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

  static final Pointer<Void> _mb_set_text_direction =
      resolveMethodBind('Label3D', 'set_text_direction', 1418190634);

  void setTextDirection(int direction) {
    final arg0 = malloc<Int64>()..value = direction;
    try {
      ptrcallVoid(_mb_set_text_direction, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_text_direction =
      resolveMethodBind('Label3D', 'get_text_direction', 2516697328);

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
      resolveMethodBind('Label3D', 'set_language', 83702148);

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
      resolveMethodBind('Label3D', 'get_language', 201670096);

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
      resolveMethodBind('Label3D', 'set_structured_text_bidi_override', 55961453);

  void setStructuredTextBidiOverride(int parser) {
    final arg0 = malloc<Int64>()..value = parser;
    try {
      ptrcallVoid(_mb_set_structured_text_bidi_override, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_structured_text_bidi_override =
      resolveMethodBind('Label3D', 'get_structured_text_bidi_override', 3385126229);

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
      resolveMethodBind('Label3D', 'set_uppercase', 2586408642);

  void setUppercase(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_uppercase, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_uppercase =
      resolveMethodBind('Label3D', 'is_uppercase', 36873697);

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

  static final Pointer<Void> _mb_set_render_priority =
      resolveMethodBind('Label3D', 'set_render_priority', 1286410249);

  void setRenderPriority(int priority) {
    final arg0 = malloc<Int64>()..value = priority;
    try {
      ptrcallVoid(_mb_set_render_priority, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_render_priority =
      resolveMethodBind('Label3D', 'get_render_priority', 3905245786);

  int getRenderPriority() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_render_priority, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_outline_render_priority =
      resolveMethodBind('Label3D', 'set_outline_render_priority', 1286410249);

  void setOutlineRenderPriority(int priority) {
    final arg0 = malloc<Int64>()..value = priority;
    try {
      ptrcallVoid(_mb_set_outline_render_priority, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_outline_render_priority =
      resolveMethodBind('Label3D', 'get_outline_render_priority', 3905245786);

  int getOutlineRenderPriority() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_outline_render_priority, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_font =
      resolveMethodBind('Label3D', 'set_font', 1262170328);

  void setFont(Font font) {
    final arg0 = malloc<Pointer<Void>>()..value = font.nativePtr;
    try {
      ptrcallVoid(_mb_set_font, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_font =
      resolveMethodBind('Label3D', 'get_font', 3229501585);

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
      resolveMethodBind('Label3D', 'set_font_size', 1286410249);

  void setFontSize(int size) {
    final arg0 = malloc<Int64>()..value = size;
    try {
      ptrcallVoid(_mb_set_font_size, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_font_size =
      resolveMethodBind('Label3D', 'get_font_size', 3905245786);

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

  static final Pointer<Void> _mb_set_outline_size =
      resolveMethodBind('Label3D', 'set_outline_size', 1286410249);

  void setOutlineSize(int outlineSize) {
    final arg0 = malloc<Int64>()..value = outlineSize;
    try {
      ptrcallVoid(_mb_set_outline_size, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_outline_size =
      resolveMethodBind('Label3D', 'get_outline_size', 3905245786);

  int getOutlineSize() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_outline_size, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_line_spacing =
      resolveMethodBind('Label3D', 'set_line_spacing', 373806689);

  void setLineSpacing(double lineSpacing) {
    final arg0 = malloc<Double>()..value = lineSpacing;
    try {
      ptrcallVoid(_mb_set_line_spacing, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_line_spacing =
      resolveMethodBind('Label3D', 'get_line_spacing', 1740695150);

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
      resolveMethodBind('Label3D', 'set_autowrap_mode', 3289138044);

  void setAutowrapMode(int autowrapMode) {
    final arg0 = malloc<Int64>()..value = autowrapMode;
    try {
      ptrcallVoid(_mb_set_autowrap_mode, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_autowrap_mode =
      resolveMethodBind('Label3D', 'get_autowrap_mode', 1549071663);

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
      resolveMethodBind('Label3D', 'set_autowrap_trim_flags', 2809697122);

  void setAutowrapTrimFlags(int autowrapTrimFlags) {
    final arg0 = malloc<Int64>()..value = autowrapTrimFlags;
    try {
      ptrcallVoid(_mb_set_autowrap_trim_flags, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_autowrap_trim_flags =
      resolveMethodBind('Label3D', 'get_autowrap_trim_flags', 2340632602);

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
      resolveMethodBind('Label3D', 'set_justification_flags', 2877345813);

  void setJustificationFlags(int justificationFlags) {
    final arg0 = malloc<Int64>()..value = justificationFlags;
    try {
      ptrcallVoid(_mb_set_justification_flags, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_justification_flags =
      resolveMethodBind('Label3D', 'get_justification_flags', 1583363614);

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

  static final Pointer<Void> _mb_set_width =
      resolveMethodBind('Label3D', 'set_width', 373806689);

  void setWidth(double width) {
    final arg0 = malloc<Double>()..value = width;
    try {
      ptrcallVoid(_mb_set_width, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_width =
      resolveMethodBind('Label3D', 'get_width', 1740695150);

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
      resolveMethodBind('Label3D', 'set_pixel_size', 373806689);

  void setPixelSize(double pixelSize) {
    final arg0 = malloc<Double>()..value = pixelSize;
    try {
      ptrcallVoid(_mb_set_pixel_size, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_pixel_size =
      resolveMethodBind('Label3D', 'get_pixel_size', 1740695150);

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
      resolveMethodBind('Label3D', 'set_offset', 743155724);

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
      resolveMethodBind('Label3D', 'get_offset', 3341600327);

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

  static final Pointer<Void> _mb_set_draw_flag =
      resolveMethodBind('Label3D', 'set_draw_flag', 1285833066);

  void setDrawFlag(int flag, bool enabled) {
    final arg0 = malloc<Int64>()..value = flag;
    final arg1 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_draw_flag, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_draw_flag =
      resolveMethodBind('Label3D', 'get_draw_flag', 259226453);

  bool getDrawFlag(int flag) {
    final arg0 = malloc<Int64>()..value = flag;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_draw_flag, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_billboard_mode =
      resolveMethodBind('Label3D', 'set_billboard_mode', 4202036497);

  void setBillboardMode(int mode) {
    final arg0 = malloc<Int64>()..value = mode;
    try {
      ptrcallVoid(_mb_set_billboard_mode, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_billboard_mode =
      resolveMethodBind('Label3D', 'get_billboard_mode', 1283840139);

  int getBillboardMode() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_billboard_mode, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_alpha_cut_mode =
      resolveMethodBind('Label3D', 'set_alpha_cut_mode', 2549142916);

  void setAlphaCutMode(int mode) {
    final arg0 = malloc<Int64>()..value = mode;
    try {
      ptrcallVoid(_mb_set_alpha_cut_mode, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_alpha_cut_mode =
      resolveMethodBind('Label3D', 'get_alpha_cut_mode', 219468601);

  int getAlphaCutMode() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_alpha_cut_mode, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_alpha_scissor_threshold =
      resolveMethodBind('Label3D', 'set_alpha_scissor_threshold', 373806689);

  void setAlphaScissorThreshold(double threshold) {
    final arg0 = malloc<Double>()..value = threshold;
    try {
      ptrcallVoid(_mb_set_alpha_scissor_threshold, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_alpha_scissor_threshold =
      resolveMethodBind('Label3D', 'get_alpha_scissor_threshold', 1740695150);

  double getAlphaScissorThreshold() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_alpha_scissor_threshold, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_alpha_hash_scale =
      resolveMethodBind('Label3D', 'set_alpha_hash_scale', 373806689);

  void setAlphaHashScale(double threshold) {
    final arg0 = malloc<Double>()..value = threshold;
    try {
      ptrcallVoid(_mb_set_alpha_hash_scale, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_alpha_hash_scale =
      resolveMethodBind('Label3D', 'get_alpha_hash_scale', 1740695150);

  double getAlphaHashScale() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_alpha_hash_scale, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_alpha_antialiasing =
      resolveMethodBind('Label3D', 'set_alpha_antialiasing', 3212649852);

  void setAlphaAntialiasing(int alphaAa) {
    final arg0 = malloc<Int64>()..value = alphaAa;
    try {
      ptrcallVoid(_mb_set_alpha_antialiasing, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_alpha_antialiasing =
      resolveMethodBind('Label3D', 'get_alpha_antialiasing', 2889939400);

  int getAlphaAntialiasing() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_alpha_antialiasing, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_alpha_antialiasing_edge =
      resolveMethodBind('Label3D', 'set_alpha_antialiasing_edge', 373806689);

  void setAlphaAntialiasingEdge(double edge) {
    final arg0 = malloc<Double>()..value = edge;
    try {
      ptrcallVoid(_mb_set_alpha_antialiasing_edge, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_alpha_antialiasing_edge =
      resolveMethodBind('Label3D', 'get_alpha_antialiasing_edge', 1740695150);

  double getAlphaAntialiasingEdge() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_alpha_antialiasing_edge, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_texture_filter =
      resolveMethodBind('Label3D', 'set_texture_filter', 22904437);

  void setTextureFilter(int mode) {
    final arg0 = malloc<Int64>()..value = mode;
    try {
      ptrcallVoid(_mb_set_texture_filter, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_texture_filter =
      resolveMethodBind('Label3D', 'get_texture_filter', 3289213076);

  int getTextureFilter() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_texture_filter, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_generate_triangle_mesh =
      resolveMethodBind('Label3D', 'generate_triangle_mesh', 3476533166);

  TriangleMesh? generateTriangleMesh() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_generate_triangle_mesh, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : TriangleMesh(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
