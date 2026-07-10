// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class PhysicsTestMotionResult3D extends RefCounted {
  PhysicsTestMotionResult3D(super.nativePtr);

  static final Pointer<Void> _mb_get_travel =
      resolveMethodBind('PhysicsTestMotionResult3D', 'get_travel', 3360562783);

  Vector3 getTravel() {
    try {
      final ret = malloc<Uint8>(Vector3.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_travel, nativePtr, [], ret.cast());
        return Vector3.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_remainder =
      resolveMethodBind('PhysicsTestMotionResult3D', 'get_remainder', 3360562783);

  Vector3 getRemainder() {
    try {
      final ret = malloc<Uint8>(Vector3.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_remainder, nativePtr, [], ret.cast());
        return Vector3.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_collision_safe_fraction =
      resolveMethodBind('PhysicsTestMotionResult3D', 'get_collision_safe_fraction', 1740695150);

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
      resolveMethodBind('PhysicsTestMotionResult3D', 'get_collision_unsafe_fraction', 1740695150);

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

  static final Pointer<Void> _mb_get_collision_count =
      resolveMethodBind('PhysicsTestMotionResult3D', 'get_collision_count', 3905245786);

  int getCollisionCount() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_collision_count, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_collision_point =
      resolveMethodBind('PhysicsTestMotionResult3D', 'get_collision_point', 1914908202);

  Vector3 getCollisionPoint(int collisionIndex) {
    final arg0 = malloc<Int64>()..value = collisionIndex;
    try {
      final ret = malloc<Uint8>(Vector3.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_collision_point, nativePtr, [arg0.cast<Void>()], ret.cast());
        return Vector3.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_collision_normal =
      resolveMethodBind('PhysicsTestMotionResult3D', 'get_collision_normal', 1914908202);

  Vector3 getCollisionNormal(int collisionIndex) {
    final arg0 = malloc<Int64>()..value = collisionIndex;
    try {
      final ret = malloc<Uint8>(Vector3.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_collision_normal, nativePtr, [arg0.cast<Void>()], ret.cast());
        return Vector3.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_collider_velocity =
      resolveMethodBind('PhysicsTestMotionResult3D', 'get_collider_velocity', 1914908202);

  Vector3 getColliderVelocity(int collisionIndex) {
    final arg0 = malloc<Int64>()..value = collisionIndex;
    try {
      final ret = malloc<Uint8>(Vector3.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_collider_velocity, nativePtr, [arg0.cast<Void>()], ret.cast());
        return Vector3.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_collider_id =
      resolveMethodBind('PhysicsTestMotionResult3D', 'get_collider_id', 1591665591);

  int getColliderId(int collisionIndex) {
    final arg0 = malloc<Int64>()..value = collisionIndex;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_collider_id, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  // Skipped get_collider_rid(): unsupported return type "RID".
  // Skipped get_collider(): unsupported return type "Object".
  static final Pointer<Void> _mb_get_collider_shape =
      resolveMethodBind('PhysicsTestMotionResult3D', 'get_collider_shape', 1591665591);

  int getColliderShape(int collisionIndex) {
    final arg0 = malloc<Int64>()..value = collisionIndex;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_collider_shape, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_collision_local_shape =
      resolveMethodBind('PhysicsTestMotionResult3D', 'get_collision_local_shape', 1591665591);

  int getCollisionLocalShape(int collisionIndex) {
    final arg0 = malloc<Int64>()..value = collisionIndex;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_collision_local_shape, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_collision_depth =
      resolveMethodBind('PhysicsTestMotionResult3D', 'get_collision_depth', 218038398);

  double getCollisionDepth(int collisionIndex) {
    final arg0 = malloc<Int64>()..value = collisionIndex;
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_collision_depth, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

}
