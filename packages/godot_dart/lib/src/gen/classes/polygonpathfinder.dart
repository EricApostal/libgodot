// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class PolygonPathFinder extends Resource {
  PolygonPathFinder(super.nativePtr);

  // Skipped setup(): an argument type is unsupported.
  // Skipped find_path(): unsupported return type "PackedVector2Array".
  // Skipped get_intersections(): unsupported return type "PackedVector2Array".
  static final Pointer<Void> _mb_get_closest_point =
      resolveMethodBind('PolygonPathFinder', 'get_closest_point', 2656412154);

  Vector2 getClosestPoint(Vector2 point) {
    final arg0 = malloc<Uint8>(Vector2.nativeSize);
    point.writeTo(arg0, 0);
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

  static final Pointer<Void> _mb_is_point_inside =
      resolveMethodBind('PolygonPathFinder', 'is_point_inside', 556197845);

  bool isPointInside(Vector2 point) {
    final arg0 = malloc<Uint8>(Vector2.nativeSize);
    point.writeTo(arg0, 0);
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_point_inside, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_point_penalty =
      resolveMethodBind('PolygonPathFinder', 'set_point_penalty', 1602489585);

  void setPointPenalty(int idx, double penalty) {
    final arg0 = malloc<Int64>()..value = idx;
    final arg1 = malloc<Double>()..value = penalty;
    try {
      ptrcallVoid(_mb_set_point_penalty, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_point_penalty =
      resolveMethodBind('PolygonPathFinder', 'get_point_penalty', 2339986948);

  double getPointPenalty(int idx) {
    final arg0 = malloc<Int64>()..value = idx;
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_point_penalty, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_bounds =
      resolveMethodBind('PolygonPathFinder', 'get_bounds', 1639390495);

  Rect2 getBounds() {
    try {
      final ret = malloc<Uint8>(Rect2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_bounds, nativePtr, [], ret.cast());
        return Rect2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
