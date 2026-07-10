// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class VisualShaderNodeParameterRef extends VisualShaderNode {
  VisualShaderNodeParameterRef(super.nativePtr);

  /// Constructs a brand-new engine-owned VisualShaderNodeParameterRef instance
  /// (via classdb_construct_object3), not an existing one.
  factory VisualShaderNodeParameterRef.create() {
    return VisualShaderNodeParameterRef(resolveClassConstructor('VisualShaderNodeParameterRef'));
  }

  static final Pointer<Void> _mb_set_parameter_name =
      resolveMethodBind('VisualShaderNodeParameterRef', 'set_parameter_name', 83702148);

  void setParameterName(String name) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), name);
    try {
      ptrcallVoid(_mb_set_parameter_name, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_parameter_name =
      resolveMethodBind('VisualShaderNodeParameterRef', 'get_parameter_name', 201670096);

  String getParameterName() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_parameter_name, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
