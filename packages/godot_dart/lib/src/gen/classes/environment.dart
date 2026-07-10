// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class Environment extends Resource {
  Environment(super.nativePtr);

  static final Pointer<Void> _mb_set_background =
      resolveMethodBind('Environment', 'set_background', 4071623990);

  void setBackground(int mode) {
    final arg0 = malloc<Int64>()..value = mode;
    try {
      ptrcallVoid(_mb_set_background, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_background =
      resolveMethodBind('Environment', 'get_background', 1843210413);

  int getBackground() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_background, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_sky =
      resolveMethodBind('Environment', 'set_sky', 3336722921);

  void setSky(Sky sky) {
    final arg0 = malloc<Pointer<Void>>()..value = sky.nativePtr;
    try {
      ptrcallVoid(_mb_set_sky, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_sky =
      resolveMethodBind('Environment', 'get_sky', 1177136966);

  Sky? getSky() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_sky, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Sky(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_sky_custom_fov =
      resolveMethodBind('Environment', 'set_sky_custom_fov', 373806689);

  void setSkyCustomFov(double scale) {
    final arg0 = malloc<Double>()..value = scale;
    try {
      ptrcallVoid(_mb_set_sky_custom_fov, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_sky_custom_fov =
      resolveMethodBind('Environment', 'get_sky_custom_fov', 1740695150);

  double getSkyCustomFov() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_sky_custom_fov, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_sky_rotation =
      resolveMethodBind('Environment', 'set_sky_rotation', 3460891852);

  void setSkyRotation(Vector3 eulerRadians) {
    final arg0 = malloc<Uint8>(Vector3.nativeSize);
    eulerRadians.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_sky_rotation, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_sky_rotation =
      resolveMethodBind('Environment', 'get_sky_rotation', 3360562783);

  Vector3 getSkyRotation() {
    try {
      final ret = malloc<Uint8>(Vector3.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_sky_rotation, nativePtr, [], ret.cast());
        return Vector3.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_bg_color =
      resolveMethodBind('Environment', 'set_bg_color', 2920490490);

  void setBgColor(Color color) {
    final arg0 = malloc<Uint8>(Color.nativeSize);
    color.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_bg_color, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_bg_color =
      resolveMethodBind('Environment', 'get_bg_color', 3444240500);

  Color getBgColor() {
    try {
      final ret = malloc<Uint8>(Color.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_bg_color, nativePtr, [], ret.cast());
        return Color.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_bg_energy_multiplier =
      resolveMethodBind('Environment', 'set_bg_energy_multiplier', 373806689);

  void setBgEnergyMultiplier(double energy) {
    final arg0 = malloc<Double>()..value = energy;
    try {
      ptrcallVoid(_mb_set_bg_energy_multiplier, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_bg_energy_multiplier =
      resolveMethodBind('Environment', 'get_bg_energy_multiplier', 1740695150);

  double getBgEnergyMultiplier() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_bg_energy_multiplier, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_bg_intensity =
      resolveMethodBind('Environment', 'set_bg_intensity', 373806689);

  void setBgIntensity(double energy) {
    final arg0 = malloc<Double>()..value = energy;
    try {
      ptrcallVoid(_mb_set_bg_intensity, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_bg_intensity =
      resolveMethodBind('Environment', 'get_bg_intensity', 1740695150);

  double getBgIntensity() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_bg_intensity, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_canvas_max_layer =
      resolveMethodBind('Environment', 'set_canvas_max_layer', 1286410249);

  void setCanvasMaxLayer(int layer) {
    final arg0 = malloc<Int64>()..value = layer;
    try {
      ptrcallVoid(_mb_set_canvas_max_layer, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_canvas_max_layer =
      resolveMethodBind('Environment', 'get_canvas_max_layer', 3905245786);

  int getCanvasMaxLayer() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_canvas_max_layer, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_camera_feed_id =
      resolveMethodBind('Environment', 'set_camera_feed_id', 1286410249);

  void setCameraFeedId(int id) {
    final arg0 = malloc<Int64>()..value = id;
    try {
      ptrcallVoid(_mb_set_camera_feed_id, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_camera_feed_id =
      resolveMethodBind('Environment', 'get_camera_feed_id', 3905245786);

  int getCameraFeedId() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_camera_feed_id, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_ambient_light_color =
      resolveMethodBind('Environment', 'set_ambient_light_color', 2920490490);

  void setAmbientLightColor(Color color) {
    final arg0 = malloc<Uint8>(Color.nativeSize);
    color.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_ambient_light_color, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_ambient_light_color =
      resolveMethodBind('Environment', 'get_ambient_light_color', 3444240500);

  Color getAmbientLightColor() {
    try {
      final ret = malloc<Uint8>(Color.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_ambient_light_color, nativePtr, [], ret.cast());
        return Color.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_ambient_source =
      resolveMethodBind('Environment', 'set_ambient_source', 2607780160);

  void setAmbientSource(int source) {
    final arg0 = malloc<Int64>()..value = source;
    try {
      ptrcallVoid(_mb_set_ambient_source, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_ambient_source =
      resolveMethodBind('Environment', 'get_ambient_source', 67453933);

  int getAmbientSource() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_ambient_source, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_ambient_light_energy =
      resolveMethodBind('Environment', 'set_ambient_light_energy', 373806689);

  void setAmbientLightEnergy(double energy) {
    final arg0 = malloc<Double>()..value = energy;
    try {
      ptrcallVoid(_mb_set_ambient_light_energy, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_ambient_light_energy =
      resolveMethodBind('Environment', 'get_ambient_light_energy', 1740695150);

  double getAmbientLightEnergy() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_ambient_light_energy, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_ambient_light_sky_contribution =
      resolveMethodBind('Environment', 'set_ambient_light_sky_contribution', 373806689);

  void setAmbientLightSkyContribution(double ratio) {
    final arg0 = malloc<Double>()..value = ratio;
    try {
      ptrcallVoid(_mb_set_ambient_light_sky_contribution, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_ambient_light_sky_contribution =
      resolveMethodBind('Environment', 'get_ambient_light_sky_contribution', 1740695150);

  double getAmbientLightSkyContribution() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_ambient_light_sky_contribution, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_reflection_source =
      resolveMethodBind('Environment', 'set_reflection_source', 299673197);

  void setReflectionSource(int source) {
    final arg0 = malloc<Int64>()..value = source;
    try {
      ptrcallVoid(_mb_set_reflection_source, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_reflection_source =
      resolveMethodBind('Environment', 'get_reflection_source', 777700713);

  int getReflectionSource() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_reflection_source, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_tonemapper =
      resolveMethodBind('Environment', 'set_tonemapper', 1509116664);

  void setTonemapper(int mode) {
    final arg0 = malloc<Int64>()..value = mode;
    try {
      ptrcallVoid(_mb_set_tonemapper, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_tonemapper =
      resolveMethodBind('Environment', 'get_tonemapper', 2908408137);

  int getTonemapper() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_tonemapper, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_tonemap_exposure =
      resolveMethodBind('Environment', 'set_tonemap_exposure', 373806689);

  void setTonemapExposure(double exposure) {
    final arg0 = malloc<Double>()..value = exposure;
    try {
      ptrcallVoid(_mb_set_tonemap_exposure, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_tonemap_exposure =
      resolveMethodBind('Environment', 'get_tonemap_exposure', 1740695150);

  double getTonemapExposure() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_tonemap_exposure, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_tonemap_white =
      resolveMethodBind('Environment', 'set_tonemap_white', 373806689);

  void setTonemapWhite(double white) {
    final arg0 = malloc<Double>()..value = white;
    try {
      ptrcallVoid(_mb_set_tonemap_white, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_tonemap_white =
      resolveMethodBind('Environment', 'get_tonemap_white', 1740695150);

  double getTonemapWhite() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_tonemap_white, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_tonemap_agx_white =
      resolveMethodBind('Environment', 'set_tonemap_agx_white', 373806689);

  void setTonemapAgxWhite(double white) {
    final arg0 = malloc<Double>()..value = white;
    try {
      ptrcallVoid(_mb_set_tonemap_agx_white, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_tonemap_agx_white =
      resolveMethodBind('Environment', 'get_tonemap_agx_white', 1740695150);

  double getTonemapAgxWhite() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_tonemap_agx_white, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_tonemap_agx_contrast =
      resolveMethodBind('Environment', 'set_tonemap_agx_contrast', 373806689);

  void setTonemapAgxContrast(double contrast) {
    final arg0 = malloc<Double>()..value = contrast;
    try {
      ptrcallVoid(_mb_set_tonemap_agx_contrast, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_tonemap_agx_contrast =
      resolveMethodBind('Environment', 'get_tonemap_agx_contrast', 1740695150);

  double getTonemapAgxContrast() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_tonemap_agx_contrast, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_ssr_enabled =
      resolveMethodBind('Environment', 'set_ssr_enabled', 2586408642);

  void setSsrEnabled(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_ssr_enabled, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_ssr_enabled =
      resolveMethodBind('Environment', 'is_ssr_enabled', 36873697);

  bool isSsrEnabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_ssr_enabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_ssr_max_steps =
      resolveMethodBind('Environment', 'set_ssr_max_steps', 1286410249);

  void setSsrMaxSteps(int maxSteps) {
    final arg0 = malloc<Int64>()..value = maxSteps;
    try {
      ptrcallVoid(_mb_set_ssr_max_steps, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_ssr_max_steps =
      resolveMethodBind('Environment', 'get_ssr_max_steps', 3905245786);

  int getSsrMaxSteps() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_ssr_max_steps, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_ssr_fade_in =
      resolveMethodBind('Environment', 'set_ssr_fade_in', 373806689);

  void setSsrFadeIn(double fadeIn) {
    final arg0 = malloc<Double>()..value = fadeIn;
    try {
      ptrcallVoid(_mb_set_ssr_fade_in, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_ssr_fade_in =
      resolveMethodBind('Environment', 'get_ssr_fade_in', 1740695150);

  double getSsrFadeIn() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_ssr_fade_in, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_ssr_fade_out =
      resolveMethodBind('Environment', 'set_ssr_fade_out', 373806689);

  void setSsrFadeOut(double fadeOut) {
    final arg0 = malloc<Double>()..value = fadeOut;
    try {
      ptrcallVoid(_mb_set_ssr_fade_out, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_ssr_fade_out =
      resolveMethodBind('Environment', 'get_ssr_fade_out', 1740695150);

  double getSsrFadeOut() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_ssr_fade_out, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_ssr_depth_tolerance =
      resolveMethodBind('Environment', 'set_ssr_depth_tolerance', 373806689);

  void setSsrDepthTolerance(double depthTolerance) {
    final arg0 = malloc<Double>()..value = depthTolerance;
    try {
      ptrcallVoid(_mb_set_ssr_depth_tolerance, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_ssr_depth_tolerance =
      resolveMethodBind('Environment', 'get_ssr_depth_tolerance', 1740695150);

  double getSsrDepthTolerance() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_ssr_depth_tolerance, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_ssao_enabled =
      resolveMethodBind('Environment', 'set_ssao_enabled', 2586408642);

  void setSsaoEnabled(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_ssao_enabled, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_ssao_enabled =
      resolveMethodBind('Environment', 'is_ssao_enabled', 36873697);

  bool isSsaoEnabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_ssao_enabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_ssao_radius =
      resolveMethodBind('Environment', 'set_ssao_radius', 373806689);

  void setSsaoRadius(double radius) {
    final arg0 = malloc<Double>()..value = radius;
    try {
      ptrcallVoid(_mb_set_ssao_radius, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_ssao_radius =
      resolveMethodBind('Environment', 'get_ssao_radius', 1740695150);

  double getSsaoRadius() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_ssao_radius, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_ssao_intensity =
      resolveMethodBind('Environment', 'set_ssao_intensity', 373806689);

  void setSsaoIntensity(double intensity) {
    final arg0 = malloc<Double>()..value = intensity;
    try {
      ptrcallVoid(_mb_set_ssao_intensity, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_ssao_intensity =
      resolveMethodBind('Environment', 'get_ssao_intensity', 1740695150);

  double getSsaoIntensity() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_ssao_intensity, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_ssao_power =
      resolveMethodBind('Environment', 'set_ssao_power', 373806689);

  void setSsaoPower(double power) {
    final arg0 = malloc<Double>()..value = power;
    try {
      ptrcallVoid(_mb_set_ssao_power, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_ssao_power =
      resolveMethodBind('Environment', 'get_ssao_power', 1740695150);

  double getSsaoPower() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_ssao_power, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_ssao_detail =
      resolveMethodBind('Environment', 'set_ssao_detail', 373806689);

  void setSsaoDetail(double detail) {
    final arg0 = malloc<Double>()..value = detail;
    try {
      ptrcallVoid(_mb_set_ssao_detail, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_ssao_detail =
      resolveMethodBind('Environment', 'get_ssao_detail', 1740695150);

  double getSsaoDetail() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_ssao_detail, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_ssao_horizon =
      resolveMethodBind('Environment', 'set_ssao_horizon', 373806689);

  void setSsaoHorizon(double horizon) {
    final arg0 = malloc<Double>()..value = horizon;
    try {
      ptrcallVoid(_mb_set_ssao_horizon, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_ssao_horizon =
      resolveMethodBind('Environment', 'get_ssao_horizon', 1740695150);

  double getSsaoHorizon() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_ssao_horizon, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_ssao_sharpness =
      resolveMethodBind('Environment', 'set_ssao_sharpness', 373806689);

  void setSsaoSharpness(double sharpness) {
    final arg0 = malloc<Double>()..value = sharpness;
    try {
      ptrcallVoid(_mb_set_ssao_sharpness, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_ssao_sharpness =
      resolveMethodBind('Environment', 'get_ssao_sharpness', 1740695150);

  double getSsaoSharpness() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_ssao_sharpness, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_ssao_direct_light_affect =
      resolveMethodBind('Environment', 'set_ssao_direct_light_affect', 373806689);

  void setSsaoDirectLightAffect(double amount) {
    final arg0 = malloc<Double>()..value = amount;
    try {
      ptrcallVoid(_mb_set_ssao_direct_light_affect, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_ssao_direct_light_affect =
      resolveMethodBind('Environment', 'get_ssao_direct_light_affect', 1740695150);

  double getSsaoDirectLightAffect() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_ssao_direct_light_affect, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_ssao_ao_channel_affect =
      resolveMethodBind('Environment', 'set_ssao_ao_channel_affect', 373806689);

  void setSsaoAoChannelAffect(double amount) {
    final arg0 = malloc<Double>()..value = amount;
    try {
      ptrcallVoid(_mb_set_ssao_ao_channel_affect, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_ssao_ao_channel_affect =
      resolveMethodBind('Environment', 'get_ssao_ao_channel_affect', 1740695150);

  double getSsaoAoChannelAffect() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_ssao_ao_channel_affect, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_ssil_enabled =
      resolveMethodBind('Environment', 'set_ssil_enabled', 2586408642);

  void setSsilEnabled(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_ssil_enabled, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_ssil_enabled =
      resolveMethodBind('Environment', 'is_ssil_enabled', 36873697);

  bool isSsilEnabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_ssil_enabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_ssil_radius =
      resolveMethodBind('Environment', 'set_ssil_radius', 373806689);

  void setSsilRadius(double radius) {
    final arg0 = malloc<Double>()..value = radius;
    try {
      ptrcallVoid(_mb_set_ssil_radius, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_ssil_radius =
      resolveMethodBind('Environment', 'get_ssil_radius', 1740695150);

  double getSsilRadius() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_ssil_radius, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_ssil_intensity =
      resolveMethodBind('Environment', 'set_ssil_intensity', 373806689);

  void setSsilIntensity(double intensity) {
    final arg0 = malloc<Double>()..value = intensity;
    try {
      ptrcallVoid(_mb_set_ssil_intensity, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_ssil_intensity =
      resolveMethodBind('Environment', 'get_ssil_intensity', 1740695150);

  double getSsilIntensity() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_ssil_intensity, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_ssil_sharpness =
      resolveMethodBind('Environment', 'set_ssil_sharpness', 373806689);

  void setSsilSharpness(double sharpness) {
    final arg0 = malloc<Double>()..value = sharpness;
    try {
      ptrcallVoid(_mb_set_ssil_sharpness, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_ssil_sharpness =
      resolveMethodBind('Environment', 'get_ssil_sharpness', 1740695150);

  double getSsilSharpness() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_ssil_sharpness, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_ssil_normal_rejection =
      resolveMethodBind('Environment', 'set_ssil_normal_rejection', 373806689);

  void setSsilNormalRejection(double normalRejection) {
    final arg0 = malloc<Double>()..value = normalRejection;
    try {
      ptrcallVoid(_mb_set_ssil_normal_rejection, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_ssil_normal_rejection =
      resolveMethodBind('Environment', 'get_ssil_normal_rejection', 1740695150);

  double getSsilNormalRejection() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_ssil_normal_rejection, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_sdfgi_enabled =
      resolveMethodBind('Environment', 'set_sdfgi_enabled', 2586408642);

  void setSdfgiEnabled(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_sdfgi_enabled, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_sdfgi_enabled =
      resolveMethodBind('Environment', 'is_sdfgi_enabled', 36873697);

  bool isSdfgiEnabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_sdfgi_enabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_sdfgi_cascades =
      resolveMethodBind('Environment', 'set_sdfgi_cascades', 1286410249);

  void setSdfgiCascades(int amount) {
    final arg0 = malloc<Int64>()..value = amount;
    try {
      ptrcallVoid(_mb_set_sdfgi_cascades, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_sdfgi_cascades =
      resolveMethodBind('Environment', 'get_sdfgi_cascades', 3905245786);

  int getSdfgiCascades() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_sdfgi_cascades, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_sdfgi_min_cell_size =
      resolveMethodBind('Environment', 'set_sdfgi_min_cell_size', 373806689);

  void setSdfgiMinCellSize(double size) {
    final arg0 = malloc<Double>()..value = size;
    try {
      ptrcallVoid(_mb_set_sdfgi_min_cell_size, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_sdfgi_min_cell_size =
      resolveMethodBind('Environment', 'get_sdfgi_min_cell_size', 1740695150);

  double getSdfgiMinCellSize() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_sdfgi_min_cell_size, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_sdfgi_max_distance =
      resolveMethodBind('Environment', 'set_sdfgi_max_distance', 373806689);

  void setSdfgiMaxDistance(double distance) {
    final arg0 = malloc<Double>()..value = distance;
    try {
      ptrcallVoid(_mb_set_sdfgi_max_distance, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_sdfgi_max_distance =
      resolveMethodBind('Environment', 'get_sdfgi_max_distance', 1740695150);

  double getSdfgiMaxDistance() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_sdfgi_max_distance, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_sdfgi_cascade0_distance =
      resolveMethodBind('Environment', 'set_sdfgi_cascade0_distance', 373806689);

  void setSdfgiCascade0Distance(double distance) {
    final arg0 = malloc<Double>()..value = distance;
    try {
      ptrcallVoid(_mb_set_sdfgi_cascade0_distance, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_sdfgi_cascade0_distance =
      resolveMethodBind('Environment', 'get_sdfgi_cascade0_distance', 1740695150);

  double getSdfgiCascade0Distance() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_sdfgi_cascade0_distance, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_sdfgi_y_scale =
      resolveMethodBind('Environment', 'set_sdfgi_y_scale', 3608608372);

  void setSdfgiYScale(int scale) {
    final arg0 = malloc<Int64>()..value = scale;
    try {
      ptrcallVoid(_mb_set_sdfgi_y_scale, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_sdfgi_y_scale =
      resolveMethodBind('Environment', 'get_sdfgi_y_scale', 2568002245);

  int getSdfgiYScale() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_sdfgi_y_scale, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_sdfgi_use_occlusion =
      resolveMethodBind('Environment', 'set_sdfgi_use_occlusion', 2586408642);

  void setSdfgiUseOcclusion(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_sdfgi_use_occlusion, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_sdfgi_using_occlusion =
      resolveMethodBind('Environment', 'is_sdfgi_using_occlusion', 36873697);

  bool isSdfgiUsingOcclusion() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_sdfgi_using_occlusion, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_sdfgi_bounce_feedback =
      resolveMethodBind('Environment', 'set_sdfgi_bounce_feedback', 373806689);

  void setSdfgiBounceFeedback(double amount) {
    final arg0 = malloc<Double>()..value = amount;
    try {
      ptrcallVoid(_mb_set_sdfgi_bounce_feedback, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_sdfgi_bounce_feedback =
      resolveMethodBind('Environment', 'get_sdfgi_bounce_feedback', 1740695150);

  double getSdfgiBounceFeedback() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_sdfgi_bounce_feedback, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_sdfgi_read_sky_light =
      resolveMethodBind('Environment', 'set_sdfgi_read_sky_light', 2586408642);

  void setSdfgiReadSkyLight(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_sdfgi_read_sky_light, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_sdfgi_reading_sky_light =
      resolveMethodBind('Environment', 'is_sdfgi_reading_sky_light', 36873697);

  bool isSdfgiReadingSkyLight() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_sdfgi_reading_sky_light, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_sdfgi_energy =
      resolveMethodBind('Environment', 'set_sdfgi_energy', 373806689);

  void setSdfgiEnergy(double amount) {
    final arg0 = malloc<Double>()..value = amount;
    try {
      ptrcallVoid(_mb_set_sdfgi_energy, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_sdfgi_energy =
      resolveMethodBind('Environment', 'get_sdfgi_energy', 1740695150);

  double getSdfgiEnergy() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_sdfgi_energy, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_sdfgi_normal_bias =
      resolveMethodBind('Environment', 'set_sdfgi_normal_bias', 373806689);

  void setSdfgiNormalBias(double bias) {
    final arg0 = malloc<Double>()..value = bias;
    try {
      ptrcallVoid(_mb_set_sdfgi_normal_bias, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_sdfgi_normal_bias =
      resolveMethodBind('Environment', 'get_sdfgi_normal_bias', 1740695150);

  double getSdfgiNormalBias() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_sdfgi_normal_bias, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_sdfgi_probe_bias =
      resolveMethodBind('Environment', 'set_sdfgi_probe_bias', 373806689);

  void setSdfgiProbeBias(double bias) {
    final arg0 = malloc<Double>()..value = bias;
    try {
      ptrcallVoid(_mb_set_sdfgi_probe_bias, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_sdfgi_probe_bias =
      resolveMethodBind('Environment', 'get_sdfgi_probe_bias', 1740695150);

  double getSdfgiProbeBias() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_sdfgi_probe_bias, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_glow_enabled =
      resolveMethodBind('Environment', 'set_glow_enabled', 2586408642);

  void setGlowEnabled(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_glow_enabled, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_glow_enabled =
      resolveMethodBind('Environment', 'is_glow_enabled', 36873697);

  bool isGlowEnabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_glow_enabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_glow_level =
      resolveMethodBind('Environment', 'set_glow_level', 1602489585);

  void setGlowLevel(int idx, double intensity) {
    final arg0 = malloc<Int64>()..value = idx;
    final arg1 = malloc<Double>()..value = intensity;
    try {
      ptrcallVoid(_mb_set_glow_level, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_glow_level =
      resolveMethodBind('Environment', 'get_glow_level', 2339986948);

  double getGlowLevel(int idx) {
    final arg0 = malloc<Int64>()..value = idx;
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_glow_level, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_glow_normalized =
      resolveMethodBind('Environment', 'set_glow_normalized', 2586408642);

  void setGlowNormalized(bool normalize) {
    final arg0 = malloc<Uint8>()..value = normalize ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_glow_normalized, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_glow_normalized =
      resolveMethodBind('Environment', 'is_glow_normalized', 36873697);

  bool isGlowNormalized() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_glow_normalized, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_glow_intensity =
      resolveMethodBind('Environment', 'set_glow_intensity', 373806689);

  void setGlowIntensity(double intensity) {
    final arg0 = malloc<Double>()..value = intensity;
    try {
      ptrcallVoid(_mb_set_glow_intensity, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_glow_intensity =
      resolveMethodBind('Environment', 'get_glow_intensity', 1740695150);

  double getGlowIntensity() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_glow_intensity, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_glow_strength =
      resolveMethodBind('Environment', 'set_glow_strength', 373806689);

  void setGlowStrength(double strength) {
    final arg0 = malloc<Double>()..value = strength;
    try {
      ptrcallVoid(_mb_set_glow_strength, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_glow_strength =
      resolveMethodBind('Environment', 'get_glow_strength', 1740695150);

  double getGlowStrength() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_glow_strength, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_glow_mix =
      resolveMethodBind('Environment', 'set_glow_mix', 373806689);

  void setGlowMix(double mix) {
    final arg0 = malloc<Double>()..value = mix;
    try {
      ptrcallVoid(_mb_set_glow_mix, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_glow_mix =
      resolveMethodBind('Environment', 'get_glow_mix', 1740695150);

  double getGlowMix() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_glow_mix, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_glow_bloom =
      resolveMethodBind('Environment', 'set_glow_bloom', 373806689);

  void setGlowBloom(double amount) {
    final arg0 = malloc<Double>()..value = amount;
    try {
      ptrcallVoid(_mb_set_glow_bloom, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_glow_bloom =
      resolveMethodBind('Environment', 'get_glow_bloom', 1740695150);

  double getGlowBloom() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_glow_bloom, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_glow_blend_mode =
      resolveMethodBind('Environment', 'set_glow_blend_mode', 2561587761);

  void setGlowBlendMode(int mode) {
    final arg0 = malloc<Int64>()..value = mode;
    try {
      ptrcallVoid(_mb_set_glow_blend_mode, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_glow_blend_mode =
      resolveMethodBind('Environment', 'get_glow_blend_mode', 1529667332);

  int getGlowBlendMode() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_glow_blend_mode, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_glow_hdr_bleed_threshold =
      resolveMethodBind('Environment', 'set_glow_hdr_bleed_threshold', 373806689);

  void setGlowHdrBleedThreshold(double threshold) {
    final arg0 = malloc<Double>()..value = threshold;
    try {
      ptrcallVoid(_mb_set_glow_hdr_bleed_threshold, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_glow_hdr_bleed_threshold =
      resolveMethodBind('Environment', 'get_glow_hdr_bleed_threshold', 1740695150);

  double getGlowHdrBleedThreshold() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_glow_hdr_bleed_threshold, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_glow_hdr_bleed_scale =
      resolveMethodBind('Environment', 'set_glow_hdr_bleed_scale', 373806689);

  void setGlowHdrBleedScale(double scale) {
    final arg0 = malloc<Double>()..value = scale;
    try {
      ptrcallVoid(_mb_set_glow_hdr_bleed_scale, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_glow_hdr_bleed_scale =
      resolveMethodBind('Environment', 'get_glow_hdr_bleed_scale', 1740695150);

  double getGlowHdrBleedScale() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_glow_hdr_bleed_scale, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_glow_hdr_luminance_cap =
      resolveMethodBind('Environment', 'set_glow_hdr_luminance_cap', 373806689);

  void setGlowHdrLuminanceCap(double amount) {
    final arg0 = malloc<Double>()..value = amount;
    try {
      ptrcallVoid(_mb_set_glow_hdr_luminance_cap, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_glow_hdr_luminance_cap =
      resolveMethodBind('Environment', 'get_glow_hdr_luminance_cap', 1740695150);

  double getGlowHdrLuminanceCap() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_glow_hdr_luminance_cap, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_glow_map_strength =
      resolveMethodBind('Environment', 'set_glow_map_strength', 373806689);

  void setGlowMapStrength(double strength) {
    final arg0 = malloc<Double>()..value = strength;
    try {
      ptrcallVoid(_mb_set_glow_map_strength, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_glow_map_strength =
      resolveMethodBind('Environment', 'get_glow_map_strength', 1740695150);

  double getGlowMapStrength() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_glow_map_strength, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_glow_map =
      resolveMethodBind('Environment', 'set_glow_map', 1790811099);

  void setGlowMap(Texture mode) {
    final arg0 = malloc<Pointer<Void>>()..value = mode.nativePtr;
    try {
      ptrcallVoid(_mb_set_glow_map, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_glow_map =
      resolveMethodBind('Environment', 'get_glow_map', 4037048985);

  Texture? getGlowMap() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_glow_map, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Texture(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_fog_enabled =
      resolveMethodBind('Environment', 'set_fog_enabled', 2586408642);

  void setFogEnabled(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_fog_enabled, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_fog_enabled =
      resolveMethodBind('Environment', 'is_fog_enabled', 36873697);

  bool isFogEnabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_fog_enabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_fog_mode =
      resolveMethodBind('Environment', 'set_fog_mode', 3059806579);

  void setFogMode(int mode) {
    final arg0 = malloc<Int64>()..value = mode;
    try {
      ptrcallVoid(_mb_set_fog_mode, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_fog_mode =
      resolveMethodBind('Environment', 'get_fog_mode', 2456062483);

  int getFogMode() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_fog_mode, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_fog_light_color =
      resolveMethodBind('Environment', 'set_fog_light_color', 2920490490);

  void setFogLightColor(Color lightColor) {
    final arg0 = malloc<Uint8>(Color.nativeSize);
    lightColor.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_fog_light_color, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_fog_light_color =
      resolveMethodBind('Environment', 'get_fog_light_color', 3444240500);

  Color getFogLightColor() {
    try {
      final ret = malloc<Uint8>(Color.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_fog_light_color, nativePtr, [], ret.cast());
        return Color.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_fog_light_energy =
      resolveMethodBind('Environment', 'set_fog_light_energy', 373806689);

  void setFogLightEnergy(double lightEnergy) {
    final arg0 = malloc<Double>()..value = lightEnergy;
    try {
      ptrcallVoid(_mb_set_fog_light_energy, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_fog_light_energy =
      resolveMethodBind('Environment', 'get_fog_light_energy', 1740695150);

  double getFogLightEnergy() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_fog_light_energy, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_fog_sun_scatter =
      resolveMethodBind('Environment', 'set_fog_sun_scatter', 373806689);

  void setFogSunScatter(double sunScatter) {
    final arg0 = malloc<Double>()..value = sunScatter;
    try {
      ptrcallVoid(_mb_set_fog_sun_scatter, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_fog_sun_scatter =
      resolveMethodBind('Environment', 'get_fog_sun_scatter', 1740695150);

  double getFogSunScatter() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_fog_sun_scatter, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_fog_density =
      resolveMethodBind('Environment', 'set_fog_density', 373806689);

  void setFogDensity(double density) {
    final arg0 = malloc<Double>()..value = density;
    try {
      ptrcallVoid(_mb_set_fog_density, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_fog_density =
      resolveMethodBind('Environment', 'get_fog_density', 1740695150);

  double getFogDensity() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_fog_density, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_fog_height =
      resolveMethodBind('Environment', 'set_fog_height', 373806689);

  void setFogHeight(double height) {
    final arg0 = malloc<Double>()..value = height;
    try {
      ptrcallVoid(_mb_set_fog_height, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_fog_height =
      resolveMethodBind('Environment', 'get_fog_height', 1740695150);

  double getFogHeight() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_fog_height, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_fog_height_density =
      resolveMethodBind('Environment', 'set_fog_height_density', 373806689);

  void setFogHeightDensity(double heightDensity) {
    final arg0 = malloc<Double>()..value = heightDensity;
    try {
      ptrcallVoid(_mb_set_fog_height_density, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_fog_height_density =
      resolveMethodBind('Environment', 'get_fog_height_density', 1740695150);

  double getFogHeightDensity() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_fog_height_density, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_fog_aerial_perspective =
      resolveMethodBind('Environment', 'set_fog_aerial_perspective', 373806689);

  void setFogAerialPerspective(double aerialPerspective) {
    final arg0 = malloc<Double>()..value = aerialPerspective;
    try {
      ptrcallVoid(_mb_set_fog_aerial_perspective, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_fog_aerial_perspective =
      resolveMethodBind('Environment', 'get_fog_aerial_perspective', 1740695150);

  double getFogAerialPerspective() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_fog_aerial_perspective, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_fog_sky_affect =
      resolveMethodBind('Environment', 'set_fog_sky_affect', 373806689);

  void setFogSkyAffect(double skyAffect) {
    final arg0 = malloc<Double>()..value = skyAffect;
    try {
      ptrcallVoid(_mb_set_fog_sky_affect, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_fog_sky_affect =
      resolveMethodBind('Environment', 'get_fog_sky_affect', 1740695150);

  double getFogSkyAffect() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_fog_sky_affect, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_fog_depth_curve =
      resolveMethodBind('Environment', 'set_fog_depth_curve', 373806689);

  void setFogDepthCurve(double curve) {
    final arg0 = malloc<Double>()..value = curve;
    try {
      ptrcallVoid(_mb_set_fog_depth_curve, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_fog_depth_curve =
      resolveMethodBind('Environment', 'get_fog_depth_curve', 1740695150);

  double getFogDepthCurve() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_fog_depth_curve, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_fog_depth_begin =
      resolveMethodBind('Environment', 'set_fog_depth_begin', 373806689);

  void setFogDepthBegin(double begin) {
    final arg0 = malloc<Double>()..value = begin;
    try {
      ptrcallVoid(_mb_set_fog_depth_begin, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_fog_depth_begin =
      resolveMethodBind('Environment', 'get_fog_depth_begin', 1740695150);

  double getFogDepthBegin() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_fog_depth_begin, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_fog_depth_end =
      resolveMethodBind('Environment', 'set_fog_depth_end', 373806689);

  void setFogDepthEnd(double end) {
    final arg0 = malloc<Double>()..value = end;
    try {
      ptrcallVoid(_mb_set_fog_depth_end, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_fog_depth_end =
      resolveMethodBind('Environment', 'get_fog_depth_end', 1740695150);

  double getFogDepthEnd() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_fog_depth_end, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_volumetric_fog_enabled =
      resolveMethodBind('Environment', 'set_volumetric_fog_enabled', 2586408642);

  void setVolumetricFogEnabled(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_volumetric_fog_enabled, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_volumetric_fog_enabled =
      resolveMethodBind('Environment', 'is_volumetric_fog_enabled', 36873697);

  bool isVolumetricFogEnabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_volumetric_fog_enabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_volumetric_fog_emission =
      resolveMethodBind('Environment', 'set_volumetric_fog_emission', 2920490490);

  void setVolumetricFogEmission(Color color) {
    final arg0 = malloc<Uint8>(Color.nativeSize);
    color.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_volumetric_fog_emission, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_volumetric_fog_emission =
      resolveMethodBind('Environment', 'get_volumetric_fog_emission', 3444240500);

  Color getVolumetricFogEmission() {
    try {
      final ret = malloc<Uint8>(Color.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_volumetric_fog_emission, nativePtr, [], ret.cast());
        return Color.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_volumetric_fog_albedo =
      resolveMethodBind('Environment', 'set_volumetric_fog_albedo', 2920490490);

  void setVolumetricFogAlbedo(Color color) {
    final arg0 = malloc<Uint8>(Color.nativeSize);
    color.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_volumetric_fog_albedo, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_volumetric_fog_albedo =
      resolveMethodBind('Environment', 'get_volumetric_fog_albedo', 3444240500);

  Color getVolumetricFogAlbedo() {
    try {
      final ret = malloc<Uint8>(Color.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_volumetric_fog_albedo, nativePtr, [], ret.cast());
        return Color.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_volumetric_fog_density =
      resolveMethodBind('Environment', 'set_volumetric_fog_density', 373806689);

  void setVolumetricFogDensity(double density) {
    final arg0 = malloc<Double>()..value = density;
    try {
      ptrcallVoid(_mb_set_volumetric_fog_density, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_volumetric_fog_density =
      resolveMethodBind('Environment', 'get_volumetric_fog_density', 1740695150);

  double getVolumetricFogDensity() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_volumetric_fog_density, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_volumetric_fog_emission_energy =
      resolveMethodBind('Environment', 'set_volumetric_fog_emission_energy', 373806689);

  void setVolumetricFogEmissionEnergy(double begin) {
    final arg0 = malloc<Double>()..value = begin;
    try {
      ptrcallVoid(_mb_set_volumetric_fog_emission_energy, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_volumetric_fog_emission_energy =
      resolveMethodBind('Environment', 'get_volumetric_fog_emission_energy', 1740695150);

  double getVolumetricFogEmissionEnergy() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_volumetric_fog_emission_energy, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_volumetric_fog_anisotropy =
      resolveMethodBind('Environment', 'set_volumetric_fog_anisotropy', 373806689);

  void setVolumetricFogAnisotropy(double anisotropy) {
    final arg0 = malloc<Double>()..value = anisotropy;
    try {
      ptrcallVoid(_mb_set_volumetric_fog_anisotropy, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_volumetric_fog_anisotropy =
      resolveMethodBind('Environment', 'get_volumetric_fog_anisotropy', 1740695150);

  double getVolumetricFogAnisotropy() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_volumetric_fog_anisotropy, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_volumetric_fog_length =
      resolveMethodBind('Environment', 'set_volumetric_fog_length', 373806689);

  void setVolumetricFogLength(double length) {
    final arg0 = malloc<Double>()..value = length;
    try {
      ptrcallVoid(_mb_set_volumetric_fog_length, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_volumetric_fog_length =
      resolveMethodBind('Environment', 'get_volumetric_fog_length', 1740695150);

  double getVolumetricFogLength() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_volumetric_fog_length, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_volumetric_fog_detail_spread =
      resolveMethodBind('Environment', 'set_volumetric_fog_detail_spread', 373806689);

  void setVolumetricFogDetailSpread(double detailSpread) {
    final arg0 = malloc<Double>()..value = detailSpread;
    try {
      ptrcallVoid(_mb_set_volumetric_fog_detail_spread, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_volumetric_fog_detail_spread =
      resolveMethodBind('Environment', 'get_volumetric_fog_detail_spread', 1740695150);

  double getVolumetricFogDetailSpread() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_volumetric_fog_detail_spread, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_volumetric_fog_gi_inject =
      resolveMethodBind('Environment', 'set_volumetric_fog_gi_inject', 373806689);

  void setVolumetricFogGiInject(double giInject) {
    final arg0 = malloc<Double>()..value = giInject;
    try {
      ptrcallVoid(_mb_set_volumetric_fog_gi_inject, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_volumetric_fog_gi_inject =
      resolveMethodBind('Environment', 'get_volumetric_fog_gi_inject', 1740695150);

  double getVolumetricFogGiInject() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_volumetric_fog_gi_inject, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_volumetric_fog_ambient_inject =
      resolveMethodBind('Environment', 'set_volumetric_fog_ambient_inject', 373806689);

  void setVolumetricFogAmbientInject(double enabled) {
    final arg0 = malloc<Double>()..value = enabled;
    try {
      ptrcallVoid(_mb_set_volumetric_fog_ambient_inject, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_volumetric_fog_ambient_inject =
      resolveMethodBind('Environment', 'get_volumetric_fog_ambient_inject', 1740695150);

  double getVolumetricFogAmbientInject() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_volumetric_fog_ambient_inject, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_volumetric_fog_sky_affect =
      resolveMethodBind('Environment', 'set_volumetric_fog_sky_affect', 373806689);

  void setVolumetricFogSkyAffect(double skyAffect) {
    final arg0 = malloc<Double>()..value = skyAffect;
    try {
      ptrcallVoid(_mb_set_volumetric_fog_sky_affect, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_volumetric_fog_sky_affect =
      resolveMethodBind('Environment', 'get_volumetric_fog_sky_affect', 1740695150);

  double getVolumetricFogSkyAffect() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_volumetric_fog_sky_affect, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_volumetric_fog_temporal_reprojection_enabled =
      resolveMethodBind('Environment', 'set_volumetric_fog_temporal_reprojection_enabled', 2586408642);

  void setVolumetricFogTemporalReprojectionEnabled(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_volumetric_fog_temporal_reprojection_enabled, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_volumetric_fog_temporal_reprojection_enabled =
      resolveMethodBind('Environment', 'is_volumetric_fog_temporal_reprojection_enabled', 36873697);

  bool isVolumetricFogTemporalReprojectionEnabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_volumetric_fog_temporal_reprojection_enabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_volumetric_fog_temporal_reprojection_amount =
      resolveMethodBind('Environment', 'set_volumetric_fog_temporal_reprojection_amount', 373806689);

  void setVolumetricFogTemporalReprojectionAmount(double temporalReprojectionAmount) {
    final arg0 = malloc<Double>()..value = temporalReprojectionAmount;
    try {
      ptrcallVoid(_mb_set_volumetric_fog_temporal_reprojection_amount, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_volumetric_fog_temporal_reprojection_amount =
      resolveMethodBind('Environment', 'get_volumetric_fog_temporal_reprojection_amount', 1740695150);

  double getVolumetricFogTemporalReprojectionAmount() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_volumetric_fog_temporal_reprojection_amount, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_adjustment_enabled =
      resolveMethodBind('Environment', 'set_adjustment_enabled', 2586408642);

  void setAdjustmentEnabled(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_adjustment_enabled, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_adjustment_enabled =
      resolveMethodBind('Environment', 'is_adjustment_enabled', 36873697);

  bool isAdjustmentEnabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_adjustment_enabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_adjustment_brightness =
      resolveMethodBind('Environment', 'set_adjustment_brightness', 373806689);

  void setAdjustmentBrightness(double brightness) {
    final arg0 = malloc<Double>()..value = brightness;
    try {
      ptrcallVoid(_mb_set_adjustment_brightness, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_adjustment_brightness =
      resolveMethodBind('Environment', 'get_adjustment_brightness', 1740695150);

  double getAdjustmentBrightness() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_adjustment_brightness, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_adjustment_contrast =
      resolveMethodBind('Environment', 'set_adjustment_contrast', 373806689);

  void setAdjustmentContrast(double contrast) {
    final arg0 = malloc<Double>()..value = contrast;
    try {
      ptrcallVoid(_mb_set_adjustment_contrast, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_adjustment_contrast =
      resolveMethodBind('Environment', 'get_adjustment_contrast', 1740695150);

  double getAdjustmentContrast() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_adjustment_contrast, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_adjustment_saturation =
      resolveMethodBind('Environment', 'set_adjustment_saturation', 373806689);

  void setAdjustmentSaturation(double saturation) {
    final arg0 = malloc<Double>()..value = saturation;
    try {
      ptrcallVoid(_mb_set_adjustment_saturation, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_adjustment_saturation =
      resolveMethodBind('Environment', 'get_adjustment_saturation', 1740695150);

  double getAdjustmentSaturation() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_adjustment_saturation, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_adjustment_color_correction =
      resolveMethodBind('Environment', 'set_adjustment_color_correction', 1790811099);

  void setAdjustmentColorCorrection(Texture colorCorrection) {
    final arg0 = malloc<Pointer<Void>>()..value = colorCorrection.nativePtr;
    try {
      ptrcallVoid(_mb_set_adjustment_color_correction, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_adjustment_color_correction =
      resolveMethodBind('Environment', 'get_adjustment_color_correction', 4037048985);

  Texture? getAdjustmentColorCorrection() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_adjustment_color_correction, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Texture(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
