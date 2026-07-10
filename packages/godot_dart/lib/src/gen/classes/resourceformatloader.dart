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

  // Skipped virtual _get_recognized_extensions(): unsupported return type "PackedStringArray".
  /// Override to hook into Godot's `_recognize_path` virtual.
  bool recognizePath(String path, String type) => false;

  /// Override to hook into Godot's `_handles_type` virtual.
  bool handlesType(String type) => false;

  /// Override to hook into Godot's `_get_resource_type` virtual.
  String getResourceType(String path) => '';

  /// Override to hook into Godot's `_get_resource_script_class` virtual.
  String getResourceScriptClass(String path) => '';

  /// Override to hook into Godot's `_get_resource_uid` virtual.
  int getResourceUid(String path) => 0;

  // Skipped virtual _get_dependencies(): unsupported return type "PackedStringArray".
  // Skipped virtual _rename_dependencies(): an argument type is unsupported ("Dictionary").
  /// Override to hook into Godot's `_exists` virtual.
  bool exists(String path) => false;

  // Skipped virtual _get_classes_used(): unsupported return type "PackedStringArray".
  // Skipped virtual _load(): unsupported return type "Variant".
}
