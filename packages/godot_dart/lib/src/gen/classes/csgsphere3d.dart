// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class CSGSphere3D extends CSGPrimitive3D {
  CSGSphere3D(super.nativePtr);

  /// Constructs a brand-new engine-owned CSGSphere3D instance
  /// (via classdb_construct_object3), not an existing one.
  factory CSGSphere3D.create() {
    return CSGSphere3D(resolveClassConstructor('CSGSphere3D'));
  }

  static final Pointer<Void> _mb_set_radius =
      resolveMethodBind('CSGSphere3D', 'set_radius', 373806689);

  void setRadius(double radius) {
    final arg0 = malloc<Double>()..value = radius;
    try {
      ptrcallVoid(_mb_set_radius, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_radius =
      resolveMethodBind('CSGSphere3D', 'get_radius', 1740695150);

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

  static final Pointer<Void> _mb_set_radial_segments =
      resolveMethodBind('CSGSphere3D', 'set_radial_segments', 1286410249);

  void setRadialSegments(int radialSegments) {
    final arg0 = malloc<Int64>()..value = radialSegments;
    try {
      ptrcallVoid(_mb_set_radial_segments, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_radial_segments =
      resolveMethodBind('CSGSphere3D', 'get_radial_segments', 3905245786);

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
      resolveMethodBind('CSGSphere3D', 'set_rings', 1286410249);

  void setRings(int rings) {
    final arg0 = malloc<Int64>()..value = rings;
    try {
      ptrcallVoid(_mb_set_rings, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_rings =
      resolveMethodBind('CSGSphere3D', 'get_rings', 3905245786);

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

  static final Pointer<Void> _mb_set_smooth_faces =
      resolveMethodBind('CSGSphere3D', 'set_smooth_faces', 2586408642);

  void setSmoothFaces(bool smoothFaces) {
    final arg0 = malloc<Uint8>()..value = smoothFaces ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_smooth_faces, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_smooth_faces =
      resolveMethodBind('CSGSphere3D', 'get_smooth_faces', 36873697);

  bool getSmoothFaces() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_smooth_faces, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_material =
      resolveMethodBind('CSGSphere3D', 'set_material', 2757459619);

  void setMaterial(Material material) {
    final arg0 = malloc<Pointer<Void>>()..value = material.nativePtr;
    try {
      ptrcallVoid(_mb_set_material, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_material =
      resolveMethodBind('CSGSphere3D', 'get_material', 5934680);

  Material? getMaterial() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_material, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Material(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
