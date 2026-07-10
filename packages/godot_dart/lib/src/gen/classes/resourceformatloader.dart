// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class ResourceFormatLoader extends RefCounted {
  ResourceFormatLoader(super.nativePtr);

  /// Constructs a brand-new engine-owned ResourceFormatLoader instance
  /// (via classdb_construct_object3), not an existing one.
  factory ResourceFormatLoader.create() {
    return ResourceFormatLoader(resolveClassConstructor('ResourceFormatLoader'));
  }

}
