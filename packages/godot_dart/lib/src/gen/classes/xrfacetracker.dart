// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class XRFaceTracker extends XRTracker {
  XRFaceTracker(super.nativePtr);

  /// Constructs a brand-new engine-owned XRFaceTracker instance
  /// (via classdb_construct_object3), not an existing one.
  factory XRFaceTracker.create() {
    return XRFaceTracker(resolveClassConstructor('XRFaceTracker'));
  }

  static final Pointer<Void> _mb_get_blend_shape =
      resolveMethodBind('XRFaceTracker', 'get_blend_shape', 330010046);

  double getBlendShape(int blendShape) {
    final arg0 = malloc<Int64>()..value = blendShape;
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_blend_shape, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_blend_shape =
      resolveMethodBind('XRFaceTracker', 'set_blend_shape', 2352588791);

  void setBlendShape(int blendShape, double weight) {
    final arg0 = malloc<Int64>()..value = blendShape;
    final arg1 = malloc<Double>()..value = weight;
    try {
      ptrcallVoid(_mb_set_blend_shape, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  // Skipped get_blend_shapes(): unsupported return type "PackedFloat32Array".
  // Skipped set_blend_shapes(): an argument type is unsupported.
}
