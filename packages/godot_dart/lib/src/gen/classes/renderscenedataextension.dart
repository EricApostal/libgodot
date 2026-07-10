// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class RenderSceneDataExtension extends RenderSceneData {
  RenderSceneDataExtension(super.nativePtr);

  /// Constructs a brand-new engine-owned RenderSceneDataExtension instance
  /// (via classdb_construct_object3), not an existing one.
  factory RenderSceneDataExtension.create() {
    return RenderSceneDataExtension(resolveClassConstructor('RenderSceneDataExtension'));
  }

  /// Override to hook into Godot's `_get_cam_transform` virtual.
  Transform3D getCamTransform() => const Transform3D(const Basis(const Vector3(0.0, 0.0, 0.0), const Vector3(0.0, 0.0, 0.0), const Vector3(0.0, 0.0, 0.0)), const Vector3(0.0, 0.0, 0.0));

  /// Override to hook into Godot's `_get_cam_projection` virtual.
  Projection getCamProjection() => const Projection(const Vector4(0.0, 0.0, 0.0, 0.0), const Vector4(0.0, 0.0, 0.0, 0.0), const Vector4(0.0, 0.0, 0.0, 0.0), const Vector4(0.0, 0.0, 0.0, 0.0));

  /// Override to hook into Godot's `_get_view_count` virtual.
  int getViewCount() => 0;

  /// Override to hook into Godot's `_get_view_eye_offset` virtual.
  Vector3 getViewEyeOffset(int view) => const Vector3(0.0, 0.0, 0.0);

  /// Override to hook into Godot's `_get_view_projection` virtual.
  Projection getViewProjection(int view) => const Projection(const Vector4(0.0, 0.0, 0.0, 0.0), const Vector4(0.0, 0.0, 0.0, 0.0), const Vector4(0.0, 0.0, 0.0, 0.0), const Vector4(0.0, 0.0, 0.0, 0.0));

  // Skipped virtual _get_uniform_buffer(): unsupported return type "RID".
}
