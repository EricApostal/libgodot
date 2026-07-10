// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class KinematicCollision3D extends RefCounted {
  KinematicCollision3D(super.nativePtr);

  /// Constructs a brand-new engine-owned KinematicCollision3D instance
  /// (via classdb_construct_object3), not an existing one.
  factory KinematicCollision3D.create() {
    return KinematicCollision3D(resolveClassConstructor('KinematicCollision3D'));
  }

  static final Pointer<Void> _mb_get_travel =
      resolveMethodBind('KinematicCollision3D', 'get_travel', 3360562783);

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
      resolveMethodBind('KinematicCollision3D', 'get_remainder', 3360562783);

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

  static final Pointer<Void> _mb_get_depth =
      resolveMethodBind('KinematicCollision3D', 'get_depth', 1740695150);

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

  static final Pointer<Void> _mb_get_collision_count =
      resolveMethodBind('KinematicCollision3D', 'get_collision_count', 3905245786);

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

  static final Pointer<Void> _mb_get_position =
      resolveMethodBind('KinematicCollision3D', 'get_position', 1914908202);

  Vector3 getPosition(int collisionIndex) {
    final arg0 = malloc<Int64>()..value = collisionIndex;
    try {
      final ret = malloc<Uint8>(Vector3.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_position, nativePtr, [arg0.cast<Void>()], ret.cast());
        return Vector3.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_normal =
      resolveMethodBind('KinematicCollision3D', 'get_normal', 1914908202);

  Vector3 getNormal(int collisionIndex) {
    final arg0 = malloc<Int64>()..value = collisionIndex;
    try {
      final ret = malloc<Uint8>(Vector3.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_normal, nativePtr, [arg0.cast<Void>()], ret.cast());
        return Vector3.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_angle =
      resolveMethodBind('KinematicCollision3D', 'get_angle', 1242741860);

  double getAngle(int collisionIndex, Vector3 upDirection) {
    final arg0 = malloc<Int64>()..value = collisionIndex;
    final arg1 = malloc<Uint8>(Vector3.nativeSize);
    upDirection.writeTo(arg1, 0);
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_angle, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  // Skipped get_local_shape(): unsupported return type "Object".
  // Skipped get_collider(): unsupported return type "Object".
  static final Pointer<Void> _mb_get_collider_id =
      resolveMethodBind('KinematicCollision3D', 'get_collider_id', 1591665591);

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
  // Skipped get_collider_shape(): unsupported return type "Object".
  static final Pointer<Void> _mb_get_collider_shape_index =
      resolveMethodBind('KinematicCollision3D', 'get_collider_shape_index', 1591665591);

  int getColliderShapeIndex(int collisionIndex) {
    final arg0 = malloc<Int64>()..value = collisionIndex;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_collider_shape_index, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_collider_velocity =
      resolveMethodBind('KinematicCollision3D', 'get_collider_velocity', 1914908202);

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

}
