// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class CollisionPolygon2D extends Node2D {
  CollisionPolygon2D(super.nativePtr);

  // Skipped set_polygon(): an argument type is unsupported.
  // Skipped get_polygon(): unsupported return type "PackedVector2Array".
  static final Pointer<Void> _mb_set_build_mode =
      resolveMethodBind('CollisionPolygon2D', 'set_build_mode', 2780803135);

  void setBuildMode(int buildMode) {
    final arg0 = malloc<Int64>()..value = buildMode;
    try {
      ptrcallVoid(_mb_set_build_mode, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_build_mode =
      resolveMethodBind('CollisionPolygon2D', 'get_build_mode', 3044948800);

  int getBuildMode() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_build_mode, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_disabled =
      resolveMethodBind('CollisionPolygon2D', 'set_disabled', 2586408642);

  void setDisabled(bool disabled) {
    final arg0 = malloc<Uint8>()..value = disabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_disabled, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_disabled =
      resolveMethodBind('CollisionPolygon2D', 'is_disabled', 36873697);

  bool isDisabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_disabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_one_way_collision =
      resolveMethodBind('CollisionPolygon2D', 'set_one_way_collision', 2586408642);

  void setOneWayCollision(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_one_way_collision, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_one_way_collision_enabled =
      resolveMethodBind('CollisionPolygon2D', 'is_one_way_collision_enabled', 36873697);

  bool isOneWayCollisionEnabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_one_way_collision_enabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_one_way_collision_margin =
      resolveMethodBind('CollisionPolygon2D', 'set_one_way_collision_margin', 373806689);

  void setOneWayCollisionMargin(double margin) {
    final arg0 = malloc<Double>()..value = margin;
    try {
      ptrcallVoid(_mb_set_one_way_collision_margin, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_one_way_collision_margin =
      resolveMethodBind('CollisionPolygon2D', 'get_one_way_collision_margin', 1740695150);

  double getOneWayCollisionMargin() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_one_way_collision_margin, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_one_way_collision_direction =
      resolveMethodBind('CollisionPolygon2D', 'set_one_way_collision_direction', 743155724);

  void setOneWayCollisionDirection(Vector2 direction) {
    final arg0 = malloc<Uint8>(Vector2.nativeSize);
    direction.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_one_way_collision_direction, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_one_way_collision_direction =
      resolveMethodBind('CollisionPolygon2D', 'get_one_way_collision_direction', 3341600327);

  Vector2 getOneWayCollisionDirection() {
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_one_way_collision_direction, nativePtr, [], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
