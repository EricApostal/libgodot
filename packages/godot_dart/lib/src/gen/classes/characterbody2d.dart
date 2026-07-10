// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class CharacterBody2D extends PhysicsBody2D {
  CharacterBody2D(super.nativePtr);

  /// Constructs a brand-new engine-owned CharacterBody2D instance
  /// (via classdb_construct_object3), not an existing one.
  factory CharacterBody2D.create() {
    return CharacterBody2D(resolveClassConstructor('CharacterBody2D'));
  }

  static final Pointer<Void> _mb_move_and_slide =
      resolveMethodBind('CharacterBody2D', 'move_and_slide', 2240911060);

  bool moveAndSlide() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_move_and_slide, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_apply_floor_snap =
      resolveMethodBind('CharacterBody2D', 'apply_floor_snap', 3218959716);

  void applyFloorSnap() {
    try {
      ptrcallVoid(_mb_apply_floor_snap, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_velocity =
      resolveMethodBind('CharacterBody2D', 'set_velocity', 743155724);

  void setVelocity(Vector2 velocity) {
    final arg0 = malloc<Uint8>(Vector2.nativeSize);
    velocity.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_velocity, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_velocity =
      resolveMethodBind('CharacterBody2D', 'get_velocity', 3341600327);

  Vector2 getVelocity() {
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_velocity, nativePtr, [], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_safe_margin =
      resolveMethodBind('CharacterBody2D', 'set_safe_margin', 373806689);

  void setSafeMargin(double margin) {
    final arg0 = malloc<Double>()..value = margin;
    try {
      ptrcallVoid(_mb_set_safe_margin, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_safe_margin =
      resolveMethodBind('CharacterBody2D', 'get_safe_margin', 1740695150);

  double getSafeMargin() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_safe_margin, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_is_floor_stop_on_slope_enabled =
      resolveMethodBind('CharacterBody2D', 'is_floor_stop_on_slope_enabled', 36873697);

  bool isFloorStopOnSlopeEnabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_floor_stop_on_slope_enabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_floor_stop_on_slope_enabled =
      resolveMethodBind('CharacterBody2D', 'set_floor_stop_on_slope_enabled', 2586408642);

  void setFloorStopOnSlopeEnabled(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_floor_stop_on_slope_enabled, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_floor_constant_speed_enabled =
      resolveMethodBind('CharacterBody2D', 'set_floor_constant_speed_enabled', 2586408642);

  void setFloorConstantSpeedEnabled(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_floor_constant_speed_enabled, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_floor_constant_speed_enabled =
      resolveMethodBind('CharacterBody2D', 'is_floor_constant_speed_enabled', 36873697);

  bool isFloorConstantSpeedEnabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_floor_constant_speed_enabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_floor_block_on_wall_enabled =
      resolveMethodBind('CharacterBody2D', 'set_floor_block_on_wall_enabled', 2586408642);

  void setFloorBlockOnWallEnabled(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_floor_block_on_wall_enabled, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_floor_block_on_wall_enabled =
      resolveMethodBind('CharacterBody2D', 'is_floor_block_on_wall_enabled', 36873697);

  bool isFloorBlockOnWallEnabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_floor_block_on_wall_enabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_slide_on_ceiling_enabled =
      resolveMethodBind('CharacterBody2D', 'set_slide_on_ceiling_enabled', 2586408642);

  void setSlideOnCeilingEnabled(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_slide_on_ceiling_enabled, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_slide_on_ceiling_enabled =
      resolveMethodBind('CharacterBody2D', 'is_slide_on_ceiling_enabled', 36873697);

  bool isSlideOnCeilingEnabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_slide_on_ceiling_enabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_platform_floor_layers =
      resolveMethodBind('CharacterBody2D', 'set_platform_floor_layers', 1286410249);

  void setPlatformFloorLayers(int excludeLayer) {
    final arg0 = malloc<Int64>()..value = excludeLayer;
    try {
      ptrcallVoid(_mb_set_platform_floor_layers, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_platform_floor_layers =
      resolveMethodBind('CharacterBody2D', 'get_platform_floor_layers', 3905245786);

  int getPlatformFloorLayers() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_platform_floor_layers, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_platform_wall_layers =
      resolveMethodBind('CharacterBody2D', 'set_platform_wall_layers', 1286410249);

  void setPlatformWallLayers(int excludeLayer) {
    final arg0 = malloc<Int64>()..value = excludeLayer;
    try {
      ptrcallVoid(_mb_set_platform_wall_layers, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_platform_wall_layers =
      resolveMethodBind('CharacterBody2D', 'get_platform_wall_layers', 3905245786);

  int getPlatformWallLayers() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_platform_wall_layers, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_max_slides =
      resolveMethodBind('CharacterBody2D', 'get_max_slides', 3905245786);

  int getMaxSlides() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_max_slides, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_max_slides =
      resolveMethodBind('CharacterBody2D', 'set_max_slides', 1286410249);

  void setMaxSlides(int maxSlides) {
    final arg0 = malloc<Int64>()..value = maxSlides;
    try {
      ptrcallVoid(_mb_set_max_slides, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_floor_max_angle =
      resolveMethodBind('CharacterBody2D', 'get_floor_max_angle', 1740695150);

  double getFloorMaxAngle() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_floor_max_angle, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_floor_max_angle =
      resolveMethodBind('CharacterBody2D', 'set_floor_max_angle', 373806689);

  void setFloorMaxAngle(double radians) {
    final arg0 = malloc<Double>()..value = radians;
    try {
      ptrcallVoid(_mb_set_floor_max_angle, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_floor_snap_length =
      resolveMethodBind('CharacterBody2D', 'get_floor_snap_length', 191475506);

  double getFloorSnapLength() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_floor_snap_length, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_floor_snap_length =
      resolveMethodBind('CharacterBody2D', 'set_floor_snap_length', 373806689);

  void setFloorSnapLength(double floorSnapLength) {
    final arg0 = malloc<Double>()..value = floorSnapLength;
    try {
      ptrcallVoid(_mb_set_floor_snap_length, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_wall_min_slide_angle =
      resolveMethodBind('CharacterBody2D', 'get_wall_min_slide_angle', 1740695150);

  double getWallMinSlideAngle() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_wall_min_slide_angle, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_wall_min_slide_angle =
      resolveMethodBind('CharacterBody2D', 'set_wall_min_slide_angle', 373806689);

  void setWallMinSlideAngle(double radians) {
    final arg0 = malloc<Double>()..value = radians;
    try {
      ptrcallVoid(_mb_set_wall_min_slide_angle, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_up_direction =
      resolveMethodBind('CharacterBody2D', 'get_up_direction', 3341600327);

  Vector2 getUpDirection() {
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_up_direction, nativePtr, [], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_up_direction =
      resolveMethodBind('CharacterBody2D', 'set_up_direction', 743155724);

  void setUpDirection(Vector2 upDirection) {
    final arg0 = malloc<Uint8>(Vector2.nativeSize);
    upDirection.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_up_direction, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_motion_mode =
      resolveMethodBind('CharacterBody2D', 'set_motion_mode', 1224392233);

  void setMotionMode(int mode) {
    final arg0 = malloc<Int64>()..value = mode;
    try {
      ptrcallVoid(_mb_set_motion_mode, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_motion_mode =
      resolveMethodBind('CharacterBody2D', 'get_motion_mode', 1160151236);

  int getMotionMode() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_motion_mode, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_platform_on_leave =
      resolveMethodBind('CharacterBody2D', 'set_platform_on_leave', 2423324375);

  void setPlatformOnLeave(int onLeaveApplyVelocity) {
    final arg0 = malloc<Int64>()..value = onLeaveApplyVelocity;
    try {
      ptrcallVoid(_mb_set_platform_on_leave, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_platform_on_leave =
      resolveMethodBind('CharacterBody2D', 'get_platform_on_leave', 4054324341);

  int getPlatformOnLeave() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_platform_on_leave, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_is_on_floor =
      resolveMethodBind('CharacterBody2D', 'is_on_floor', 36873697);

  bool isOnFloor() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_on_floor, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_is_on_floor_only =
      resolveMethodBind('CharacterBody2D', 'is_on_floor_only', 36873697);

  bool isOnFloorOnly() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_on_floor_only, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_is_on_ceiling =
      resolveMethodBind('CharacterBody2D', 'is_on_ceiling', 36873697);

  bool isOnCeiling() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_on_ceiling, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_is_on_ceiling_only =
      resolveMethodBind('CharacterBody2D', 'is_on_ceiling_only', 36873697);

  bool isOnCeilingOnly() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_on_ceiling_only, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_is_on_wall =
      resolveMethodBind('CharacterBody2D', 'is_on_wall', 36873697);

  bool isOnWall() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_on_wall, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_is_on_wall_only =
      resolveMethodBind('CharacterBody2D', 'is_on_wall_only', 36873697);

  bool isOnWallOnly() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_on_wall_only, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_floor_normal =
      resolveMethodBind('CharacterBody2D', 'get_floor_normal', 3341600327);

  Vector2 getFloorNormal() {
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_floor_normal, nativePtr, [], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_wall_normal =
      resolveMethodBind('CharacterBody2D', 'get_wall_normal', 3341600327);

  Vector2 getWallNormal() {
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_wall_normal, nativePtr, [], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_last_motion =
      resolveMethodBind('CharacterBody2D', 'get_last_motion', 3341600327);

  Vector2 getLastMotion() {
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_last_motion, nativePtr, [], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_position_delta =
      resolveMethodBind('CharacterBody2D', 'get_position_delta', 3341600327);

  Vector2 getPositionDelta() {
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_position_delta, nativePtr, [], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_real_velocity =
      resolveMethodBind('CharacterBody2D', 'get_real_velocity', 3341600327);

  Vector2 getRealVelocity() {
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_real_velocity, nativePtr, [], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_floor_angle =
      resolveMethodBind('CharacterBody2D', 'get_floor_angle', 2841063350);

  double getFloorAngle(Vector2 upDirection) {
    final arg0 = malloc<Uint8>(Vector2.nativeSize);
    upDirection.writeTo(arg0, 0);
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_floor_angle, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_platform_velocity =
      resolveMethodBind('CharacterBody2D', 'get_platform_velocity', 3341600327);

  Vector2 getPlatformVelocity() {
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_platform_velocity, nativePtr, [], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_slide_collision_count =
      resolveMethodBind('CharacterBody2D', 'get_slide_collision_count', 3905245786);

  int getSlideCollisionCount() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_slide_collision_count, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_slide_collision =
      resolveMethodBind('CharacterBody2D', 'get_slide_collision', 860659811);

  KinematicCollision2D? getSlideCollision(int slideIdx) {
    final arg0 = malloc<Int64>()..value = slideIdx;
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_slide_collision, nativePtr, [arg0.cast<Void>()], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : KinematicCollision2D(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_last_slide_collision =
      resolveMethodBind('CharacterBody2D', 'get_last_slide_collision', 2161834755);

  KinematicCollision2D? getLastSlideCollision() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_last_slide_collision, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : KinematicCollision2D(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
