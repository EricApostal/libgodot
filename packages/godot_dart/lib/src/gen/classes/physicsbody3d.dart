// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class PhysicsBody3D extends CollisionObject3D {
  PhysicsBody3D(super.nativePtr);

  static final Pointer<Void> _mb_move_and_collide =
      resolveMethodBind('PhysicsBody3D', 'move_and_collide', 3208792678);

  KinematicCollision3D? moveAndCollide(Vector3 motion, bool testOnly, double safeMargin, bool recoveryAsCollision, int maxCollisions) {
    final arg0 = malloc<Uint8>(Vector3.nativeSize);
    motion.writeTo(arg0, 0);
    final arg1 = malloc<Uint8>()..value = testOnly ? 1 : 0;
    final arg2 = malloc<Double>()..value = safeMargin;
    final arg3 = malloc<Uint8>()..value = recoveryAsCollision ? 1 : 0;
    final arg4 = malloc<Int64>()..value = maxCollisions;
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_move_and_collide, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>(), arg3.cast<Void>(), arg4.cast<Void>()], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : KinematicCollision3D(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
      malloc.free(arg3);
      malloc.free(arg4);
    }
  }

  static final Pointer<Void> _mb_test_move =
      resolveMethodBind('PhysicsBody3D', 'test_move', 2481691619);

  bool testMove(Transform3D from, Vector3 motion, KinematicCollision3D collision, double safeMargin, bool recoveryAsCollision, int maxCollisions) {
    final arg0 = malloc<Uint8>(Transform3D.nativeSize);
    from.writeTo(arg0, 0);
    final arg1 = malloc<Uint8>(Vector3.nativeSize);
    motion.writeTo(arg1, 0);
    final arg2 = malloc<Pointer<Void>>()..value = collision.nativePtr;
    final arg3 = malloc<Double>()..value = safeMargin;
    final arg4 = malloc<Uint8>()..value = recoveryAsCollision ? 1 : 0;
    final arg5 = malloc<Int64>()..value = maxCollisions;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_test_move, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>(), arg3.cast<Void>(), arg4.cast<Void>(), arg5.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
      malloc.free(arg3);
      malloc.free(arg4);
      malloc.free(arg5);
    }
  }

  static final Pointer<Void> _mb_get_gravity =
      resolveMethodBind('PhysicsBody3D', 'get_gravity', 3360562783);

  Vector3 getGravity() {
    try {
      final ret = malloc<Uint8>(Vector3.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_gravity, nativePtr, [], ret.cast());
        return Vector3.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_axis_lock =
      resolveMethodBind('PhysicsBody3D', 'set_axis_lock', 1787895195);

  void setAxisLock(int axis, bool lock) {
    final arg0 = malloc<Int64>()..value = axis;
    final arg1 = malloc<Uint8>()..value = lock ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_axis_lock, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_axis_lock =
      resolveMethodBind('PhysicsBody3D', 'get_axis_lock', 2264617709);

  bool getAxisLock(int axis) {
    final arg0 = malloc<Int64>()..value = axis;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_axis_lock, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  // Skipped get_collision_exceptions(): unsupported return type "typedarray::PhysicsBody3D".
  static final Pointer<Void> _mb_add_collision_exception_with =
      resolveMethodBind('PhysicsBody3D', 'add_collision_exception_with', 1078189570);

  void addCollisionExceptionWith(Node body) {
    final arg0 = malloc<Pointer<Void>>()..value = body.nativePtr;
    try {
      ptrcallVoid(_mb_add_collision_exception_with, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_remove_collision_exception_with =
      resolveMethodBind('PhysicsBody3D', 'remove_collision_exception_with', 1078189570);

  void removeCollisionExceptionWith(Node body) {
    final arg0 = malloc<Pointer<Void>>()..value = body.nativePtr;
    try {
      ptrcallVoid(_mb_remove_collision_exception_with, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

}
