// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class PhysicsServer3DExtension extends PhysicsServer3D {
  PhysicsServer3DExtension(super.nativePtr);

  /// Constructs a brand-new engine-owned PhysicsServer3DExtension instance
  /// (via classdb_construct_object3), not an existing one.
  factory PhysicsServer3DExtension.create() {
    return PhysicsServer3DExtension(resolveClassConstructor('PhysicsServer3DExtension'));
  }

  // Skipped body_test_motion_is_excluding_body(): an argument type is unsupported.
  static final Pointer<Void> _mb_body_test_motion_is_excluding_object =
      resolveMethodBind('PhysicsServer3DExtension', 'body_test_motion_is_excluding_object', 1116898809);

  bool bodyTestMotionIsExcludingObject(int object) {
    final arg0 = malloc<Int64>()..value = object;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_body_test_motion_is_excluding_object, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

}
