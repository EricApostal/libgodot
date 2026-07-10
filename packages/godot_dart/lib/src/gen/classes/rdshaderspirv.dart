// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class RDShaderSPIRV extends Resource {
  RDShaderSPIRV(super.nativePtr);

  // Skipped set_stage_bytecode(): an argument type is unsupported.
  // Skipped get_stage_bytecode(): unsupported return type "PackedByteArray".
  static final Pointer<Void> _mb_set_stage_compile_error =
      resolveMethodBind('RDShaderSPIRV', 'set_stage_compile_error', 620821314);

  void setStageCompileError(int stage, String compileError) {
    final arg0 = malloc<Int64>()..value = stage;
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg1.cast(), compileError);
    try {
      ptrcallVoid(_mb_set_stage_compile_error, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      BuiltinMarshal.destroyGDString(arg1.cast());
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_stage_compile_error =
      resolveMethodBind('RDShaderSPIRV', 'get_stage_compile_error', 3354920045);

  String getStageCompileError(int stage) {
    final arg0 = malloc<Int64>()..value = stage;
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_stage_compile_error, nativePtr, [arg0.cast<Void>()], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

}
