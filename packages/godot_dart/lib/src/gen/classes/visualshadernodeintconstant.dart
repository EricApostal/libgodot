// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class VisualShaderNodeIntConstant extends VisualShaderNodeConstant {
  VisualShaderNodeIntConstant(super.nativePtr);

  static final Pointer<Void> _mb_set_constant =
      resolveMethodBind('VisualShaderNodeIntConstant', 'set_constant', 1286410249);

  void setConstant(int constant) {
    final arg0 = malloc<Int64>()..value = constant;
    try {
      ptrcallVoid(_mb_set_constant, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_constant =
      resolveMethodBind('VisualShaderNodeIntConstant', 'get_constant', 3905245786);

  int getConstant() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_constant, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
