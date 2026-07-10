// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class OpenXRRenderModelExtension extends OpenXRExtensionWrapper {
  OpenXRRenderModelExtension(super.nativePtr);

  static final Pointer<Void> _mb_is_active =
      resolveMethodBind('OpenXRRenderModelExtension', 'is_active', 36873697);

  bool isActive() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_active, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  // Skipped render_model_create(): unsupported return type "RID".
  // Skipped render_model_destroy(): an argument type is unsupported.
  // Skipped render_model_get_all(): unsupported return type "typedarray::RID".
  // Skipped render_model_new_scene_instance(): an argument type is unsupported.
  // Skipped render_model_get_subaction_paths(): unsupported return type "PackedStringArray".
  // Skipped render_model_get_top_level_path(): an argument type is unsupported.
  // Skipped render_model_get_confidence(): an argument type is unsupported.
  // Skipped render_model_get_root_transform(): an argument type is unsupported.
  // Skipped render_model_get_animatable_node_count(): an argument type is unsupported.
  // Skipped render_model_get_animatable_node_name(): an argument type is unsupported.
  // Skipped render_model_is_animatable_node_visible(): an argument type is unsupported.
  // Skipped render_model_get_animatable_node_transform(): an argument type is unsupported.
}
