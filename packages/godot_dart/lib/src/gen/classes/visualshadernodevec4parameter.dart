// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class VisualShaderNodeVec4Parameter extends VisualShaderNodeParameter {
  VisualShaderNodeVec4Parameter(super.nativePtr);

  /// Constructs a brand-new engine-owned VisualShaderNodeVec4Parameter instance
  /// (via classdb_construct_object3), not an existing one.
  factory VisualShaderNodeVec4Parameter.create() {
    return VisualShaderNodeVec4Parameter(resolveClassConstructor('VisualShaderNodeVec4Parameter'));
  }

  static final Pointer<Void> _mb_set_default_value_enabled =
      resolveMethodBind('VisualShaderNodeVec4Parameter', 'set_default_value_enabled', 2586408642);

  void setDefaultValueEnabled(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_default_value_enabled, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_default_value_enabled =
      resolveMethodBind('VisualShaderNodeVec4Parameter', 'is_default_value_enabled', 36873697);

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
      resolveMethodBind('VisualShaderNodeVec4Parameter', 'set_default_value', 643568085);

  void setDefaultValue(Vector4 value) {
    final arg0 = malloc<Uint8>(Vector4.nativeSize);
    value.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_default_value, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_default_value =
      resolveMethodBind('VisualShaderNodeVec4Parameter', 'get_default_value', 2435802345);

  Vector4 getDefaultValue() {
    try {
      final ret = malloc<Uint8>(Vector4.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_default_value, nativePtr, [], ret.cast());
        return Vector4.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
