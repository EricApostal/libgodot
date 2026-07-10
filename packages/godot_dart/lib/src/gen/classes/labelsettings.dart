// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class LabelSettings extends Resource {
  LabelSettings(super.nativePtr);

  /// Constructs a brand-new engine-owned LabelSettings instance
  /// (via classdb_construct_object3), not an existing one.
  factory LabelSettings.create() {
    return LabelSettings(resolveClassConstructor('LabelSettings'));
  }

  static final Pointer<Void> _mb_set_line_spacing =
      resolveMethodBind('LabelSettings', 'set_line_spacing', 373806689);

  void setLineSpacing(double spacing) {
    final arg0 = malloc<Double>()..value = spacing;
    try {
      ptrcallVoid(_mb_set_line_spacing, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_line_spacing =
      resolveMethodBind('LabelSettings', 'get_line_spacing', 1740695150);

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

  static final Pointer<Void> _mb_set_paragraph_spacing =
      resolveMethodBind('LabelSettings', 'set_paragraph_spacing', 373806689);

  void setParagraphSpacing(double spacing) {
    final arg0 = malloc<Double>()..value = spacing;
    try {
      ptrcallVoid(_mb_set_paragraph_spacing, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_paragraph_spacing =
      resolveMethodBind('LabelSettings', 'get_paragraph_spacing', 1740695150);

  double getParagraphSpacing() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_paragraph_spacing, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_font =
      resolveMethodBind('LabelSettings', 'set_font', 1262170328);

  void setFont(Font font) {
    final arg0 = malloc<Pointer<Void>>()..value = font.nativePtr;
    try {
      ptrcallVoid(_mb_set_font, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_font =
      resolveMethodBind('LabelSettings', 'get_font', 3229501585);

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
      resolveMethodBind('LabelSettings', 'set_font_size', 1286410249);

  void setFontSize(int size) {
    final arg0 = malloc<Int64>()..value = size;
    try {
      ptrcallVoid(_mb_set_font_size, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_font_size =
      resolveMethodBind('LabelSettings', 'get_font_size', 3905245786);

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

  static final Pointer<Void> _mb_set_font_color =
      resolveMethodBind('LabelSettings', 'set_font_color', 2920490490);

  void setFontColor(Color color) {
    final arg0 = malloc<Uint8>(Color.nativeSize);
    color.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_font_color, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_font_color =
      resolveMethodBind('LabelSettings', 'get_font_color', 3444240500);

  Color getFontColor() {
    try {
      final ret = malloc<Uint8>(Color.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_font_color, nativePtr, [], ret.cast());
        return Color.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_outline_size =
      resolveMethodBind('LabelSettings', 'set_outline_size', 1286410249);

  void setOutlineSize(int size) {
    final arg0 = malloc<Int64>()..value = size;
    try {
      ptrcallVoid(_mb_set_outline_size, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_outline_size =
      resolveMethodBind('LabelSettings', 'get_outline_size', 3905245786);

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

  static final Pointer<Void> _mb_set_outline_color =
      resolveMethodBind('LabelSettings', 'set_outline_color', 2920490490);

  void setOutlineColor(Color color) {
    final arg0 = malloc<Uint8>(Color.nativeSize);
    color.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_outline_color, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_outline_color =
      resolveMethodBind('LabelSettings', 'get_outline_color', 3444240500);

  Color getOutlineColor() {
    try {
      final ret = malloc<Uint8>(Color.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_outline_color, nativePtr, [], ret.cast());
        return Color.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_shadow_size =
      resolveMethodBind('LabelSettings', 'set_shadow_size', 1286410249);

  void setShadowSize(int size) {
    final arg0 = malloc<Int64>()..value = size;
    try {
      ptrcallVoid(_mb_set_shadow_size, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_shadow_size =
      resolveMethodBind('LabelSettings', 'get_shadow_size', 3905245786);

  int getShadowSize() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_shadow_size, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_shadow_color =
      resolveMethodBind('LabelSettings', 'set_shadow_color', 2920490490);

  void setShadowColor(Color color) {
    final arg0 = malloc<Uint8>(Color.nativeSize);
    color.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_shadow_color, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_shadow_color =
      resolveMethodBind('LabelSettings', 'get_shadow_color', 3444240500);

  Color getShadowColor() {
    try {
      final ret = malloc<Uint8>(Color.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_shadow_color, nativePtr, [], ret.cast());
        return Color.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_shadow_offset =
      resolveMethodBind('LabelSettings', 'set_shadow_offset', 743155724);

  void setShadowOffset(Vector2 offset) {
    final arg0 = malloc<Uint8>(Vector2.nativeSize);
    offset.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_shadow_offset, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_shadow_offset =
      resolveMethodBind('LabelSettings', 'get_shadow_offset', 3341600327);

  Vector2 getShadowOffset() {
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_shadow_offset, nativePtr, [], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_stacked_outline_count =
      resolveMethodBind('LabelSettings', 'get_stacked_outline_count', 3905245786);

  int getStackedOutlineCount() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_stacked_outline_count, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_stacked_outline_count =
      resolveMethodBind('LabelSettings', 'set_stacked_outline_count', 1286410249);

  void setStackedOutlineCount(int count) {
    final arg0 = malloc<Int64>()..value = count;
    try {
      ptrcallVoid(_mb_set_stacked_outline_count, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_add_stacked_outline =
      resolveMethodBind('LabelSettings', 'add_stacked_outline', 1025054187);

  void addStackedOutline(int index) {
    final arg0 = malloc<Int64>()..value = index;
    try {
      ptrcallVoid(_mb_add_stacked_outline, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_move_stacked_outline =
      resolveMethodBind('LabelSettings', 'move_stacked_outline', 3937882851);

  void moveStackedOutline(int fromIndex, int toPosition) {
    final arg0 = malloc<Int64>()..value = fromIndex;
    final arg1 = malloc<Int64>()..value = toPosition;
    try {
      ptrcallVoid(_mb_move_stacked_outline, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_remove_stacked_outline =
      resolveMethodBind('LabelSettings', 'remove_stacked_outline', 1286410249);

  void removeStackedOutline(int index) {
    final arg0 = malloc<Int64>()..value = index;
    try {
      ptrcallVoid(_mb_remove_stacked_outline, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_stacked_outline_size =
      resolveMethodBind('LabelSettings', 'set_stacked_outline_size', 3937882851);

  void setStackedOutlineSize(int index, int size) {
    final arg0 = malloc<Int64>()..value = index;
    final arg1 = malloc<Int64>()..value = size;
    try {
      ptrcallVoid(_mb_set_stacked_outline_size, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_stacked_outline_size =
      resolveMethodBind('LabelSettings', 'get_stacked_outline_size', 923996154);

  int getStackedOutlineSize(int index) {
    final arg0 = malloc<Int64>()..value = index;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_stacked_outline_size, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_stacked_outline_color =
      resolveMethodBind('LabelSettings', 'set_stacked_outline_color', 2878471219);

  void setStackedOutlineColor(int index, Color color) {
    final arg0 = malloc<Int64>()..value = index;
    final arg1 = malloc<Uint8>(Color.nativeSize);
    color.writeTo(arg1, 0);
    try {
      ptrcallVoid(_mb_set_stacked_outline_color, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_stacked_outline_color =
      resolveMethodBind('LabelSettings', 'get_stacked_outline_color', 3457211756);

  Color getStackedOutlineColor(int index) {
    final arg0 = malloc<Int64>()..value = index;
    try {
      final ret = malloc<Uint8>(Color.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_stacked_outline_color, nativePtr, [arg0.cast<Void>()], ret.cast());
        return Color.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_stacked_shadow_count =
      resolveMethodBind('LabelSettings', 'get_stacked_shadow_count', 3905245786);

  int getStackedShadowCount() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_stacked_shadow_count, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_stacked_shadow_count =
      resolveMethodBind('LabelSettings', 'set_stacked_shadow_count', 1286410249);

  void setStackedShadowCount(int count) {
    final arg0 = malloc<Int64>()..value = count;
    try {
      ptrcallVoid(_mb_set_stacked_shadow_count, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_add_stacked_shadow =
      resolveMethodBind('LabelSettings', 'add_stacked_shadow', 1025054187);

  void addStackedShadow(int index) {
    final arg0 = malloc<Int64>()..value = index;
    try {
      ptrcallVoid(_mb_add_stacked_shadow, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_move_stacked_shadow =
      resolveMethodBind('LabelSettings', 'move_stacked_shadow', 3937882851);

  void moveStackedShadow(int fromIndex, int toPosition) {
    final arg0 = malloc<Int64>()..value = fromIndex;
    final arg1 = malloc<Int64>()..value = toPosition;
    try {
      ptrcallVoid(_mb_move_stacked_shadow, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_remove_stacked_shadow =
      resolveMethodBind('LabelSettings', 'remove_stacked_shadow', 1286410249);

  void removeStackedShadow(int index) {
    final arg0 = malloc<Int64>()..value = index;
    try {
      ptrcallVoid(_mb_remove_stacked_shadow, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_stacked_shadow_offset =
      resolveMethodBind('LabelSettings', 'set_stacked_shadow_offset', 163021252);

  void setStackedShadowOffset(int index, Vector2 offset) {
    final arg0 = malloc<Int64>()..value = index;
    final arg1 = malloc<Uint8>(Vector2.nativeSize);
    offset.writeTo(arg1, 0);
    try {
      ptrcallVoid(_mb_set_stacked_shadow_offset, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_stacked_shadow_offset =
      resolveMethodBind('LabelSettings', 'get_stacked_shadow_offset', 2299179447);

  Vector2 getStackedShadowOffset(int index) {
    final arg0 = malloc<Int64>()..value = index;
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_stacked_shadow_offset, nativePtr, [arg0.cast<Void>()], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_stacked_shadow_color =
      resolveMethodBind('LabelSettings', 'set_stacked_shadow_color', 2878471219);

  void setStackedShadowColor(int index, Color color) {
    final arg0 = malloc<Int64>()..value = index;
    final arg1 = malloc<Uint8>(Color.nativeSize);
    color.writeTo(arg1, 0);
    try {
      ptrcallVoid(_mb_set_stacked_shadow_color, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_stacked_shadow_color =
      resolveMethodBind('LabelSettings', 'get_stacked_shadow_color', 3457211756);

  Color getStackedShadowColor(int index) {
    final arg0 = malloc<Int64>()..value = index;
    try {
      final ret = malloc<Uint8>(Color.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_stacked_shadow_color, nativePtr, [arg0.cast<Void>()], ret.cast());
        return Color.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_stacked_shadow_outline_size =
      resolveMethodBind('LabelSettings', 'set_stacked_shadow_outline_size', 3937882851);

  void setStackedShadowOutlineSize(int index, int size) {
    final arg0 = malloc<Int64>()..value = index;
    final arg1 = malloc<Int64>()..value = size;
    try {
      ptrcallVoid(_mb_set_stacked_shadow_outline_size, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_stacked_shadow_outline_size =
      resolveMethodBind('LabelSettings', 'get_stacked_shadow_outline_size', 923996154);

  int getStackedShadowOutlineSize(int index) {
    final arg0 = malloc<Int64>()..value = index;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_stacked_shadow_outline_size, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

}
