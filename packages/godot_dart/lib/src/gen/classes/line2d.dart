// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class Line2D extends Node2D {
  Line2D(super.nativePtr);

  // Skipped set_points(): an argument type is unsupported.
  // Skipped get_points(): unsupported return type "PackedVector2Array".
  static final Pointer<Void> _mb_set_point_position =
      resolveMethodBind('Line2D', 'set_point_position', 163021252);

  void setPointPosition(int index, Vector2 position) {
    final arg0 = malloc<Int64>()..value = index;
    final arg1 = malloc<Uint8>(Vector2.nativeSize);
    position.writeTo(arg1, 0);
    try {
      ptrcallVoid(_mb_set_point_position, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_point_position =
      resolveMethodBind('Line2D', 'get_point_position', 2299179447);

  Vector2 getPointPosition(int index) {
    final arg0 = malloc<Int64>()..value = index;
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_point_position, nativePtr, [arg0.cast<Void>()], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_point_count =
      resolveMethodBind('Line2D', 'get_point_count', 3905245786);

  int getPointCount() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_point_count, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_add_point =
      resolveMethodBind('Line2D', 'add_point', 2654014372);

  void addPoint(Vector2 position, int index) {
    final arg0 = malloc<Uint8>(Vector2.nativeSize);
    position.writeTo(arg0, 0);
    final arg1 = malloc<Int64>()..value = index;
    try {
      ptrcallVoid(_mb_add_point, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_remove_point =
      resolveMethodBind('Line2D', 'remove_point', 1286410249);

  void removePoint(int index) {
    final arg0 = malloc<Int64>()..value = index;
    try {
      ptrcallVoid(_mb_remove_point, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_clear_points =
      resolveMethodBind('Line2D', 'clear_points', 3218959716);

  void clearPoints() {
    try {
      ptrcallVoid(_mb_clear_points, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_closed =
      resolveMethodBind('Line2D', 'set_closed', 2586408642);

  void setClosed(bool closed) {
    final arg0 = malloc<Uint8>()..value = closed ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_closed, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_closed =
      resolveMethodBind('Line2D', 'is_closed', 36873697);

  bool isClosed() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_closed, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_width =
      resolveMethodBind('Line2D', 'set_width', 373806689);

  void setWidth(double width) {
    final arg0 = malloc<Double>()..value = width;
    try {
      ptrcallVoid(_mb_set_width, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_width =
      resolveMethodBind('Line2D', 'get_width', 1740695150);

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

  static final Pointer<Void> _mb_set_curve =
      resolveMethodBind('Line2D', 'set_curve', 270443179);

  void setCurve(Curve curve) {
    final arg0 = malloc<Pointer<Void>>()..value = curve.nativePtr;
    try {
      ptrcallVoid(_mb_set_curve, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_curve =
      resolveMethodBind('Line2D', 'get_curve', 2460114913);

  Curve? getCurve() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_curve, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Curve(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_default_color =
      resolveMethodBind('Line2D', 'set_default_color', 2920490490);

  void setDefaultColor(Color color) {
    final arg0 = malloc<Uint8>(Color.nativeSize);
    color.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_default_color, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_default_color =
      resolveMethodBind('Line2D', 'get_default_color', 3444240500);

  Color getDefaultColor() {
    try {
      final ret = malloc<Uint8>(Color.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_default_color, nativePtr, [], ret.cast());
        return Color.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_gradient =
      resolveMethodBind('Line2D', 'set_gradient', 2756054477);

  void setGradient(Gradient color) {
    final arg0 = malloc<Pointer<Void>>()..value = color.nativePtr;
    try {
      ptrcallVoid(_mb_set_gradient, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_gradient =
      resolveMethodBind('Line2D', 'get_gradient', 132272999);

  Gradient? getGradient() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_gradient, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Gradient(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_texture =
      resolveMethodBind('Line2D', 'set_texture', 4051416890);

  void setTexture(Texture2D texture) {
    final arg0 = malloc<Pointer<Void>>()..value = texture.nativePtr;
    try {
      ptrcallVoid(_mb_set_texture, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_texture =
      resolveMethodBind('Line2D', 'get_texture', 3635182373);

  Texture2D? getTexture() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_texture, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Texture2D(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_texture_mode =
      resolveMethodBind('Line2D', 'set_texture_mode', 1952559516);

  void setTextureMode(int mode) {
    final arg0 = malloc<Int64>()..value = mode;
    try {
      ptrcallVoid(_mb_set_texture_mode, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_texture_mode =
      resolveMethodBind('Line2D', 'get_texture_mode', 2341040722);

  int getTextureMode() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_texture_mode, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_joint_mode =
      resolveMethodBind('Line2D', 'set_joint_mode', 604292979);

  void setJointMode(int mode) {
    final arg0 = malloc<Int64>()..value = mode;
    try {
      ptrcallVoid(_mb_set_joint_mode, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_joint_mode =
      resolveMethodBind('Line2D', 'get_joint_mode', 2546544037);

  int getJointMode() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_joint_mode, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_begin_cap_mode =
      resolveMethodBind('Line2D', 'set_begin_cap_mode', 1669024546);

  void setBeginCapMode(int mode) {
    final arg0 = malloc<Int64>()..value = mode;
    try {
      ptrcallVoid(_mb_set_begin_cap_mode, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_begin_cap_mode =
      resolveMethodBind('Line2D', 'get_begin_cap_mode', 1107511441);

  int getBeginCapMode() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_begin_cap_mode, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_end_cap_mode =
      resolveMethodBind('Line2D', 'set_end_cap_mode', 1669024546);

  void setEndCapMode(int mode) {
    final arg0 = malloc<Int64>()..value = mode;
    try {
      ptrcallVoid(_mb_set_end_cap_mode, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_end_cap_mode =
      resolveMethodBind('Line2D', 'get_end_cap_mode', 1107511441);

  int getEndCapMode() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_end_cap_mode, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_sharp_limit =
      resolveMethodBind('Line2D', 'set_sharp_limit', 373806689);

  void setSharpLimit(double limit) {
    final arg0 = malloc<Double>()..value = limit;
    try {
      ptrcallVoid(_mb_set_sharp_limit, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_sharp_limit =
      resolveMethodBind('Line2D', 'get_sharp_limit', 1740695150);

  double getSharpLimit() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_sharp_limit, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_round_precision =
      resolveMethodBind('Line2D', 'set_round_precision', 1286410249);

  void setRoundPrecision(int precision) {
    final arg0 = malloc<Int64>()..value = precision;
    try {
      ptrcallVoid(_mb_set_round_precision, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_round_precision =
      resolveMethodBind('Line2D', 'get_round_precision', 3905245786);

  int getRoundPrecision() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_round_precision, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_antialiased =
      resolveMethodBind('Line2D', 'set_antialiased', 2586408642);

  void setAntialiased(bool antialiased) {
    final arg0 = malloc<Uint8>()..value = antialiased ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_antialiased, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_antialiased =
      resolveMethodBind('Line2D', 'get_antialiased', 36873697);

  bool getAntialiased() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_antialiased, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
