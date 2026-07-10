// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class BoxOccluder3D extends Occluder3D {
  BoxOccluder3D(super.nativePtr);

  /// Constructs a brand-new engine-owned BoxOccluder3D instance
  /// (via classdb_construct_object3), not an existing one.
  factory BoxOccluder3D.create() {
    return BoxOccluder3D(resolveClassConstructor('BoxOccluder3D'));
  }

  static final Pointer<Void> _mb_set_size =
      resolveMethodBind('BoxOccluder3D', 'set_size', 3460891852);

  void setSize(Vector3 size) {
    final arg0 = malloc<Uint8>(Vector3.nativeSize);
    size.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_size, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_size =
      resolveMethodBind('BoxOccluder3D', 'get_size', 3360562783);

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

}
