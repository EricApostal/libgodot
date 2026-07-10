// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class PhysicsTestMotionParameters2D extends RefCounted {
  PhysicsTestMotionParameters2D(super.nativePtr);

  /// Constructs a brand-new engine-owned PhysicsTestMotionParameters2D instance
  /// (via classdb_construct_object3), not an existing one.
  factory PhysicsTestMotionParameters2D.create() {
    return PhysicsTestMotionParameters2D(resolveClassConstructor('PhysicsTestMotionParameters2D'));
  }

  static final Pointer<Void> _mb_get_from =
      resolveMethodBind('PhysicsTestMotionParameters2D', 'get_from', 3814499831);

  Transform2D getFrom() {
    try {
      final ret = malloc<Uint8>(Transform2D.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_from, nativePtr, [], ret.cast());
        return Transform2D.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_from =
      resolveMethodBind('PhysicsTestMotionParameters2D', 'set_from', 2761652528);

  void setFrom(Transform2D from) {
    final arg0 = malloc<Uint8>(Transform2D.nativeSize);
    from.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_from, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_motion =
      resolveMethodBind('PhysicsTestMotionParameters2D', 'get_motion', 3341600327);

  Vector2 getMotion() {
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_motion, nativePtr, [], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_motion =
      resolveMethodBind('PhysicsTestMotionParameters2D', 'set_motion', 743155724);

  void setMotion(Vector2 motion) {
    final arg0 = malloc<Uint8>(Vector2.nativeSize);
    motion.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_motion, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_margin =
      resolveMethodBind('PhysicsTestMotionParameters2D', 'get_margin', 1740695150);

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
      resolveMethodBind('PhysicsTestMotionParameters2D', 'set_margin', 373806689);

  void setMargin(double margin) {
    final arg0 = malloc<Double>()..value = margin;
    try {
      ptrcallVoid(_mb_set_margin, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_collide_separation_ray_enabled =
      resolveMethodBind('PhysicsTestMotionParameters2D', 'is_collide_separation_ray_enabled', 36873697);

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
      resolveMethodBind('PhysicsTestMotionParameters2D', 'set_collide_separation_ray_enabled', 2586408642);

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
      resolveMethodBind('PhysicsTestMotionParameters2D', 'is_recovery_as_collision_enabled', 36873697);

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
      resolveMethodBind('PhysicsTestMotionParameters2D', 'set_recovery_as_collision_enabled', 2586408642);

  void setRecoveryAsCollisionEnabled(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_recovery_as_collision_enabled, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

}
