// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class VisualShaderNodeUVFunc extends VisualShaderNode {
  VisualShaderNodeUVFunc(super.nativePtr);

  /// Constructs a brand-new engine-owned VisualShaderNodeUVFunc instance
  /// (via classdb_construct_object3), not an existing one.
  factory VisualShaderNodeUVFunc.create() {
    return VisualShaderNodeUVFunc(resolveClassConstructor('VisualShaderNodeUVFunc'));
  }

  static final Pointer<Void> _mb_set_function =
      resolveMethodBind('VisualShaderNodeUVFunc', 'set_function', 765791915);

  void setFunction(int func) {
    final arg0 = malloc<Int64>()..value = func;
    try {
      ptrcallVoid(_mb_set_function, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_function =
      resolveMethodBind('VisualShaderNodeUVFunc', 'get_function', 3772902164);

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
