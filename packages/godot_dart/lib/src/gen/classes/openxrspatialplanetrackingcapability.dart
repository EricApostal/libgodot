// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class OpenXRSpatialPlaneTrackingCapability extends OpenXRExtensionWrapper {
  OpenXRSpatialPlaneTrackingCapability(super.nativePtr);

  /// Constructs a brand-new engine-owned OpenXRSpatialPlaneTrackingCapability instance
  /// (via classdb_construct_object3), not an existing one.
  factory OpenXRSpatialPlaneTrackingCapability.create() {
    return OpenXRSpatialPlaneTrackingCapability(resolveClassConstructor('OpenXRSpatialPlaneTrackingCapability'));
  }

  static final Pointer<Void> _mb_is_supported =
      resolveMethodBind('OpenXRSpatialPlaneTrackingCapability', 'is_supported', 2240911060);

  bool isSupported() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_supported, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  // Skipped start_entity_discovery(): an argument type is unsupported.
}
