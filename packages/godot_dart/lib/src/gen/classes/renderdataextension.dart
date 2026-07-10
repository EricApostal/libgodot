// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class RenderDataExtension extends RenderData {
  RenderDataExtension(super.nativePtr);

  /// Constructs a brand-new engine-owned RenderDataExtension instance
  /// (via classdb_construct_object3), not an existing one.
  factory RenderDataExtension.create() {
    return RenderDataExtension(resolveClassConstructor('RenderDataExtension'));
  }

  /// Override to hook into Godot's `_get_render_scene_buffers` virtual.
  RenderSceneBuffers? getRenderSceneBuffers() => null;

  /// Override to hook into Godot's `_get_render_scene_data` virtual.
  RenderSceneData? getRenderSceneData() => null;

  // Skipped virtual _get_environment(): unsupported return type "RID".
  // Skipped virtual _get_camera_attributes(): unsupported return type "RID".
}
