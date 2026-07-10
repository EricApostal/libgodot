// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class PlaceholderMesh extends Mesh {
  PlaceholderMesh(super.nativePtr);

  /// Constructs a brand-new engine-owned PlaceholderMesh instance
  /// (via classdb_construct_object3), not an existing one.
  factory PlaceholderMesh.create() {
    return PlaceholderMesh(resolveClassConstructor('PlaceholderMesh'));
  }

  static final Pointer<Void> _mb_set_aabb =
      resolveMethodBind('PlaceholderMesh', 'set_aabb', 259215842);

  void setAabb(AABB aabb) {
    final arg0 = malloc<Uint8>(AABB.nativeSize);
    aabb.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_aabb, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

}
