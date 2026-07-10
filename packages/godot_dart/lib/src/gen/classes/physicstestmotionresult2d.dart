// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class PhysicsTestMotionResult2D extends RefCounted {
  PhysicsTestMotionResult2D(super.nativePtr);

  /// Constructs a brand-new engine-owned PhysicsTestMotionResult2D instance
  /// (via classdb_construct_object3), not an existing one.
  factory PhysicsTestMotionResult2D.create() {
    return PhysicsTestMotionResult2D(resolveClassConstructor('PhysicsTestMotionResult2D'));
  }

  static final Pointer<Void> _mb_get_travel =
      resolveMethodBind('PhysicsTestMotionResult2D', 'get_travel', 3341600327);

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
      resolveMethodBind('PhysicsTestMotionResult2D', 'get_remainder', 3341600327);

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

  static final Pointer<Void> _mb_get_collision_point =
      resolveMethodBind('PhysicsTestMotionResult2D', 'get_collision_point', 3341600327);

  Vector2 getCollisionPoint() {
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_collision_point, nativePtr, [], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_collision_normal =
      resolveMethodBind('PhysicsTestMotionResult2D', 'get_collision_normal', 3341600327);

  Vector2 getCollisionNormal() {
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_collision_normal, nativePtr, [], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_collider_velocity =
      resolveMethodBind('PhysicsTestMotionResult2D', 'get_collider_velocity', 3341600327);

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

  static final Pointer<Void> _mb_get_collider_id =
      resolveMethodBind('PhysicsTestMotionResult2D', 'get_collider_id', 3905245786);

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
  // Skipped get_collider(): unsupported return type "Object".
  static final Pointer<Void> _mb_get_collider_shape =
      resolveMethodBind('PhysicsTestMotionResult2D', 'get_collider_shape', 3905245786);

  int getColliderShape() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_collider_shape, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_collision_local_shape =
      resolveMethodBind('PhysicsTestMotionResult2D', 'get_collision_local_shape', 3905245786);

  int getCollisionLocalShape() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_collision_local_shape, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_collision_depth =
      resolveMethodBind('PhysicsTestMotionResult2D', 'get_collision_depth', 1740695150);

  double getCollisionDepth() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_collision_depth, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_collision_safe_fraction =
      resolveMethodBind('PhysicsTestMotionResult2D', 'get_collision_safe_fraction', 1740695150);

  double getCollisionSafeFraction() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_collision_safe_fraction, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_collision_unsafe_fraction =
      resolveMethodBind('PhysicsTestMotionResult2D', 'get_collision_unsafe_fraction', 1740695150);

  double getCollisionUnsafeFraction() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_collision_unsafe_fraction, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
