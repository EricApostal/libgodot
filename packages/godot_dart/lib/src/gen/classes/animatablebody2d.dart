// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class AnimatableBody2D extends StaticBody2D {
  AnimatableBody2D(super.nativePtr);

  static final Pointer<Void> _mb_set_sync_to_physics =
      resolveMethodBind('AnimatableBody2D', 'set_sync_to_physics', 2586408642);

  void setSyncToPhysics(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_sync_to_physics, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_sync_to_physics_enabled =
      resolveMethodBind('AnimatableBody2D', 'is_sync_to_physics_enabled', 36873697);

  bool isSyncToPhysicsEnabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_sync_to_physics_enabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
