// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class OpenXRSpatialCapabilityConfigurationPlaneTracking extends OpenXRSpatialCapabilityConfigurationBaseHeader {
  OpenXRSpatialCapabilityConfigurationPlaneTracking(super.nativePtr);

  /// Constructs a brand-new engine-owned OpenXRSpatialCapabilityConfigurationPlaneTracking instance
  /// (via classdb_construct_object3), not an existing one.
  factory OpenXRSpatialCapabilityConfigurationPlaneTracking.create() {
    return OpenXRSpatialCapabilityConfigurationPlaneTracking(resolveClassConstructor('OpenXRSpatialCapabilityConfigurationPlaneTracking'));
  }

  static final Pointer<Void> _mb_supports_mesh_2d =
      resolveMethodBind('OpenXRSpatialCapabilityConfigurationPlaneTracking', 'supports_mesh_2d', 2240911060);

  bool supportsMesh2d() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_supports_mesh_2d, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_supports_polygons =
      resolveMethodBind('OpenXRSpatialCapabilityConfigurationPlaneTracking', 'supports_polygons', 2240911060);

  bool supportsPolygons() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_supports_polygons, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_supports_labels =
      resolveMethodBind('OpenXRSpatialCapabilityConfigurationPlaneTracking', 'supports_labels', 2240911060);

  bool supportsLabels() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_supports_labels, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  // Skipped get_enabled_components(): unsupported return type "PackedInt64Array".
}
