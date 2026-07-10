// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class VisualShaderNodeParameter extends VisualShaderNode {
  VisualShaderNodeParameter(super.nativePtr);

  static final Pointer<Void> _mb_set_parameter_name =
      resolveMethodBind('VisualShaderNodeParameter', 'set_parameter_name', 83702148);

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
      resolveMethodBind('VisualShaderNodeParameter', 'get_parameter_name', 201670096);

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

  static final Pointer<Void> _mb_set_qualifier =
      resolveMethodBind('VisualShaderNodeParameter', 'set_qualifier', 1276489447);

  void setQualifier(int qualifier) {
    final arg0 = malloc<Int64>()..value = qualifier;
    try {
      ptrcallVoid(_mb_set_qualifier, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_qualifier =
      resolveMethodBind('VisualShaderNodeParameter', 'get_qualifier', 3558406205);

  int getQualifier() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_qualifier, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_instance_index =
      resolveMethodBind('VisualShaderNodeParameter', 'set_instance_index', 1286410249);

  void setInstanceIndex(int instanceIndex) {
    final arg0 = malloc<Int64>()..value = instanceIndex;
    try {
      ptrcallVoid(_mb_set_instance_index, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_instance_index =
      resolveMethodBind('VisualShaderNodeParameter', 'get_instance_index', 3905245786);

  int getInstanceIndex() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_instance_index, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
