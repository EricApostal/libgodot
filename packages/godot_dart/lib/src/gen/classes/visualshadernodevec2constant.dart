// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class VisualShaderNodeVec2Constant extends VisualShaderNodeConstant {
  VisualShaderNodeVec2Constant(super.nativePtr);

  /// Constructs a brand-new engine-owned VisualShaderNodeVec2Constant instance
  /// (via classdb_construct_object3), not an existing one.
  factory VisualShaderNodeVec2Constant.create() {
    return VisualShaderNodeVec2Constant(resolveClassConstructor('VisualShaderNodeVec2Constant'));
  }

  static final Pointer<Void> _mb_set_constant =
      resolveMethodBind('VisualShaderNodeVec2Constant', 'set_constant', 743155724);

  void setConstant(Vector2 constant) {
    final arg0 = malloc<Uint8>(Vector2.nativeSize);
    constant.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_constant, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_constant =
      resolveMethodBind('VisualShaderNodeVec2Constant', 'get_constant', 3341600327);

  Vector2 getConstant() {
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_constant, nativePtr, [], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
