// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class SkeletonModifier3D extends Node3D {
  SkeletonModifier3D(super.nativePtr);

  /// Constructs a brand-new engine-owned SkeletonModifier3D instance
  /// (via classdb_construct_object3), not an existing one.
  factory SkeletonModifier3D.create() {
    return SkeletonModifier3D(resolveClassConstructor('SkeletonModifier3D'));
  }

  static final Pointer<Void> _mb_get_skeleton =
      resolveMethodBind('SkeletonModifier3D', 'get_skeleton', 1488626673);

  Skeleton3D? getSkeleton() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_skeleton, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Skeleton3D(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_active =
      resolveMethodBind('SkeletonModifier3D', 'set_active', 2586408642);

  void setActive(bool active) {
    final arg0 = malloc<Uint8>()..value = active ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_active, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_active =
      resolveMethodBind('SkeletonModifier3D', 'is_active', 36873697);

  bool isActive() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_active, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_influence =
      resolveMethodBind('SkeletonModifier3D', 'set_influence', 373806689);

  void setInfluence(double influence) {
    final arg0 = malloc<Double>()..value = influence;
    try {
      ptrcallVoid(_mb_set_influence, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_influence =
      resolveMethodBind('SkeletonModifier3D', 'get_influence', 1740695150);

  double getInfluence() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_influence, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
