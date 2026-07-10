// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class VisualShaderNodeUIntParameter extends VisualShaderNodeParameter {
  VisualShaderNodeUIntParameter(super.nativePtr);

  static final Pointer<Void> _mb_set_default_value_enabled =
      resolveMethodBind('VisualShaderNodeUIntParameter', 'set_default_value_enabled', 2586408642);

  void setDefaultValueEnabled(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_default_value_enabled, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_default_value_enabled =
      resolveMethodBind('VisualShaderNodeUIntParameter', 'is_default_value_enabled', 36873697);

  bool isDefaultValueEnabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_default_value_enabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_default_value =
      resolveMethodBind('VisualShaderNodeUIntParameter', 'set_default_value', 1286410249);

  void setDefaultValue(int value) {
    final arg0 = malloc<Int64>()..value = value;
    try {
      ptrcallVoid(_mb_set_default_value, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_default_value =
      resolveMethodBind('VisualShaderNodeUIntParameter', 'get_default_value', 3905245786);

  int getDefaultValue() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_default_value, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
