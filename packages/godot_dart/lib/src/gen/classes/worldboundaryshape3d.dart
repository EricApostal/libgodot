// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class WorldBoundaryShape3D extends Shape3D {
  WorldBoundaryShape3D(super.nativePtr);

  static final Pointer<Void> _mb_set_plane =
      resolveMethodBind('WorldBoundaryShape3D', 'set_plane', 3505987427);

  void setPlane(Plane plane) {
    final arg0 = malloc<Uint8>(Plane.nativeSize);
    plane.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_plane, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_plane =
      resolveMethodBind('WorldBoundaryShape3D', 'get_plane', 2753500971);

  Plane getPlane() {
    try {
      final ret = malloc<Uint8>(Plane.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_plane, nativePtr, [], ret.cast());
        return Plane.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
