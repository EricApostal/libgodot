// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class VoxelGIData extends Resource {
  VoxelGIData(super.nativePtr);

  // Skipped allocate(): an argument type is unsupported.
  static final Pointer<Void> _mb_get_bounds =
      resolveMethodBind('VoxelGIData', 'get_bounds', 1068685055);

  AABB getBounds() {
    try {
      final ret = malloc<Uint8>(AABB.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_bounds, nativePtr, [], ret.cast());
        return AABB.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_octree_size =
      resolveMethodBind('VoxelGIData', 'get_octree_size', 3360562783);

  Vector3 getOctreeSize() {
    try {
      final ret = malloc<Uint8>(Vector3.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_octree_size, nativePtr, [], ret.cast());
        return Vector3.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_to_cell_xform =
      resolveMethodBind('VoxelGIData', 'get_to_cell_xform', 3229777777);

  Transform3D getToCellXform() {
    try {
      final ret = malloc<Uint8>(Transform3D.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_to_cell_xform, nativePtr, [], ret.cast());
        return Transform3D.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  // Skipped get_octree_cells(): unsupported return type "PackedByteArray".
  // Skipped get_data_cells(): unsupported return type "PackedByteArray".
  // Skipped get_level_counts(): unsupported return type "PackedInt32Array".
  static final Pointer<Void> _mb_set_dynamic_range =
      resolveMethodBind('VoxelGIData', 'set_dynamic_range', 373806689);

  void setDynamicRange(double dynamicRange) {
    final arg0 = malloc<Double>()..value = dynamicRange;
    try {
      ptrcallVoid(_mb_set_dynamic_range, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_dynamic_range =
      resolveMethodBind('VoxelGIData', 'get_dynamic_range', 1740695150);

  double getDynamicRange() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_dynamic_range, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_energy =
      resolveMethodBind('VoxelGIData', 'set_energy', 373806689);

  void setEnergy(double energy) {
    final arg0 = malloc<Double>()..value = energy;
    try {
      ptrcallVoid(_mb_set_energy, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_energy =
      resolveMethodBind('VoxelGIData', 'get_energy', 1740695150);

  double getEnergy() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_energy, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_bias =
      resolveMethodBind('VoxelGIData', 'set_bias', 373806689);

  void setBias(double bias) {
    final arg0 = malloc<Double>()..value = bias;
    try {
      ptrcallVoid(_mb_set_bias, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_bias =
      resolveMethodBind('VoxelGIData', 'get_bias', 1740695150);

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

  static final Pointer<Void> _mb_set_normal_bias =
      resolveMethodBind('VoxelGIData', 'set_normal_bias', 373806689);

  void setNormalBias(double bias) {
    final arg0 = malloc<Double>()..value = bias;
    try {
      ptrcallVoid(_mb_set_normal_bias, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_normal_bias =
      resolveMethodBind('VoxelGIData', 'get_normal_bias', 1740695150);

  double getNormalBias() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_normal_bias, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_propagation =
      resolveMethodBind('VoxelGIData', 'set_propagation', 373806689);

  void setPropagation(double propagation) {
    final arg0 = malloc<Double>()..value = propagation;
    try {
      ptrcallVoid(_mb_set_propagation, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_propagation =
      resolveMethodBind('VoxelGIData', 'get_propagation', 1740695150);

  double getPropagation() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_propagation, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_interior =
      resolveMethodBind('VoxelGIData', 'set_interior', 2586408642);

  void setInterior(bool interior) {
    final arg0 = malloc<Uint8>()..value = interior ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_interior, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_interior =
      resolveMethodBind('VoxelGIData', 'is_interior', 36873697);

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

  static final Pointer<Void> _mb_set_use_two_bounces =
      resolveMethodBind('VoxelGIData', 'set_use_two_bounces', 2586408642);

  void setUseTwoBounces(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_use_two_bounces, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_using_two_bounces =
      resolveMethodBind('VoxelGIData', 'is_using_two_bounces', 36873697);

  bool isUsingTwoBounces() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_using_two_bounces, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
