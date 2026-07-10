// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class XRAnchor3D extends XRNode3D {
  XRAnchor3D(super.nativePtr);

  /// Constructs a brand-new engine-owned XRAnchor3D instance
  /// (via classdb_construct_object3), not an existing one.
  factory XRAnchor3D.create() {
    return XRAnchor3D(resolveClassConstructor('XRAnchor3D'));
  }

  static final Pointer<Void> _mb_get_size =
      resolveMethodBind('XRAnchor3D', 'get_size', 3360562783);

  Vector3 getSize() {
    try {
      final ret = malloc<Uint8>(Vector3.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_size, nativePtr, [], ret.cast());
        return Vector3.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_plane =
      resolveMethodBind('XRAnchor3D', 'get_plane', 2753500971);

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
