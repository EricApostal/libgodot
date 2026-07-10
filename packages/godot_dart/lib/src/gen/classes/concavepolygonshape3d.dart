// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class ConcavePolygonShape3D extends Shape3D {
  ConcavePolygonShape3D(super.nativePtr);

  // Skipped set_faces(): an argument type is unsupported.
  // Skipped get_faces(): unsupported return type "PackedVector3Array".
  static final Pointer<Void> _mb_set_backface_collision_enabled =
      resolveMethodBind('ConcavePolygonShape3D', 'set_backface_collision_enabled', 2586408642);

  void setBackfaceCollisionEnabled(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_backface_collision_enabled, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_backface_collision_enabled =
      resolveMethodBind('ConcavePolygonShape3D', 'is_backface_collision_enabled', 36873697);

  bool isBackfaceCollisionEnabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_backface_collision_enabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
