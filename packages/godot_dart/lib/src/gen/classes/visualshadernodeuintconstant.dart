// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class VisualShaderNodeUIntConstant extends VisualShaderNodeConstant {
  VisualShaderNodeUIntConstant(super.nativePtr);

  /// Constructs a brand-new engine-owned VisualShaderNodeUIntConstant instance
  /// (via classdb_construct_object3), not an existing one.
  factory VisualShaderNodeUIntConstant.create() {
    return VisualShaderNodeUIntConstant(resolveClassConstructor('VisualShaderNodeUIntConstant'));
  }

  static final Pointer<Void> _mb_set_constant =
      resolveMethodBind('VisualShaderNodeUIntConstant', 'set_constant', 1286410249);

  void setConstant(int constant) {
    final arg0 = malloc<Int64>()..value = constant;
    try {
      ptrcallVoid(_mb_set_constant, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_constant =
      resolveMethodBind('VisualShaderNodeUIntConstant', 'get_constant', 3905245786);

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
