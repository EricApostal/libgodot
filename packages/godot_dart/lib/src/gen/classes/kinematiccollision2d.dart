// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class KinematicCollision2D extends RefCounted {
  KinematicCollision2D(super.nativePtr);

  /// Constructs a brand-new engine-owned KinematicCollision2D instance
  /// (via classdb_construct_object3), not an existing one.
  factory KinematicCollision2D.create() {
    return KinematicCollision2D(resolveClassConstructor('KinematicCollision2D'));
  }

  static final Pointer<Void> _mb_get_position =
      resolveMethodBind('KinematicCollision2D', 'get_position', 3341600327);

  Vector2 getPosition() {
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_position, nativePtr, [], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_normal =
      resolveMethodBind('KinematicCollision2D', 'get_normal', 3341600327);

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

  static final Pointer<Void> _mb_get_travel =
      resolveMethodBind('KinematicCollision2D', 'get_travel', 3341600327);

  Vector2 getTravel() {
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_travel, nativePtr, [], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_remainder =
      resolveMethodBind('KinematicCollision2D', 'get_remainder', 3341600327);

  Vector2 getRemainder() {
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_remainder, nativePtr, [], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_angle =
      resolveMethodBind('KinematicCollision2D', 'get_angle', 2841063350);

  double getAngle(Vector2 upDirection) {
    final arg0 = malloc<Uint8>(Vector2.nativeSize);
    upDirection.writeTo(arg0, 0);
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_angle, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_depth =
      resolveMethodBind('KinematicCollision2D', 'get_depth', 1740695150);

  double getDepth() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_depth, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  // Skipped get_local_shape(): unsupported return type "Object".
  // Skipped get_collider(): unsupported return type "Object".
  static final Pointer<Void> _mb_get_collider_id =
      resolveMethodBind('KinematicCollision2D', 'get_collider_id', 3905245786);

  int getColliderId() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_collider_id, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  // Skipped get_collider_rid(): unsupported return type "RID".
  // Skipped get_collider_shape(): unsupported return type "Object".
  static final Pointer<Void> _mb_get_collider_shape_index =
      resolveMethodBind('KinematicCollision2D', 'get_collider_shape_index', 3905245786);

  int getColliderShapeIndex() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_collider_shape_index, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_collider_velocity =
      resolveMethodBind('KinematicCollision2D', 'get_collider_velocity', 3341600327);

  Vector2 getColliderVelocity() {
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_collider_velocity, nativePtr, [], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
