// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class Texture2DRD extends Texture2D {
  Texture2DRD(super.nativePtr);

  /// Constructs a brand-new engine-owned Texture2DRD instance
  /// (via classdb_construct_object3), not an existing one.
  factory Texture2DRD.create() {
    return Texture2DRD(resolveClassConstructor('Texture2DRD'));
  }

  // Skipped set_texture_rd_rid(): an argument type is unsupported.
  // Skipped get_texture_rd_rid(): unsupported return type "RID".
}
