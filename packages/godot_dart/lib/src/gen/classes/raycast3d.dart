// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class RayCast3D extends Node3D {
  RayCast3D(super.nativePtr);

  /// Constructs a brand-new engine-owned RayCast3D instance
  /// (via classdb_construct_object3), not an existing one.
  factory RayCast3D.create() {
    return RayCast3D(resolveClassConstructor('RayCast3D'));
  }

  static final Pointer<Void> _mb_set_enabled =
      resolveMethodBind('RayCast3D', 'set_enabled', 2586408642);

  void setEnabled(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_enabled, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_enabled =
      resolveMethodBind('RayCast3D', 'is_enabled', 36873697);

  bool isEnabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_enabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_target_position =
      resolveMethodBind('RayCast3D', 'set_target_position', 3460891852);

  void setTargetPosition(Vector3 localPoint) {
    final arg0 = malloc<Uint8>(Vector3.nativeSize);
    localPoint.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_target_position, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_target_position =
      resolveMethodBind('RayCast3D', 'get_target_position', 3360562783);

  Vector3 getTargetPosition() {
    try {
      final ret = malloc<Uint8>(Vector3.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_target_position, nativePtr, [], ret.cast());
        return Vector3.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_is_colliding =
      resolveMethodBind('RayCast3D', 'is_colliding', 36873697);

  bool isColliding() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_colliding, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_force_raycast_update =
      resolveMethodBind('RayCast3D', 'force_raycast_update', 3218959716);

  void forceRaycastUpdate() {
    try {
      ptrcallVoid(_mb_force_raycast_update, nativePtr, []);
    } finally {
    }
  }

  // Skipped get_collider(): unsupported return type "Object".
  // Skipped get_collider_rid(): unsupported return type "RID".
  static final Pointer<Void> _mb_get_collider_shape =
      resolveMethodBind('RayCast3D', 'get_collider_shape', 3905245786);

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

  static final Pointer<Void> _mb_get_collision_point =
      resolveMethodBind('RayCast3D', 'get_collision_point', 3360562783);

  Vector3 getCollisionPoint() {
    try {
      final ret = malloc<Uint8>(Vector3.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_collision_point, nativePtr, [], ret.cast());
        return Vector3.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_collision_normal =
      resolveMethodBind('RayCast3D', 'get_collision_normal', 3360562783);

  Vector3 getCollisionNormal() {
    try {
      final ret = malloc<Uint8>(Vector3.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_collision_normal, nativePtr, [], ret.cast());
        return Vector3.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_collision_face_index =
      resolveMethodBind('RayCast3D', 'get_collision_face_index', 3905245786);

  int getCollisionFaceIndex() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_collision_face_index, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  // Skipped add_exception_rid(): an argument type is unsupported.
  static final Pointer<Void> _mb_add_exception =
      resolveMethodBind('RayCast3D', 'add_exception', 1976431078);

  void addException(CollisionObject3D node) {
    final arg0 = malloc<Pointer<Void>>()..value = node.nativePtr;
    try {
      ptrcallVoid(_mb_add_exception, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  // Skipped remove_exception_rid(): an argument type is unsupported.
  static final Pointer<Void> _mb_remove_exception =
      resolveMethodBind('RayCast3D', 'remove_exception', 1976431078);

  void removeException(CollisionObject3D node) {
    final arg0 = malloc<Pointer<Void>>()..value = node.nativePtr;
    try {
      ptrcallVoid(_mb_remove_exception, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_clear_exceptions =
      resolveMethodBind('RayCast3D', 'clear_exceptions', 3218959716);

  void clearExceptions() {
    try {
      ptrcallVoid(_mb_clear_exceptions, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_collision_mask =
      resolveMethodBind('RayCast3D', 'set_collision_mask', 1286410249);

  void setCollisionMask(int mask) {
    final arg0 = malloc<Int64>()..value = mask;
    try {
      ptrcallVoid(_mb_set_collision_mask, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_collision_mask =
      resolveMethodBind('RayCast3D', 'get_collision_mask', 3905245786);

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

  static final Pointer<Void> _mb_set_collision_mask_value =
      resolveMethodBind('RayCast3D', 'set_collision_mask_value', 300928843);

  void setCollisionMaskValue(int layerNumber, bool value) {
    final arg0 = malloc<Int64>()..value = layerNumber;
    final arg1 = malloc<Uint8>()..value = value ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_collision_mask_value, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_collision_mask_value =
      resolveMethodBind('RayCast3D', 'get_collision_mask_value', 1116898809);

  bool getCollisionMaskValue(int layerNumber) {
    final arg0 = malloc<Int64>()..value = layerNumber;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_collision_mask_value, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_exclude_parent_body =
      resolveMethodBind('RayCast3D', 'set_exclude_parent_body', 2586408642);

  void setExcludeParentBody(bool mask) {
    final arg0 = malloc<Uint8>()..value = mask ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_exclude_parent_body, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_exclude_parent_body =
      resolveMethodBind('RayCast3D', 'get_exclude_parent_body', 36873697);

  bool getExcludeParentBody() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_exclude_parent_body, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_collide_with_areas =
      resolveMethodBind('RayCast3D', 'set_collide_with_areas', 2586408642);

  void setCollideWithAreas(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_collide_with_areas, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_collide_with_areas_enabled =
      resolveMethodBind('RayCast3D', 'is_collide_with_areas_enabled', 36873697);

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

  static final Pointer<Void> _mb_set_collide_with_bodies =
      resolveMethodBind('RayCast3D', 'set_collide_with_bodies', 2586408642);

  void setCollideWithBodies(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_collide_with_bodies, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_collide_with_bodies_enabled =
      resolveMethodBind('RayCast3D', 'is_collide_with_bodies_enabled', 36873697);

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

  static final Pointer<Void> _mb_set_hit_from_inside =
      resolveMethodBind('RayCast3D', 'set_hit_from_inside', 2586408642);

  void setHitFromInside(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_hit_from_inside, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_hit_from_inside_enabled =
      resolveMethodBind('RayCast3D', 'is_hit_from_inside_enabled', 36873697);

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

  static final Pointer<Void> _mb_set_hit_back_faces =
      resolveMethodBind('RayCast3D', 'set_hit_back_faces', 2586408642);

  void setHitBackFaces(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_hit_back_faces, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_hit_back_faces_enabled =
      resolveMethodBind('RayCast3D', 'is_hit_back_faces_enabled', 36873697);

  bool isHitBackFacesEnabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_hit_back_faces_enabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_debug_shape_custom_color =
      resolveMethodBind('RayCast3D', 'set_debug_shape_custom_color', 2920490490);

  void setDebugShapeCustomColor(Color debugShapeCustomColor) {
    final arg0 = malloc<Uint8>(Color.nativeSize);
    debugShapeCustomColor.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_debug_shape_custom_color, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_debug_shape_custom_color =
      resolveMethodBind('RayCast3D', 'get_debug_shape_custom_color', 3444240500);

  Color getDebugShapeCustomColor() {
    try {
      final ret = malloc<Uint8>(Color.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_debug_shape_custom_color, nativePtr, [], ret.cast());
        return Color.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_debug_shape_thickness =
      resolveMethodBind('RayCast3D', 'set_debug_shape_thickness', 1286410249);

  void setDebugShapeThickness(int debugShapeThickness) {
    final arg0 = malloc<Int64>()..value = debugShapeThickness;
    try {
      ptrcallVoid(_mb_set_debug_shape_thickness, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_debug_shape_thickness =
      resolveMethodBind('RayCast3D', 'get_debug_shape_thickness', 3905245786);

  int getDebugShapeThickness() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_debug_shape_thickness, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
