// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class LightOccluder2D extends Node2D {
  LightOccluder2D(super.nativePtr);

  static final Pointer<Void> _mb_set_occluder_polygon =
      resolveMethodBind('LightOccluder2D', 'set_occluder_polygon', 3258315893);

  void setOccluderPolygon(OccluderPolygon2D polygon) {
    final arg0 = malloc<Pointer<Void>>()..value = polygon.nativePtr;
    try {
      ptrcallVoid(_mb_set_occluder_polygon, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_occluder_polygon =
      resolveMethodBind('LightOccluder2D', 'get_occluder_polygon', 3962317075);

  OccluderPolygon2D? getOccluderPolygon() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_occluder_polygon, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : OccluderPolygon2D(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_occluder_light_mask =
      resolveMethodBind('LightOccluder2D', 'set_occluder_light_mask', 1286410249);

  void setOccluderLightMask(int mask) {
    final arg0 = malloc<Int64>()..value = mask;
    try {
      ptrcallVoid(_mb_set_occluder_light_mask, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_occluder_light_mask =
      resolveMethodBind('LightOccluder2D', 'get_occluder_light_mask', 3905245786);

  int getOccluderLightMask() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_occluder_light_mask, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_as_sdf_collision =
      resolveMethodBind('LightOccluder2D', 'set_as_sdf_collision', 2586408642);

  void setAsSdfCollision(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_as_sdf_collision, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_set_as_sdf_collision =
      resolveMethodBind('LightOccluder2D', 'is_set_as_sdf_collision', 36873697);

  bool isSetAsSdfCollision() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_set_as_sdf_collision, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
