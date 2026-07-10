// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class PhysicsRayQueryParameters2D extends RefCounted {
  PhysicsRayQueryParameters2D(super.nativePtr);

  /// Constructs a brand-new engine-owned PhysicsRayQueryParameters2D instance
  /// (via classdb_construct_object3), not an existing one.
  factory PhysicsRayQueryParameters2D.create() {
    return PhysicsRayQueryParameters2D(resolveClassConstructor('PhysicsRayQueryParameters2D'));
  }

  static final Pointer<Void> _mb_set_from =
      resolveMethodBind('PhysicsRayQueryParameters2D', 'set_from', 743155724);

  void setFrom(Vector2 from) {
    final arg0 = malloc<Uint8>(Vector2.nativeSize);
    from.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_from, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_from =
      resolveMethodBind('PhysicsRayQueryParameters2D', 'get_from', 3341600327);

  Vector2 getFrom() {
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_from, nativePtr, [], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_to =
      resolveMethodBind('PhysicsRayQueryParameters2D', 'set_to', 743155724);

  void setTo(Vector2 to) {
    final arg0 = malloc<Uint8>(Vector2.nativeSize);
    to.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_to, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_to =
      resolveMethodBind('PhysicsRayQueryParameters2D', 'get_to', 3341600327);

  Vector2 getTo() {
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_to, nativePtr, [], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_collision_mask =
      resolveMethodBind('PhysicsRayQueryParameters2D', 'set_collision_mask', 1286410249);

  void setCollisionMask(int collisionMask) {
    final arg0 = malloc<Int64>()..value = collisionMask;
    try {
      ptrcallVoid(_mb_set_collision_mask, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_collision_mask =
      resolveMethodBind('PhysicsRayQueryParameters2D', 'get_collision_mask', 3905245786);

  int getCollisionMask() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_collision_mask, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  // Skipped set_exclude(): an argument type is unsupported.
  // Skipped get_exclude(): unsupported return type "typedarray::RID".
  static final Pointer<Void> _mb_set_collide_with_bodies =
      resolveMethodBind('PhysicsRayQueryParameters2D', 'set_collide_with_bodies', 2586408642);

  void setCollideWithBodies(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_collide_with_bodies, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_collide_with_bodies_enabled =
      resolveMethodBind('PhysicsRayQueryParameters2D', 'is_collide_with_bodies_enabled', 36873697);

  bool isCollideWithBodiesEnabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_collide_with_bodies_enabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_collide_with_areas =
      resolveMethodBind('PhysicsRayQueryParameters2D', 'set_collide_with_areas', 2586408642);

  void setCollideWithAreas(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_collide_with_areas, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_collide_with_areas_enabled =
      resolveMethodBind('PhysicsRayQueryParameters2D', 'is_collide_with_areas_enabled', 36873697);

  bool isCollideWithAreasEnabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_collide_with_areas_enabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_hit_from_inside =
      resolveMethodBind('PhysicsRayQueryParameters2D', 'set_hit_from_inside', 2586408642);

  void setHitFromInside(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_hit_from_inside, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_hit_from_inside_enabled =
      resolveMethodBind('PhysicsRayQueryParameters2D', 'is_hit_from_inside_enabled', 36873697);

  bool isHitFromInsideEnabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_hit_from_inside_enabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
