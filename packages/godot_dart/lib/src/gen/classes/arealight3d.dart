// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class AreaLight3D extends Light3D {
  AreaLight3D(super.nativePtr);

  static final Pointer<Void> _mb_set_area_texture =
      resolveMethodBind('AreaLight3D', 'set_area_texture', 4051416890);

  void setAreaTexture(Texture2D texture) {
    final arg0 = malloc<Pointer<Void>>()..value = texture.nativePtr;
    try {
      ptrcallVoid(_mb_set_area_texture, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_area_texture =
      resolveMethodBind('AreaLight3D', 'get_area_texture', 3635182373);

  Texture2D? getAreaTexture() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_area_texture, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Texture2D(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_area_size =
      resolveMethodBind('AreaLight3D', 'set_area_size', 743155724);

  void setAreaSize(Vector2 areaSize) {
    final arg0 = malloc<Uint8>(Vector2.nativeSize);
    areaSize.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_area_size, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_area_size =
      resolveMethodBind('AreaLight3D', 'get_area_size', 3341600327);

  Vector2 getAreaSize() {
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_area_size, nativePtr, [], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_area_normalize_energy =
      resolveMethodBind('AreaLight3D', 'set_area_normalize_energy', 2586408642);

  void setAreaNormalizeEnergy(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_area_normalize_energy, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_area_normalizing_energy =
      resolveMethodBind('AreaLight3D', 'is_area_normalizing_energy', 36873697);

  bool isAreaNormalizingEnergy() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_area_normalizing_energy, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
