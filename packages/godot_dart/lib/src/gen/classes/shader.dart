// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class Shader extends Resource {
  Shader(super.nativePtr);

  static final Pointer<Void> _mb_get_mode =
      resolveMethodBind('Shader', 'get_mode', 3392948163);

  int getMode() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_mode, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_code =
      resolveMethodBind('Shader', 'set_code', 83702148);

  void setCode(String code) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), code);
    try {
      ptrcallVoid(_mb_set_code, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_code =
      resolveMethodBind('Shader', 'get_code', 201670096);

  String getCode() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_code, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_default_texture_parameter =
      resolveMethodBind('Shader', 'set_default_texture_parameter', 3850209648);

  void setDefaultTextureParameter(String name, Texture texture, int index) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), name);
    final arg1 = malloc<Pointer<Void>>()..value = texture.nativePtr;
    final arg2 = malloc<Int64>()..value = index;
    try {
      ptrcallVoid(_mb_set_default_texture_parameter, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_get_default_texture_parameter =
      resolveMethodBind('Shader', 'get_default_texture_parameter', 4213877425);

  Texture? getDefaultTextureParameter(String name, int index) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), name);
    final arg1 = malloc<Int64>()..value = index;
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_default_texture_parameter, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Texture(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  // Skipped get_shader_uniform_list(): unsupported return type "Array".
  static final Pointer<Void> _mb_inspect_native_shader_code =
      resolveMethodBind('Shader', 'inspect_native_shader_code', 3218959716);

  void inspectNativeShaderCode() {
    try {
      ptrcallVoid(_mb_inspect_native_shader_code, nativePtr, []);
    } finally {
    }
  }

}
