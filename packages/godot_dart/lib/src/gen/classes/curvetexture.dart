// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class CurveTexture extends Texture2D {
  CurveTexture(super.nativePtr);

  /// Constructs a brand-new engine-owned CurveTexture instance
  /// (via classdb_construct_object3), not an existing one.
  factory CurveTexture.create() {
    return CurveTexture(resolveClassConstructor('CurveTexture'));
  }

  static final Pointer<Void> _mb_set_width =
      resolveMethodBind('CurveTexture', 'set_width', 1286410249);

  void setWidth(int width) {
    final arg0 = malloc<Int64>()..value = width;
    try {
      ptrcallVoid(_mb_set_width, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_curve =
      resolveMethodBind('CurveTexture', 'set_curve', 270443179);

  void setCurve(Curve curve) {
    final arg0 = malloc<Pointer<Void>>()..value = curve.nativePtr;
    try {
      ptrcallVoid(_mb_set_curve, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_curve =
      resolveMethodBind('CurveTexture', 'get_curve', 2460114913);

  Curve? getCurve() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_curve, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Curve(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_texture_mode =
      resolveMethodBind('CurveTexture', 'set_texture_mode', 1321955367);

  void setTextureMode(int textureMode) {
    final arg0 = malloc<Int64>()..value = textureMode;
    try {
      ptrcallVoid(_mb_set_texture_mode, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_texture_mode =
      resolveMethodBind('CurveTexture', 'get_texture_mode', 715756376);

  int getTextureMode() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_texture_mode, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
