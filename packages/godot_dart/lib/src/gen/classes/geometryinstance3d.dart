// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class GeometryInstance3D extends VisualInstance3D {
  GeometryInstance3D(super.nativePtr);

  static final Pointer<Void> _mb_set_material_override =
      resolveMethodBind('GeometryInstance3D', 'set_material_override', 2757459619);

  void setMaterialOverride(Material material) {
    final arg0 = malloc<Pointer<Void>>()..value = material.nativePtr;
    try {
      ptrcallVoid(_mb_set_material_override, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_material_override =
      resolveMethodBind('GeometryInstance3D', 'get_material_override', 5934680);

  Material? getMaterialOverride() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_material_override, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Material(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_material_overlay =
      resolveMethodBind('GeometryInstance3D', 'set_material_overlay', 2757459619);

  void setMaterialOverlay(Material material) {
    final arg0 = malloc<Pointer<Void>>()..value = material.nativePtr;
    try {
      ptrcallVoid(_mb_set_material_overlay, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_material_overlay =
      resolveMethodBind('GeometryInstance3D', 'get_material_overlay', 5934680);

  Material? getMaterialOverlay() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_material_overlay, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Material(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_cast_shadows_setting =
      resolveMethodBind('GeometryInstance3D', 'set_cast_shadows_setting', 856677339);

  void setCastShadowsSetting(int shadowCastingSetting) {
    final arg0 = malloc<Int64>()..value = shadowCastingSetting;
    try {
      ptrcallVoid(_mb_set_cast_shadows_setting, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_cast_shadows_setting =
      resolveMethodBind('GeometryInstance3D', 'get_cast_shadows_setting', 3383019359);

  int getCastShadowsSetting() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_cast_shadows_setting, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_lod_bias =
      resolveMethodBind('GeometryInstance3D', 'set_lod_bias', 373806689);

  void setLodBias(double bias) {
    final arg0 = malloc<Double>()..value = bias;
    try {
      ptrcallVoid(_mb_set_lod_bias, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_lod_bias =
      resolveMethodBind('GeometryInstance3D', 'get_lod_bias', 1740695150);

  double getLodBias() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_lod_bias, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_transparency =
      resolveMethodBind('GeometryInstance3D', 'set_transparency', 373806689);

  void setTransparency(double transparency) {
    final arg0 = malloc<Double>()..value = transparency;
    try {
      ptrcallVoid(_mb_set_transparency, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_transparency =
      resolveMethodBind('GeometryInstance3D', 'get_transparency', 1740695150);

  double getTransparency() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_transparency, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_visibility_range_end_margin =
      resolveMethodBind('GeometryInstance3D', 'set_visibility_range_end_margin', 373806689);

  void setVisibilityRangeEndMargin(double distance) {
    final arg0 = malloc<Double>()..value = distance;
    try {
      ptrcallVoid(_mb_set_visibility_range_end_margin, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_visibility_range_end_margin =
      resolveMethodBind('GeometryInstance3D', 'get_visibility_range_end_margin', 1740695150);

  double getVisibilityRangeEndMargin() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_visibility_range_end_margin, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_visibility_range_end =
      resolveMethodBind('GeometryInstance3D', 'set_visibility_range_end', 373806689);

  void setVisibilityRangeEnd(double distance) {
    final arg0 = malloc<Double>()..value = distance;
    try {
      ptrcallVoid(_mb_set_visibility_range_end, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_visibility_range_end =
      resolveMethodBind('GeometryInstance3D', 'get_visibility_range_end', 1740695150);

  double getVisibilityRangeEnd() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_visibility_range_end, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_visibility_range_begin_margin =
      resolveMethodBind('GeometryInstance3D', 'set_visibility_range_begin_margin', 373806689);

  void setVisibilityRangeBeginMargin(double distance) {
    final arg0 = malloc<Double>()..value = distance;
    try {
      ptrcallVoid(_mb_set_visibility_range_begin_margin, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_visibility_range_begin_margin =
      resolveMethodBind('GeometryInstance3D', 'get_visibility_range_begin_margin', 1740695150);

  double getVisibilityRangeBeginMargin() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_visibility_range_begin_margin, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_visibility_range_begin =
      resolveMethodBind('GeometryInstance3D', 'set_visibility_range_begin', 373806689);

  void setVisibilityRangeBegin(double distance) {
    final arg0 = malloc<Double>()..value = distance;
    try {
      ptrcallVoid(_mb_set_visibility_range_begin, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_visibility_range_begin =
      resolveMethodBind('GeometryInstance3D', 'get_visibility_range_begin', 1740695150);

  double getVisibilityRangeBegin() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_visibility_range_begin, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_visibility_range_fade_mode =
      resolveMethodBind('GeometryInstance3D', 'set_visibility_range_fade_mode', 1440117808);

  void setVisibilityRangeFadeMode(int mode) {
    final arg0 = malloc<Int64>()..value = mode;
    try {
      ptrcallVoid(_mb_set_visibility_range_fade_mode, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_visibility_range_fade_mode =
      resolveMethodBind('GeometryInstance3D', 'get_visibility_range_fade_mode', 2067221882);

  int getVisibilityRangeFadeMode() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_visibility_range_fade_mode, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  // Skipped set_instance_shader_parameter(): an argument type is unsupported.
  // Skipped get_instance_shader_parameter(): unsupported return type "Variant".
  static final Pointer<Void> _mb_set_extra_cull_margin =
      resolveMethodBind('GeometryInstance3D', 'set_extra_cull_margin', 373806689);

  void setExtraCullMargin(double margin) {
    final arg0 = malloc<Double>()..value = margin;
    try {
      ptrcallVoid(_mb_set_extra_cull_margin, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_extra_cull_margin =
      resolveMethodBind('GeometryInstance3D', 'get_extra_cull_margin', 1740695150);

  double getExtraCullMargin() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_extra_cull_margin, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_lightmap_texel_scale =
      resolveMethodBind('GeometryInstance3D', 'set_lightmap_texel_scale', 373806689);

  void setLightmapTexelScale(double scale) {
    final arg0 = malloc<Double>()..value = scale;
    try {
      ptrcallVoid(_mb_set_lightmap_texel_scale, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_lightmap_texel_scale =
      resolveMethodBind('GeometryInstance3D', 'get_lightmap_texel_scale', 1740695150);

  double getLightmapTexelScale() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_lightmap_texel_scale, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_lightmap_scale =
      resolveMethodBind('GeometryInstance3D', 'set_lightmap_scale', 2462696582);

  void setLightmapScale(int scale) {
    final arg0 = malloc<Int64>()..value = scale;
    try {
      ptrcallVoid(_mb_set_lightmap_scale, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_lightmap_scale =
      resolveMethodBind('GeometryInstance3D', 'get_lightmap_scale', 798767852);

  int getLightmapScale() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_lightmap_scale, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_gi_mode =
      resolveMethodBind('GeometryInstance3D', 'set_gi_mode', 2548557163);

  void setGiMode(int mode) {
    final arg0 = malloc<Int64>()..value = mode;
    try {
      ptrcallVoid(_mb_set_gi_mode, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_gi_mode =
      resolveMethodBind('GeometryInstance3D', 'get_gi_mode', 2188566509);

  int getGiMode() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_gi_mode, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_ignore_occlusion_culling =
      resolveMethodBind('GeometryInstance3D', 'set_ignore_occlusion_culling', 2586408642);

  void setIgnoreOcclusionCulling(bool ignoreCulling) {
    final arg0 = malloc<Uint8>()..value = ignoreCulling ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_ignore_occlusion_culling, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_ignoring_occlusion_culling =
      resolveMethodBind('GeometryInstance3D', 'is_ignoring_occlusion_culling', 2240911060);

  bool isIgnoringOcclusionCulling() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_ignoring_occlusion_culling, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_custom_aabb =
      resolveMethodBind('GeometryInstance3D', 'set_custom_aabb', 259215842);

  void setCustomAabb(AABB aabb) {
    final arg0 = malloc<Uint8>(AABB.nativeSize);
    aabb.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_custom_aabb, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_custom_aabb =
      resolveMethodBind('GeometryInstance3D', 'get_custom_aabb', 1068685055);

  AABB getCustomAabb() {
    try {
      final ret = malloc<Uint8>(AABB.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_custom_aabb, nativePtr, [], ret.cast());
        return AABB.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
