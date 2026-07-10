// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class SpotLight3D extends Light3D {
  SpotLight3D(super.nativePtr);

  /// Constructs a brand-new engine-owned SpotLight3D instance
  /// (via classdb_construct_object3), not an existing one.
  factory SpotLight3D.create() {
    return SpotLight3D(resolveClassConstructor('SpotLight3D'));
  }

}
