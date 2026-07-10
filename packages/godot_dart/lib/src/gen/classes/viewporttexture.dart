// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class ViewportTexture extends Texture2D {
  ViewportTexture(super.nativePtr);

  /// Constructs a brand-new engine-owned ViewportTexture instance
  /// (via classdb_construct_object3), not an existing one.
  factory ViewportTexture.create() {
    return ViewportTexture(resolveClassConstructor('ViewportTexture'));
  }

  // Skipped set_viewport_path_in_scene(): an argument type is unsupported.
  // Skipped get_viewport_path_in_scene(): unsupported return type "NodePath".
}
