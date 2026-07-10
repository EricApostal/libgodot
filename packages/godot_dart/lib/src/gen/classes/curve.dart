// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class Curve extends Resource {
  Curve(super.nativePtr);

  /// Constructs a brand-new engine-owned Curve instance
  /// (via classdb_construct_object3), not an existing one.
  factory Curve.create() {
    return Curve(resolveClassConstructor('Curve'));
  }

  static final Pointer<Void> _mb_get_point_count =
      resolveMethodBind('Curve', 'get_point_count', 3905245786);

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

  static final Pointer<Void> _mb_set_point_count =
      resolveMethodBind('Curve', 'set_point_count', 1286410249);

  void setPointCount(int count) {
    final arg0 = malloc<Int64>()..value = count;
    try {
      ptrcallVoid(_mb_set_point_count, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_add_point =
      resolveMethodBind('Curve', 'add_point', 434072736);

  int addPoint(Vector2 position, double leftTangent, double rightTangent, int leftMode, int rightMode) {
    final arg0 = malloc<Uint8>(Vector2.nativeSize);
    position.writeTo(arg0, 0);
    final arg1 = malloc<Double>()..value = leftTangent;
    final arg2 = malloc<Double>()..value = rightTangent;
    final arg3 = malloc<Int64>()..value = leftMode;
    final arg4 = malloc<Int64>()..value = rightMode;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_add_point, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>(), arg3.cast<Void>(), arg4.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
      malloc.free(arg3);
      malloc.free(arg4);
    }
  }

  static final Pointer<Void> _mb_remove_point =
      resolveMethodBind('Curve', 'remove_point', 1286410249);

  void removePoint(int index) {
    final arg0 = malloc<Int64>()..value = index;
    try {
      ptrcallVoid(_mb_remove_point, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_clear_points =
      resolveMethodBind('Curve', 'clear_points', 3218959716);

  void clearPoints() {
    try {
      ptrcallVoid(_mb_clear_points, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_point_position =
      resolveMethodBind('Curve', 'get_point_position', 2299179447);

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

  static final Pointer<Void> _mb_set_point_value =
      resolveMethodBind('Curve', 'set_point_value', 1602489585);

  void setPointValue(int index, double y) {
    final arg0 = malloc<Int64>()..value = index;
    final arg1 = malloc<Double>()..value = y;
    try {
      ptrcallVoid(_mb_set_point_value, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_set_point_offset =
      resolveMethodBind('Curve', 'set_point_offset', 3780573764);

  int setPointOffset(int index, double offset) {
    final arg0 = malloc<Int64>()..value = index;
    final arg1 = malloc<Double>()..value = offset;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_set_point_offset, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_sample =
      resolveMethodBind('Curve', 'sample', 3919130443);

  double sample(double offset) {
    final arg0 = malloc<Double>()..value = offset;
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_sample, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_sample_baked =
      resolveMethodBind('Curve', 'sample_baked', 3919130443);

  double sampleBaked(double offset) {
    final arg0 = malloc<Double>()..value = offset;
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_sample_baked, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_point_left_tangent =
      resolveMethodBind('Curve', 'get_point_left_tangent', 2339986948);

  double getPointLeftTangent(int index) {
    final arg0 = malloc<Int64>()..value = index;
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_point_left_tangent, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_point_right_tangent =
      resolveMethodBind('Curve', 'get_point_right_tangent', 2339986948);

  double getPointRightTangent(int index) {
    final arg0 = malloc<Int64>()..value = index;
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_point_right_tangent, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_point_left_mode =
      resolveMethodBind('Curve', 'get_point_left_mode', 426950354);

  int getPointLeftMode(int index) {
    final arg0 = malloc<Int64>()..value = index;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_point_left_mode, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_point_right_mode =
      resolveMethodBind('Curve', 'get_point_right_mode', 426950354);

  int getPointRightMode(int index) {
    final arg0 = malloc<Int64>()..value = index;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_point_right_mode, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_point_left_tangent =
      resolveMethodBind('Curve', 'set_point_left_tangent', 1602489585);

  void setPointLeftTangent(int index, double tangent) {
    final arg0 = malloc<Int64>()..value = index;
    final arg1 = malloc<Double>()..value = tangent;
    try {
      ptrcallVoid(_mb_set_point_left_tangent, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_set_point_right_tangent =
      resolveMethodBind('Curve', 'set_point_right_tangent', 1602489585);

  void setPointRightTangent(int index, double tangent) {
    final arg0 = malloc<Int64>()..value = index;
    final arg1 = malloc<Double>()..value = tangent;
    try {
      ptrcallVoid(_mb_set_point_right_tangent, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_set_point_left_mode =
      resolveMethodBind('Curve', 'set_point_left_mode', 1217242874);

  void setPointLeftMode(int index, int mode) {
    final arg0 = malloc<Int64>()..value = index;
    final arg1 = malloc<Int64>()..value = mode;
    try {
      ptrcallVoid(_mb_set_point_left_mode, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_set_point_right_mode =
      resolveMethodBind('Curve', 'set_point_right_mode', 1217242874);

  void setPointRightMode(int index, int mode) {
    final arg0 = malloc<Int64>()..value = index;
    final arg1 = malloc<Int64>()..value = mode;
    try {
      ptrcallVoid(_mb_set_point_right_mode, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_min_value =
      resolveMethodBind('Curve', 'get_min_value', 1740695150);

  double getMinValue() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_min_value, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_min_value =
      resolveMethodBind('Curve', 'set_min_value', 373806689);

  void setMinValue(double min) {
    final arg0 = malloc<Double>()..value = min;
    try {
      ptrcallVoid(_mb_set_min_value, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_max_value =
      resolveMethodBind('Curve', 'get_max_value', 1740695150);

  double getMaxValue() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_max_value, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_max_value =
      resolveMethodBind('Curve', 'set_max_value', 373806689);

  void setMaxValue(double max) {
    final arg0 = malloc<Double>()..value = max;
    try {
      ptrcallVoid(_mb_set_max_value, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_value_range =
      resolveMethodBind('Curve', 'get_value_range', 1740695150);

  double getValueRange() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_value_range, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_min_domain =
      resolveMethodBind('Curve', 'get_min_domain', 1740695150);

  double getMinDomain() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_min_domain, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_min_domain =
      resolveMethodBind('Curve', 'set_min_domain', 373806689);

  void setMinDomain(double min) {
    final arg0 = malloc<Double>()..value = min;
    try {
      ptrcallVoid(_mb_set_min_domain, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_max_domain =
      resolveMethodBind('Curve', 'get_max_domain', 1740695150);

  double getMaxDomain() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_max_domain, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_max_domain =
      resolveMethodBind('Curve', 'set_max_domain', 373806689);

  void setMaxDomain(double max) {
    final arg0 = malloc<Double>()..value = max;
    try {
      ptrcallVoid(_mb_set_max_domain, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_domain_range =
      resolveMethodBind('Curve', 'get_domain_range', 1740695150);

  double getDomainRange() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_domain_range, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_clean_dupes =
      resolveMethodBind('Curve', 'clean_dupes', 3218959716);

  void cleanDupes() {
    try {
      ptrcallVoid(_mb_clean_dupes, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_bake =
      resolveMethodBind('Curve', 'bake', 3218959716);

  void bake() {
    try {
      ptrcallVoid(_mb_bake, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_bake_resolution =
      resolveMethodBind('Curve', 'get_bake_resolution', 3905245786);

  int getBakeResolution() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_bake_resolution, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_bake_resolution =
      resolveMethodBind('Curve', 'set_bake_resolution', 1286410249);

  void setBakeResolution(int resolution) {
    final arg0 = malloc<Int64>()..value = resolution;
    try {
      ptrcallVoid(_mb_set_bake_resolution, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

}
