// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class XRCamera3D extends Camera3D {
  XRCamera3D(super.nativePtr);

  /// Constructs a brand-new engine-owned XRCamera3D instance
  /// (via classdb_construct_object3), not an existing one.
  factory XRCamera3D.create() {
    return XRCamera3D(resolveClassConstructor('XRCamera3D'));
  }

}
