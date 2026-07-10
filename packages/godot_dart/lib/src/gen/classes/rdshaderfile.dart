// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class RDShaderFile extends Resource {
  RDShaderFile(super.nativePtr);

  /// Constructs a brand-new engine-owned RDShaderFile instance
  /// (via classdb_construct_object3), not an existing one.
  factory RDShaderFile.create() {
    return RDShaderFile(resolveClassConstructor('RDShaderFile'));
  }

  static final Pointer<Void> _mb_set_bytecode =
      resolveMethodBind('RDShaderFile', 'set_bytecode', 1526857008);

  void setBytecode(RDShaderSPIRV bytecode, String version) {
    final arg0 = malloc<Pointer<Void>>()..value = bytecode.nativePtr;
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg1.cast(), version);
    try {
      ptrcallVoid(_mb_set_bytecode, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      BuiltinMarshal.destroyStringName(arg1.cast());
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_spirv =
      resolveMethodBind('RDShaderFile', 'get_spirv', 2689310080);

  RDShaderSPIRV? getSpirv(String version) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), version);
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_spirv, nativePtr, [arg0.cast<Void>()], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : RDShaderSPIRV(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
    }
  }

  // Skipped get_version_list(): unsupported return type "typedarray::StringName".
  static final Pointer<Void> _mb_set_base_error =
      resolveMethodBind('RDShaderFile', 'set_base_error', 83702148);

  void setBaseError(String error) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), error);
    try {
      ptrcallVoid(_mb_set_base_error, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_base_error =
      resolveMethodBind('RDShaderFile', 'get_base_error', 201670096);

  String getBaseError() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_base_error, nativePtr, [], ret.cast());
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
