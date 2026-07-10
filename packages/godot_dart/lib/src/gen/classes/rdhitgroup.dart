// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class RDHitGroup extends RefCounted {
  RDHitGroup(super.nativePtr);

  static final Pointer<Void> _mb_set_closest_hit_shader =
      resolveMethodBind('RDHitGroup', 'set_closest_hit_shader', 2556777288);

  void setClosestHitShader(RDPipelineShader pMember) {
    final arg0 = malloc<Pointer<Void>>()..value = pMember.nativePtr;
    try {
      ptrcallVoid(_mb_set_closest_hit_shader, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_closest_hit_shader =
      resolveMethodBind('RDHitGroup', 'get_closest_hit_shader', 2937716847);

  RDPipelineShader? getClosestHitShader() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_closest_hit_shader, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : RDPipelineShader(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_any_hit_shader =
      resolveMethodBind('RDHitGroup', 'set_any_hit_shader', 2556777288);

  void setAnyHitShader(RDPipelineShader pMember) {
    final arg0 = malloc<Pointer<Void>>()..value = pMember.nativePtr;
    try {
      ptrcallVoid(_mb_set_any_hit_shader, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_any_hit_shader =
      resolveMethodBind('RDHitGroup', 'get_any_hit_shader', 2937716847);

  RDPipelineShader? getAnyHitShader() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_any_hit_shader, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : RDPipelineShader(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_intersection_shader =
      resolveMethodBind('RDHitGroup', 'set_intersection_shader', 2556777288);

  void setIntersectionShader(RDPipelineShader pMember) {
    final arg0 = malloc<Pointer<Void>>()..value = pMember.nativePtr;
    try {
      ptrcallVoid(_mb_set_intersection_shader, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_intersection_shader =
      resolveMethodBind('RDHitGroup', 'get_intersection_shader', 2937716847);

  RDPipelineShader? getIntersectionShader() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_intersection_shader, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : RDPipelineShader(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
