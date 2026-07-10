// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class VisualShaderNodeColorConstant extends VisualShaderNodeConstant {
  VisualShaderNodeColorConstant(super.nativePtr);

  static final Pointer<Void> _mb_set_constant =
      resolveMethodBind('VisualShaderNodeColorConstant', 'set_constant', 2920490490);

  void setConstant(Color constant) {
    final arg0 = malloc<Uint8>(Color.nativeSize);
    constant.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_constant, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_constant =
      resolveMethodBind('VisualShaderNodeColorConstant', 'get_constant', 3444240500);

  Color getConstant() {
    try {
      final ret = malloc<Uint8>(Color.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_constant, nativePtr, [], ret.cast());
        return Color.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
