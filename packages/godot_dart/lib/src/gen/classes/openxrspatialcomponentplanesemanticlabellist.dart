// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class OpenXRSpatialComponentPlaneSemanticLabelList extends OpenXRSpatialComponentData {
  OpenXRSpatialComponentPlaneSemanticLabelList(super.nativePtr);

  static final Pointer<Void> _mb_get_plane_semantic_label =
      resolveMethodBind('OpenXRSpatialComponentPlaneSemanticLabelList', 'get_plane_semantic_label', 1889332427);

  int getPlaneSemanticLabel(int index) {
    final arg0 = malloc<Int64>()..value = index;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_plane_semantic_label, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

}
