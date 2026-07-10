// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class PointLight2D extends Light2D {
  PointLight2D(super.nativePtr);

  /// Constructs a brand-new engine-owned PointLight2D instance
  /// (via classdb_construct_object3), not an existing one.
  factory PointLight2D.create() {
    return PointLight2D(resolveClassConstructor('PointLight2D'));
  }

  static final Pointer<Void> _mb_set_texture =
      resolveMethodBind('PointLight2D', 'set_texture', 4051416890);

  void setTexture(Texture2D texture) {
    final arg0 = malloc<Pointer<Void>>()..value = texture.nativePtr;
    try {
      ptrcallVoid(_mb_set_texture, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_texture =
      resolveMethodBind('PointLight2D', 'get_texture', 3635182373);

  Texture2D? getTexture() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_texture, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Texture2D(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_texture_offset =
      resolveMethodBind('PointLight2D', 'set_texture_offset', 743155724);

  void setTextureOffset(Vector2 textureOffset) {
    final arg0 = malloc<Uint8>(Vector2.nativeSize);
    textureOffset.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_texture_offset, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_texture_offset =
      resolveMethodBind('PointLight2D', 'get_texture_offset', 3341600327);

  Vector2 getTextureOffset() {
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_texture_offset, nativePtr, [], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_texture_scale =
      resolveMethodBind('PointLight2D', 'set_texture_scale', 373806689);

  void setTextureScale(double textureScale) {
    final arg0 = malloc<Double>()..value = textureScale;
    try {
      ptrcallVoid(_mb_set_texture_scale, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_texture_scale =
      resolveMethodBind('PointLight2D', 'get_texture_scale', 1740695150);

  double getTextureScale() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_texture_scale, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
