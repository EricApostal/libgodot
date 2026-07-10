// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class TextLine extends RefCounted {
  TextLine(super.nativePtr);

  static final Pointer<Void> _mb_clear =
      resolveMethodBind('TextLine', 'clear', 3218959716);

  void clear() {
    try {
      ptrcallVoid(_mb_clear, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_duplicate =
      resolveMethodBind('TextLine', 'duplicate', 1912703884);

  TextLine? duplicate() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_duplicate, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : TextLine(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_direction =
      resolveMethodBind('TextLine', 'set_direction', 1418190634);

  void setDirection(int direction) {
    final arg0 = malloc<Int64>()..value = direction;
    try {
      ptrcallVoid(_mb_set_direction, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_direction =
      resolveMethodBind('TextLine', 'get_direction', 2516697328);

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
      resolveMethodBind('TextLine', 'get_inferred_direction', 2516697328);

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

  static final Pointer<Void> _mb_set_orientation =
      resolveMethodBind('TextLine', 'set_orientation', 42823726);

  void setOrientation(int orientation) {
    final arg0 = malloc<Int64>()..value = orientation;
    try {
      ptrcallVoid(_mb_set_orientation, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_orientation =
      resolveMethodBind('TextLine', 'get_orientation', 175768116);

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
      resolveMethodBind('TextLine', 'set_preserve_invalid', 2586408642);

  void setPreserveInvalid(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_preserve_invalid, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_preserve_invalid =
      resolveMethodBind('TextLine', 'get_preserve_invalid', 36873697);

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
      resolveMethodBind('TextLine', 'set_preserve_control', 2586408642);

  void setPreserveControl(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_preserve_control, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_preserve_control =
      resolveMethodBind('TextLine', 'get_preserve_control', 36873697);

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
  // Skipped add_string(): an argument type is unsupported.
  // Skipped add_object(): an argument type is unsupported.
  // Skipped resize_object(): an argument type is unsupported.
  // Skipped has_object(): an argument type is unsupported.
  static final Pointer<Void> _mb_set_width =
      resolveMethodBind('TextLine', 'set_width', 373806689);

  void setWidth(double width) {
    final arg0 = malloc<Double>()..value = width;
    try {
      ptrcallVoid(_mb_set_width, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_width =
      resolveMethodBind('TextLine', 'get_width', 1740695150);

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

  static final Pointer<Void> _mb_set_horizontal_alignment =
      resolveMethodBind('TextLine', 'set_horizontal_alignment', 2312603777);

  void setHorizontalAlignment(int alignment) {
    final arg0 = malloc<Int64>()..value = alignment;
    try {
      ptrcallVoid(_mb_set_horizontal_alignment, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_horizontal_alignment =
      resolveMethodBind('TextLine', 'get_horizontal_alignment', 341400642);

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

  // Skipped tab_align(): an argument type is unsupported.
  static final Pointer<Void> _mb_set_flags =
      resolveMethodBind('TextLine', 'set_flags', 2877345813);

  void setFlags(int flags) {
    final arg0 = malloc<Int64>()..value = flags;
    try {
      ptrcallVoid(_mb_set_flags, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_flags =
      resolveMethodBind('TextLine', 'get_flags', 1583363614);

  int getFlags() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_flags, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_text_overrun_behavior =
      resolveMethodBind('TextLine', 'set_text_overrun_behavior', 1008890932);

  void setTextOverrunBehavior(int overrunBehavior) {
    final arg0 = malloc<Int64>()..value = overrunBehavior;
    try {
      ptrcallVoid(_mb_set_text_overrun_behavior, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_text_overrun_behavior =
      resolveMethodBind('TextLine', 'get_text_overrun_behavior', 3779142101);

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
      resolveMethodBind('TextLine', 'set_ellipsis_char', 83702148);

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
      resolveMethodBind('TextLine', 'get_ellipsis_char', 201670096);

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

  // Skipped get_objects(): unsupported return type "Array".
  // Skipped get_object_rect(): an argument type is unsupported.
  static final Pointer<Void> _mb_get_size =
      resolveMethodBind('TextLine', 'get_size', 3341600327);

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
  static final Pointer<Void> _mb_get_line_ascent =
      resolveMethodBind('TextLine', 'get_line_ascent', 1740695150);

  double getLineAscent() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_line_ascent, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_line_descent =
      resolveMethodBind('TextLine', 'get_line_descent', 1740695150);

  double getLineDescent() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_line_descent, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_line_width =
      resolveMethodBind('TextLine', 'get_line_width', 1740695150);

  double getLineWidth() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_line_width, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_line_underline_position =
      resolveMethodBind('TextLine', 'get_line_underline_position', 1740695150);

  double getLineUnderlinePosition() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_line_underline_position, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_line_underline_thickness =
      resolveMethodBind('TextLine', 'get_line_underline_thickness', 1740695150);

  double getLineUnderlineThickness() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_line_underline_thickness, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  // Skipped draw(): an argument type is unsupported.
  // Skipped draw_outline(): an argument type is unsupported.
  static final Pointer<Void> _mb_hit_test =
      resolveMethodBind('TextLine', 'hit_test', 2401831903);

  int hitTest(double coords) {
    final arg0 = malloc<Double>()..value = coords;
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
