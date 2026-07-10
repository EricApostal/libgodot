// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class CompressedCubemap extends CompressedTextureLayered {
  CompressedCubemap(super.nativePtr);

  /// Constructs a brand-new engine-owned CompressedCubemap instance
  /// (via classdb_construct_object3), not an existing one.
  factory CompressedCubemap.create() {
    return CompressedCubemap(resolveClassConstructor('CompressedCubemap'));
  }

}
