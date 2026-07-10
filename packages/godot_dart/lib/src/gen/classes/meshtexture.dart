// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class MeshTexture extends Texture2D {
  MeshTexture(super.nativePtr);

  /// Constructs a brand-new engine-owned MeshTexture instance
  /// (via classdb_construct_object3), not an existing one.
  factory MeshTexture.create() {
    return MeshTexture(resolveClassConstructor('MeshTexture'));
  }

  static final Pointer<Void> _mb_set_mesh =
      resolveMethodBind('MeshTexture', 'set_mesh', 194775623);

  void setMesh(Mesh mesh) {
    final arg0 = malloc<Pointer<Void>>()..value = mesh.nativePtr;
    try {
      ptrcallVoid(_mb_set_mesh, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_mesh =
      resolveMethodBind('MeshTexture', 'get_mesh', 1808005922);

  Mesh? getMesh() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_mesh, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Mesh(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_image_size =
      resolveMethodBind('MeshTexture', 'set_image_size', 743155724);

  void setImageSize(Vector2 size) {
    final arg0 = malloc<Uint8>(Vector2.nativeSize);
    size.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_image_size, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_image_size =
      resolveMethodBind('MeshTexture', 'get_image_size', 3341600327);

  Vector2 getImageSize() {
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_image_size, nativePtr, [], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_base_texture =
      resolveMethodBind('MeshTexture', 'set_base_texture', 4051416890);

  void setBaseTexture(Texture2D texture) {
    final arg0 = malloc<Pointer<Void>>()..value = texture.nativePtr;
    try {
      ptrcallVoid(_mb_set_base_texture, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_base_texture =
      resolveMethodBind('MeshTexture', 'get_base_texture', 3635182373);

  Texture2D? getBaseTexture() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_base_texture, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Texture2D(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
