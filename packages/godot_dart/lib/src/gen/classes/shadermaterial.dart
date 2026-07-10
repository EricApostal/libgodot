// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class ShaderMaterial extends Material {
  ShaderMaterial(super.nativePtr);

  /// Constructs a brand-new engine-owned ShaderMaterial instance
  /// (via classdb_construct_object3), not an existing one.
  factory ShaderMaterial.create() {
    return ShaderMaterial(resolveClassConstructor('ShaderMaterial'));
  }

  static final Pointer<Void> _mb_set_shader =
      resolveMethodBind('ShaderMaterial', 'set_shader', 3341921675);

  void setShader(Shader shader) {
    final arg0 = malloc<Pointer<Void>>()..value = shader.nativePtr;
    try {
      ptrcallVoid(_mb_set_shader, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_shader =
      resolveMethodBind('ShaderMaterial', 'get_shader', 2078273437);

  Shader? getShader() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_shader, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Shader(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  // Skipped set_shader_parameter(): an argument type is unsupported.
  // Skipped get_shader_parameter(): unsupported return type "Variant".
}
