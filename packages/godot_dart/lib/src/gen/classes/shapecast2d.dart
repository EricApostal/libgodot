// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class ShapeCast2D extends Node2D {
  ShapeCast2D(super.nativePtr);

  /// Constructs a brand-new engine-owned ShapeCast2D instance
  /// (via classdb_construct_object3), not an existing one.
  factory ShapeCast2D.create() {
    return ShapeCast2D(resolveClassConstructor('ShapeCast2D'));
  }

  static final Pointer<Void> _mb_set_enabled =
      resolveMethodBind('ShapeCast2D', 'set_enabled', 2586408642);

  void setEnabled(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_enabled, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_enabled =
      resolveMethodBind('ShapeCast2D', 'is_enabled', 36873697);

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

  static final Pointer<Void> _mb_set_shape =
      resolveMethodBind('ShapeCast2D', 'set_shape', 771364740);

  void setShape(Shape2D shape) {
    final arg0 = malloc<Pointer<Void>>()..value = shape.nativePtr;
    try {
      ptrcallVoid(_mb_set_shape, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_shape =
      resolveMethodBind('ShapeCast2D', 'get_shape', 522005891);

  Shape2D? getShape() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_shape, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Shape2D(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_target_position =
      resolveMethodBind('ShapeCast2D', 'set_target_position', 743155724);

  void setTargetPosition(Vector2 localPoint) {
    final arg0 = malloc<Uint8>(Vector2.nativeSize);
    localPoint.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_target_position, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_target_position =
      resolveMethodBind('ShapeCast2D', 'get_target_position', 3341600327);

  Vector2 getTargetPosition() {
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_target_position, nativePtr, [], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_margin =
      resolveMethodBind('ShapeCast2D', 'set_margin', 373806689);

  void setMargin(double margin) {
    final arg0 = malloc<Double>()..value = margin;
    try {
      ptrcallVoid(_mb_set_margin, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_margin =
      resolveMethodBind('ShapeCast2D', 'get_margin', 1740695150);

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

  static final Pointer<Void> _mb_set_max_results =
      resolveMethodBind('ShapeCast2D', 'set_max_results', 1286410249);

  void setMaxResults(int maxResults) {
    final arg0 = malloc<Int64>()..value = maxResults;
    try {
      ptrcallVoid(_mb_set_max_results, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_max_results =
      resolveMethodBind('ShapeCast2D', 'get_max_results', 3905245786);

  int getMaxResults() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_max_results, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_is_colliding =
      resolveMethodBind('ShapeCast2D', 'is_colliding', 36873697);

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

  static final Pointer<Void> _mb_get_collision_count =
      resolveMethodBind('ShapeCast2D', 'get_collision_count', 3905245786);

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

  static final Pointer<Void> _mb_force_shapecast_update =
      resolveMethodBind('ShapeCast2D', 'force_shapecast_update', 3218959716);

  void forceShapecastUpdate() {
    try {
      ptrcallVoid(_mb_force_shapecast_update, nativePtr, []);
    } finally {
    }
  }

  // Skipped get_collider(): unsupported return type "Object".
  // Skipped get_collider_rid(): unsupported return type "RID".
  static final Pointer<Void> _mb_get_collider_shape =
      resolveMethodBind('ShapeCast2D', 'get_collider_shape', 923996154);

  int getColliderShape(int index) {
    final arg0 = malloc<Int64>()..value = index;
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

  static final Pointer<Void> _mb_get_collision_point =
      resolveMethodBind('ShapeCast2D', 'get_collision_point', 2299179447);

  Vector2 getCollisionPoint(int index) {
    final arg0 = malloc<Int64>()..value = index;
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_collision_point, nativePtr, [arg0.cast<Void>()], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_collision_normal =
      resolveMethodBind('ShapeCast2D', 'get_collision_normal', 2299179447);

  Vector2 getCollisionNormal(int index) {
    final arg0 = malloc<Int64>()..value = index;
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_collision_normal, nativePtr, [arg0.cast<Void>()], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_closest_collision_safe_fraction =
      resolveMethodBind('ShapeCast2D', 'get_closest_collision_safe_fraction', 1740695150);

  double getClosestCollisionSafeFraction() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_closest_collision_safe_fraction, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_closest_collision_unsafe_fraction =
      resolveMethodBind('ShapeCast2D', 'get_closest_collision_unsafe_fraction', 1740695150);

  double getClosestCollisionUnsafeFraction() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_closest_collision_unsafe_fraction, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  // Skipped add_exception_rid(): an argument type is unsupported.
  static final Pointer<Void> _mb_add_exception =
      resolveMethodBind('ShapeCast2D', 'add_exception', 3090941106);

  void addException(CollisionObject2D node) {
    final arg0 = malloc<Pointer<Void>>()..value = node.nativePtr;
    try {
      ptrcallVoid(_mb_add_exception, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  // Skipped remove_exception_rid(): an argument type is unsupported.
  static final Pointer<Void> _mb_remove_exception =
      resolveMethodBind('ShapeCast2D', 'remove_exception', 3090941106);

  void removeException(CollisionObject2D node) {
    final arg0 = malloc<Pointer<Void>>()..value = node.nativePtr;
    try {
      ptrcallVoid(_mb_remove_exception, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_clear_exceptions =
      resolveMethodBind('ShapeCast2D', 'clear_exceptions', 3218959716);

  void clearExceptions() {
    try {
      ptrcallVoid(_mb_clear_exceptions, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_collision_mask =
      resolveMethodBind('ShapeCast2D', 'set_collision_mask', 1286410249);

  void setCollisionMask(int mask) {
    final arg0 = malloc<Int64>()..value = mask;
    try {
      ptrcallVoid(_mb_set_collision_mask, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_collision_mask =
      resolveMethodBind('ShapeCast2D', 'get_collision_mask', 3905245786);

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
      resolveMethodBind('ShapeCast2D', 'set_collision_mask_value', 300928843);

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
      resolveMethodBind('ShapeCast2D', 'get_collision_mask_value', 1116898809);

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
      resolveMethodBind('ShapeCast2D', 'set_exclude_parent_body', 2586408642);

  void setExcludeParentBody(bool mask) {
    final arg0 = malloc<Uint8>()..value = mask ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_exclude_parent_body, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_exclude_parent_body =
      resolveMethodBind('ShapeCast2D', 'get_exclude_parent_body', 36873697);

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
      resolveMethodBind('ShapeCast2D', 'set_collide_with_areas', 2586408642);

  void setCollideWithAreas(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_collide_with_areas, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_collide_with_areas_enabled =
      resolveMethodBind('ShapeCast2D', 'is_collide_with_areas_enabled', 36873697);

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
      resolveMethodBind('ShapeCast2D', 'set_collide_with_bodies', 2586408642);

  void setCollideWithBodies(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_collide_with_bodies, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_collide_with_bodies_enabled =
      resolveMethodBind('ShapeCast2D', 'is_collide_with_bodies_enabled', 36873697);

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

  // Skipped get_collision_result(): unsupported return type "Array".
}
