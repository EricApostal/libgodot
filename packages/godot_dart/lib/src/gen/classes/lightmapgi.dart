// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class LightmapGI extends VisualInstance3D {
  LightmapGI(super.nativePtr);

  /// Constructs a brand-new engine-owned LightmapGI instance
  /// (via classdb_construct_object3), not an existing one.
  factory LightmapGI.create() {
    return LightmapGI(resolveClassConstructor('LightmapGI'));
  }

  static final Pointer<Void> _mb_set_light_data =
      resolveMethodBind('LightmapGI', 'set_light_data', 1790597277);

  void setLightData(LightmapGIData data) {
    final arg0 = malloc<Pointer<Void>>()..value = data.nativePtr;
    try {
      ptrcallVoid(_mb_set_light_data, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_light_data =
      resolveMethodBind('LightmapGI', 'get_light_data', 290354153);

  LightmapGIData? getLightData() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_light_data, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : LightmapGIData(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_bake_quality =
      resolveMethodBind('LightmapGI', 'set_bake_quality', 1192215803);

  void setBakeQuality(int bakeQuality) {
    final arg0 = malloc<Int64>()..value = bakeQuality;
    try {
      ptrcallVoid(_mb_set_bake_quality, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_bake_quality =
      resolveMethodBind('LightmapGI', 'get_bake_quality', 688832735);

  int getBakeQuality() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_bake_quality, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_bounces =
      resolveMethodBind('LightmapGI', 'set_bounces', 1286410249);

  void setBounces(int bounces) {
    final arg0 = malloc<Int64>()..value = bounces;
    try {
      ptrcallVoid(_mb_set_bounces, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_bounces =
      resolveMethodBind('LightmapGI', 'get_bounces', 3905245786);

  int getBounces() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_bounces, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_bounce_indirect_energy =
      resolveMethodBind('LightmapGI', 'set_bounce_indirect_energy', 373806689);

  void setBounceIndirectEnergy(double bounceIndirectEnergy) {
    final arg0 = malloc<Double>()..value = bounceIndirectEnergy;
    try {
      ptrcallVoid(_mb_set_bounce_indirect_energy, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_bounce_indirect_energy =
      resolveMethodBind('LightmapGI', 'get_bounce_indirect_energy', 1740695150);

  double getBounceIndirectEnergy() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_bounce_indirect_energy, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_generate_probes =
      resolveMethodBind('LightmapGI', 'set_generate_probes', 549981046);

  void setGenerateProbes(int subdivision) {
    final arg0 = malloc<Int64>()..value = subdivision;
    try {
      ptrcallVoid(_mb_set_generate_probes, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_generate_probes =
      resolveMethodBind('LightmapGI', 'get_generate_probes', 3930596226);

  int getGenerateProbes() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_generate_probes, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_bias =
      resolveMethodBind('LightmapGI', 'set_bias', 373806689);

  void setBias(double bias) {
    final arg0 = malloc<Double>()..value = bias;
    try {
      ptrcallVoid(_mb_set_bias, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_bias =
      resolveMethodBind('LightmapGI', 'get_bias', 1740695150);

  double getBias() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_bias, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_environment_mode =
      resolveMethodBind('LightmapGI', 'set_environment_mode', 2282650285);

  void setEnvironmentMode(int mode) {
    final arg0 = malloc<Int64>()..value = mode;
    try {
      ptrcallVoid(_mb_set_environment_mode, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_environment_mode =
      resolveMethodBind('LightmapGI', 'get_environment_mode', 4128646479);

  int getEnvironmentMode() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_environment_mode, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_environment_custom_sky =
      resolveMethodBind('LightmapGI', 'set_environment_custom_sky', 3336722921);

  void setEnvironmentCustomSky(Sky sky) {
    final arg0 = malloc<Pointer<Void>>()..value = sky.nativePtr;
    try {
      ptrcallVoid(_mb_set_environment_custom_sky, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_environment_custom_sky =
      resolveMethodBind('LightmapGI', 'get_environment_custom_sky', 1177136966);

  Sky? getEnvironmentCustomSky() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_environment_custom_sky, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Sky(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_environment_custom_color =
      resolveMethodBind('LightmapGI', 'set_environment_custom_color', 2920490490);

  void setEnvironmentCustomColor(Color color) {
    final arg0 = malloc<Uint8>(Color.nativeSize);
    color.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_environment_custom_color, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_environment_custom_color =
      resolveMethodBind('LightmapGI', 'get_environment_custom_color', 3444240500);

  Color getEnvironmentCustomColor() {
    try {
      final ret = malloc<Uint8>(Color.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_environment_custom_color, nativePtr, [], ret.cast());
        return Color.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_environment_custom_energy =
      resolveMethodBind('LightmapGI', 'set_environment_custom_energy', 373806689);

  void setEnvironmentCustomEnergy(double energy) {
    final arg0 = malloc<Double>()..value = energy;
    try {
      ptrcallVoid(_mb_set_environment_custom_energy, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_environment_custom_energy =
      resolveMethodBind('LightmapGI', 'get_environment_custom_energy', 1740695150);

  double getEnvironmentCustomEnergy() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_environment_custom_energy, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_texel_scale =
      resolveMethodBind('LightmapGI', 'set_texel_scale', 373806689);

  void setTexelScale(double texelScale) {
    final arg0 = malloc<Double>()..value = texelScale;
    try {
      ptrcallVoid(_mb_set_texel_scale, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_texel_scale =
      resolveMethodBind('LightmapGI', 'get_texel_scale', 1740695150);

  double getTexelScale() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_texel_scale, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_max_texture_size =
      resolveMethodBind('LightmapGI', 'set_max_texture_size', 1286410249);

  void setMaxTextureSize(int maxTextureSize) {
    final arg0 = malloc<Int64>()..value = maxTextureSize;
    try {
      ptrcallVoid(_mb_set_max_texture_size, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_max_texture_size =
      resolveMethodBind('LightmapGI', 'get_max_texture_size', 3905245786);

  int getMaxTextureSize() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_max_texture_size, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_supersampling_enabled =
      resolveMethodBind('LightmapGI', 'set_supersampling_enabled', 2586408642);

  void setSupersamplingEnabled(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_supersampling_enabled, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_supersampling_enabled =
      resolveMethodBind('LightmapGI', 'is_supersampling_enabled', 36873697);

  bool isSupersamplingEnabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_supersampling_enabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_supersampling_factor =
      resolveMethodBind('LightmapGI', 'set_supersampling_factor', 373806689);

  void setSupersamplingFactor(double factor) {
    final arg0 = malloc<Double>()..value = factor;
    try {
      ptrcallVoid(_mb_set_supersampling_factor, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_supersampling_factor =
      resolveMethodBind('LightmapGI', 'get_supersampling_factor', 1740695150);

  double getSupersamplingFactor() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_supersampling_factor, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_use_denoiser =
      resolveMethodBind('LightmapGI', 'set_use_denoiser', 2586408642);

  void setUseDenoiser(bool useDenoiser) {
    final arg0 = malloc<Uint8>()..value = useDenoiser ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_use_denoiser, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_using_denoiser =
      resolveMethodBind('LightmapGI', 'is_using_denoiser', 36873697);

  bool isUsingDenoiser() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_using_denoiser, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_denoiser_strength =
      resolveMethodBind('LightmapGI', 'set_denoiser_strength', 373806689);

  void setDenoiserStrength(double denoiserStrength) {
    final arg0 = malloc<Double>()..value = denoiserStrength;
    try {
      ptrcallVoid(_mb_set_denoiser_strength, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_denoiser_strength =
      resolveMethodBind('LightmapGI', 'get_denoiser_strength', 1740695150);

  double getDenoiserStrength() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_denoiser_strength, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_denoiser_range =
      resolveMethodBind('LightmapGI', 'set_denoiser_range', 1286410249);

  void setDenoiserRange(int denoiserRange) {
    final arg0 = malloc<Int64>()..value = denoiserRange;
    try {
      ptrcallVoid(_mb_set_denoiser_range, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_denoiser_range =
      resolveMethodBind('LightmapGI', 'get_denoiser_range', 3905245786);

  int getDenoiserRange() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_denoiser_range, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_interior =
      resolveMethodBind('LightmapGI', 'set_interior', 2586408642);

  void setInterior(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_interior, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_interior =
      resolveMethodBind('LightmapGI', 'is_interior', 36873697);

  bool isInterior() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_interior, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_directional =
      resolveMethodBind('LightmapGI', 'set_directional', 2586408642);

  void setDirectional(bool directional) {
    final arg0 = malloc<Uint8>()..value = directional ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_directional, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_directional =
      resolveMethodBind('LightmapGI', 'is_directional', 36873697);

  bool isDirectional() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_directional, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_shadowmask_mode =
      resolveMethodBind('LightmapGI', 'set_shadowmask_mode', 3451066572);

  void setShadowmaskMode(int mode) {
    final arg0 = malloc<Int64>()..value = mode;
    try {
      ptrcallVoid(_mb_set_shadowmask_mode, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_shadowmask_mode =
      resolveMethodBind('LightmapGI', 'get_shadowmask_mode', 785478560);

  int getShadowmaskMode() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_shadowmask_mode, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_use_texture_for_bounces =
      resolveMethodBind('LightmapGI', 'set_use_texture_for_bounces', 2586408642);

  void setUseTextureForBounces(bool useTextureForBounces) {
    final arg0 = malloc<Uint8>()..value = useTextureForBounces ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_use_texture_for_bounces, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_using_texture_for_bounces =
      resolveMethodBind('LightmapGI', 'is_using_texture_for_bounces', 36873697);

  bool isUsingTextureForBounces() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_using_texture_for_bounces, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_camera_attributes =
      resolveMethodBind('LightmapGI', 'set_camera_attributes', 2817810567);

  void setCameraAttributes(CameraAttributes cameraAttributes) {
    final arg0 = malloc<Pointer<Void>>()..value = cameraAttributes.nativePtr;
    try {
      ptrcallVoid(_mb_set_camera_attributes, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_camera_attributes =
      resolveMethodBind('LightmapGI', 'get_camera_attributes', 3921283215);

  CameraAttributes? getCameraAttributes() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_camera_attributes, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : CameraAttributes(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
