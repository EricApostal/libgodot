// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class Geometry2D extends GodotObject {
  Geometry2D(super.nativePtr);

  /// Constructs a brand-new engine-owned Geometry2D instance
  /// (via classdb_construct_object3), not an existing one.
  factory Geometry2D.create() {
    return Geometry2D(resolveClassConstructor('Geometry2D'));
  }

  static final Pointer<Void> _mb_is_point_in_circle =
      resolveMethodBind('Geometry2D', 'is_point_in_circle', 2929491703);

  bool isPointInCircle(Vector2 point, Vector2 circlePosition, double circleRadius) {
    final arg0 = malloc<Uint8>(Vector2.nativeSize);
    point.writeTo(arg0, 0);
    final arg1 = malloc<Uint8>(Vector2.nativeSize);
    circlePosition.writeTo(arg1, 0);
    final arg2 = malloc<Double>()..value = circleRadius;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_point_in_circle, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_segment_intersects_circle =
      resolveMethodBind('Geometry2D', 'segment_intersects_circle', 1356928167);

  double segmentIntersectsCircle(Vector2 segmentFrom, Vector2 segmentTo, Vector2 circlePosition, double circleRadius) {
    final arg0 = malloc<Uint8>(Vector2.nativeSize);
    segmentFrom.writeTo(arg0, 0);
    final arg1 = malloc<Uint8>(Vector2.nativeSize);
    segmentTo.writeTo(arg1, 0);
    final arg2 = malloc<Uint8>(Vector2.nativeSize);
    circlePosition.writeTo(arg2, 0);
    final arg3 = malloc<Double>()..value = circleRadius;
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_segment_intersects_circle, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>(), arg3.cast<Void>()], ret.cast());
        return ret.value;
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

  // Skipped segment_intersects_segment(): unsupported return type "Variant".
  // Skipped line_intersects_line(): unsupported return type "Variant".
  // Skipped get_closest_points_between_segments(): unsupported return type "PackedVector2Array".
  static final Pointer<Void> _mb_get_closest_point_to_segment =
      resolveMethodBind('Geometry2D', 'get_closest_point_to_segment', 4172901909);

  Vector2 getClosestPointToSegment(Vector2 point, Vector2 s1, Vector2 s2) {
    final arg0 = malloc<Uint8>(Vector2.nativeSize);
    point.writeTo(arg0, 0);
    final arg1 = malloc<Uint8>(Vector2.nativeSize);
    s1.writeTo(arg1, 0);
    final arg2 = malloc<Uint8>(Vector2.nativeSize);
    s2.writeTo(arg2, 0);
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_closest_point_to_segment, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()], ret.cast());
        return Vector2.readFrom(ret, 0);
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
      resolveMethodBind('Geometry2D', 'get_closest_point_to_segment_uncapped', 4172901909);

  Vector2 getClosestPointToSegmentUncapped(Vector2 point, Vector2 s1, Vector2 s2) {
    final arg0 = malloc<Uint8>(Vector2.nativeSize);
    point.writeTo(arg0, 0);
    final arg1 = malloc<Uint8>(Vector2.nativeSize);
    s1.writeTo(arg1, 0);
    final arg2 = malloc<Uint8>(Vector2.nativeSize);
    s2.writeTo(arg2, 0);
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_closest_point_to_segment_uncapped, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_point_is_inside_triangle =
      resolveMethodBind('Geometry2D', 'point_is_inside_triangle', 1025948137);

  bool pointIsInsideTriangle(Vector2 point, Vector2 a, Vector2 b, Vector2 c) {
    final arg0 = malloc<Uint8>(Vector2.nativeSize);
    point.writeTo(arg0, 0);
    final arg1 = malloc<Uint8>(Vector2.nativeSize);
    a.writeTo(arg1, 0);
    final arg2 = malloc<Uint8>(Vector2.nativeSize);
    b.writeTo(arg2, 0);
    final arg3 = malloc<Uint8>(Vector2.nativeSize);
    c.writeTo(arg3, 0);
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_point_is_inside_triangle, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>(), arg3.cast<Void>()], ret.cast());
        return ret.value != 0;
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

  // Skipped is_polygon_clockwise(): an argument type is unsupported.
  // Skipped is_point_in_polygon(): an argument type is unsupported.
  // Skipped triangulate_polygon(): unsupported return type "PackedInt32Array".
  // Skipped triangulate_delaunay(): unsupported return type "PackedInt32Array".
  // Skipped convex_hull(): unsupported return type "PackedVector2Array".
  // Skipped decompose_polygon_in_convex(): unsupported return type "typedarray::PackedVector2Array".
  // Skipped merge_polygons(): unsupported return type "typedarray::PackedVector2Array".
  // Skipped clip_polygons(): unsupported return type "typedarray::PackedVector2Array".
  // Skipped intersect_polygons(): unsupported return type "typedarray::PackedVector2Array".
  // Skipped exclude_polygons(): unsupported return type "typedarray::PackedVector2Array".
  // Skipped clip_polyline_with_polygon(): unsupported return type "typedarray::PackedVector2Array".
  // Skipped intersect_polyline_with_polygon(): unsupported return type "typedarray::PackedVector2Array".
  // Skipped offset_polygon(): unsupported return type "typedarray::PackedVector2Array".
  // Skipped offset_polyline(): unsupported return type "typedarray::PackedVector2Array".
  // Skipped make_atlas(): unsupported return type "Dictionary".
  // Skipped bresenham_line(): unsupported return type "typedarray::Vector2i".
}
