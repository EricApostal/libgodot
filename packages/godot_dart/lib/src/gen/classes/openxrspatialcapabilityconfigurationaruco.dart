// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class OpenXRSpatialCapabilityConfigurationAruco extends OpenXRSpatialCapabilityConfigurationBaseHeader {
  OpenXRSpatialCapabilityConfigurationAruco(super.nativePtr);

  // Skipped get_enabled_components(): unsupported return type "PackedInt64Array".
  static final Pointer<Void> _mb_set_aruco_dict =
      resolveMethodBind('OpenXRSpatialCapabilityConfigurationAruco', 'set_aruco_dict', 2268055963);

  void setArucoDict(int arucoDict) {
    final arg0 = malloc<Int64>()..value = arucoDict;
    try {
      ptrcallVoid(_mb_set_aruco_dict, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_aruco_dict =
      resolveMethodBind('OpenXRSpatialCapabilityConfigurationAruco', 'get_aruco_dict', 1080386209);

  int getArucoDict() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_aruco_dict, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
