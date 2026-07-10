// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class Shape2D extends Resource {
  Shape2D(super.nativePtr);

  static final Pointer<Void> _mb_set_custom_solver_bias =
      resolveMethodBind('Shape2D', 'set_custom_solver_bias', 373806689);

  void setCustomSolverBias(double bias) {
    final arg0 = malloc<Double>()..value = bias;
    try {
      ptrcallVoid(_mb_set_custom_solver_bias, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_custom_solver_bias =
      resolveMethodBind('Shape2D', 'get_custom_solver_bias', 1740695150);

  double getCustomSolverBias() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_custom_solver_bias, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_collide =
      resolveMethodBind('Shape2D', 'collide', 3709843132);

  bool collide(Transform2D localXform, Shape2D withShape, Transform2D shapeXform) {
    final arg0 = malloc<Uint8>(Transform2D.nativeSize);
    localXform.writeTo(arg0, 0);
    final arg1 = malloc<Pointer<Void>>()..value = withShape.nativePtr;
    final arg2 = malloc<Uint8>(Transform2D.nativeSize);
    shapeXform.writeTo(arg2, 0);
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_collide, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_collide_with_motion =
      resolveMethodBind('Shape2D', 'collide_with_motion', 2869556801);

  bool collideWithMotion(Transform2D localXform, Vector2 localMotion, Shape2D withShape, Transform2D shapeXform, Vector2 shapeMotion) {
    final arg0 = malloc<Uint8>(Transform2D.nativeSize);
    localXform.writeTo(arg0, 0);
    final arg1 = malloc<Uint8>(Vector2.nativeSize);
    localMotion.writeTo(arg1, 0);
    final arg2 = malloc<Pointer<Void>>()..value = withShape.nativePtr;
    final arg3 = malloc<Uint8>(Transform2D.nativeSize);
    shapeXform.writeTo(arg3, 0);
    final arg4 = malloc<Uint8>(Vector2.nativeSize);
    shapeMotion.writeTo(arg4, 0);
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_collide_with_motion, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>(), arg3.cast<Void>(), arg4.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
      malloc.free(arg3);
      malloc.free(arg4);
    }
  }

  // Skipped collide_and_get_contacts(): unsupported return type "PackedVector2Array".
  // Skipped collide_with_motion_and_get_contacts(): unsupported return type "PackedVector2Array".
  // Skipped draw(): an argument type is unsupported.
  static final Pointer<Void> _mb_get_rect =
      resolveMethodBind('Shape2D', 'get_rect', 1639390495);

  Rect2 getRect() {
    try {
      final ret = malloc<Uint8>(Rect2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_rect, nativePtr, [], ret.cast());
        return Rect2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
