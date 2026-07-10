// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class OpenXRCompositionLayerQuad extends OpenXRCompositionLayer {
  OpenXRCompositionLayerQuad(super.nativePtr);

  /// Constructs a brand-new engine-owned OpenXRCompositionLayerQuad instance
  /// (via classdb_construct_object3), not an existing one.
  factory OpenXRCompositionLayerQuad.create() {
    return OpenXRCompositionLayerQuad(resolveClassConstructor('OpenXRCompositionLayerQuad'));
  }

  static final Pointer<Void> _mb_set_quad_size =
      resolveMethodBind('OpenXRCompositionLayerQuad', 'set_quad_size', 743155724);

  void setQuadSize(Vector2 size) {
    final arg0 = malloc<Uint8>(Vector2.nativeSize);
    size.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_quad_size, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_quad_size =
      resolveMethodBind('OpenXRCompositionLayerQuad', 'get_quad_size', 3341600327);

  Vector2 getQuadSize() {
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_quad_size, nativePtr, [], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
