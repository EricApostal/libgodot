// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class VisualShaderNodeParticleRandomness extends VisualShaderNode {
  VisualShaderNodeParticleRandomness(super.nativePtr);

  static final Pointer<Void> _mb_set_op_type =
      resolveMethodBind('VisualShaderNodeParticleRandomness', 'set_op_type', 2060089061);

  void setOpType(int type) {
    final arg0 = malloc<Int64>()..value = type;
    try {
      ptrcallVoid(_mb_set_op_type, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_op_type =
      resolveMethodBind('VisualShaderNodeParticleRandomness', 'get_op_type', 3597061078);

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
