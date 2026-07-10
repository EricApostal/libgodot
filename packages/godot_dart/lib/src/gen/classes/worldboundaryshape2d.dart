// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class WorldBoundaryShape2D extends Shape2D {
  WorldBoundaryShape2D(super.nativePtr);

  /// Constructs a brand-new engine-owned WorldBoundaryShape2D instance
  /// (via classdb_construct_object3), not an existing one.
  factory WorldBoundaryShape2D.create() {
    return WorldBoundaryShape2D(resolveClassConstructor('WorldBoundaryShape2D'));
  }

  static final Pointer<Void> _mb_set_normal =
      resolveMethodBind('WorldBoundaryShape2D', 'set_normal', 743155724);

  void setNormal(Vector2 normal) {
    final arg0 = malloc<Uint8>(Vector2.nativeSize);
    normal.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_normal, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_normal =
      resolveMethodBind('WorldBoundaryShape2D', 'get_normal', 3341600327);

  Vector2 getNormal() {
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_normal, nativePtr, [], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_distance =
      resolveMethodBind('WorldBoundaryShape2D', 'set_distance', 373806689);

  void setDistance(double distance) {
    final arg0 = malloc<Double>()..value = distance;
    try {
      ptrcallVoid(_mb_set_distance, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_distance =
      resolveMethodBind('WorldBoundaryShape2D', 'get_distance', 1740695150);

  double getDistance() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_distance, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
