// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class VisualShaderNodeBooleanConstant extends VisualShaderNodeConstant {
  VisualShaderNodeBooleanConstant(super.nativePtr);

  /// Constructs a brand-new engine-owned VisualShaderNodeBooleanConstant instance
  /// (via classdb_construct_object3), not an existing one.
  factory VisualShaderNodeBooleanConstant.create() {
    return VisualShaderNodeBooleanConstant(resolveClassConstructor('VisualShaderNodeBooleanConstant'));
  }

  static final Pointer<Void> _mb_set_constant =
      resolveMethodBind('VisualShaderNodeBooleanConstant', 'set_constant', 2586408642);

  void setConstant(bool constant) {
    final arg0 = malloc<Uint8>()..value = constant ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_constant, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_constant =
      resolveMethodBind('VisualShaderNodeBooleanConstant', 'get_constant', 36873697);

  bool getConstant() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_constant, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
