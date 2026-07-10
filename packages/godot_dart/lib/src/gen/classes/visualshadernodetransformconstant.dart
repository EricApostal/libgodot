// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class VisualShaderNodeTransformConstant extends VisualShaderNodeConstant {
  VisualShaderNodeTransformConstant(super.nativePtr);

  static final Pointer<Void> _mb_set_constant =
      resolveMethodBind('VisualShaderNodeTransformConstant', 'set_constant', 2952846383);

  void setConstant(Transform3D constant) {
    final arg0 = malloc<Uint8>(Transform3D.nativeSize);
    constant.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_constant, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_constant =
      resolveMethodBind('VisualShaderNodeTransformConstant', 'get_constant', 3229777777);

  Transform3D getConstant() {
    try {
      final ret = malloc<Uint8>(Transform3D.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_constant, nativePtr, [], ret.cast());
        return Transform3D.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
