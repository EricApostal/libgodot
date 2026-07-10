// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class VisualShaderNodeColorOp extends VisualShaderNode {
  VisualShaderNodeColorOp(super.nativePtr);

  /// Constructs a brand-new engine-owned VisualShaderNodeColorOp instance
  /// (via classdb_construct_object3), not an existing one.
  factory VisualShaderNodeColorOp.create() {
    return VisualShaderNodeColorOp(resolveClassConstructor('VisualShaderNodeColorOp'));
  }

  static final Pointer<Void> _mb_set_operator =
      resolveMethodBind('VisualShaderNodeColorOp', 'set_operator', 4260370673);

  void setOperator(int op) {
    final arg0 = malloc<Int64>()..value = op;
    try {
      ptrcallVoid(_mb_set_operator, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_operator =
      resolveMethodBind('VisualShaderNodeColorOp', 'get_operator', 1950956529);

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
