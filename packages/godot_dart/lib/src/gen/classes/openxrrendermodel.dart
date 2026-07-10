// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class OpenXRRenderModel extends Node3D {
  OpenXRRenderModel(super.nativePtr);

  static final Pointer<Void> _mb_get_top_level_path =
      resolveMethodBind('OpenXRRenderModel', 'get_top_level_path', 201670096);

  String getTopLevelPath() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_top_level_path, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  // Skipped get_render_model(): unsupported return type "RID".
  // Skipped set_render_model(): an argument type is unsupported.
}
