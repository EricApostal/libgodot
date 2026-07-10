// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class VisualShaderNodeMix extends VisualShaderNode {
  VisualShaderNodeMix(super.nativePtr);

  /// Constructs a brand-new engine-owned VisualShaderNodeMix instance
  /// (via classdb_construct_object3), not an existing one.
  factory VisualShaderNodeMix.create() {
    return VisualShaderNodeMix(resolveClassConstructor('VisualShaderNodeMix'));
  }

  static final Pointer<Void> _mb_set_op_type =
      resolveMethodBind('VisualShaderNodeMix', 'set_op_type', 3397501671);

  void setOpType(int opType) {
    final arg0 = malloc<Int64>()..value = opType;
    try {
      ptrcallVoid(_mb_set_op_type, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_op_type =
      resolveMethodBind('VisualShaderNodeMix', 'get_op_type', 4013957297);

  int getOpType() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_op_type, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
