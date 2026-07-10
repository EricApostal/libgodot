// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class ReflectionProbe extends VisualInstance3D {
  ReflectionProbe(super.nativePtr);

  static final Pointer<Void> _mb_set_intensity =
      resolveMethodBind('ReflectionProbe', 'set_intensity', 373806689);

  void setIntensity(double intensity) {
    final arg0 = malloc<Double>()..value = intensity;
    try {
      ptrcallVoid(_mb_set_intensity, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_intensity =
      resolveMethodBind('ReflectionProbe', 'get_intensity', 1740695150);

  double getIntensity() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_intensity, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_blend_distance =
      resolveMethodBind('ReflectionProbe', 'set_blend_distance', 373806689);

  void setBlendDistance(double blendDistance) {
    final arg0 = malloc<Double>()..value = blendDistance;
    try {
      ptrcallVoid(_mb_set_blend_distance, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_blend_distance =
      resolveMethodBind('ReflectionProbe', 'get_blend_distance', 1740695150);

  double getBlendDistance() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_blend_distance, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_ambient_mode =
      resolveMethodBind('ReflectionProbe', 'set_ambient_mode', 1748981278);

  void setAmbientMode(int ambient) {
    final arg0 = malloc<Int64>()..value = ambient;
    try {
      ptrcallVoid(_mb_set_ambient_mode, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_ambient_mode =
      resolveMethodBind('ReflectionProbe', 'get_ambient_mode', 1014607621);

  int getAmbientMode() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_ambient_mode, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_ambient_color =
      resolveMethodBind('ReflectionProbe', 'set_ambient_color', 2920490490);

  void setAmbientColor(Color ambient) {
    final arg0 = malloc<Uint8>(Color.nativeSize);
    ambient.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_ambient_color, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_ambient_color =
      resolveMethodBind('ReflectionProbe', 'get_ambient_color', 3444240500);

  Color getAmbientColor() {
    try {
      final ret = malloc<Uint8>(Color.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_ambient_color, nativePtr, [], ret.cast());
        return Color.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_ambient_color_energy =
      resolveMethodBind('ReflectionProbe', 'set_ambient_color_energy', 373806689);

  void setAmbientColorEnergy(double ambientEnergy) {
    final arg0 = malloc<Double>()..value = ambientEnergy;
    try {
      ptrcallVoid(_mb_set_ambient_color_energy, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_ambient_color_energy =
      resolveMethodBind('ReflectionProbe', 'get_ambient_color_energy', 1740695150);

  double getAmbientColorEnergy() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_ambient_color_energy, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_max_distance =
      resolveMethodBind('ReflectionProbe', 'set_max_distance', 373806689);

  void setMaxDistance(double maxDistance) {
    final arg0 = malloc<Double>()..value = maxDistance;
    try {
      ptrcallVoid(_mb_set_max_distance, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_max_distance =
      resolveMethodBind('ReflectionProbe', 'get_max_distance', 1740695150);

  double getMaxDistance() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_max_distance, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_mesh_lod_threshold =
      resolveMethodBind('ReflectionProbe', 'set_mesh_lod_threshold', 373806689);

  void setMeshLodThreshold(double ratio) {
    final arg0 = malloc<Double>()..value = ratio;
    try {
      ptrcallVoid(_mb_set_mesh_lod_threshold, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_mesh_lod_threshold =
      resolveMethodBind('ReflectionProbe', 'get_mesh_lod_threshold', 1740695150);

  double getMeshLodThreshold() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_mesh_lod_threshold, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_size =
      resolveMethodBind('ReflectionProbe', 'set_size', 3460891852);

  void setSize(Vector3 size) {
    final arg0 = malloc<Uint8>(Vector3.nativeSize);
    size.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_size, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_size =
      resolveMethodBind('ReflectionProbe', 'get_size', 3360562783);

  Vector3 getSize() {
    try {
      final ret = malloc<Uint8>(Vector3.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_size, nativePtr, [], ret.cast());
        return Vector3.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_origin_offset =
      resolveMethodBind('ReflectionProbe', 'set_origin_offset', 3460891852);

  void setOriginOffset(Vector3 originOffset) {
    final arg0 = malloc<Uint8>(Vector3.nativeSize);
    originOffset.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_origin_offset, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_origin_offset =
      resolveMethodBind('ReflectionProbe', 'get_origin_offset', 3360562783);

  Vector3 getOriginOffset() {
    try {
      final ret = malloc<Uint8>(Vector3.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_origin_offset, nativePtr, [], ret.cast());
        return Vector3.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_as_interior =
      resolveMethodBind('ReflectionProbe', 'set_as_interior', 2586408642);

  void setAsInterior(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_as_interior, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_set_as_interior =
      resolveMethodBind('ReflectionProbe', 'is_set_as_interior', 36873697);

  bool isSetAsInterior() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_set_as_interior, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_enable_box_projection =
      resolveMethodBind('ReflectionProbe', 'set_enable_box_projection', 2586408642);

  void setEnableBoxProjection(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_enable_box_projection, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_box_projection_enabled =
      resolveMethodBind('ReflectionProbe', 'is_box_projection_enabled', 36873697);

  bool isBoxProjectionEnabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_box_projection_enabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_enable_shadows =
      resolveMethodBind('ReflectionProbe', 'set_enable_shadows', 2586408642);

  void setEnableShadows(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_enable_shadows, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_are_shadows_enabled =
      resolveMethodBind('ReflectionProbe', 'are_shadows_enabled', 36873697);

  bool areShadowsEnabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_are_shadows_enabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_cull_mask =
      resolveMethodBind('ReflectionProbe', 'set_cull_mask', 1286410249);

  void setCullMask(int layers) {
    final arg0 = malloc<Int64>()..value = layers;
    try {
      ptrcallVoid(_mb_set_cull_mask, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_cull_mask =
      resolveMethodBind('ReflectionProbe', 'get_cull_mask', 3905245786);

  int getCullMask() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_cull_mask, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_reflection_mask =
      resolveMethodBind('ReflectionProbe', 'set_reflection_mask', 1286410249);

  void setReflectionMask(int layers) {
    final arg0 = malloc<Int64>()..value = layers;
    try {
      ptrcallVoid(_mb_set_reflection_mask, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_reflection_mask =
      resolveMethodBind('ReflectionProbe', 'get_reflection_mask', 3905245786);

  int getReflectionMask() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_reflection_mask, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_update_mode =
      resolveMethodBind('ReflectionProbe', 'set_update_mode', 4090221187);

  void setUpdateMode(int mode) {
    final arg0 = malloc<Int64>()..value = mode;
    try {
      ptrcallVoid(_mb_set_update_mode, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_update_mode =
      resolveMethodBind('ReflectionProbe', 'get_update_mode', 2367550552);

  int getUpdateMode() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_update_mode, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
