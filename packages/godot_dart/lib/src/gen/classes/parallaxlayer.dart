// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class ParallaxLayer extends Node2D {
  ParallaxLayer(super.nativePtr);

  /// Constructs a brand-new engine-owned ParallaxLayer instance
  /// (via classdb_construct_object3), not an existing one.
  factory ParallaxLayer.create() {
    return ParallaxLayer(resolveClassConstructor('ParallaxLayer'));
  }

  static final Pointer<Void> _mb_set_motion_scale =
      resolveMethodBind('ParallaxLayer', 'set_motion_scale', 743155724);

  void setMotionScale(Vector2 scale) {
    final arg0 = malloc<Uint8>(Vector2.nativeSize);
    scale.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_motion_scale, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_motion_scale =
      resolveMethodBind('ParallaxLayer', 'get_motion_scale', 3341600327);

  Vector2 getMotionScale() {
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_motion_scale, nativePtr, [], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_motion_offset =
      resolveMethodBind('ParallaxLayer', 'set_motion_offset', 743155724);

  void setMotionOffset(Vector2 offset) {
    final arg0 = malloc<Uint8>(Vector2.nativeSize);
    offset.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_motion_offset, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_motion_offset =
      resolveMethodBind('ParallaxLayer', 'get_motion_offset', 3341600327);

  Vector2 getMotionOffset() {
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_motion_offset, nativePtr, [], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_mirroring =
      resolveMethodBind('ParallaxLayer', 'set_mirroring', 743155724);

  void setMirroring(Vector2 mirror) {
    final arg0 = malloc<Uint8>(Vector2.nativeSize);
    mirror.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_mirroring, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_mirroring =
      resolveMethodBind('ParallaxLayer', 'get_mirroring', 3341600327);

  Vector2 getMirroring() {
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_mirroring, nativePtr, [], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
