// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class OpenXRSpatialComponentPlaneAlignmentList extends OpenXRSpatialComponentData {
  OpenXRSpatialComponentPlaneAlignmentList(super.nativePtr);

  static final Pointer<Void> _mb_get_plane_alignment =
      resolveMethodBind('OpenXRSpatialComponentPlaneAlignmentList', 'get_plane_alignment', 3340200270);

  int getPlaneAlignment(int index) {
    final arg0 = malloc<Int64>()..value = index;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_plane_alignment, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

}
