// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class RDPipelineSpecializationConstant extends RefCounted {
  RDPipelineSpecializationConstant(super.nativePtr);

  // Skipped set_value(): an argument type is unsupported.
  // Skipped get_value(): unsupported return type "Variant".
  static final Pointer<Void> _mb_set_constant_id =
      resolveMethodBind('RDPipelineSpecializationConstant', 'set_constant_id', 1286410249);

  void setConstantId(int constantId) {
    final arg0 = malloc<Int64>()..value = constantId;
    try {
      ptrcallVoid(_mb_set_constant_id, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_constant_id =
      resolveMethodBind('RDPipelineSpecializationConstant', 'get_constant_id', 3905245786);

  int getConstantId() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_constant_id, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
