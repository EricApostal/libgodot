// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class Geometry3D extends GodotObject {
  Geometry3D(super.nativePtr);

  /// Constructs a brand-new engine-owned Geometry3D instance
  /// (via classdb_construct_object3), not an existing one.
  factory Geometry3D.create() {
    return Geometry3D(resolveClassConstructor('Geometry3D'));
  }

  // Skipped compute_convex_mesh_points(): unsupported return type "PackedVector3Array".
  // Skipped build_box_planes(): unsupported return type "typedarray::Plane".
  // Skipped build_cylinder_planes(): unsupported return type "typedarray::Plane".
  // Skipped build_capsule_planes(): unsupported return type "typedarray::Plane".
  // Skipped get_closest_points_between_segments(): unsupported return type "PackedVector3Array".
  static final Pointer<Void> _mb_get_closest_point_to_segment =
      resolveMethodBind('Geometry3D', 'get_closest_point_to_segment', 2168193209);

  Vector3 getClosestPointToSegment(Vector3 point, Vector3 s1, Vector3 s2) {
    final arg0 = malloc<Uint8>(Vector3.nativeSize);
    point.writeTo(arg0, 0);
    final arg1 = malloc<Uint8>(Vector3.nativeSize);
    s1.writeTo(arg1, 0);
    final arg2 = malloc<Uint8>(Vector3.nativeSize);
    s2.writeTo(arg2, 0);
    try {
      final ret = malloc<Uint8>(Vector3.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_closest_point_to_segment, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()], ret.cast());
        return Vector3.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_get_closest_point_to_segment_uncapped =
      resolveMethodBind('Geometry3D', 'get_closest_point_to_segment_uncapped', 2168193209);

  Vector3 getClosestPointToSegmentUncapped(Vector3 point, Vector3 s1, Vector3 s2) {
    final arg0 = malloc<Uint8>(Vector3.nativeSize);
    point.writeTo(arg0, 0);
    final arg1 = malloc<Uint8>(Vector3.nativeSize);
    s1.writeTo(arg1, 0);
    final arg2 = malloc<Uint8>(Vector3.nativeSize);
    s2.writeTo(arg2, 0);
    try {
      final ret = malloc<Uint8>(Vector3.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_closest_point_to_segment_uncapped, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()], ret.cast());
        return Vector3.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_get_triangle_barycentric_coords =
      resolveMethodBind('Geometry3D', 'get_triangle_barycentric_coords', 1362048029);

  Vector3 getTriangleBarycentricCoords(Vector3 point, Vector3 a, Vector3 b, Vector3 c) {
    final arg0 = malloc<Uint8>(Vector3.nativeSize);
    point.writeTo(arg0, 0);
    final arg1 = malloc<Uint8>(Vector3.nativeSize);
    a.writeTo(arg1, 0);
    final arg2 = malloc<Uint8>(Vector3.nativeSize);
    b.writeTo(arg2, 0);
    final arg3 = malloc<Uint8>(Vector3.nativeSize);
    c.writeTo(arg3, 0);
    try {
      final ret = malloc<Uint8>(Vector3.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_triangle_barycentric_coords, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>(), arg3.cast<Void>()], ret.cast());
        return Vector3.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
      malloc.free(arg3);
    }
  }

  // Skipped ray_intersects_triangle(): unsupported return type "Variant".
  // Skipped segment_intersects_triangle(): unsupported return type "Variant".
  // Skipped segment_intersects_sphere(): unsupported return type "PackedVector3Array".
  // Skipped segment_intersects_cylinder(): unsupported return type "PackedVector3Array".
  // Skipped segment_intersects_convex(): unsupported return type "PackedVector3Array".
  // Skipped clip_polygon(): unsupported return type "PackedVector3Array".
  // Skipped tetrahedralize_delaunay(): unsupported return type "PackedInt32Array".
}
