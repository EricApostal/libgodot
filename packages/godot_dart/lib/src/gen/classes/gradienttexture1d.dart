// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class GradientTexture1D extends Texture2D {
  GradientTexture1D(super.nativePtr);

  /// Constructs a brand-new engine-owned GradientTexture1D instance
  /// (via classdb_construct_object3), not an existing one.
  factory GradientTexture1D.create() {
    return GradientTexture1D(resolveClassConstructor('GradientTexture1D'));
  }

  static final Pointer<Void> _mb_set_gradient =
      resolveMethodBind('GradientTexture1D', 'set_gradient', 2756054477);

  void setGradient(Gradient gradient) {
    final arg0 = malloc<Pointer<Void>>()..value = gradient.nativePtr;
    try {
      ptrcallVoid(_mb_set_gradient, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_gradient =
      resolveMethodBind('GradientTexture1D', 'get_gradient', 132272999);

  Gradient? getGradient() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_gradient, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Gradient(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_width =
      resolveMethodBind('GradientTexture1D', 'set_width', 1286410249);

  void setWidth(int width) {
    final arg0 = malloc<Int64>()..value = width;
    try {
      ptrcallVoid(_mb_set_width, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_use_hdr =
      resolveMethodBind('GradientTexture1D', 'set_use_hdr', 2586408642);

  void setUseHdr(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_use_hdr, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_using_hdr =
      resolveMethodBind('GradientTexture1D', 'is_using_hdr', 36873697);

  bool isUsingHdr() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_using_hdr, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
