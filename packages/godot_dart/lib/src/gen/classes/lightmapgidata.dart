// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class LightmapGIData extends Resource {
  LightmapGIData(super.nativePtr);

  // Skipped set_lightmap_textures(): an argument type is unsupported.
  // Skipped get_lightmap_textures(): unsupported return type "typedarray::TextureLayered".
  // Skipped set_shadowmask_textures(): an argument type is unsupported.
  // Skipped get_shadowmask_textures(): unsupported return type "typedarray::TextureLayered".
  static final Pointer<Void> _mb_set_uses_spherical_harmonics =
      resolveMethodBind('LightmapGIData', 'set_uses_spherical_harmonics', 2586408642);

  void setUsesSphericalHarmonics(bool usesSphericalHarmonics) {
    final arg0 = malloc<Uint8>()..value = usesSphericalHarmonics ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_uses_spherical_harmonics, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_using_spherical_harmonics =
      resolveMethodBind('LightmapGIData', 'is_using_spherical_harmonics', 36873697);

  bool isUsingSphericalHarmonics() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_using_spherical_harmonics, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  // Skipped add_user(): an argument type is unsupported.
  static final Pointer<Void> _mb_get_user_count =
      resolveMethodBind('LightmapGIData', 'get_user_count', 3905245786);

  int getUserCount() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_user_count, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  // Skipped get_user_path(): unsupported return type "NodePath".
  static final Pointer<Void> _mb_clear_users =
      resolveMethodBind('LightmapGIData', 'clear_users', 3218959716);

  void clearUsers() {
    try {
      ptrcallVoid(_mb_clear_users, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_light_texture =
      resolveMethodBind('LightmapGIData', 'set_light_texture', 1278366092);

  void setLightTexture(TextureLayered lightTexture) {
    final arg0 = malloc<Pointer<Void>>()..value = lightTexture.nativePtr;
    try {
      ptrcallVoid(_mb_set_light_texture, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_light_texture =
      resolveMethodBind('LightmapGIData', 'get_light_texture', 3984243839);

  TextureLayered? getLightTexture() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_light_texture, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : TextureLayered(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
