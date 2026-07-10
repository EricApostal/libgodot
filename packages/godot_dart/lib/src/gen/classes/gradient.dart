// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class Gradient extends Resource {
  Gradient(super.nativePtr);

  static final Pointer<Void> _mb_add_point =
      resolveMethodBind('Gradient', 'add_point', 3629403827);

  void addPoint(double offset, Color color) {
    final arg0 = malloc<Double>()..value = offset;
    final arg1 = malloc<Uint8>(Color.nativeSize);
    color.writeTo(arg1, 0);
    try {
      ptrcallVoid(_mb_add_point, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_remove_point =
      resolveMethodBind('Gradient', 'remove_point', 1286410249);

  void removePoint(int point) {
    final arg0 = malloc<Int64>()..value = point;
    try {
      ptrcallVoid(_mb_remove_point, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_offset =
      resolveMethodBind('Gradient', 'set_offset', 1602489585);

  void setOffset(int point, double offset) {
    final arg0 = malloc<Int64>()..value = point;
    final arg1 = malloc<Double>()..value = offset;
    try {
      ptrcallVoid(_mb_set_offset, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_offset =
      resolveMethodBind('Gradient', 'get_offset', 4025615559);

  double getOffset(int point) {
    final arg0 = malloc<Int64>()..value = point;
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_offset, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_reverse =
      resolveMethodBind('Gradient', 'reverse', 3218959716);

  void reverse() {
    try {
      ptrcallVoid(_mb_reverse, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_color =
      resolveMethodBind('Gradient', 'set_color', 2878471219);

  void setColor(int point, Color color) {
    final arg0 = malloc<Int64>()..value = point;
    final arg1 = malloc<Uint8>(Color.nativeSize);
    color.writeTo(arg1, 0);
    try {
      ptrcallVoid(_mb_set_color, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_color =
      resolveMethodBind('Gradient', 'get_color', 2624840992);

  Color getColor(int point) {
    final arg0 = malloc<Int64>()..value = point;
    try {
      final ret = malloc<Uint8>(Color.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_color, nativePtr, [arg0.cast<Void>()], ret.cast());
        return Color.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_sample =
      resolveMethodBind('Gradient', 'sample', 1250405064);

  Color sample(double offset) {
    final arg0 = malloc<Double>()..value = offset;
    try {
      final ret = malloc<Uint8>(Color.nativeSize);
      try {
        ptrcallWithReturn(_mb_sample, nativePtr, [arg0.cast<Void>()], ret.cast());
        return Color.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_point_count =
      resolveMethodBind('Gradient', 'get_point_count', 3905245786);

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

  // Skipped set_offsets(): an argument type is unsupported.
  // Skipped get_offsets(): unsupported return type "PackedFloat32Array".
  // Skipped set_colors(): an argument type is unsupported.
  // Skipped get_colors(): unsupported return type "PackedColorArray".
  static final Pointer<Void> _mb_set_interpolation_mode =
      resolveMethodBind('Gradient', 'set_interpolation_mode', 1971444490);

  void setInterpolationMode(int interpolationMode) {
    final arg0 = malloc<Int64>()..value = interpolationMode;
    try {
      ptrcallVoid(_mb_set_interpolation_mode, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_interpolation_mode =
      resolveMethodBind('Gradient', 'get_interpolation_mode', 3674172981);

  int getInterpolationMode() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_interpolation_mode, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_interpolation_color_space =
      resolveMethodBind('Gradient', 'set_interpolation_color_space', 3685995981);

  void setInterpolationColorSpace(int interpolationColorSpace) {
    final arg0 = malloc<Int64>()..value = interpolationColorSpace;
    try {
      ptrcallVoid(_mb_set_interpolation_color_space, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_interpolation_color_space =
      resolveMethodBind('Gradient', 'get_interpolation_color_space', 1538296000);

  int getInterpolationColorSpace() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_interpolation_color_space, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
