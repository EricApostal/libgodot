// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class ResourceFormatSaver extends RefCounted {
  ResourceFormatSaver(super.nativePtr);

  /// Constructs a brand-new engine-owned ResourceFormatSaver instance
  /// (via classdb_construct_object3), not an existing one.
  factory ResourceFormatSaver.create() {
    return ResourceFormatSaver(resolveClassConstructor('ResourceFormatSaver'));
  }

  /// Override to hook into Godot's `_save` virtual.
  int save(Resource resource, String path, int flags) => 0;

  /// Override to hook into Godot's `_set_uid` virtual.
  int setUid(String path, int uid) => 0;

  /// Override to hook into Godot's `_recognize` virtual.
  bool recognize(Resource resource) => false;

  // Skipped virtual _get_recognized_extensions(): unsupported return type "PackedStringArray".
  /// Override to hook into Godot's `_recognize_path` virtual.
  bool recognizePath(Resource resource, String path) => false;

}
