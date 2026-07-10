// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class PhysicsTestMotionParameters3D extends RefCounted {
  PhysicsTestMotionParameters3D(super.nativePtr);

  static final Pointer<Void> _mb_get_from =
      resolveMethodBind('PhysicsTestMotionParameters3D', 'get_from', 3229777777);

  Transform3D getFrom() {
    try {
      final ret = malloc<Uint8>(Transform3D.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_from, nativePtr, [], ret.cast());
        return Transform3D.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_from =
      resolveMethodBind('PhysicsTestMotionParameters3D', 'set_from', 2952846383);

  void setFrom(Transform3D from) {
    final arg0 = malloc<Uint8>(Transform3D.nativeSize);
    from.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_from, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_motion =
      resolveMethodBind('PhysicsTestMotionParameters3D', 'get_motion', 3360562783);

  Vector3 getMotion() {
    try {
      final ret = malloc<Uint8>(Vector3.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_motion, nativePtr, [], ret.cast());
        return Vector3.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_motion =
      resolveMethodBind('PhysicsTestMotionParameters3D', 'set_motion', 3460891852);

  void setMotion(Vector3 motion) {
    final arg0 = malloc<Uint8>(Vector3.nativeSize);
    motion.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_motion, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_margin =
      resolveMethodBind('PhysicsTestMotionParameters3D', 'get_margin', 1740695150);

  double getMargin() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_margin, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_margin =
      resolveMethodBind('PhysicsTestMotionParameters3D', 'set_margin', 373806689);

  void setMargin(double margin) {
    final arg0 = malloc<Double>()..value = margin;
    try {
      ptrcallVoid(_mb_set_margin, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_max_collisions =
      resolveMethodBind('PhysicsTestMotionParameters3D', 'get_max_collisions', 3905245786);

  int getMaxCollisions() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_max_collisions, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_max_collisions =
      resolveMethodBind('PhysicsTestMotionParameters3D', 'set_max_collisions', 1286410249);

  void setMaxCollisions(int maxCollisions) {
    final arg0 = malloc<Int64>()..value = maxCollisions;
    try {
      ptrcallVoid(_mb_set_max_collisions, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_collide_separation_ray_enabled =
      resolveMethodBind('PhysicsTestMotionParameters3D', 'is_collide_separation_ray_enabled', 36873697);

  bool isCollideSeparationRayEnabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_collide_separation_ray_enabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_collide_separation_ray_enabled =
      resolveMethodBind('PhysicsTestMotionParameters3D', 'set_collide_separation_ray_enabled', 2586408642);

  void setCollideSeparationRayEnabled(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_collide_separation_ray_enabled, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  // Skipped get_exclude_bodies(): unsupported return type "typedarray::RID".
  // Skipped set_exclude_bodies(): an argument type is unsupported.
  // Skipped get_exclude_objects(): unsupported return type "typedarray::int".
  // Skipped set_exclude_objects(): an argument type is unsupported.
  static final Pointer<Void> _mb_is_recovery_as_collision_enabled =
      resolveMethodBind('PhysicsTestMotionParameters3D', 'is_recovery_as_collision_enabled', 36873697);

  bool isRecoveryAsCollisionEnabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_recovery_as_collision_enabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_recovery_as_collision_enabled =
      resolveMethodBind('PhysicsTestMotionParameters3D', 'set_recovery_as_collision_enabled', 2586408642);

  void setRecoveryAsCollisionEnabled(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_recovery_as_collision_enabled, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

}
