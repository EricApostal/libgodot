// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class VisualShaderNodeVec4Constant extends VisualShaderNodeConstant {
  VisualShaderNodeVec4Constant(super.nativePtr);

  static final Pointer<Void> _mb_set_constant =
      resolveMethodBind('VisualShaderNodeVec4Constant', 'set_constant', 1727505552);

  void setConstant(Quaternion constant) {
    final arg0 = malloc<Uint8>(Quaternion.nativeSize);
    constant.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_constant, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_constant =
      resolveMethodBind('VisualShaderNodeVec4Constant', 'get_constant', 1222331677);

  Quaternion getConstant() {
    try {
      final ret = malloc<Uint8>(Quaternion.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_constant, nativePtr, [], ret.cast());
        return Quaternion.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
