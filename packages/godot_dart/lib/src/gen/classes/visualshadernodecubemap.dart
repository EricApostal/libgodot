// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class VisualShaderNodeCubemap extends VisualShaderNode {
  VisualShaderNodeCubemap(super.nativePtr);

  /// Constructs a brand-new engine-owned VisualShaderNodeCubemap instance
  /// (via classdb_construct_object3), not an existing one.
  factory VisualShaderNodeCubemap.create() {
    return VisualShaderNodeCubemap(resolveClassConstructor('VisualShaderNodeCubemap'));
  }

  static final Pointer<Void> _mb_set_source =
      resolveMethodBind('VisualShaderNodeCubemap', 'set_source', 1625400621);

  void setSource(int value) {
    final arg0 = malloc<Int64>()..value = value;
    try {
      ptrcallVoid(_mb_set_source, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_source =
      resolveMethodBind('VisualShaderNodeCubemap', 'get_source', 2222048781);

  int getSource() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_source, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_cube_map =
      resolveMethodBind('VisualShaderNodeCubemap', 'set_cube_map', 1278366092);

  void setCubeMap(TextureLayered value) {
    final arg0 = malloc<Pointer<Void>>()..value = value.nativePtr;
    try {
      ptrcallVoid(_mb_set_cube_map, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_cube_map =
      resolveMethodBind('VisualShaderNodeCubemap', 'get_cube_map', 3984243839);

  TextureLayered? getCubeMap() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_cube_map, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : TextureLayered(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_texture_type =
      resolveMethodBind('VisualShaderNodeCubemap', 'set_texture_type', 1899718876);

  void setTextureType(int value) {
    final arg0 = malloc<Int64>()..value = value;
    try {
      ptrcallVoid(_mb_set_texture_type, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_texture_type =
      resolveMethodBind('VisualShaderNodeCubemap', 'get_texture_type', 3356498888);

  int getTextureType() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_texture_type, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
