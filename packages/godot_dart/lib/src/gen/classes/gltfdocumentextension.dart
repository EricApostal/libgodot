// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class GLTFDocumentExtension extends Resource {
  GLTFDocumentExtension(super.nativePtr);

  /// Constructs a brand-new engine-owned GLTFDocumentExtension instance
  /// (via classdb_construct_object3), not an existing one.
  factory GLTFDocumentExtension.create() {
    return GLTFDocumentExtension(resolveClassConstructor('GLTFDocumentExtension'));
  }

  // Skipped virtual _import_preflight(): an argument type is unsupported ("PackedStringArray").
  // Skipped virtual _get_supported_extensions(): unsupported return type "PackedStringArray".
  // Skipped virtual _parse_node_extensions(): an argument type is unsupported ("Dictionary").
  // Skipped virtual _parse_image_data(): an argument type is unsupported ("PackedByteArray").
  /// Override to hook into Godot's `_get_image_file_extension` virtual.
  String getImageFileExtension() => '';

  // Skipped virtual _parse_texture_json(): an argument type is unsupported ("Dictionary").
  // Skipped virtual _import_object_model_property(): an argument type is unsupported ("PackedStringArray").
  /// Override to hook into Godot's `_import_post_parse` virtual.
  int importPostParse(GLTFState state) => 0;

  /// Override to hook into Godot's `_import_pre_generate` virtual.
  int importPreGenerate(GLTFState state) => 0;

  /// Override to hook into Godot's `_generate_scene_node` virtual.
  Node3D? generateSceneNode(GLTFState state, GLTFNode gltfNode, Node sceneParent) => null;

  // Skipped virtual _import_node(): an argument type is unsupported ("Dictionary").
  /// Override to hook into Godot's `_import_post` virtual.
  int importPost(GLTFState state, Node root) => 0;

  // Skipped virtual _export_get_property_list(): unsupported return type "typedarray::Dictionary".
  /// Override to hook into Godot's `_export_preflight` virtual.
  int exportPreflight(GLTFState state, Node root) => 0;

  /// Override to hook into Godot's `_convert_scene_node` virtual.
  void convertSceneNode(GLTFState state, GLTFNode gltfNode, Node sceneNode) {}

  /// Override to hook into Godot's `_export_post_convert` virtual.
  int exportPostConvert(GLTFState state, Node root) => 0;

  /// Override to hook into Godot's `_export_preserialize` virtual.
  int exportPreserialize(GLTFState state) => 0;

  // Skipped virtual _export_object_model_property(): an argument type is unsupported ("NodePath").
  // Skipped virtual _get_saveable_image_formats(): unsupported return type "PackedStringArray".
  // Skipped virtual _serialize_image_to_bytes(): unsupported return type "PackedByteArray".
  /// Override to hook into Godot's `_save_image_at_path` virtual.
  int saveImageAtPath(GLTFState state, Image image, String filePath, String imageFormat, double lossyQuality) => 0;

  // Skipped virtual _serialize_texture_json(): an argument type is unsupported ("Dictionary").
  // Skipped virtual _export_node(): an argument type is unsupported ("Dictionary").
  /// Override to hook into Godot's `_export_post` virtual.
  int exportPost(GLTFState state) => 0;

}
