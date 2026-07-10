// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class CharFXTransform extends RefCounted {
  CharFXTransform(super.nativePtr);

  static final Pointer<Void> _mb_get_transform =
      resolveMethodBind('CharFXTransform', 'get_transform', 3761352769);

  Transform2D getTransform() {
    try {
      final ret = malloc<Uint8>(Transform2D.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_transform, nativePtr, [], ret.cast());
        return Transform2D.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_transform =
      resolveMethodBind('CharFXTransform', 'set_transform', 2761652528);

  void setTransform(Transform2D transform) {
    final arg0 = malloc<Uint8>(Transform2D.nativeSize);
    transform.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_transform, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_range =
      resolveMethodBind('CharFXTransform', 'get_range', 2741790807);

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

  static final Pointer<Void> _mb_set_range =
      resolveMethodBind('CharFXTransform', 'set_range', 1130785943);

  void setRange(Vector2i range) {
    final arg0 = malloc<Uint8>(Vector2i.nativeSize);
    range.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_range, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_elapsed_time =
      resolveMethodBind('CharFXTransform', 'get_elapsed_time', 191475506);

  double getElapsedTime() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_elapsed_time, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_elapsed_time =
      resolveMethodBind('CharFXTransform', 'set_elapsed_time', 373806689);

  void setElapsedTime(double time) {
    final arg0 = malloc<Double>()..value = time;
    try {
      ptrcallVoid(_mb_set_elapsed_time, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_visible =
      resolveMethodBind('CharFXTransform', 'is_visible', 2240911060);

  bool isVisible() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_visible, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_visibility =
      resolveMethodBind('CharFXTransform', 'set_visibility', 2586408642);

  void setVisibility(bool visibility) {
    final arg0 = malloc<Uint8>()..value = visibility ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_visibility, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_outline =
      resolveMethodBind('CharFXTransform', 'is_outline', 2240911060);

  bool isOutline() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_outline, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_outline =
      resolveMethodBind('CharFXTransform', 'set_outline', 2586408642);

  void setOutline(bool outline) {
    final arg0 = malloc<Uint8>()..value = outline ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_outline, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_offset =
      resolveMethodBind('CharFXTransform', 'get_offset', 1497962370);

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

  static final Pointer<Void> _mb_set_offset =
      resolveMethodBind('CharFXTransform', 'set_offset', 743155724);

  void setOffset(Vector2 offset) {
    final arg0 = malloc<Uint8>(Vector2.nativeSize);
    offset.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_offset, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_color =
      resolveMethodBind('CharFXTransform', 'get_color', 3200896285);

  Color getColor() {
    try {
      final ret = malloc<Uint8>(Color.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_color, nativePtr, [], ret.cast());
        return Color.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_color =
      resolveMethodBind('CharFXTransform', 'set_color', 2920490490);

  void setColor(Color color) {
    final arg0 = malloc<Uint8>(Color.nativeSize);
    color.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_color, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  // Skipped get_environment(): unsupported return type "Dictionary".
  // Skipped set_environment(): an argument type is unsupported.
  static final Pointer<Void> _mb_get_glyph_index =
      resolveMethodBind('CharFXTransform', 'get_glyph_index', 3905245786);

  int getGlyphIndex() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_glyph_index, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_glyph_index =
      resolveMethodBind('CharFXTransform', 'set_glyph_index', 1286410249);

  void setGlyphIndex(int glyphIndex) {
    final arg0 = malloc<Int64>()..value = glyphIndex;
    try {
      ptrcallVoid(_mb_set_glyph_index, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_relative_index =
      resolveMethodBind('CharFXTransform', 'get_relative_index', 3905245786);

  int getRelativeIndex() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_relative_index, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_relative_index =
      resolveMethodBind('CharFXTransform', 'set_relative_index', 1286410249);

  void setRelativeIndex(int relativeIndex) {
    final arg0 = malloc<Int64>()..value = relativeIndex;
    try {
      ptrcallVoid(_mb_set_relative_index, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_glyph_count =
      resolveMethodBind('CharFXTransform', 'get_glyph_count', 3905245786);

  int getGlyphCount() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_glyph_count, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_glyph_count =
      resolveMethodBind('CharFXTransform', 'set_glyph_count', 1286410249);

  void setGlyphCount(int glyphCount) {
    final arg0 = malloc<Int64>()..value = glyphCount;
    try {
      ptrcallVoid(_mb_set_glyph_count, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_glyph_flags =
      resolveMethodBind('CharFXTransform', 'get_glyph_flags', 3905245786);

  int getGlyphFlags() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_glyph_flags, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_glyph_flags =
      resolveMethodBind('CharFXTransform', 'set_glyph_flags', 1286410249);

  void setGlyphFlags(int glyphFlags) {
    final arg0 = malloc<Int64>()..value = glyphFlags;
    try {
      ptrcallVoid(_mb_set_glyph_flags, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  // Skipped get_font(): unsupported return type "RID".
  // Skipped set_font(): an argument type is unsupported.
}
