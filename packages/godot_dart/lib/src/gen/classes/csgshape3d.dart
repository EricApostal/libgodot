// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class CSGShape3D extends GeometryInstance3D {
  CSGShape3D(super.nativePtr);

  static final Pointer<Void> _mb_is_root_shape =
      resolveMethodBind('CSGShape3D', 'is_root_shape', 36873697);

  bool isRootShape() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_root_shape, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_operation =
      resolveMethodBind('CSGShape3D', 'set_operation', 811425055);

  void setOperation(int operation) {
    final arg0 = malloc<Int64>()..value = operation;
    try {
      ptrcallVoid(_mb_set_operation, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_operation =
      resolveMethodBind('CSGShape3D', 'get_operation', 2662425879);

  int getOperation() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_operation, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_snap =
      resolveMethodBind('CSGShape3D', 'set_snap', 373806689);

  void setSnap(double snap) {
    final arg0 = malloc<Double>()..value = snap;
    try {
      ptrcallVoid(_mb_set_snap, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_snap =
      resolveMethodBind('CSGShape3D', 'get_snap', 1740695150);

  double getSnap() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_snap, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_use_collision =
      resolveMethodBind('CSGShape3D', 'set_use_collision', 2586408642);

  void setUseCollision(bool operation) {
    final arg0 = malloc<Uint8>()..value = operation ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_use_collision, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_using_collision =
      resolveMethodBind('CSGShape3D', 'is_using_collision', 36873697);

  bool isUsingCollision() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_using_collision, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_collision_layer =
      resolveMethodBind('CSGShape3D', 'set_collision_layer', 1286410249);

  void setCollisionLayer(int layer) {
    final arg0 = malloc<Int64>()..value = layer;
    try {
      ptrcallVoid(_mb_set_collision_layer, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_collision_layer =
      resolveMethodBind('CSGShape3D', 'get_collision_layer', 3905245786);

  int getCollisionLayer() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_collision_layer, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_collision_mask =
      resolveMethodBind('CSGShape3D', 'set_collision_mask', 1286410249);

  void setCollisionMask(int mask) {
    final arg0 = malloc<Int64>()..value = mask;
    try {
      ptrcallVoid(_mb_set_collision_mask, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_collision_mask =
      resolveMethodBind('CSGShape3D', 'get_collision_mask', 3905245786);

  int getCollisionMask() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_collision_mask, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_collision_mask_value =
      resolveMethodBind('CSGShape3D', 'set_collision_mask_value', 300928843);

  void setCollisionMaskValue(int layerNumber, bool value) {
    final arg0 = malloc<Int64>()..value = layerNumber;
    final arg1 = malloc<Uint8>()..value = value ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_collision_mask_value, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_collision_mask_value =
      resolveMethodBind('CSGShape3D', 'get_collision_mask_value', 1116898809);

  bool getCollisionMaskValue(int layerNumber) {
    final arg0 = malloc<Int64>()..value = layerNumber;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_collision_mask_value, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_collision_layer_value =
      resolveMethodBind('CSGShape3D', 'set_collision_layer_value', 300928843);

  void setCollisionLayerValue(int layerNumber, bool value) {
    final arg0 = malloc<Int64>()..value = layerNumber;
    final arg1 = malloc<Uint8>()..value = value ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_collision_layer_value, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_collision_layer_value =
      resolveMethodBind('CSGShape3D', 'get_collision_layer_value', 1116898809);

  bool getCollisionLayerValue(int layerNumber) {
    final arg0 = malloc<Int64>()..value = layerNumber;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_collision_layer_value, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_collision_priority =
      resolveMethodBind('CSGShape3D', 'set_collision_priority', 373806689);

  void setCollisionPriority(double priority) {
    final arg0 = malloc<Double>()..value = priority;
    try {
      ptrcallVoid(_mb_set_collision_priority, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_collision_priority =
      resolveMethodBind('CSGShape3D', 'get_collision_priority', 1740695150);

  double getCollisionPriority() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_collision_priority, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_bake_collision_shape =
      resolveMethodBind('CSGShape3D', 'bake_collision_shape', 36102322);

  ConcavePolygonShape3D? bakeCollisionShape() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_bake_collision_shape, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : ConcavePolygonShape3D(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_calculate_tangents =
      resolveMethodBind('CSGShape3D', 'set_calculate_tangents', 2586408642);

  void setCalculateTangents(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_calculate_tangents, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_calculating_tangents =
      resolveMethodBind('CSGShape3D', 'is_calculating_tangents', 36873697);

  bool isCalculatingTangents() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_calculating_tangents, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  // Skipped get_meshes(): unsupported return type "Array".
  static final Pointer<Void> _mb_bake_static_mesh =
      resolveMethodBind('CSGShape3D', 'bake_static_mesh', 1605880883);

  ArrayMesh? bakeStaticMesh() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_bake_static_mesh, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : ArrayMesh(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_autosmooth =
      resolveMethodBind('CSGShape3D', 'set_autosmooth', 2586408642);

  void setAutosmooth(bool autosmooth) {
    final arg0 = malloc<Uint8>()..value = autosmooth ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_autosmooth, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_autosmooth =
      resolveMethodBind('CSGShape3D', 'is_autosmooth', 36873697);

  bool isAutosmooth() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_autosmooth, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_smoothing_angle =
      resolveMethodBind('CSGShape3D', 'set_smoothing_angle', 373806689);

  void setSmoothingAngle(double smoothingAngle) {
    final arg0 = malloc<Double>()..value = smoothingAngle;
    try {
      ptrcallVoid(_mb_set_smoothing_angle, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_smoothing_angle =
      resolveMethodBind('CSGShape3D', 'get_smoothing_angle', 1740695150);

  double getSmoothingAngle() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_smoothing_angle, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
