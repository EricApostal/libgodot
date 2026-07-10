// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class PhysicsPointQueryParameters2D extends RefCounted {
  PhysicsPointQueryParameters2D(super.nativePtr);

  /// Constructs a brand-new engine-owned PhysicsPointQueryParameters2D instance
  /// (via classdb_construct_object3), not an existing one.
  factory PhysicsPointQueryParameters2D.create() {
    return PhysicsPointQueryParameters2D(resolveClassConstructor('PhysicsPointQueryParameters2D'));
  }

  static final Pointer<Void> _mb_set_position =
      resolveMethodBind('PhysicsPointQueryParameters2D', 'set_position', 743155724);

  void setPosition(Vector2 position) {
    final arg0 = malloc<Uint8>(Vector2.nativeSize);
    position.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_position, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_position =
      resolveMethodBind('PhysicsPointQueryParameters2D', 'get_position', 3341600327);

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

  static final Pointer<Void> _mb_set_canvas_instance_id =
      resolveMethodBind('PhysicsPointQueryParameters2D', 'set_canvas_instance_id', 1286410249);

  void setCanvasInstanceId(int canvasInstanceId) {
    final arg0 = malloc<Int64>()..value = canvasInstanceId;
    try {
      ptrcallVoid(_mb_set_canvas_instance_id, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_canvas_instance_id =
      resolveMethodBind('PhysicsPointQueryParameters2D', 'get_canvas_instance_id', 3905245786);

  int getCanvasInstanceId() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_canvas_instance_id, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_collision_mask =
      resolveMethodBind('PhysicsPointQueryParameters2D', 'set_collision_mask', 1286410249);

  void setCollisionMask(int collisionMask) {
    final arg0 = malloc<Int64>()..value = collisionMask;
    try {
      ptrcallVoid(_mb_set_collision_mask, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_collision_mask =
      resolveMethodBind('PhysicsPointQueryParameters2D', 'get_collision_mask', 3905245786);

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
      resolveMethodBind('PhysicsPointQueryParameters2D', 'set_collide_with_bodies', 2586408642);

  void setCollideWithBodies(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_collide_with_bodies, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_collide_with_bodies_enabled =
      resolveMethodBind('PhysicsPointQueryParameters2D', 'is_collide_with_bodies_enabled', 36873697);

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
      resolveMethodBind('PhysicsPointQueryParameters2D', 'set_collide_with_areas', 2586408642);

  void setCollideWithAreas(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_collide_with_areas, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_collide_with_areas_enabled =
      resolveMethodBind('PhysicsPointQueryParameters2D', 'is_collide_with_areas_enabled', 36873697);

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

}
