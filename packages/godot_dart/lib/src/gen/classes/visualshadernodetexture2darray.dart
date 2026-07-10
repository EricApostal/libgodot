// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class VisualShaderNodeTexture2DArray extends VisualShaderNodeSample3D {
  VisualShaderNodeTexture2DArray(super.nativePtr);

  /// Constructs a brand-new engine-owned VisualShaderNodeTexture2DArray instance
  /// (via classdb_construct_object3), not an existing one.
  factory VisualShaderNodeTexture2DArray.create() {
    return VisualShaderNodeTexture2DArray(resolveClassConstructor('VisualShaderNodeTexture2DArray'));
  }

  static final Pointer<Void> _mb_set_texture_array =
      resolveMethodBind('VisualShaderNodeTexture2DArray', 'set_texture_array', 1278366092);

  void setTextureArray(TextureLayered value) {
    final arg0 = malloc<Pointer<Void>>()..value = value.nativePtr;
    try {
      ptrcallVoid(_mb_set_texture_array, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_texture_array =
      resolveMethodBind('VisualShaderNodeTexture2DArray', 'get_texture_array', 3984243839);

  TextureLayered? getTextureArray() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_texture_array, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : TextureLayered(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
