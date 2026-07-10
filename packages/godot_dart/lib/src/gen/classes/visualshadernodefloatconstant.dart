// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class VisualShaderNodeFloatConstant extends VisualShaderNodeConstant {
  VisualShaderNodeFloatConstant(super.nativePtr);

  /// Constructs a brand-new engine-owned VisualShaderNodeFloatConstant instance
  /// (via classdb_construct_object3), not an existing one.
  factory VisualShaderNodeFloatConstant.create() {
    return VisualShaderNodeFloatConstant(resolveClassConstructor('VisualShaderNodeFloatConstant'));
  }

  static final Pointer<Void> _mb_set_constant =
      resolveMethodBind('VisualShaderNodeFloatConstant', 'set_constant', 373806689);

  void setConstant(double constant) {
    final arg0 = malloc<Double>()..value = constant;
    try {
      ptrcallVoid(_mb_set_constant, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_constant =
      resolveMethodBind('VisualShaderNodeFloatConstant', 'get_constant', 1740695150);

  double getConstant() {
    try {
      final ret = malloc<Double>();
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
