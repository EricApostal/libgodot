// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class OpenXRSpatialComponentMesh2DList extends OpenXRSpatialComponentData {
  OpenXRSpatialComponentMesh2DList(super.nativePtr);

  static final Pointer<Void> _mb_get_transform =
      resolveMethodBind('OpenXRSpatialComponentMesh2DList', 'get_transform', 1965739696);

  Transform3D getTransform(int index) {
    final arg0 = malloc<Int64>()..value = index;
    try {
      final ret = malloc<Uint8>(Transform3D.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_transform, nativePtr, [arg0.cast<Void>()], ret.cast());
        return Transform3D.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  // Skipped get_vertices(): unsupported return type "PackedVector2Array".
  // Skipped get_indices(): unsupported return type "PackedInt32Array".
}
