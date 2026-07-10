// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class Curve3D extends Resource {
  Curve3D(super.nativePtr);

  /// Constructs a brand-new engine-owned Curve3D instance
  /// (via classdb_construct_object3), not an existing one.
  factory Curve3D.create() {
    return Curve3D(resolveClassConstructor('Curve3D'));
  }

  static final Pointer<Void> _mb_get_point_count =
      resolveMethodBind('Curve3D', 'get_point_count', 3905245786);

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
      resolveMethodBind('Curve3D', 'set_point_count', 1286410249);

  void setPointCount(int count) {
    final arg0 = malloc<Int64>()..value = count;
    try {
      ptrcallVoid(_mb_set_point_count, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_add_point =
      resolveMethodBind('Curve3D', 'add_point', 2931053748);

  void addPoint(Vector3 position, Vector3 in_, Vector3 out, int index) {
    final arg0 = malloc<Uint8>(Vector3.nativeSize);
    position.writeTo(arg0, 0);
    final arg1 = malloc<Uint8>(Vector3.nativeSize);
    in_.writeTo(arg1, 0);
    final arg2 = malloc<Uint8>(Vector3.nativeSize);
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
      resolveMethodBind('Curve3D', 'set_point_position', 1530502735);

  void setPointPosition(int idx, Vector3 position) {
    final arg0 = malloc<Int64>()..value = idx;
    final arg1 = malloc<Uint8>(Vector3.nativeSize);
    position.writeTo(arg1, 0);
    try {
      ptrcallVoid(_mb_set_point_position, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_point_position =
      resolveMethodBind('Curve3D', 'get_point_position', 711720468);

  Vector3 getPointPosition(int idx) {
    final arg0 = malloc<Int64>()..value = idx;
    try {
      final ret = malloc<Uint8>(Vector3.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_point_position, nativePtr, [arg0.cast<Void>()], ret.cast());
        return Vector3.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_point_tilt =
      resolveMethodBind('Curve3D', 'set_point_tilt', 1602489585);

  void setPointTilt(int idx, double tilt) {
    final arg0 = malloc<Int64>()..value = idx;
    final arg1 = malloc<Double>()..value = tilt;
    try {
      ptrcallVoid(_mb_set_point_tilt, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_point_tilt =
      resolveMethodBind('Curve3D', 'get_point_tilt', 2339986948);

  double getPointTilt(int idx) {
    final arg0 = malloc<Int64>()..value = idx;
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_point_tilt, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_point_in =
      resolveMethodBind('Curve3D', 'set_point_in', 1530502735);

  void setPointIn(int idx, Vector3 position) {
    final arg0 = malloc<Int64>()..value = idx;
    final arg1 = malloc<Uint8>(Vector3.nativeSize);
    position.writeTo(arg1, 0);
    try {
      ptrcallVoid(_mb_set_point_in, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_point_in =
      resolveMethodBind('Curve3D', 'get_point_in', 711720468);

  Vector3 getPointIn(int idx) {
    final arg0 = malloc<Int64>()..value = idx;
    try {
      final ret = malloc<Uint8>(Vector3.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_point_in, nativePtr, [arg0.cast<Void>()], ret.cast());
        return Vector3.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_point_out =
      resolveMethodBind('Curve3D', 'set_point_out', 1530502735);

  void setPointOut(int idx, Vector3 position) {
    final arg0 = malloc<Int64>()..value = idx;
    final arg1 = malloc<Uint8>(Vector3.nativeSize);
    position.writeTo(arg1, 0);
    try {
      ptrcallVoid(_mb_set_point_out, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_point_out =
      resolveMethodBind('Curve3D', 'get_point_out', 711720468);

  Vector3 getPointOut(int idx) {
    final arg0 = malloc<Int64>()..value = idx;
    try {
      final ret = malloc<Uint8>(Vector3.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_point_out, nativePtr, [arg0.cast<Void>()], ret.cast());
        return Vector3.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_remove_point =
      resolveMethodBind('Curve3D', 'remove_point', 1286410249);

  void removePoint(int idx) {
    final arg0 = malloc<Int64>()..value = idx;
    try {
      ptrcallVoid(_mb_remove_point, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_clear_points =
      resolveMethodBind('Curve3D', 'clear_points', 3218959716);

  void clearPoints() {
    try {
      ptrcallVoid(_mb_clear_points, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_sample =
      resolveMethodBind('Curve3D', 'sample', 3285246857);

  Vector3 sample(int idx, double t) {
    final arg0 = malloc<Int64>()..value = idx;
    final arg1 = malloc<Double>()..value = t;
    try {
      final ret = malloc<Uint8>(Vector3.nativeSize);
      try {
        ptrcallWithReturn(_mb_sample, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return Vector3.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_samplef =
      resolveMethodBind('Curve3D', 'samplef', 2553580215);

  Vector3 samplef(double fofs) {
    final arg0 = malloc<Double>()..value = fofs;
    try {
      final ret = malloc<Uint8>(Vector3.nativeSize);
      try {
        ptrcallWithReturn(_mb_samplef, nativePtr, [arg0.cast<Void>()], ret.cast());
        return Vector3.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_closed =
      resolveMethodBind('Curve3D', 'set_closed', 2586408642);

  void setClosed(bool closed) {
    final arg0 = malloc<Uint8>()..value = closed ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_closed, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_closed =
      resolveMethodBind('Curve3D', 'is_closed', 36873697);

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

  static final Pointer<Void> _mb_set_bake_interval =
      resolveMethodBind('Curve3D', 'set_bake_interval', 373806689);

  void setBakeInterval(double distance) {
    final arg0 = malloc<Double>()..value = distance;
    try {
      ptrcallVoid(_mb_set_bake_interval, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_bake_interval =
      resolveMethodBind('Curve3D', 'get_bake_interval', 1740695150);

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

  static final Pointer<Void> _mb_set_up_vector_enabled =
      resolveMethodBind('Curve3D', 'set_up_vector_enabled', 2586408642);

  void setUpVectorEnabled(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_up_vector_enabled, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_up_vector_enabled =
      resolveMethodBind('Curve3D', 'is_up_vector_enabled', 36873697);

  bool isUpVectorEnabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_up_vector_enabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_baked_length =
      resolveMethodBind('Curve3D', 'get_baked_length', 1740695150);

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
      resolveMethodBind('Curve3D', 'sample_baked', 1350085894);

  Vector3 sampleBaked(double offset, bool cubic) {
    final arg0 = malloc<Double>()..value = offset;
    final arg1 = malloc<Uint8>()..value = cubic ? 1 : 0;
    try {
      final ret = malloc<Uint8>(Vector3.nativeSize);
      try {
        ptrcallWithReturn(_mb_sample_baked, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return Vector3.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_sample_baked_with_rotation =
      resolveMethodBind('Curve3D', 'sample_baked_with_rotation', 1939359131);

  Transform3D sampleBakedWithRotation(double offset, bool cubic, bool applyTilt) {
    final arg0 = malloc<Double>()..value = offset;
    final arg1 = malloc<Uint8>()..value = cubic ? 1 : 0;
    final arg2 = malloc<Uint8>()..value = applyTilt ? 1 : 0;
    try {
      final ret = malloc<Uint8>(Transform3D.nativeSize);
      try {
        ptrcallWithReturn(_mb_sample_baked_with_rotation, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()], ret.cast());
        return Transform3D.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_sample_baked_up_vector =
      resolveMethodBind('Curve3D', 'sample_baked_up_vector', 1362627031);

  Vector3 sampleBakedUpVector(double offset, bool applyTilt) {
    final arg0 = malloc<Double>()..value = offset;
    final arg1 = malloc<Uint8>()..value = applyTilt ? 1 : 0;
    try {
      final ret = malloc<Uint8>(Vector3.nativeSize);
      try {
        ptrcallWithReturn(_mb_sample_baked_up_vector, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return Vector3.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  // Skipped get_baked_points(): unsupported return type "PackedVector3Array".
  // Skipped get_baked_tilts(): unsupported return type "PackedFloat32Array".
  // Skipped get_baked_up_vectors(): unsupported return type "PackedVector3Array".
  static final Pointer<Void> _mb_get_closest_point =
      resolveMethodBind('Curve3D', 'get_closest_point', 192990374);

  Vector3 getClosestPoint(Vector3 toPoint) {
    final arg0 = malloc<Uint8>(Vector3.nativeSize);
    toPoint.writeTo(arg0, 0);
    try {
      final ret = malloc<Uint8>(Vector3.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_closest_point, nativePtr, [arg0.cast<Void>()], ret.cast());
        return Vector3.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_closest_offset =
      resolveMethodBind('Curve3D', 'get_closest_offset', 1109078154);

  double getClosestOffset(Vector3 toPoint) {
    final arg0 = malloc<Uint8>(Vector3.nativeSize);
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

  // Skipped tessellate(): unsupported return type "PackedVector3Array".
  // Skipped tessellate_even_length(): unsupported return type "PackedVector3Array".
}
