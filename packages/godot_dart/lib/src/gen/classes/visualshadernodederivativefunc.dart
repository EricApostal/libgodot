// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class VisualShaderNodeDerivativeFunc extends VisualShaderNode {
  VisualShaderNodeDerivativeFunc(super.nativePtr);

  static final Pointer<Void> _mb_set_op_type =
      resolveMethodBind('VisualShaderNodeDerivativeFunc', 'set_op_type', 377800221);

  void setOpType(int type) {
    final arg0 = malloc<Int64>()..value = type;
    try {
      ptrcallVoid(_mb_set_op_type, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_op_type =
      resolveMethodBind('VisualShaderNodeDerivativeFunc', 'get_op_type', 3997800514);

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

  static final Pointer<Void> _mb_set_function =
      resolveMethodBind('VisualShaderNodeDerivativeFunc', 'set_function', 1944704156);

  void setFunction(int func) {
    final arg0 = malloc<Int64>()..value = func;
    try {
      ptrcallVoid(_mb_set_function, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_function =
      resolveMethodBind('VisualShaderNodeDerivativeFunc', 'get_function', 2389093396);

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

  static final Pointer<Void> _mb_set_precision =
      resolveMethodBind('VisualShaderNodeDerivativeFunc', 'set_precision', 797270566);

  void setPrecision(int precision) {
    final arg0 = malloc<Int64>()..value = precision;
    try {
      ptrcallVoid(_mb_set_precision, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_precision =
      resolveMethodBind('VisualShaderNodeDerivativeFunc', 'get_precision', 3822547323);

  int getPrecision() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_precision, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
