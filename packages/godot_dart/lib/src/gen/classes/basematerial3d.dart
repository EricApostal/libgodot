// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class BaseMaterial3D extends Material {
  BaseMaterial3D(super.nativePtr);

  static final Pointer<Void> _mb_set_albedo =
      resolveMethodBind('BaseMaterial3D', 'set_albedo', 2920490490);

  void setAlbedo(Color albedo) {
    final arg0 = malloc<Uint8>(Color.nativeSize);
    albedo.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_albedo, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_albedo =
      resolveMethodBind('BaseMaterial3D', 'get_albedo', 3444240500);

  Color getAlbedo() {
    try {
      final ret = malloc<Uint8>(Color.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_albedo, nativePtr, [], ret.cast());
        return Color.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_transparency =
      resolveMethodBind('BaseMaterial3D', 'set_transparency', 3435651667);

  void setTransparency(int transparency) {
    final arg0 = malloc<Int64>()..value = transparency;
    try {
      ptrcallVoid(_mb_set_transparency, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_transparency =
      resolveMethodBind('BaseMaterial3D', 'get_transparency', 990903061);

  int getTransparency() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_transparency, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_alpha_antialiasing =
      resolveMethodBind('BaseMaterial3D', 'set_alpha_antialiasing', 3212649852);

  void setAlphaAntialiasing(int alphaAa) {
    final arg0 = malloc<Int64>()..value = alphaAa;
    try {
      ptrcallVoid(_mb_set_alpha_antialiasing, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_alpha_antialiasing =
      resolveMethodBind('BaseMaterial3D', 'get_alpha_antialiasing', 2889939400);

  int getAlphaAntialiasing() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_alpha_antialiasing, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_alpha_antialiasing_edge =
      resolveMethodBind('BaseMaterial3D', 'set_alpha_antialiasing_edge', 373806689);

  void setAlphaAntialiasingEdge(double edge) {
    final arg0 = malloc<Double>()..value = edge;
    try {
      ptrcallVoid(_mb_set_alpha_antialiasing_edge, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_alpha_antialiasing_edge =
      resolveMethodBind('BaseMaterial3D', 'get_alpha_antialiasing_edge', 1740695150);

  double getAlphaAntialiasingEdge() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_alpha_antialiasing_edge, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_shading_mode =
      resolveMethodBind('BaseMaterial3D', 'set_shading_mode', 3368750322);

  void setShadingMode(int shadingMode) {
    final arg0 = malloc<Int64>()..value = shadingMode;
    try {
      ptrcallVoid(_mb_set_shading_mode, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_shading_mode =
      resolveMethodBind('BaseMaterial3D', 'get_shading_mode', 2132070559);

  int getShadingMode() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_shading_mode, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_specular =
      resolveMethodBind('BaseMaterial3D', 'set_specular', 373806689);

  void setSpecular(double specular) {
    final arg0 = malloc<Double>()..value = specular;
    try {
      ptrcallVoid(_mb_set_specular, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_specular =
      resolveMethodBind('BaseMaterial3D', 'get_specular', 1740695150);

  double getSpecular() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_specular, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_metallic =
      resolveMethodBind('BaseMaterial3D', 'set_metallic', 373806689);

  void setMetallic(double metallic) {
    final arg0 = malloc<Double>()..value = metallic;
    try {
      ptrcallVoid(_mb_set_metallic, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_metallic =
      resolveMethodBind('BaseMaterial3D', 'get_metallic', 1740695150);

  double getMetallic() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_metallic, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_roughness =
      resolveMethodBind('BaseMaterial3D', 'set_roughness', 373806689);

  void setRoughness(double roughness) {
    final arg0 = malloc<Double>()..value = roughness;
    try {
      ptrcallVoid(_mb_set_roughness, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_roughness =
      resolveMethodBind('BaseMaterial3D', 'get_roughness', 1740695150);

  double getRoughness() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_roughness, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_emission =
      resolveMethodBind('BaseMaterial3D', 'set_emission', 2920490490);

  void setEmission(Color emission) {
    final arg0 = malloc<Uint8>(Color.nativeSize);
    emission.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_emission, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_emission =
      resolveMethodBind('BaseMaterial3D', 'get_emission', 3444240500);

  Color getEmission() {
    try {
      final ret = malloc<Uint8>(Color.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_emission, nativePtr, [], ret.cast());
        return Color.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_emission_energy_multiplier =
      resolveMethodBind('BaseMaterial3D', 'set_emission_energy_multiplier', 373806689);

  void setEmissionEnergyMultiplier(double emissionEnergyMultiplier) {
    final arg0 = malloc<Double>()..value = emissionEnergyMultiplier;
    try {
      ptrcallVoid(_mb_set_emission_energy_multiplier, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_emission_energy_multiplier =
      resolveMethodBind('BaseMaterial3D', 'get_emission_energy_multiplier', 1740695150);

  double getEmissionEnergyMultiplier() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_emission_energy_multiplier, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_emission_intensity =
      resolveMethodBind('BaseMaterial3D', 'set_emission_intensity', 373806689);

  void setEmissionIntensity(double emissionEnergyMultiplier) {
    final arg0 = malloc<Double>()..value = emissionEnergyMultiplier;
    try {
      ptrcallVoid(_mb_set_emission_intensity, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_emission_intensity =
      resolveMethodBind('BaseMaterial3D', 'get_emission_intensity', 1740695150);

  double getEmissionIntensity() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_emission_intensity, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_normal_scale =
      resolveMethodBind('BaseMaterial3D', 'set_normal_scale', 373806689);

  void setNormalScale(double normalScale) {
    final arg0 = malloc<Double>()..value = normalScale;
    try {
      ptrcallVoid(_mb_set_normal_scale, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_normal_scale =
      resolveMethodBind('BaseMaterial3D', 'get_normal_scale', 1740695150);

  double getNormalScale() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_normal_scale, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_rim =
      resolveMethodBind('BaseMaterial3D', 'set_rim', 373806689);

  void setRim(double rim) {
    final arg0 = malloc<Double>()..value = rim;
    try {
      ptrcallVoid(_mb_set_rim, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_rim =
      resolveMethodBind('BaseMaterial3D', 'get_rim', 1740695150);

  double getRim() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_rim, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_rim_tint =
      resolveMethodBind('BaseMaterial3D', 'set_rim_tint', 373806689);

  void setRimTint(double rimTint) {
    final arg0 = malloc<Double>()..value = rimTint;
    try {
      ptrcallVoid(_mb_set_rim_tint, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_rim_tint =
      resolveMethodBind('BaseMaterial3D', 'get_rim_tint', 1740695150);

  double getRimTint() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_rim_tint, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_clearcoat =
      resolveMethodBind('BaseMaterial3D', 'set_clearcoat', 373806689);

  void setClearcoat(double clearcoat) {
    final arg0 = malloc<Double>()..value = clearcoat;
    try {
      ptrcallVoid(_mb_set_clearcoat, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_clearcoat =
      resolveMethodBind('BaseMaterial3D', 'get_clearcoat', 1740695150);

  double getClearcoat() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_clearcoat, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_clearcoat_roughness =
      resolveMethodBind('BaseMaterial3D', 'set_clearcoat_roughness', 373806689);

  void setClearcoatRoughness(double clearcoatRoughness) {
    final arg0 = malloc<Double>()..value = clearcoatRoughness;
    try {
      ptrcallVoid(_mb_set_clearcoat_roughness, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_clearcoat_roughness =
      resolveMethodBind('BaseMaterial3D', 'get_clearcoat_roughness', 1740695150);

  double getClearcoatRoughness() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_clearcoat_roughness, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_anisotropy =
      resolveMethodBind('BaseMaterial3D', 'set_anisotropy', 373806689);

  void setAnisotropy(double anisotropy) {
    final arg0 = malloc<Double>()..value = anisotropy;
    try {
      ptrcallVoid(_mb_set_anisotropy, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_anisotropy =
      resolveMethodBind('BaseMaterial3D', 'get_anisotropy', 1740695150);

  double getAnisotropy() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_anisotropy, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_heightmap_scale =
      resolveMethodBind('BaseMaterial3D', 'set_heightmap_scale', 373806689);

  void setHeightmapScale(double heightmapScale) {
    final arg0 = malloc<Double>()..value = heightmapScale;
    try {
      ptrcallVoid(_mb_set_heightmap_scale, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_heightmap_scale =
      resolveMethodBind('BaseMaterial3D', 'get_heightmap_scale', 1740695150);

  double getHeightmapScale() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_heightmap_scale, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_subsurface_scattering_strength =
      resolveMethodBind('BaseMaterial3D', 'set_subsurface_scattering_strength', 373806689);

  void setSubsurfaceScatteringStrength(double strength) {
    final arg0 = malloc<Double>()..value = strength;
    try {
      ptrcallVoid(_mb_set_subsurface_scattering_strength, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_subsurface_scattering_strength =
      resolveMethodBind('BaseMaterial3D', 'get_subsurface_scattering_strength', 1740695150);

  double getSubsurfaceScatteringStrength() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_subsurface_scattering_strength, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_transmittance_color =
      resolveMethodBind('BaseMaterial3D', 'set_transmittance_color', 2920490490);

  void setTransmittanceColor(Color color) {
    final arg0 = malloc<Uint8>(Color.nativeSize);
    color.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_transmittance_color, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_transmittance_color =
      resolveMethodBind('BaseMaterial3D', 'get_transmittance_color', 3444240500);

  Color getTransmittanceColor() {
    try {
      final ret = malloc<Uint8>(Color.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_transmittance_color, nativePtr, [], ret.cast());
        return Color.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_transmittance_depth =
      resolveMethodBind('BaseMaterial3D', 'set_transmittance_depth', 373806689);

  void setTransmittanceDepth(double depth) {
    final arg0 = malloc<Double>()..value = depth;
    try {
      ptrcallVoid(_mb_set_transmittance_depth, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_transmittance_depth =
      resolveMethodBind('BaseMaterial3D', 'get_transmittance_depth', 1740695150);

  double getTransmittanceDepth() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_transmittance_depth, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_transmittance_boost =
      resolveMethodBind('BaseMaterial3D', 'set_transmittance_boost', 373806689);

  void setTransmittanceBoost(double boost) {
    final arg0 = malloc<Double>()..value = boost;
    try {
      ptrcallVoid(_mb_set_transmittance_boost, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_transmittance_boost =
      resolveMethodBind('BaseMaterial3D', 'get_transmittance_boost', 1740695150);

  double getTransmittanceBoost() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_transmittance_boost, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_backlight =
      resolveMethodBind('BaseMaterial3D', 'set_backlight', 2920490490);

  void setBacklight(Color backlight) {
    final arg0 = malloc<Uint8>(Color.nativeSize);
    backlight.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_backlight, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_backlight =
      resolveMethodBind('BaseMaterial3D', 'get_backlight', 3444240500);

  Color getBacklight() {
    try {
      final ret = malloc<Uint8>(Color.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_backlight, nativePtr, [], ret.cast());
        return Color.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_refraction =
      resolveMethodBind('BaseMaterial3D', 'set_refraction', 373806689);

  void setRefraction(double refraction) {
    final arg0 = malloc<Double>()..value = refraction;
    try {
      ptrcallVoid(_mb_set_refraction, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_refraction =
      resolveMethodBind('BaseMaterial3D', 'get_refraction', 1740695150);

  double getRefraction() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_refraction, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_point_size =
      resolveMethodBind('BaseMaterial3D', 'set_point_size', 373806689);

  void setPointSize(double pointSize) {
    final arg0 = malloc<Double>()..value = pointSize;
    try {
      ptrcallVoid(_mb_set_point_size, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_point_size =
      resolveMethodBind('BaseMaterial3D', 'get_point_size', 1740695150);

  double getPointSize() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_point_size, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_detail_uv =
      resolveMethodBind('BaseMaterial3D', 'set_detail_uv', 456801921);

  void setDetailUv(int detailUv) {
    final arg0 = malloc<Int64>()..value = detailUv;
    try {
      ptrcallVoid(_mb_set_detail_uv, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_detail_uv =
      resolveMethodBind('BaseMaterial3D', 'get_detail_uv', 2306920512);

  int getDetailUv() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_detail_uv, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_blend_mode =
      resolveMethodBind('BaseMaterial3D', 'set_blend_mode', 2830186259);

  void setBlendMode(int blendMode) {
    final arg0 = malloc<Int64>()..value = blendMode;
    try {
      ptrcallVoid(_mb_set_blend_mode, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_blend_mode =
      resolveMethodBind('BaseMaterial3D', 'get_blend_mode', 4022690962);

  int getBlendMode() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_blend_mode, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_depth_draw_mode =
      resolveMethodBind('BaseMaterial3D', 'set_depth_draw_mode', 1456584748);

  void setDepthDrawMode(int depthDrawMode) {
    final arg0 = malloc<Int64>()..value = depthDrawMode;
    try {
      ptrcallVoid(_mb_set_depth_draw_mode, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_depth_draw_mode =
      resolveMethodBind('BaseMaterial3D', 'get_depth_draw_mode', 2578197639);

  int getDepthDrawMode() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_depth_draw_mode, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_depth_test =
      resolveMethodBind('BaseMaterial3D', 'set_depth_test', 3918692338);

  void setDepthTest(int depthTest) {
    final arg0 = malloc<Int64>()..value = depthTest;
    try {
      ptrcallVoid(_mb_set_depth_test, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_depth_test =
      resolveMethodBind('BaseMaterial3D', 'get_depth_test', 3434785811);

  int getDepthTest() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_depth_test, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_cull_mode =
      resolveMethodBind('BaseMaterial3D', 'set_cull_mode', 2338909218);

  void setCullMode(int cullMode) {
    final arg0 = malloc<Int64>()..value = cullMode;
    try {
      ptrcallVoid(_mb_set_cull_mode, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_cull_mode =
      resolveMethodBind('BaseMaterial3D', 'get_cull_mode', 1941499586);

  int getCullMode() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_cull_mode, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_diffuse_mode =
      resolveMethodBind('BaseMaterial3D', 'set_diffuse_mode', 1045299638);

  void setDiffuseMode(int diffuseMode) {
    final arg0 = malloc<Int64>()..value = diffuseMode;
    try {
      ptrcallVoid(_mb_set_diffuse_mode, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_diffuse_mode =
      resolveMethodBind('BaseMaterial3D', 'get_diffuse_mode', 3973617136);

  int getDiffuseMode() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_diffuse_mode, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_specular_mode =
      resolveMethodBind('BaseMaterial3D', 'set_specular_mode', 584737147);

  void setSpecularMode(int specularMode) {
    final arg0 = malloc<Int64>()..value = specularMode;
    try {
      ptrcallVoid(_mb_set_specular_mode, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_specular_mode =
      resolveMethodBind('BaseMaterial3D', 'get_specular_mode', 2569953298);

  int getSpecularMode() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_specular_mode, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_flag =
      resolveMethodBind('BaseMaterial3D', 'set_flag', 3070159527);

  void setFlag(int flag, bool enable) {
    final arg0 = malloc<Int64>()..value = flag;
    final arg1 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_flag, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_flag =
      resolveMethodBind('BaseMaterial3D', 'get_flag', 1286410065);

  bool getFlag(int flag) {
    final arg0 = malloc<Int64>()..value = flag;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_flag, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_texture_filter =
      resolveMethodBind('BaseMaterial3D', 'set_texture_filter', 22904437);

  void setTextureFilter(int mode) {
    final arg0 = malloc<Int64>()..value = mode;
    try {
      ptrcallVoid(_mb_set_texture_filter, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_texture_filter =
      resolveMethodBind('BaseMaterial3D', 'get_texture_filter', 3289213076);

  int getTextureFilter() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_texture_filter, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_feature =
      resolveMethodBind('BaseMaterial3D', 'set_feature', 2819288693);

  void setFeature(int feature, bool enable) {
    final arg0 = malloc<Int64>()..value = feature;
    final arg1 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_feature, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_feature =
      resolveMethodBind('BaseMaterial3D', 'get_feature', 1965241794);

  bool getFeature(int feature) {
    final arg0 = malloc<Int64>()..value = feature;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_feature, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_texture =
      resolveMethodBind('BaseMaterial3D', 'set_texture', 464208135);

  void setTexture(int param, Texture2D texture) {
    final arg0 = malloc<Int64>()..value = param;
    final arg1 = malloc<Pointer<Void>>()..value = texture.nativePtr;
    try {
      ptrcallVoid(_mb_set_texture, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_texture =
      resolveMethodBind('BaseMaterial3D', 'get_texture', 329605813);

  Texture2D? getTexture(int param) {
    final arg0 = malloc<Int64>()..value = param;
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_texture, nativePtr, [arg0.cast<Void>()], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Texture2D(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_detail_blend_mode =
      resolveMethodBind('BaseMaterial3D', 'set_detail_blend_mode', 2830186259);

  void setDetailBlendMode(int detailBlendMode) {
    final arg0 = malloc<Int64>()..value = detailBlendMode;
    try {
      ptrcallVoid(_mb_set_detail_blend_mode, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_detail_blend_mode =
      resolveMethodBind('BaseMaterial3D', 'get_detail_blend_mode', 4022690962);

  int getDetailBlendMode() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_detail_blend_mode, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_uv1_scale =
      resolveMethodBind('BaseMaterial3D', 'set_uv1_scale', 3460891852);

  void setUv1Scale(Vector3 scale) {
    final arg0 = malloc<Uint8>(Vector3.nativeSize);
    scale.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_uv1_scale, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_uv1_scale =
      resolveMethodBind('BaseMaterial3D', 'get_uv1_scale', 3360562783);

  Vector3 getUv1Scale() {
    try {
      final ret = malloc<Uint8>(Vector3.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_uv1_scale, nativePtr, [], ret.cast());
        return Vector3.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_uv1_offset =
      resolveMethodBind('BaseMaterial3D', 'set_uv1_offset', 3460891852);

  void setUv1Offset(Vector3 offset) {
    final arg0 = malloc<Uint8>(Vector3.nativeSize);
    offset.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_uv1_offset, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_uv1_offset =
      resolveMethodBind('BaseMaterial3D', 'get_uv1_offset', 3360562783);

  Vector3 getUv1Offset() {
    try {
      final ret = malloc<Uint8>(Vector3.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_uv1_offset, nativePtr, [], ret.cast());
        return Vector3.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_uv1_triplanar_blend_sharpness =
      resolveMethodBind('BaseMaterial3D', 'set_uv1_triplanar_blend_sharpness', 373806689);

  void setUv1TriplanarBlendSharpness(double sharpness) {
    final arg0 = malloc<Double>()..value = sharpness;
    try {
      ptrcallVoid(_mb_set_uv1_triplanar_blend_sharpness, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_uv1_triplanar_blend_sharpness =
      resolveMethodBind('BaseMaterial3D', 'get_uv1_triplanar_blend_sharpness', 1740695150);

  double getUv1TriplanarBlendSharpness() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_uv1_triplanar_blend_sharpness, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_uv2_scale =
      resolveMethodBind('BaseMaterial3D', 'set_uv2_scale', 3460891852);

  void setUv2Scale(Vector3 scale) {
    final arg0 = malloc<Uint8>(Vector3.nativeSize);
    scale.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_uv2_scale, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_uv2_scale =
      resolveMethodBind('BaseMaterial3D', 'get_uv2_scale', 3360562783);

  Vector3 getUv2Scale() {
    try {
      final ret = malloc<Uint8>(Vector3.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_uv2_scale, nativePtr, [], ret.cast());
        return Vector3.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_uv2_offset =
      resolveMethodBind('BaseMaterial3D', 'set_uv2_offset', 3460891852);

  void setUv2Offset(Vector3 offset) {
    final arg0 = malloc<Uint8>(Vector3.nativeSize);
    offset.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_uv2_offset, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_uv2_offset =
      resolveMethodBind('BaseMaterial3D', 'get_uv2_offset', 3360562783);

  Vector3 getUv2Offset() {
    try {
      final ret = malloc<Uint8>(Vector3.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_uv2_offset, nativePtr, [], ret.cast());
        return Vector3.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_uv2_triplanar_blend_sharpness =
      resolveMethodBind('BaseMaterial3D', 'set_uv2_triplanar_blend_sharpness', 373806689);

  void setUv2TriplanarBlendSharpness(double sharpness) {
    final arg0 = malloc<Double>()..value = sharpness;
    try {
      ptrcallVoid(_mb_set_uv2_triplanar_blend_sharpness, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_uv2_triplanar_blend_sharpness =
      resolveMethodBind('BaseMaterial3D', 'get_uv2_triplanar_blend_sharpness', 1740695150);

  double getUv2TriplanarBlendSharpness() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_uv2_triplanar_blend_sharpness, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_billboard_mode =
      resolveMethodBind('BaseMaterial3D', 'set_billboard_mode', 4202036497);

  void setBillboardMode(int mode) {
    final arg0 = malloc<Int64>()..value = mode;
    try {
      ptrcallVoid(_mb_set_billboard_mode, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_billboard_mode =
      resolveMethodBind('BaseMaterial3D', 'get_billboard_mode', 1283840139);

  int getBillboardMode() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_billboard_mode, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_particles_anim_h_frames =
      resolveMethodBind('BaseMaterial3D', 'set_particles_anim_h_frames', 1286410249);

  void setParticlesAnimHFrames(int frames) {
    final arg0 = malloc<Int64>()..value = frames;
    try {
      ptrcallVoid(_mb_set_particles_anim_h_frames, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_particles_anim_h_frames =
      resolveMethodBind('BaseMaterial3D', 'get_particles_anim_h_frames', 3905245786);

  int getParticlesAnimHFrames() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_particles_anim_h_frames, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_particles_anim_v_frames =
      resolveMethodBind('BaseMaterial3D', 'set_particles_anim_v_frames', 1286410249);

  void setParticlesAnimVFrames(int frames) {
    final arg0 = malloc<Int64>()..value = frames;
    try {
      ptrcallVoid(_mb_set_particles_anim_v_frames, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_particles_anim_v_frames =
      resolveMethodBind('BaseMaterial3D', 'get_particles_anim_v_frames', 3905245786);

  int getParticlesAnimVFrames() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_particles_anim_v_frames, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_particles_anim_loop =
      resolveMethodBind('BaseMaterial3D', 'set_particles_anim_loop', 2586408642);

  void setParticlesAnimLoop(bool loop) {
    final arg0 = malloc<Uint8>()..value = loop ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_particles_anim_loop, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_particles_anim_loop =
      resolveMethodBind('BaseMaterial3D', 'get_particles_anim_loop', 36873697);

  bool getParticlesAnimLoop() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_particles_anim_loop, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_heightmap_deep_parallax =
      resolveMethodBind('BaseMaterial3D', 'set_heightmap_deep_parallax', 2586408642);

  void setHeightmapDeepParallax(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_heightmap_deep_parallax, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_heightmap_deep_parallax_enabled =
      resolveMethodBind('BaseMaterial3D', 'is_heightmap_deep_parallax_enabled', 36873697);

  bool isHeightmapDeepParallaxEnabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_heightmap_deep_parallax_enabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_heightmap_deep_parallax_min_layers =
      resolveMethodBind('BaseMaterial3D', 'set_heightmap_deep_parallax_min_layers', 1286410249);

  void setHeightmapDeepParallaxMinLayers(int layer) {
    final arg0 = malloc<Int64>()..value = layer;
    try {
      ptrcallVoid(_mb_set_heightmap_deep_parallax_min_layers, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_heightmap_deep_parallax_min_layers =
      resolveMethodBind('BaseMaterial3D', 'get_heightmap_deep_parallax_min_layers', 3905245786);

  int getHeightmapDeepParallaxMinLayers() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_heightmap_deep_parallax_min_layers, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_heightmap_deep_parallax_max_layers =
      resolveMethodBind('BaseMaterial3D', 'set_heightmap_deep_parallax_max_layers', 1286410249);

  void setHeightmapDeepParallaxMaxLayers(int layer) {
    final arg0 = malloc<Int64>()..value = layer;
    try {
      ptrcallVoid(_mb_set_heightmap_deep_parallax_max_layers, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_heightmap_deep_parallax_max_layers =
      resolveMethodBind('BaseMaterial3D', 'get_heightmap_deep_parallax_max_layers', 3905245786);

  int getHeightmapDeepParallaxMaxLayers() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_heightmap_deep_parallax_max_layers, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_heightmap_deep_parallax_flip_tangent =
      resolveMethodBind('BaseMaterial3D', 'set_heightmap_deep_parallax_flip_tangent', 2586408642);

  void setHeightmapDeepParallaxFlipTangent(bool flip) {
    final arg0 = malloc<Uint8>()..value = flip ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_heightmap_deep_parallax_flip_tangent, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_heightmap_deep_parallax_flip_tangent =
      resolveMethodBind('BaseMaterial3D', 'get_heightmap_deep_parallax_flip_tangent', 36873697);

  bool getHeightmapDeepParallaxFlipTangent() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_heightmap_deep_parallax_flip_tangent, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_heightmap_deep_parallax_flip_binormal =
      resolveMethodBind('BaseMaterial3D', 'set_heightmap_deep_parallax_flip_binormal', 2586408642);

  void setHeightmapDeepParallaxFlipBinormal(bool flip) {
    final arg0 = malloc<Uint8>()..value = flip ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_heightmap_deep_parallax_flip_binormal, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_heightmap_deep_parallax_flip_binormal =
      resolveMethodBind('BaseMaterial3D', 'get_heightmap_deep_parallax_flip_binormal', 36873697);

  bool getHeightmapDeepParallaxFlipBinormal() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_heightmap_deep_parallax_flip_binormal, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_grow =
      resolveMethodBind('BaseMaterial3D', 'set_grow', 373806689);

  void setGrow(double amount) {
    final arg0 = malloc<Double>()..value = amount;
    try {
      ptrcallVoid(_mb_set_grow, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_grow =
      resolveMethodBind('BaseMaterial3D', 'get_grow', 1740695150);

  double getGrow() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_grow, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_emission_operator =
      resolveMethodBind('BaseMaterial3D', 'set_emission_operator', 3825128922);

  void setEmissionOperator(int operator_) {
    final arg0 = malloc<Int64>()..value = operator_;
    try {
      ptrcallVoid(_mb_set_emission_operator, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_emission_operator =
      resolveMethodBind('BaseMaterial3D', 'get_emission_operator', 974205018);

  int getEmissionOperator() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_emission_operator, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_ao_light_affect =
      resolveMethodBind('BaseMaterial3D', 'set_ao_light_affect', 373806689);

  void setAoLightAffect(double amount) {
    final arg0 = malloc<Double>()..value = amount;
    try {
      ptrcallVoid(_mb_set_ao_light_affect, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_ao_light_affect =
      resolveMethodBind('BaseMaterial3D', 'get_ao_light_affect', 1740695150);

  double getAoLightAffect() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_ao_light_affect, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_alpha_scissor_threshold =
      resolveMethodBind('BaseMaterial3D', 'set_alpha_scissor_threshold', 373806689);

  void setAlphaScissorThreshold(double threshold) {
    final arg0 = malloc<Double>()..value = threshold;
    try {
      ptrcallVoid(_mb_set_alpha_scissor_threshold, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_alpha_scissor_threshold =
      resolveMethodBind('BaseMaterial3D', 'get_alpha_scissor_threshold', 1740695150);

  double getAlphaScissorThreshold() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_alpha_scissor_threshold, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_alpha_hash_scale =
      resolveMethodBind('BaseMaterial3D', 'set_alpha_hash_scale', 373806689);

  void setAlphaHashScale(double threshold) {
    final arg0 = malloc<Double>()..value = threshold;
    try {
      ptrcallVoid(_mb_set_alpha_hash_scale, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_alpha_hash_scale =
      resolveMethodBind('BaseMaterial3D', 'get_alpha_hash_scale', 1740695150);

  double getAlphaHashScale() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_alpha_hash_scale, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_grow_enabled =
      resolveMethodBind('BaseMaterial3D', 'set_grow_enabled', 2586408642);

  void setGrowEnabled(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_grow_enabled, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_grow_enabled =
      resolveMethodBind('BaseMaterial3D', 'is_grow_enabled', 36873697);

  bool isGrowEnabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_grow_enabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_metallic_texture_channel =
      resolveMethodBind('BaseMaterial3D', 'set_metallic_texture_channel', 744167988);

  void setMetallicTextureChannel(int channel) {
    final arg0 = malloc<Int64>()..value = channel;
    try {
      ptrcallVoid(_mb_set_metallic_texture_channel, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_metallic_texture_channel =
      resolveMethodBind('BaseMaterial3D', 'get_metallic_texture_channel', 568133867);

  int getMetallicTextureChannel() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_metallic_texture_channel, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_roughness_texture_channel =
      resolveMethodBind('BaseMaterial3D', 'set_roughness_texture_channel', 744167988);

  void setRoughnessTextureChannel(int channel) {
    final arg0 = malloc<Int64>()..value = channel;
    try {
      ptrcallVoid(_mb_set_roughness_texture_channel, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_roughness_texture_channel =
      resolveMethodBind('BaseMaterial3D', 'get_roughness_texture_channel', 568133867);

  int getRoughnessTextureChannel() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_roughness_texture_channel, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_ao_texture_channel =
      resolveMethodBind('BaseMaterial3D', 'set_ao_texture_channel', 744167988);

  void setAoTextureChannel(int channel) {
    final arg0 = malloc<Int64>()..value = channel;
    try {
      ptrcallVoid(_mb_set_ao_texture_channel, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_ao_texture_channel =
      resolveMethodBind('BaseMaterial3D', 'get_ao_texture_channel', 568133867);

  int getAoTextureChannel() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_ao_texture_channel, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_refraction_texture_channel =
      resolveMethodBind('BaseMaterial3D', 'set_refraction_texture_channel', 744167988);

  void setRefractionTextureChannel(int channel) {
    final arg0 = malloc<Int64>()..value = channel;
    try {
      ptrcallVoid(_mb_set_refraction_texture_channel, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_refraction_texture_channel =
      resolveMethodBind('BaseMaterial3D', 'get_refraction_texture_channel', 568133867);

  int getRefractionTextureChannel() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_refraction_texture_channel, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_proximity_fade_enabled =
      resolveMethodBind('BaseMaterial3D', 'set_proximity_fade_enabled', 2586408642);

  void setProximityFadeEnabled(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_proximity_fade_enabled, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_proximity_fade_enabled =
      resolveMethodBind('BaseMaterial3D', 'is_proximity_fade_enabled', 36873697);

  bool isProximityFadeEnabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_proximity_fade_enabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_proximity_fade_distance =
      resolveMethodBind('BaseMaterial3D', 'set_proximity_fade_distance', 373806689);

  void setProximityFadeDistance(double distance) {
    final arg0 = malloc<Double>()..value = distance;
    try {
      ptrcallVoid(_mb_set_proximity_fade_distance, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_proximity_fade_distance =
      resolveMethodBind('BaseMaterial3D', 'get_proximity_fade_distance', 1740695150);

  double getProximityFadeDistance() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_proximity_fade_distance, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_msdf_pixel_range =
      resolveMethodBind('BaseMaterial3D', 'set_msdf_pixel_range', 373806689);

  void setMsdfPixelRange(double range) {
    final arg0 = malloc<Double>()..value = range;
    try {
      ptrcallVoid(_mb_set_msdf_pixel_range, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_msdf_pixel_range =
      resolveMethodBind('BaseMaterial3D', 'get_msdf_pixel_range', 1740695150);

  double getMsdfPixelRange() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_msdf_pixel_range, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_msdf_outline_size =
      resolveMethodBind('BaseMaterial3D', 'set_msdf_outline_size', 373806689);

  void setMsdfOutlineSize(double size) {
    final arg0 = malloc<Double>()..value = size;
    try {
      ptrcallVoid(_mb_set_msdf_outline_size, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_msdf_outline_size =
      resolveMethodBind('BaseMaterial3D', 'get_msdf_outline_size', 1740695150);

  double getMsdfOutlineSize() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_msdf_outline_size, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_distance_fade =
      resolveMethodBind('BaseMaterial3D', 'set_distance_fade', 1379478617);

  void setDistanceFade(int mode) {
    final arg0 = malloc<Int64>()..value = mode;
    try {
      ptrcallVoid(_mb_set_distance_fade, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_distance_fade =
      resolveMethodBind('BaseMaterial3D', 'get_distance_fade', 2694575734);

  int getDistanceFade() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_distance_fade, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_distance_fade_max_distance =
      resolveMethodBind('BaseMaterial3D', 'set_distance_fade_max_distance', 373806689);

  void setDistanceFadeMaxDistance(double distance) {
    final arg0 = malloc<Double>()..value = distance;
    try {
      ptrcallVoid(_mb_set_distance_fade_max_distance, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_distance_fade_max_distance =
      resolveMethodBind('BaseMaterial3D', 'get_distance_fade_max_distance', 1740695150);

  double getDistanceFadeMaxDistance() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_distance_fade_max_distance, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_distance_fade_min_distance =
      resolveMethodBind('BaseMaterial3D', 'set_distance_fade_min_distance', 373806689);

  void setDistanceFadeMinDistance(double distance) {
    final arg0 = malloc<Double>()..value = distance;
    try {
      ptrcallVoid(_mb_set_distance_fade_min_distance, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_distance_fade_min_distance =
      resolveMethodBind('BaseMaterial3D', 'get_distance_fade_min_distance', 1740695150);

  double getDistanceFadeMinDistance() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_distance_fade_min_distance, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_z_clip_scale =
      resolveMethodBind('BaseMaterial3D', 'set_z_clip_scale', 373806689);

  void setZClipScale(double scale) {
    final arg0 = malloc<Double>()..value = scale;
    try {
      ptrcallVoid(_mb_set_z_clip_scale, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_z_clip_scale =
      resolveMethodBind('BaseMaterial3D', 'get_z_clip_scale', 1740695150);

  double getZClipScale() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_z_clip_scale, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_fov_override =
      resolveMethodBind('BaseMaterial3D', 'set_fov_override', 373806689);

  void setFovOverride(double scale) {
    final arg0 = malloc<Double>()..value = scale;
    try {
      ptrcallVoid(_mb_set_fov_override, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_fov_override =
      resolveMethodBind('BaseMaterial3D', 'get_fov_override', 1740695150);

  double getFovOverride() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_fov_override, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_stencil_mode =
      resolveMethodBind('BaseMaterial3D', 'set_stencil_mode', 2272367200);

  void setStencilMode(int stencilMode) {
    final arg0 = malloc<Int64>()..value = stencilMode;
    try {
      ptrcallVoid(_mb_set_stencil_mode, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_stencil_mode =
      resolveMethodBind('BaseMaterial3D', 'get_stencil_mode', 2908443456);

  int getStencilMode() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_stencil_mode, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_stencil_flags =
      resolveMethodBind('BaseMaterial3D', 'set_stencil_flags', 1286410249);

  void setStencilFlags(int stencilFlags) {
    final arg0 = malloc<Int64>()..value = stencilFlags;
    try {
      ptrcallVoid(_mb_set_stencil_flags, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_stencil_flags =
      resolveMethodBind('BaseMaterial3D', 'get_stencil_flags', 3905245786);

  int getStencilFlags() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_stencil_flags, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_stencil_compare =
      resolveMethodBind('BaseMaterial3D', 'set_stencil_compare', 3741726481);

  void setStencilCompare(int stencilCompare) {
    final arg0 = malloc<Int64>()..value = stencilCompare;
    try {
      ptrcallVoid(_mb_set_stencil_compare, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_stencil_compare =
      resolveMethodBind('BaseMaterial3D', 'get_stencil_compare', 2824600492);

  int getStencilCompare() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_stencil_compare, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_stencil_reference =
      resolveMethodBind('BaseMaterial3D', 'set_stencil_reference', 1286410249);

  void setStencilReference(int stencilReference) {
    final arg0 = malloc<Int64>()..value = stencilReference;
    try {
      ptrcallVoid(_mb_set_stencil_reference, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_stencil_reference =
      resolveMethodBind('BaseMaterial3D', 'get_stencil_reference', 3905245786);

  int getStencilReference() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_stencil_reference, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_stencil_effect_color =
      resolveMethodBind('BaseMaterial3D', 'set_stencil_effect_color', 2920490490);

  void setStencilEffectColor(Color stencilColor) {
    final arg0 = malloc<Uint8>(Color.nativeSize);
    stencilColor.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_stencil_effect_color, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_stencil_effect_color =
      resolveMethodBind('BaseMaterial3D', 'get_stencil_effect_color', 3444240500);

  Color getStencilEffectColor() {
    try {
      final ret = malloc<Uint8>(Color.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_stencil_effect_color, nativePtr, [], ret.cast());
        return Color.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_stencil_effect_outline_thickness =
      resolveMethodBind('BaseMaterial3D', 'set_stencil_effect_outline_thickness', 373806689);

  void setStencilEffectOutlineThickness(double stencilOutlineThickness) {
    final arg0 = malloc<Double>()..value = stencilOutlineThickness;
    try {
      ptrcallVoid(_mb_set_stencil_effect_outline_thickness, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_stencil_effect_outline_thickness =
      resolveMethodBind('BaseMaterial3D', 'get_stencil_effect_outline_thickness', 1740695150);

  double getStencilEffectOutlineThickness() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_stencil_effect_outline_thickness, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
