// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class World2D extends Resource {
  World2D(super.nativePtr);

  /// Constructs a brand-new engine-owned World2D instance
  /// (via classdb_construct_object3), not an existing one.
  factory World2D.create() {
    return World2D(resolveClassConstructor('World2D'));
  }

  // Skipped get_canvas(): unsupported return type "RID".
  // Skipped get_navigation_map(): unsupported return type "RID".
  // Skipped get_space(): unsupported return type "RID".
  static final Pointer<Void> _mb_get_direct_space_state =
      resolveMethodBind('World2D', 'get_direct_space_state', 2506717822);

  PhysicsDirectSpaceState2D? getDirectSpaceState() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_direct_space_state, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : PhysicsDirectSpaceState2D(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
