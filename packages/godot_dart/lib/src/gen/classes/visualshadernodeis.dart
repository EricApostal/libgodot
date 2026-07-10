// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class VisualShaderNodeIs extends VisualShaderNode {
  VisualShaderNodeIs(super.nativePtr);

  static final Pointer<Void> _mb_set_function =
      resolveMethodBind('VisualShaderNodeIs', 'set_function', 1438374690);

  void setFunction(int func) {
    final arg0 = malloc<Int64>()..value = func;
    try {
      ptrcallVoid(_mb_set_function, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_function =
      resolveMethodBind('VisualShaderNodeIs', 'get_function', 580678557);

  int getFunction() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_function, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
