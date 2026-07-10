// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class TriangleMesh extends RefCounted {
  TriangleMesh(super.nativePtr);

  /// Constructs a brand-new engine-owned TriangleMesh instance
  /// (via classdb_construct_object3), not an existing one.
  factory TriangleMesh.create() {
    return TriangleMesh(resolveClassConstructor('TriangleMesh'));
  }

  // Skipped create_from_faces(): an argument type is unsupported.
  // Skipped get_faces(): unsupported return type "PackedVector3Array".
  // Skipped intersect_segment(): unsupported return type "Dictionary".
  // Skipped intersect_ray(): unsupported return type "Dictionary".
}
