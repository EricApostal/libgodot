// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class PhysicsBody2D extends CollisionObject2D {
  PhysicsBody2D(super.nativePtr);

  static final Pointer<Void> _mb_move_and_collide =
      resolveMethodBind('PhysicsBody2D', 'move_and_collide', 3681923724);

  KinematicCollision2D? moveAndCollide(Vector2 motion, bool testOnly, double safeMargin, bool recoveryAsCollision) {
    final arg0 = malloc<Uint8>(Vector2.nativeSize);
    motion.writeTo(arg0, 0);
    final arg1 = malloc<Uint8>()..value = testOnly ? 1 : 0;
    final arg2 = malloc<Double>()..value = safeMargin;
    final arg3 = malloc<Uint8>()..value = recoveryAsCollision ? 1 : 0;
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_move_and_collide, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>(), arg3.cast<Void>()], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : KinematicCollision2D(resultPtr);
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

  static final Pointer<Void> _mb_test_move =
      resolveMethodBind('PhysicsBody2D', 'test_move', 3324464701);

  bool testMove(Transform2D from, Vector2 motion, KinematicCollision2D collision, double safeMargin, bool recoveryAsCollision) {
    final arg0 = malloc<Uint8>(Transform2D.nativeSize);
    from.writeTo(arg0, 0);
    final arg1 = malloc<Uint8>(Vector2.nativeSize);
    motion.writeTo(arg1, 0);
    final arg2 = malloc<Pointer<Void>>()..value = collision.nativePtr;
    final arg3 = malloc<Double>()..value = safeMargin;
    final arg4 = malloc<Uint8>()..value = recoveryAsCollision ? 1 : 0;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_test_move, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>(), arg3.cast<Void>(), arg4.cast<Void>()], ret.cast());
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
    }
  }

  static final Pointer<Void> _mb_get_gravity =
      resolveMethodBind('PhysicsBody2D', 'get_gravity', 3341600327);

  Vector2 getGravity() {
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_gravity, nativePtr, [], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  // Skipped get_collision_exceptions(): unsupported return type "typedarray::PhysicsBody2D".
  static final Pointer<Void> _mb_add_collision_exception_with =
      resolveMethodBind('PhysicsBody2D', 'add_collision_exception_with', 1078189570);

  void addCollisionExceptionWith(Node body) {
    final arg0 = malloc<Pointer<Void>>()..value = body.nativePtr;
    try {
      ptrcallVoid(_mb_add_collision_exception_with, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_remove_collision_exception_with =
      resolveMethodBind('PhysicsBody2D', 'remove_collision_exception_with', 1078189570);

  void removeCollisionExceptionWith(Node body) {
    final arg0 = malloc<Pointer<Void>>()..value = body.nativePtr;
    try {
      ptrcallVoid(_mb_remove_collision_exception_with, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

}
