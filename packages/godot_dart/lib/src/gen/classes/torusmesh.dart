// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class TorusMesh extends PrimitiveMesh {
  TorusMesh(super.nativePtr);

  /// Constructs a brand-new engine-owned TorusMesh instance
  /// (via classdb_construct_object3), not an existing one.
  factory TorusMesh.create() {
    return TorusMesh(resolveClassConstructor('TorusMesh'));
  }

  static final Pointer<Void> _mb_set_inner_radius =
      resolveMethodBind('TorusMesh', 'set_inner_radius', 373806689);

  void setInnerRadius(double radius) {
    final arg0 = malloc<Double>()..value = radius;
    try {
      ptrcallVoid(_mb_set_inner_radius, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_inner_radius =
      resolveMethodBind('TorusMesh', 'get_inner_radius', 1740695150);

  double getInnerRadius() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_inner_radius, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_outer_radius =
      resolveMethodBind('TorusMesh', 'set_outer_radius', 373806689);

  void setOuterRadius(double radius) {
    final arg0 = malloc<Double>()..value = radius;
    try {
      ptrcallVoid(_mb_set_outer_radius, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_outer_radius =
      resolveMethodBind('TorusMesh', 'get_outer_radius', 1740695150);

  double getOuterRadius() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_outer_radius, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_rings =
      resolveMethodBind('TorusMesh', 'set_rings', 1286410249);

  void setRings(int rings) {
    final arg0 = malloc<Int64>()..value = rings;
    try {
      ptrcallVoid(_mb_set_rings, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_rings =
      resolveMethodBind('TorusMesh', 'get_rings', 3905245786);

  int getRings() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_rings, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_ring_segments =
      resolveMethodBind('TorusMesh', 'set_ring_segments', 1286410249);

  void setRingSegments(int rings) {
    final arg0 = malloc<Int64>()..value = rings;
    try {
      ptrcallVoid(_mb_set_ring_segments, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_ring_segments =
      resolveMethodBind('TorusMesh', 'get_ring_segments', 3905245786);

  int getRingSegments() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_ring_segments, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
