// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class OpenXRSpatialMarkerTrackingCapability extends OpenXRExtensionWrapper {
  OpenXRSpatialMarkerTrackingCapability(super.nativePtr);

  /// Constructs a brand-new engine-owned OpenXRSpatialMarkerTrackingCapability instance
  /// (via classdb_construct_object3), not an existing one.
  factory OpenXRSpatialMarkerTrackingCapability.create() {
    return OpenXRSpatialMarkerTrackingCapability(resolveClassConstructor('OpenXRSpatialMarkerTrackingCapability'));
  }

  static final Pointer<Void> _mb_is_qrcode_supported =
      resolveMethodBind('OpenXRSpatialMarkerTrackingCapability', 'is_qrcode_supported', 2240911060);

  bool isQrcodeSupported() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_qrcode_supported, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_is_micro_qrcode_supported =
      resolveMethodBind('OpenXRSpatialMarkerTrackingCapability', 'is_micro_qrcode_supported', 2240911060);

  bool isMicroQrcodeSupported() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_micro_qrcode_supported, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_is_aruco_supported =
      resolveMethodBind('OpenXRSpatialMarkerTrackingCapability', 'is_aruco_supported', 2240911060);

  bool isArucoSupported() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_aruco_supported, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_is_april_tag_supported =
      resolveMethodBind('OpenXRSpatialMarkerTrackingCapability', 'is_april_tag_supported', 2240911060);

  bool isAprilTagSupported() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_april_tag_supported, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  // Skipped start_entity_discovery(): an argument type is unsupported.
  // Skipped do_entity_update(): an argument type is unsupported.
}
