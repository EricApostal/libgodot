// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class CurveXYZTexture extends Texture2D {
  CurveXYZTexture(super.nativePtr);

  /// Constructs a brand-new engine-owned CurveXYZTexture instance
  /// (via classdb_construct_object3), not an existing one.
  factory CurveXYZTexture.create() {
    return CurveXYZTexture(resolveClassConstructor('CurveXYZTexture'));
  }

  static final Pointer<Void> _mb_set_width =
      resolveMethodBind('CurveXYZTexture', 'set_width', 1286410249);

  void setWidth(int width) {
    final arg0 = malloc<Int64>()..value = width;
    try {
      ptrcallVoid(_mb_set_width, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_curve_x =
      resolveMethodBind('CurveXYZTexture', 'set_curve_x', 270443179);

  void setCurveX(Curve curve) {
    final arg0 = malloc<Pointer<Void>>()..value = curve.nativePtr;
    try {
      ptrcallVoid(_mb_set_curve_x, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_curve_x =
      resolveMethodBind('CurveXYZTexture', 'get_curve_x', 2460114913);

  Curve? getCurveX() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_curve_x, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Curve(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_curve_y =
      resolveMethodBind('CurveXYZTexture', 'set_curve_y', 270443179);

  void setCurveY(Curve curve) {
    final arg0 = malloc<Pointer<Void>>()..value = curve.nativePtr;
    try {
      ptrcallVoid(_mb_set_curve_y, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_curve_y =
      resolveMethodBind('CurveXYZTexture', 'get_curve_y', 2460114913);

  Curve? getCurveY() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_curve_y, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Curve(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_curve_z =
      resolveMethodBind('CurveXYZTexture', 'set_curve_z', 270443179);

  void setCurveZ(Curve curve) {
    final arg0 = malloc<Pointer<Void>>()..value = curve.nativePtr;
    try {
      ptrcallVoid(_mb_set_curve_z, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_curve_z =
      resolveMethodBind('CurveXYZTexture', 'get_curve_z', 2460114913);

  Curve? getCurveZ() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_curve_z, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Curve(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
