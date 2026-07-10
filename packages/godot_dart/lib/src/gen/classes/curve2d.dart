// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class Curve2D extends Resource {
  Curve2D(super.nativePtr);

  /// Constructs a brand-new engine-owned Curve2D instance
  /// (via classdb_construct_object3), not an existing one.
  factory Curve2D.create() {
    return Curve2D(resolveClassConstructor('Curve2D'));
  }

  static final Pointer<Void> _mb_get_point_count =
      resolveMethodBind('Curve2D', 'get_point_count', 3905245786);

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
      resolveMethodBind('Curve2D', 'set_point_count', 1286410249);

  void setPointCount(int count) {
    final arg0 = malloc<Int64>()..value = count;
    try {
      ptrcallVoid(_mb_set_point_count, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_add_point =
      resolveMethodBind('Curve2D', 'add_point', 4175465202);

  void addPoint(Vector2 position, Vector2 in_, Vector2 out, int index) {
    final arg0 = malloc<Uint8>(Vector2.nativeSize);
    position.writeTo(arg0, 0);
    final arg1 = malloc<Uint8>(Vector2.nativeSize);
    in_.writeTo(arg1, 0);
    final arg2 = malloc<Uint8>(Vector2.nativeSize);
    out.writeTo(arg2, 0);
    final arg3 = malloc<Int64>()..value = index;
    try {
      ptrcallVoid(_mb_add_point, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>(), arg3.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
      malloc.free(arg3);
    }
  }

  static final Pointer<Void> _mb_set_point_position =
      resolveMethodBind('Curve2D', 'set_point_position', 163021252);

  void setPointPosition(int idx, Vector2 position) {
    final arg0 = malloc<Int64>()..value = idx;
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
      resolveMethodBind('Curve2D', 'get_point_position', 2299179447);

  Vector2 getPointPosition(int idx) {
    final arg0 = malloc<Int64>()..value = idx;
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

  static final Pointer<Void> _mb_set_point_in =
      resolveMethodBind('Curve2D', 'set_point_in', 163021252);

  void setPointIn(int idx, Vector2 position) {
    final arg0 = malloc<Int64>()..value = idx;
    final arg1 = malloc<Uint8>(Vector2.nativeSize);
    position.writeTo(arg1, 0);
    try {
      ptrcallVoid(_mb_set_point_in, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_point_in =
      resolveMethodBind('Curve2D', 'get_point_in', 2299179447);

  Vector2 getPointIn(int idx) {
    final arg0 = malloc<Int64>()..value = idx;
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_point_in, nativePtr, [arg0.cast<Void>()], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_point_out =
      resolveMethodBind('Curve2D', 'set_point_out', 163021252);

  void setPointOut(int idx, Vector2 position) {
    final arg0 = malloc<Int64>()..value = idx;
    final arg1 = malloc<Uint8>(Vector2.nativeSize);
    position.writeTo(arg1, 0);
    try {
      ptrcallVoid(_mb_set_point_out, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_point_out =
      resolveMethodBind('Curve2D', 'get_point_out', 2299179447);

  Vector2 getPointOut(int idx) {
    final arg0 = malloc<Int64>()..value = idx;
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_point_out, nativePtr, [arg0.cast<Void>()], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_remove_point =
      resolveMethodBind('Curve2D', 'remove_point', 1286410249);

  void removePoint(int idx) {
    final arg0 = malloc<Int64>()..value = idx;
    try {
      ptrcallVoid(_mb_remove_point, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_clear_points =
      resolveMethodBind('Curve2D', 'clear_points', 3218959716);

  void clearPoints() {
    try {
      ptrcallVoid(_mb_clear_points, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_sample =
      resolveMethodBind('Curve2D', 'sample', 26514310);

  Vector2 sample(int idx, double t) {
    final arg0 = malloc<Int64>()..value = idx;
    final arg1 = malloc<Double>()..value = t;
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_sample, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_samplef =
      resolveMethodBind('Curve2D', 'samplef', 3588506812);

  Vector2 samplef(double fofs) {
    final arg0 = malloc<Double>()..value = fofs;
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_samplef, nativePtr, [arg0.cast<Void>()], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_bake_interval =
      resolveMethodBind('Curve2D', 'set_bake_interval', 373806689);

  void setBakeInterval(double distance) {
    final arg0 = malloc<Double>()..value = distance;
    try {
      ptrcallVoid(_mb_set_bake_interval, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_bake_interval =
      resolveMethodBind('Curve2D', 'get_bake_interval', 1740695150);

  double getBakeInterval() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_bake_interval, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_baked_length =
      resolveMethodBind('Curve2D', 'get_baked_length', 1740695150);

  double getBakedLength() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_baked_length, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_sample_baked =
      resolveMethodBind('Curve2D', 'sample_baked', 3464257706);

  Vector2 sampleBaked(double offset, bool cubic) {
    final arg0 = malloc<Double>()..value = offset;
    final arg1 = malloc<Uint8>()..value = cubic ? 1 : 0;
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_sample_baked, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_sample_baked_with_rotation =
      resolveMethodBind('Curve2D', 'sample_baked_with_rotation', 3296056341);

  Transform2D sampleBakedWithRotation(double offset, bool cubic) {
    final arg0 = malloc<Double>()..value = offset;
    final arg1 = malloc<Uint8>()..value = cubic ? 1 : 0;
    try {
      final ret = malloc<Uint8>(Transform2D.nativeSize);
      try {
        ptrcallWithReturn(_mb_sample_baked_with_rotation, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return Transform2D.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  // Skipped get_baked_points(): unsupported return type "PackedVector2Array".
  static final Pointer<Void> _mb_get_closest_point =
      resolveMethodBind('Curve2D', 'get_closest_point', 2656412154);

  Vector2 getClosestPoint(Vector2 toPoint) {
    final arg0 = malloc<Uint8>(Vector2.nativeSize);
    toPoint.writeTo(arg0, 0);
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_closest_point, nativePtr, [arg0.cast<Void>()], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_closest_offset =
      resolveMethodBind('Curve2D', 'get_closest_offset', 2276447920);

  double getClosestOffset(Vector2 toPoint) {
    final arg0 = malloc<Uint8>(Vector2.nativeSize);
    toPoint.writeTo(arg0, 0);
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_closest_offset, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  // Skipped tessellate(): unsupported return type "PackedVector2Array".
  // Skipped tessellate_even_length(): unsupported return type "PackedVector2Array".
}
