// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class VisualShaderNodeCompare extends VisualShaderNode {
  VisualShaderNodeCompare(super.nativePtr);

  /// Constructs a brand-new engine-owned VisualShaderNodeCompare instance
  /// (via classdb_construct_object3), not an existing one.
  factory VisualShaderNodeCompare.create() {
    return VisualShaderNodeCompare(resolveClassConstructor('VisualShaderNodeCompare'));
  }

  static final Pointer<Void> _mb_set_comparison_type =
      resolveMethodBind('VisualShaderNodeCompare', 'set_comparison_type', 516558320);

  void setComparisonType(int type) {
    final arg0 = malloc<Int64>()..value = type;
    try {
      ptrcallVoid(_mb_set_comparison_type, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_comparison_type =
      resolveMethodBind('VisualShaderNodeCompare', 'get_comparison_type', 3495315961);

  int getComparisonType() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_comparison_type, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_function =
      resolveMethodBind('VisualShaderNodeCompare', 'set_function', 2370951349);

  void setFunction(int func) {
    final arg0 = malloc<Int64>()..value = func;
    try {
      ptrcallVoid(_mb_set_function, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_function =
      resolveMethodBind('VisualShaderNodeCompare', 'get_function', 4089164265);

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

  static final Pointer<Void> _mb_set_condition =
      resolveMethodBind('VisualShaderNodeCompare', 'set_condition', 918742392);

  void setCondition(int condition) {
    final arg0 = malloc<Int64>()..value = condition;
    try {
      ptrcallVoid(_mb_set_condition, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_condition =
      resolveMethodBind('VisualShaderNodeCompare', 'get_condition', 3281078941);

  int getCondition() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_condition, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
