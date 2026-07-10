// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class ConcavePolygonShape2D extends Shape2D {
  ConcavePolygonShape2D(super.nativePtr);

  /// Constructs a brand-new engine-owned ConcavePolygonShape2D instance
  /// (via classdb_construct_object3), not an existing one.
  factory ConcavePolygonShape2D.create() {
    return ConcavePolygonShape2D(resolveClassConstructor('ConcavePolygonShape2D'));
  }

  // Skipped set_segments(): an argument type is unsupported.
  // Skipped get_segments(): unsupported return type "PackedVector2Array".
}
