// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class PolygonOccluder3D extends Occluder3D {
  PolygonOccluder3D(super.nativePtr);

  /// Constructs a brand-new engine-owned PolygonOccluder3D instance
  /// (via classdb_construct_object3), not an existing one.
  factory PolygonOccluder3D.create() {
    return PolygonOccluder3D(resolveClassConstructor('PolygonOccluder3D'));
  }

  // Skipped set_polygon(): an argument type is unsupported.
  // Skipped get_polygon(): unsupported return type "PackedVector2Array".
}
