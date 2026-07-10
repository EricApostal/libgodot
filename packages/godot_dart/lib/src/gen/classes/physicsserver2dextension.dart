// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class PhysicsServer2DExtension extends PhysicsServer2D {
  PhysicsServer2DExtension(super.nativePtr);

  // Skipped body_test_motion_is_excluding_body(): an argument type is unsupported.
  static final Pointer<Void> _mb_body_test_motion_is_excluding_object =
      resolveMethodBind('PhysicsServer2DExtension', 'body_test_motion_is_excluding_object', 1116898809);

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
