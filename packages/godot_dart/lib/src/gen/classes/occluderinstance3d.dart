// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class OccluderInstance3D extends VisualInstance3D {
  OccluderInstance3D(super.nativePtr);

  static final Pointer<Void> _mb_set_bake_mask =
      resolveMethodBind('OccluderInstance3D', 'set_bake_mask', 1286410249);

  void setBakeMask(int mask) {
    final arg0 = malloc<Int64>()..value = mask;
    try {
      ptrcallVoid(_mb_set_bake_mask, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_bake_mask =
      resolveMethodBind('OccluderInstance3D', 'get_bake_mask', 3905245786);

  int getBakeMask() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_bake_mask, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_bake_mask_value =
      resolveMethodBind('OccluderInstance3D', 'set_bake_mask_value', 300928843);

  void setBakeMaskValue(int layerNumber, bool value) {
    final arg0 = malloc<Int64>()..value = layerNumber;
    final arg1 = malloc<Uint8>()..value = value ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_bake_mask_value, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_bake_mask_value =
      resolveMethodBind('OccluderInstance3D', 'get_bake_mask_value', 1116898809);

  bool getBakeMaskValue(int layerNumber) {
    final arg0 = malloc<Int64>()..value = layerNumber;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_bake_mask_value, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_bake_simplification_distance =
      resolveMethodBind('OccluderInstance3D', 'set_bake_simplification_distance', 373806689);

  void setBakeSimplificationDistance(double simplificationDistance) {
    final arg0 = malloc<Double>()..value = simplificationDistance;
    try {
      ptrcallVoid(_mb_set_bake_simplification_distance, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_bake_simplification_distance =
      resolveMethodBind('OccluderInstance3D', 'get_bake_simplification_distance', 1740695150);

  double getBakeSimplificationDistance() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_bake_simplification_distance, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_occluder =
      resolveMethodBind('OccluderInstance3D', 'set_occluder', 1664878165);

  void setOccluder(Occluder3D occluder) {
    final arg0 = malloc<Pointer<Void>>()..value = occluder.nativePtr;
    try {
      ptrcallVoid(_mb_set_occluder, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_occluder =
      resolveMethodBind('OccluderInstance3D', 'get_occluder', 1696836198);

  Occluder3D? getOccluder() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_occluder, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Occluder3D(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
