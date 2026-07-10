// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class OpenXRCompositionLayer extends Node3D {
  OpenXRCompositionLayer(super.nativePtr);

  static final Pointer<Void> _mb_set_layer_viewport =
      resolveMethodBind('OpenXRCompositionLayer', 'set_layer_viewport', 3888077664);

  void setLayerViewport(SubViewport viewport) {
    final arg0 = malloc<Pointer<Void>>()..value = viewport.nativePtr;
    try {
      ptrcallVoid(_mb_set_layer_viewport, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_layer_viewport =
      resolveMethodBind('OpenXRCompositionLayer', 'get_layer_viewport', 3750751911);

  SubViewport? getLayerViewport() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_layer_viewport, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : SubViewport(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_use_android_surface =
      resolveMethodBind('OpenXRCompositionLayer', 'set_use_android_surface', 2586408642);

  void setUseAndroidSurface(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_use_android_surface, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_use_android_surface =
      resolveMethodBind('OpenXRCompositionLayer', 'get_use_android_surface', 36873697);

  bool getUseAndroidSurface() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_use_android_surface, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_android_surface_size =
      resolveMethodBind('OpenXRCompositionLayer', 'set_android_surface_size', 1130785943);

  void setAndroidSurfaceSize(Vector2i size) {
    final arg0 = malloc<Uint8>(Vector2i.nativeSize);
    size.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_android_surface_size, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_android_surface_size =
      resolveMethodBind('OpenXRCompositionLayer', 'get_android_surface_size', 3690982128);

  Vector2i getAndroidSurfaceSize() {
    try {
      final ret = malloc<Uint8>(Vector2i.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_android_surface_size, nativePtr, [], ret.cast());
        return Vector2i.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_enable_hole_punch =
      resolveMethodBind('OpenXRCompositionLayer', 'set_enable_hole_punch', 2586408642);

  void setEnableHolePunch(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_enable_hole_punch, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_enable_hole_punch =
      resolveMethodBind('OpenXRCompositionLayer', 'get_enable_hole_punch', 36873697);

  bool getEnableHolePunch() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_enable_hole_punch, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_sort_order =
      resolveMethodBind('OpenXRCompositionLayer', 'set_sort_order', 1286410249);

  void setSortOrder(int order) {
    final arg0 = malloc<Int64>()..value = order;
    try {
      ptrcallVoid(_mb_set_sort_order, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_sort_order =
      resolveMethodBind('OpenXRCompositionLayer', 'get_sort_order', 3905245786);

  int getSortOrder() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_sort_order, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_alpha_blend =
      resolveMethodBind('OpenXRCompositionLayer', 'set_alpha_blend', 2586408642);

  void setAlphaBlend(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_alpha_blend, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_alpha_blend =
      resolveMethodBind('OpenXRCompositionLayer', 'get_alpha_blend', 36873697);

  bool getAlphaBlend() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_alpha_blend, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_android_surface =
      resolveMethodBind('OpenXRCompositionLayer', 'get_android_surface', 3277089691);

  JavaObject? getAndroidSurface() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_android_surface, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : JavaObject(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_is_natively_supported =
      resolveMethodBind('OpenXRCompositionLayer', 'is_natively_supported', 36873697);

  bool isNativelySupported() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_natively_supported, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_is_protected_content =
      resolveMethodBind('OpenXRCompositionLayer', 'is_protected_content', 36873697);

  bool isProtectedContent() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_protected_content, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_protected_content =
      resolveMethodBind('OpenXRCompositionLayer', 'set_protected_content', 2586408642);

  void setProtectedContent(bool protectedContent) {
    final arg0 = malloc<Uint8>()..value = protectedContent ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_protected_content, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_min_filter =
      resolveMethodBind('OpenXRCompositionLayer', 'set_min_filter', 3653437593);

  void setMinFilter(int mode) {
    final arg0 = malloc<Int64>()..value = mode;
    try {
      ptrcallVoid(_mb_set_min_filter, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_min_filter =
      resolveMethodBind('OpenXRCompositionLayer', 'get_min_filter', 845677307);

  int getMinFilter() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_min_filter, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_mag_filter =
      resolveMethodBind('OpenXRCompositionLayer', 'set_mag_filter', 3653437593);

  void setMagFilter(int mode) {
    final arg0 = malloc<Int64>()..value = mode;
    try {
      ptrcallVoid(_mb_set_mag_filter, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_mag_filter =
      resolveMethodBind('OpenXRCompositionLayer', 'get_mag_filter', 845677307);

  int getMagFilter() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_mag_filter, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_mipmap_mode =
      resolveMethodBind('OpenXRCompositionLayer', 'set_mipmap_mode', 3271133183);

  void setMipmapMode(int mode) {
    final arg0 = malloc<Int64>()..value = mode;
    try {
      ptrcallVoid(_mb_set_mipmap_mode, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_mipmap_mode =
      resolveMethodBind('OpenXRCompositionLayer', 'get_mipmap_mode', 3962697095);

  int getMipmapMode() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_mipmap_mode, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_horizontal_wrap =
      resolveMethodBind('OpenXRCompositionLayer', 'set_horizontal_wrap', 15634990);

  void setHorizontalWrap(int mode) {
    final arg0 = malloc<Int64>()..value = mode;
    try {
      ptrcallVoid(_mb_set_horizontal_wrap, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_horizontal_wrap =
      resolveMethodBind('OpenXRCompositionLayer', 'get_horizontal_wrap', 2798816834);

  int getHorizontalWrap() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_horizontal_wrap, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_vertical_wrap =
      resolveMethodBind('OpenXRCompositionLayer', 'set_vertical_wrap', 15634990);

  void setVerticalWrap(int mode) {
    final arg0 = malloc<Int64>()..value = mode;
    try {
      ptrcallVoid(_mb_set_vertical_wrap, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_vertical_wrap =
      resolveMethodBind('OpenXRCompositionLayer', 'get_vertical_wrap', 2798816834);

  int getVerticalWrap() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_vertical_wrap, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_red_swizzle =
      resolveMethodBind('OpenXRCompositionLayer', 'set_red_swizzle', 741598951);

  void setRedSwizzle(int mode) {
    final arg0 = malloc<Int64>()..value = mode;
    try {
      ptrcallVoid(_mb_set_red_swizzle, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_red_swizzle =
      resolveMethodBind('OpenXRCompositionLayer', 'get_red_swizzle', 2334776767);

  int getRedSwizzle() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_red_swizzle, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_green_swizzle =
      resolveMethodBind('OpenXRCompositionLayer', 'set_green_swizzle', 741598951);

  void setGreenSwizzle(int mode) {
    final arg0 = malloc<Int64>()..value = mode;
    try {
      ptrcallVoid(_mb_set_green_swizzle, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_green_swizzle =
      resolveMethodBind('OpenXRCompositionLayer', 'get_green_swizzle', 2334776767);

  int getGreenSwizzle() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_green_swizzle, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_blue_swizzle =
      resolveMethodBind('OpenXRCompositionLayer', 'set_blue_swizzle', 741598951);

  void setBlueSwizzle(int mode) {
    final arg0 = malloc<Int64>()..value = mode;
    try {
      ptrcallVoid(_mb_set_blue_swizzle, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_blue_swizzle =
      resolveMethodBind('OpenXRCompositionLayer', 'get_blue_swizzle', 2334776767);

  int getBlueSwizzle() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_blue_swizzle, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_alpha_swizzle =
      resolveMethodBind('OpenXRCompositionLayer', 'set_alpha_swizzle', 741598951);

  void setAlphaSwizzle(int mode) {
    final arg0 = malloc<Int64>()..value = mode;
    try {
      ptrcallVoid(_mb_set_alpha_swizzle, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_alpha_swizzle =
      resolveMethodBind('OpenXRCompositionLayer', 'get_alpha_swizzle', 2334776767);

  int getAlphaSwizzle() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_alpha_swizzle, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_max_anisotropy =
      resolveMethodBind('OpenXRCompositionLayer', 'set_max_anisotropy', 373806689);

  void setMaxAnisotropy(double value) {
    final arg0 = malloc<Double>()..value = value;
    try {
      ptrcallVoid(_mb_set_max_anisotropy, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_max_anisotropy =
      resolveMethodBind('OpenXRCompositionLayer', 'get_max_anisotropy', 1740695150);

  double getMaxAnisotropy() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_max_anisotropy, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_border_color =
      resolveMethodBind('OpenXRCompositionLayer', 'set_border_color', 2920490490);

  void setBorderColor(Color color) {
    final arg0 = malloc<Uint8>(Color.nativeSize);
    color.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_border_color, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_border_color =
      resolveMethodBind('OpenXRCompositionLayer', 'get_border_color', 3444240500);

  Color getBorderColor() {
    try {
      final ret = malloc<Uint8>(Color.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_border_color, nativePtr, [], ret.cast());
        return Color.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_eye_visibility =
      resolveMethodBind('OpenXRCompositionLayer', 'set_eye_visibility', 156391336);

  void setEyeVisibility(int eyeVisibility) {
    final arg0 = malloc<Int64>()..value = eyeVisibility;
    try {
      ptrcallVoid(_mb_set_eye_visibility, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_eye_visibility =
      resolveMethodBind('OpenXRCompositionLayer', 'get_eye_visibility', 467669000);

  int getEyeVisibility() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_eye_visibility, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_intersects_ray =
      resolveMethodBind('OpenXRCompositionLayer', 'intersects_ray', 1091262597);

  Vector2 intersectsRay(Vector3 origin, Vector3 direction) {
    final arg0 = malloc<Uint8>(Vector3.nativeSize);
    origin.writeTo(arg0, 0);
    final arg1 = malloc<Uint8>(Vector3.nativeSize);
    direction.writeTo(arg1, 0);
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_intersects_ray, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

}
