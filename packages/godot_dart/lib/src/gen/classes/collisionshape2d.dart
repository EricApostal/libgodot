// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class CollisionShape2D extends Node2D {
  CollisionShape2D(super.nativePtr);

  static final Pointer<Void> _mb_set_shape =
      resolveMethodBind('CollisionShape2D', 'set_shape', 771364740);

  void setShape(Shape2D shape) {
    final arg0 = malloc<Pointer<Void>>()..value = shape.nativePtr;
    try {
      ptrcallVoid(_mb_set_shape, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_shape =
      resolveMethodBind('CollisionShape2D', 'get_shape', 522005891);

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

  static final Pointer<Void> _mb_set_disabled =
      resolveMethodBind('CollisionShape2D', 'set_disabled', 2586408642);

  void setDisabled(bool disabled) {
    final arg0 = malloc<Uint8>()..value = disabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_disabled, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_disabled =
      resolveMethodBind('CollisionShape2D', 'is_disabled', 36873697);

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
      resolveMethodBind('CollisionShape2D', 'set_one_way_collision', 2586408642);

  void setOneWayCollision(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_one_way_collision, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_one_way_collision_enabled =
      resolveMethodBind('CollisionShape2D', 'is_one_way_collision_enabled', 36873697);

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
      resolveMethodBind('CollisionShape2D', 'set_one_way_collision_margin', 373806689);

  void setOneWayCollisionMargin(double margin) {
    final arg0 = malloc<Double>()..value = margin;
    try {
      ptrcallVoid(_mb_set_one_way_collision_margin, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_one_way_collision_margin =
      resolveMethodBind('CollisionShape2D', 'get_one_way_collision_margin', 1740695150);

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
      resolveMethodBind('CollisionShape2D', 'set_one_way_collision_direction', 743155724);

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
      resolveMethodBind('CollisionShape2D', 'get_one_way_collision_direction', 3341600327);

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

  static final Pointer<Void> _mb_set_debug_color =
      resolveMethodBind('CollisionShape2D', 'set_debug_color', 2920490490);

  void setDebugColor(Color color) {
    final arg0 = malloc<Uint8>(Color.nativeSize);
    color.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_debug_color, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_debug_color =
      resolveMethodBind('CollisionShape2D', 'get_debug_color', 3444240500);

  Color getDebugColor() {
    try {
      final ret = malloc<Uint8>(Color.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_debug_color, nativePtr, [], ret.cast());
        return Color.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
