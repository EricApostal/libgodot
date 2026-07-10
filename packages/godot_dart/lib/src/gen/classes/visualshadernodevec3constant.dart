// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class VisualShaderNodeVec3Constant extends VisualShaderNodeConstant {
  VisualShaderNodeVec3Constant(super.nativePtr);

  /// Constructs a brand-new engine-owned VisualShaderNodeVec3Constant instance
  /// (via classdb_construct_object3), not an existing one.
  factory VisualShaderNodeVec3Constant.create() {
    return VisualShaderNodeVec3Constant(resolveClassConstructor('VisualShaderNodeVec3Constant'));
  }

  static final Pointer<Void> _mb_set_constant =
      resolveMethodBind('VisualShaderNodeVec3Constant', 'set_constant', 3460891852);

  void setConstant(Vector3 constant) {
    final arg0 = malloc<Uint8>(Vector3.nativeSize);
    constant.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_constant, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_constant =
      resolveMethodBind('VisualShaderNodeVec3Constant', 'get_constant', 3360562783);

  Vector3 getConstant() {
    try {
      final ret = malloc<Uint8>(Vector3.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_constant, nativePtr, [], ret.cast());
        return Vector3.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
