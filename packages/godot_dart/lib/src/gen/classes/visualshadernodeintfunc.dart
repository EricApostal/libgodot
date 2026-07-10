// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class VisualShaderNodeIntFunc extends VisualShaderNode {
  VisualShaderNodeIntFunc(super.nativePtr);

  /// Constructs a brand-new engine-owned VisualShaderNodeIntFunc instance
  /// (via classdb_construct_object3), not an existing one.
  factory VisualShaderNodeIntFunc.create() {
    return VisualShaderNodeIntFunc(resolveClassConstructor('VisualShaderNodeIntFunc'));
  }

  static final Pointer<Void> _mb_set_function =
      resolveMethodBind('VisualShaderNodeIntFunc', 'set_function', 424195284);

  void setFunction(int func) {
    final arg0 = malloc<Int64>()..value = func;
    try {
      ptrcallVoid(_mb_set_function, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_function =
      resolveMethodBind('VisualShaderNodeIntFunc', 'get_function', 2753496911);

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
