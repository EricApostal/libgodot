// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class RenderSceneBuffersExtension extends RenderSceneBuffers {
  RenderSceneBuffersExtension(super.nativePtr);

  /// Constructs a brand-new engine-owned RenderSceneBuffersExtension instance
  /// (via classdb_construct_object3), not an existing one.
  factory RenderSceneBuffersExtension.create() {
    return RenderSceneBuffersExtension(resolveClassConstructor('RenderSceneBuffersExtension'));
  }

  /// Override to hook into Godot's `_configure` virtual.
  void configure(RenderSceneBuffersConfiguration config) {}

  /// Override to hook into Godot's `_set_fsr_sharpness` virtual.
  void setFsrSharpness(double fsrSharpness) {}

  /// Override to hook into Godot's `_set_texture_mipmap_bias` virtual.
  void setTextureMipmapBias(double textureMipmapBias) {}

  /// Override to hook into Godot's `_set_anisotropic_filtering_level` virtual.
  void setAnisotropicFilteringLevel(int anisotropicFilteringLevel) {}

  /// Override to hook into Godot's `_set_use_debanding` virtual.
  void setUseDebanding(bool useDebanding) {}

}
