// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class PhysicsDirectSpaceState2DExtension extends PhysicsDirectSpaceState2D {
  PhysicsDirectSpaceState2DExtension(super.nativePtr);

  /// Constructs a brand-new engine-owned PhysicsDirectSpaceState2DExtension instance
  /// (via classdb_construct_object3), not an existing one.
  factory PhysicsDirectSpaceState2DExtension.create() {
    return PhysicsDirectSpaceState2DExtension(resolveClassConstructor('PhysicsDirectSpaceState2DExtension'));
  }

  // Skipped virtual _intersect_ray(): an argument type is unsupported ("PhysicsServer2DExtensionRayResult*").
  // Skipped virtual _intersect_point(): an argument type is unsupported ("PhysicsServer2DExtensionShapeResult*").
  // Skipped virtual _intersect_shape(): an argument type is unsupported ("RID").
  // Skipped virtual _cast_motion(): an argument type is unsupported ("RID").
  // Skipped virtual _collide_shape(): an argument type is unsupported ("RID").
  // Skipped virtual _rest_info(): an argument type is unsupported ("RID").
  // Skipped is_body_excluded_from_query(): an argument type is unsupported.
}
