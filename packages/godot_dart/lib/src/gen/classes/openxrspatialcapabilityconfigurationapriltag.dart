// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class OpenXRSpatialCapabilityConfigurationAprilTag extends OpenXRSpatialCapabilityConfigurationBaseHeader {
  OpenXRSpatialCapabilityConfigurationAprilTag(super.nativePtr);

  /// Constructs a brand-new engine-owned OpenXRSpatialCapabilityConfigurationAprilTag instance
  /// (via classdb_construct_object3), not an existing one.
  factory OpenXRSpatialCapabilityConfigurationAprilTag.create() {
    return OpenXRSpatialCapabilityConfigurationAprilTag(resolveClassConstructor('OpenXRSpatialCapabilityConfigurationAprilTag'));
  }

  // Skipped get_enabled_components(): unsupported return type "PackedInt64Array".
  static final Pointer<Void> _mb_set_april_dict =
      resolveMethodBind('OpenXRSpatialCapabilityConfigurationAprilTag', 'set_april_dict', 3902905799);

  void setAprilDict(int aprilDict) {
    final arg0 = malloc<Int64>()..value = aprilDict;
    try {
      ptrcallVoid(_mb_set_april_dict, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_april_dict =
      resolveMethodBind('OpenXRSpatialCapabilityConfigurationAprilTag', 'get_april_dict', 440273016);

  int getAprilDict() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_april_dict, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
