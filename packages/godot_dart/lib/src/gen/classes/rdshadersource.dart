// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class RDShaderSource extends RefCounted {
  RDShaderSource(super.nativePtr);

  /// Constructs a brand-new engine-owned RDShaderSource instance
  /// (via classdb_construct_object3), not an existing one.
  factory RDShaderSource.create() {
    return RDShaderSource(resolveClassConstructor('RDShaderSource'));
  }

  static final Pointer<Void> _mb_set_stage_source =
      resolveMethodBind('RDShaderSource', 'set_stage_source', 620821314);

  void setStageSource(int stage, String source) {
    final arg0 = malloc<Int64>()..value = stage;
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg1.cast(), source);
    try {
      ptrcallVoid(_mb_set_stage_source, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      BuiltinMarshal.destroyGDString(arg1.cast());
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_stage_source =
      resolveMethodBind('RDShaderSource', 'get_stage_source', 3354920045);

  String getStageSource(int stage) {
    final arg0 = malloc<Int64>()..value = stage;
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_stage_source, nativePtr, [arg0.cast<Void>()], ret.cast());
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

  static final Pointer<Void> _mb_set_language =
      resolveMethodBind('RDShaderSource', 'set_language', 3422186742);

  void setLanguage(int language) {
    final arg0 = malloc<Int64>()..value = language;
    try {
      ptrcallVoid(_mb_set_language, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_language =
      resolveMethodBind('RDShaderSource', 'get_language', 1063538261);

  int getLanguage() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_language, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
