// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class VisualShaderNodeTransformOp extends VisualShaderNode {
  VisualShaderNodeTransformOp(super.nativePtr);

  /// Constructs a brand-new engine-owned VisualShaderNodeTransformOp instance
  /// (via classdb_construct_object3), not an existing one.
  factory VisualShaderNodeTransformOp.create() {
    return VisualShaderNodeTransformOp(resolveClassConstructor('VisualShaderNodeTransformOp'));
  }

  static final Pointer<Void> _mb_set_operator =
      resolveMethodBind('VisualShaderNodeTransformOp', 'set_operator', 2287310733);

  void setOperator(int op) {
    final arg0 = malloc<Int64>()..value = op;
    try {
      ptrcallVoid(_mb_set_operator, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_operator =
      resolveMethodBind('VisualShaderNodeTransformOp', 'get_operator', 1238663601);

  int getOperator() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_operator, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
