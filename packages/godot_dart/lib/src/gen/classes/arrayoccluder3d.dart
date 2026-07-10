// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class ArrayOccluder3D extends Occluder3D {
  ArrayOccluder3D(super.nativePtr);

  /// Constructs a brand-new engine-owned ArrayOccluder3D instance
  /// (via classdb_construct_object3), not an existing one.
  factory ArrayOccluder3D.create() {
    return ArrayOccluder3D(resolveClassConstructor('ArrayOccluder3D'));
  }

  // Skipped set_arrays(): an argument type is unsupported.
  // Skipped set_vertices(): an argument type is unsupported.
  // Skipped set_indices(): an argument type is unsupported.
}
