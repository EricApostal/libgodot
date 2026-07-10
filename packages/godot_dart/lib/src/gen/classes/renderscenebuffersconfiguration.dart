// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class RenderSceneBuffersConfiguration extends RefCounted {
  RenderSceneBuffersConfiguration(super.nativePtr);

  /// Constructs a brand-new engine-owned RenderSceneBuffersConfiguration instance
  /// (via classdb_construct_object3), not an existing one.
  factory RenderSceneBuffersConfiguration.create() {
    return RenderSceneBuffersConfiguration(resolveClassConstructor('RenderSceneBuffersConfiguration'));
  }

  // Skipped get_render_target(): unsupported return type "RID".
  // Skipped set_render_target(): an argument type is unsupported.
  static final Pointer<Void> _mb_get_internal_size =
      resolveMethodBind('RenderSceneBuffersConfiguration', 'get_internal_size', 3690982128);

  Vector2i getInternalSize() {
    try {
      final ret = malloc<Uint8>(Vector2i.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_internal_size, nativePtr, [], ret.cast());
        return Vector2i.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_internal_size =
      resolveMethodBind('RenderSceneBuffersConfiguration', 'set_internal_size', 1130785943);

  void setInternalSize(Vector2i internalSize) {
    final arg0 = malloc<Uint8>(Vector2i.nativeSize);
    internalSize.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_internal_size, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_target_size =
      resolveMethodBind('RenderSceneBuffersConfiguration', 'get_target_size', 3690982128);

  Vector2i getTargetSize() {
    try {
      final ret = malloc<Uint8>(Vector2i.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_target_size, nativePtr, [], ret.cast());
        return Vector2i.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_target_size =
      resolveMethodBind('RenderSceneBuffersConfiguration', 'set_target_size', 1130785943);

  void setTargetSize(Vector2i targetSize) {
    final arg0 = malloc<Uint8>(Vector2i.nativeSize);
    targetSize.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_target_size, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_view_count =
      resolveMethodBind('RenderSceneBuffersConfiguration', 'get_view_count', 3905245786);

  int getViewCount() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_view_count, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_view_count =
      resolveMethodBind('RenderSceneBuffersConfiguration', 'set_view_count', 1286410249);

  void setViewCount(int viewCount) {
    final arg0 = malloc<Int64>()..value = viewCount;
    try {
      ptrcallVoid(_mb_set_view_count, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_scaling_3d_mode =
      resolveMethodBind('RenderSceneBuffersConfiguration', 'get_scaling_3d_mode', 976778074);

  int getScaling3dMode() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_scaling_3d_mode, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_scaling_3d_mode =
      resolveMethodBind('RenderSceneBuffersConfiguration', 'set_scaling_3d_mode', 447477857);

  void setScaling3dMode(int scaling3dMode) {
    final arg0 = malloc<Int64>()..value = scaling3dMode;
    try {
      ptrcallVoid(_mb_set_scaling_3d_mode, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_msaa_3d =
      resolveMethodBind('RenderSceneBuffersConfiguration', 'get_msaa_3d', 3109158617);

  int getMsaa3d() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_msaa_3d, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_msaa_3d =
      resolveMethodBind('RenderSceneBuffersConfiguration', 'set_msaa_3d', 3952630748);

  void setMsaa3d(int msaa3d) {
    final arg0 = malloc<Int64>()..value = msaa3d;
    try {
      ptrcallVoid(_mb_set_msaa_3d, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_screen_space_aa =
      resolveMethodBind('RenderSceneBuffersConfiguration', 'get_screen_space_aa', 641513172);

  int getScreenSpaceAa() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_screen_space_aa, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_screen_space_aa =
      resolveMethodBind('RenderSceneBuffersConfiguration', 'set_screen_space_aa', 139543108);

  void setScreenSpaceAa(int screenSpaceAa) {
    final arg0 = malloc<Int64>()..value = screenSpaceAa;
    try {
      ptrcallVoid(_mb_set_screen_space_aa, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_fsr_sharpness =
      resolveMethodBind('RenderSceneBuffersConfiguration', 'get_fsr_sharpness', 1740695150);

  double getFsrSharpness() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_fsr_sharpness, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_fsr_sharpness =
      resolveMethodBind('RenderSceneBuffersConfiguration', 'set_fsr_sharpness', 373806689);

  void setFsrSharpness(double fsrSharpness) {
    final arg0 = malloc<Double>()..value = fsrSharpness;
    try {
      ptrcallVoid(_mb_set_fsr_sharpness, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_texture_mipmap_bias =
      resolveMethodBind('RenderSceneBuffersConfiguration', 'get_texture_mipmap_bias', 1740695150);

  double getTextureMipmapBias() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_texture_mipmap_bias, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_texture_mipmap_bias =
      resolveMethodBind('RenderSceneBuffersConfiguration', 'set_texture_mipmap_bias', 373806689);

  void setTextureMipmapBias(double textureMipmapBias) {
    final arg0 = malloc<Double>()..value = textureMipmapBias;
    try {
      ptrcallVoid(_mb_set_texture_mipmap_bias, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_anisotropic_filtering_level =
      resolveMethodBind('RenderSceneBuffersConfiguration', 'get_anisotropic_filtering_level', 1617414954);

  int getAnisotropicFilteringLevel() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_anisotropic_filtering_level, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_anisotropic_filtering_level =
      resolveMethodBind('RenderSceneBuffersConfiguration', 'set_anisotropic_filtering_level', 2559658741);

  void setAnisotropicFilteringLevel(int anisotropicFilteringLevel) {
    final arg0 = malloc<Int64>()..value = anisotropicFilteringLevel;
    try {
      ptrcallVoid(_mb_set_anisotropic_filtering_level, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

}
