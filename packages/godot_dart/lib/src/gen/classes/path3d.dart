// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class Path3D extends Node3D {
  Path3D(super.nativePtr);

  static final Pointer<Void> _mb_set_curve =
      resolveMethodBind('Path3D', 'set_curve', 408955118);

  void setCurve(Curve3D curve) {
    final arg0 = malloc<Pointer<Void>>()..value = curve.nativePtr;
    try {
      ptrcallVoid(_mb_set_curve, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_curve =
      resolveMethodBind('Path3D', 'get_curve', 4244715212);

  Curve3D? getCurve() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_curve, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Curve3D(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_debug_custom_color =
      resolveMethodBind('Path3D', 'set_debug_custom_color', 2920490490);

  void setDebugCustomColor(Color debugCustomColor) {
    final arg0 = malloc<Uint8>(Color.nativeSize);
    debugCustomColor.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_debug_custom_color, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_debug_custom_color =
      resolveMethodBind('Path3D', 'get_debug_custom_color', 3444240500);

  Color getDebugCustomColor() {
    try {
      final ret = malloc<Uint8>(Color.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_debug_custom_color, nativePtr, [], ret.cast());
        return Color.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
