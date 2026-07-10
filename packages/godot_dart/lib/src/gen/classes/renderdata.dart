// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class RenderData extends GodotObject {
  RenderData(super.nativePtr);

  static final Pointer<Void> _mb_get_render_scene_buffers =
      resolveMethodBind('RenderData', 'get_render_scene_buffers', 2793216201);

  RenderSceneBuffers? getRenderSceneBuffers() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_render_scene_buffers, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : RenderSceneBuffers(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_render_scene_data =
      resolveMethodBind('RenderData', 'get_render_scene_data', 1288715698);

  RenderSceneData? getRenderSceneData() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_render_scene_data, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : RenderSceneData(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  // Skipped get_environment(): unsupported return type "RID".
  // Skipped get_camera_attributes(): unsupported return type "RID".
}
