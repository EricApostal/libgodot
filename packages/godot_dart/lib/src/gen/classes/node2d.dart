// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class Node2D extends CanvasItem {
  Node2D(super.nativePtr);

  static final Pointer<Void> _mb_set_position =
      resolveMethodBind('Node2D', 'set_position', 743155724);

  void setPosition(Vector2 position) {
    final arg0 = malloc<Uint8>(Vector2.nativeSize);
    position.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_position, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_rotation =
      resolveMethodBind('Node2D', 'set_rotation', 373806689);

  void setRotation(double radians) {
    final arg0 = malloc<Double>()..value = radians;
    try {
      ptrcallVoid(_mb_set_rotation, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_rotation_degrees =
      resolveMethodBind('Node2D', 'set_rotation_degrees', 373806689);

  void setRotationDegrees(double degrees) {
    final arg0 = malloc<Double>()..value = degrees;
    try {
      ptrcallVoid(_mb_set_rotation_degrees, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_skew =
      resolveMethodBind('Node2D', 'set_skew', 373806689);

  void setSkew(double radians) {
    final arg0 = malloc<Double>()..value = radians;
    try {
      ptrcallVoid(_mb_set_skew, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_scale =
      resolveMethodBind('Node2D', 'set_scale', 743155724);

  void setScale(Vector2 scale) {
    final arg0 = malloc<Uint8>(Vector2.nativeSize);
    scale.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_scale, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_position =
      resolveMethodBind('Node2D', 'get_position', 3341600327);

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

  static final Pointer<Void> _mb_get_rotation =
      resolveMethodBind('Node2D', 'get_rotation', 1740695150);

  double getRotation() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_rotation, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_rotation_degrees =
      resolveMethodBind('Node2D', 'get_rotation_degrees', 1740695150);

  double getRotationDegrees() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_rotation_degrees, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_skew =
      resolveMethodBind('Node2D', 'get_skew', 1740695150);

  double getSkew() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_skew, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_scale =
      resolveMethodBind('Node2D', 'get_scale', 3341600327);

  Vector2 getScale() {
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_scale, nativePtr, [], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_rotate =
      resolveMethodBind('Node2D', 'rotate', 373806689);

  void rotate(double radians) {
    final arg0 = malloc<Double>()..value = radians;
    try {
      ptrcallVoid(_mb_rotate, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_move_local_x =
      resolveMethodBind('Node2D', 'move_local_x', 2087892650);

  void moveLocalX(double delta, bool scaled) {
    final arg0 = malloc<Double>()..value = delta;
    final arg1 = malloc<Uint8>()..value = scaled ? 1 : 0;
    try {
      ptrcallVoid(_mb_move_local_x, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_move_local_y =
      resolveMethodBind('Node2D', 'move_local_y', 2087892650);

  void moveLocalY(double delta, bool scaled) {
    final arg0 = malloc<Double>()..value = delta;
    final arg1 = malloc<Uint8>()..value = scaled ? 1 : 0;
    try {
      ptrcallVoid(_mb_move_local_y, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_translate =
      resolveMethodBind('Node2D', 'translate', 743155724);

  void translate(Vector2 offset) {
    final arg0 = malloc<Uint8>(Vector2.nativeSize);
    offset.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_translate, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_global_translate =
      resolveMethodBind('Node2D', 'global_translate', 743155724);

  void globalTranslate(Vector2 offset) {
    final arg0 = malloc<Uint8>(Vector2.nativeSize);
    offset.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_global_translate, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_apply_scale =
      resolveMethodBind('Node2D', 'apply_scale', 743155724);

  void applyScale(Vector2 ratio) {
    final arg0 = malloc<Uint8>(Vector2.nativeSize);
    ratio.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_apply_scale, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_global_position =
      resolveMethodBind('Node2D', 'set_global_position', 743155724);

  void setGlobalPosition(Vector2 position) {
    final arg0 = malloc<Uint8>(Vector2.nativeSize);
    position.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_global_position, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_global_position =
      resolveMethodBind('Node2D', 'get_global_position', 3341600327);

  Vector2 getGlobalPosition() {
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_global_position, nativePtr, [], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_global_rotation =
      resolveMethodBind('Node2D', 'set_global_rotation', 373806689);

  void setGlobalRotation(double radians) {
    final arg0 = malloc<Double>()..value = radians;
    try {
      ptrcallVoid(_mb_set_global_rotation, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_global_rotation_degrees =
      resolveMethodBind('Node2D', 'set_global_rotation_degrees', 373806689);

  void setGlobalRotationDegrees(double degrees) {
    final arg0 = malloc<Double>()..value = degrees;
    try {
      ptrcallVoid(_mb_set_global_rotation_degrees, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_global_rotation =
      resolveMethodBind('Node2D', 'get_global_rotation', 1740695150);

  double getGlobalRotation() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_global_rotation, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_global_rotation_degrees =
      resolveMethodBind('Node2D', 'get_global_rotation_degrees', 1740695150);

  double getGlobalRotationDegrees() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_global_rotation_degrees, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_global_skew =
      resolveMethodBind('Node2D', 'set_global_skew', 373806689);

  void setGlobalSkew(double radians) {
    final arg0 = malloc<Double>()..value = radians;
    try {
      ptrcallVoid(_mb_set_global_skew, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_global_skew =
      resolveMethodBind('Node2D', 'get_global_skew', 1740695150);

  double getGlobalSkew() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_global_skew, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_global_scale =
      resolveMethodBind('Node2D', 'set_global_scale', 743155724);

  void setGlobalScale(Vector2 scale) {
    final arg0 = malloc<Uint8>(Vector2.nativeSize);
    scale.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_global_scale, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_global_scale =
      resolveMethodBind('Node2D', 'get_global_scale', 3341600327);

  Vector2 getGlobalScale() {
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_global_scale, nativePtr, [], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_transform =
      resolveMethodBind('Node2D', 'set_transform', 2761652528);

  void setTransform(Transform2D xform) {
    final arg0 = malloc<Uint8>(Transform2D.nativeSize);
    xform.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_transform, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_global_transform =
      resolveMethodBind('Node2D', 'set_global_transform', 2761652528);

  void setGlobalTransform(Transform2D xform) {
    final arg0 = malloc<Uint8>(Transform2D.nativeSize);
    xform.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_global_transform, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_look_at =
      resolveMethodBind('Node2D', 'look_at', 743155724);

  void lookAt(Vector2 point) {
    final arg0 = malloc<Uint8>(Vector2.nativeSize);
    point.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_look_at, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_angle_to =
      resolveMethodBind('Node2D', 'get_angle_to', 2276447920);

  double getAngleTo(Vector2 point) {
    final arg0 = malloc<Uint8>(Vector2.nativeSize);
    point.writeTo(arg0, 0);
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_angle_to, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_to_local =
      resolveMethodBind('Node2D', 'to_local', 2656412154);

  Vector2 toLocal(Vector2 globalPoint) {
    final arg0 = malloc<Uint8>(Vector2.nativeSize);
    globalPoint.writeTo(arg0, 0);
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_to_local, nativePtr, [arg0.cast<Void>()], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_to_global =
      resolveMethodBind('Node2D', 'to_global', 2656412154);

  Vector2 toGlobal(Vector2 localPoint) {
    final arg0 = malloc<Uint8>(Vector2.nativeSize);
    localPoint.writeTo(arg0, 0);
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_to_global, nativePtr, [arg0.cast<Void>()], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_relative_transform_to_parent =
      resolveMethodBind('Node2D', 'get_relative_transform_to_parent', 904556875);

  Transform2D getRelativeTransformToParent(Node parent) {
    final arg0 = malloc<Pointer<Void>>()..value = parent.nativePtr;
    try {
      final ret = malloc<Uint8>(Transform2D.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_relative_transform_to_parent, nativePtr, [arg0.cast<Void>()], ret.cast());
        return Transform2D.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

}
