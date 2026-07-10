// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class SphereMesh extends PrimitiveMesh {
  SphereMesh(super.nativePtr);

  /// Constructs a brand-new engine-owned SphereMesh instance
  /// (via classdb_construct_object3), not an existing one.
  factory SphereMesh.create() {
    return SphereMesh(resolveClassConstructor('SphereMesh'));
  }

  static final Pointer<Void> _mb_set_radius =
      resolveMethodBind('SphereMesh', 'set_radius', 373806689);

  void setRadius(double radius) {
    final arg0 = malloc<Double>()..value = radius;
    try {
      ptrcallVoid(_mb_set_radius, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_radius =
      resolveMethodBind('SphereMesh', 'get_radius', 1740695150);

  double getRadius() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_radius, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_height =
      resolveMethodBind('SphereMesh', 'set_height', 373806689);

  void setHeight(double height) {
    final arg0 = malloc<Double>()..value = height;
    try {
      ptrcallVoid(_mb_set_height, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_height =
      resolveMethodBind('SphereMesh', 'get_height', 1740695150);

  double getHeight() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_height, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_radial_segments =
      resolveMethodBind('SphereMesh', 'set_radial_segments', 1286410249);

  void setRadialSegments(int radialSegments) {
    final arg0 = malloc<Int64>()..value = radialSegments;
    try {
      ptrcallVoid(_mb_set_radial_segments, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_radial_segments =
      resolveMethodBind('SphereMesh', 'get_radial_segments', 3905245786);

  int getRadialSegments() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_radial_segments, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_rings =
      resolveMethodBind('SphereMesh', 'set_rings', 1286410249);

  void setRings(int rings) {
    final arg0 = malloc<Int64>()..value = rings;
    try {
      ptrcallVoid(_mb_set_rings, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_rings =
      resolveMethodBind('SphereMesh', 'get_rings', 3905245786);

  int getRings() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_rings, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_is_hemisphere =
      resolveMethodBind('SphereMesh', 'set_is_hemisphere', 2586408642);

  void setIsHemisphere(bool isHemisphere) {
    final arg0 = malloc<Uint8>()..value = isHemisphere ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_is_hemisphere, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_is_hemisphere =
      resolveMethodBind('SphereMesh', 'get_is_hemisphere', 36873697);

  bool getIsHemisphere() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_is_hemisphere, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
