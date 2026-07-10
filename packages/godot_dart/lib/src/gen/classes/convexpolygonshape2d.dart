// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class ConvexPolygonShape2D extends Shape2D {
  ConvexPolygonShape2D(super.nativePtr);

  /// Constructs a brand-new engine-owned ConvexPolygonShape2D instance
  /// (via classdb_construct_object3), not an existing one.
  factory ConvexPolygonShape2D.create() {
    return ConvexPolygonShape2D(resolveClassConstructor('ConvexPolygonShape2D'));
  }

  // Skipped set_point_cloud(): an argument type is unsupported.
  // Skipped set_points(): an argument type is unsupported.
  // Skipped get_points(): unsupported return type "PackedVector2Array".
}
