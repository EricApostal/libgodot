// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class VisualShaderNodeBooleanParameter extends VisualShaderNodeParameter {
  VisualShaderNodeBooleanParameter(super.nativePtr);

  /// Constructs a brand-new engine-owned VisualShaderNodeBooleanParameter instance
  /// (via classdb_construct_object3), not an existing one.
  factory VisualShaderNodeBooleanParameter.create() {
    return VisualShaderNodeBooleanParameter(resolveClassConstructor('VisualShaderNodeBooleanParameter'));
  }

  static final Pointer<Void> _mb_set_default_value_enabled =
      resolveMethodBind('VisualShaderNodeBooleanParameter', 'set_default_value_enabled', 2586408642);

  void setDefaultValueEnabled(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_default_value_enabled, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_default_value_enabled =
      resolveMethodBind('VisualShaderNodeBooleanParameter', 'is_default_value_enabled', 36873697);

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
      resolveMethodBind('VisualShaderNodeBooleanParameter', 'set_default_value', 2586408642);

  void setDefaultValue(bool value) {
    final arg0 = malloc<Uint8>()..value = value ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_default_value, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_default_value =
      resolveMethodBind('VisualShaderNodeBooleanParameter', 'get_default_value', 36873697);

  bool getDefaultValue() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_default_value, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
