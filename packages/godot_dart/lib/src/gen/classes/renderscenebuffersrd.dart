// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class RenderSceneBuffersRD extends RenderSceneBuffers {
  RenderSceneBuffersRD(super.nativePtr);

  static final Pointer<Void> _mb_has_texture =
      resolveMethodBind('RenderSceneBuffersRD', 'has_texture', 471820014);

  bool hasTexture(String context, String name) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), context);
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg1.cast(), name);
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_has_texture, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
      BuiltinMarshal.destroyStringName(arg1.cast());
      malloc.free(arg1);
    }
  }

  // Skipped create_texture(): unsupported return type "RID".
  // Skipped create_texture_from_format(): unsupported return type "RID".
  // Skipped create_texture_view(): unsupported return type "RID".
  // Skipped get_texture(): unsupported return type "RID".
  static final Pointer<Void> _mb_get_texture_format =
      resolveMethodBind('RenderSceneBuffersRD', 'get_texture_format', 371461758);

  RDTextureFormat? getTextureFormat(String context, String name) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), context);
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg1.cast(), name);
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_texture_format, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : RDTextureFormat(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
      BuiltinMarshal.destroyStringName(arg1.cast());
      malloc.free(arg1);
    }
  }

  // Skipped get_texture_slice(): unsupported return type "RID".
  // Skipped get_texture_slice_view(): unsupported return type "RID".
  static final Pointer<Void> _mb_get_texture_slice_size =
      resolveMethodBind('RenderSceneBuffersRD', 'get_texture_slice_size', 2617625368);

  Vector2i getTextureSliceSize(String context, String name, int mipmap) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), context);
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg1.cast(), name);
    final arg2 = malloc<Int64>()..value = mipmap;
    try {
      final ret = malloc<Uint8>(Vector2i.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_texture_slice_size, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()], ret.cast());
        return Vector2i.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
      BuiltinMarshal.destroyStringName(arg1.cast());
      malloc.free(arg1);
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_clear_context =
      resolveMethodBind('RenderSceneBuffersRD', 'clear_context', 3304788590);

  void clearContext(String context) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), context);
    try {
      ptrcallVoid(_mb_clear_context, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
    }
  }

  // Skipped get_color_texture(): unsupported return type "RID".
  // Skipped get_color_layer(): unsupported return type "RID".
  // Skipped get_depth_texture(): unsupported return type "RID".
  // Skipped get_depth_layer(): unsupported return type "RID".
  // Skipped get_velocity_texture(): unsupported return type "RID".
  // Skipped get_velocity_layer(): unsupported return type "RID".
  // Skipped get_render_target(): unsupported return type "RID".
  static final Pointer<Void> _mb_get_view_count =
      resolveMethodBind('RenderSceneBuffersRD', 'get_view_count', 3905245786);

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

  static final Pointer<Void> _mb_get_internal_size =
      resolveMethodBind('RenderSceneBuffersRD', 'get_internal_size', 3690982128);

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

  static final Pointer<Void> _mb_get_target_size =
      resolveMethodBind('RenderSceneBuffersRD', 'get_target_size', 3690982128);

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

  static final Pointer<Void> _mb_get_scaling_3d_mode =
      resolveMethodBind('RenderSceneBuffersRD', 'get_scaling_3d_mode', 976778074);

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

  static final Pointer<Void> _mb_get_fsr_sharpness =
      resolveMethodBind('RenderSceneBuffersRD', 'get_fsr_sharpness', 1740695150);

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

  static final Pointer<Void> _mb_get_msaa_3d =
      resolveMethodBind('RenderSceneBuffersRD', 'get_msaa_3d', 3109158617);

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

  static final Pointer<Void> _mb_get_texture_samples =
      resolveMethodBind('RenderSceneBuffersRD', 'get_texture_samples', 407791724);

  int getTextureSamples() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_texture_samples, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_screen_space_aa =
      resolveMethodBind('RenderSceneBuffersRD', 'get_screen_space_aa', 641513172);

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

  static final Pointer<Void> _mb_get_use_taa =
      resolveMethodBind('RenderSceneBuffersRD', 'get_use_taa', 36873697);

  bool getUseTaa() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_use_taa, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_use_debanding =
      resolveMethodBind('RenderSceneBuffersRD', 'get_use_debanding', 36873697);

  bool getUseDebanding() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_use_debanding, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
