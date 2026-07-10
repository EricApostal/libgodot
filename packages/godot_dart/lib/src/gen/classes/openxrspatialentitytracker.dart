// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class OpenXRSpatialEntityTracker extends XRPositionalTracker {
  OpenXRSpatialEntityTracker(super.nativePtr);

  /// Constructs a brand-new engine-owned OpenXRSpatialEntityTracker instance
  /// (via classdb_construct_object3), not an existing one.
  factory OpenXRSpatialEntityTracker.create() {
    return OpenXRSpatialEntityTracker(resolveClassConstructor('OpenXRSpatialEntityTracker'));
  }

  // Skipped set_spatial_context(): an argument type is unsupported.
  // Skipped get_spatial_context(): unsupported return type "RID".
  // Skipped set_entity(): an argument type is unsupported.
  // Skipped get_entity(): unsupported return type "RID".
  static final Pointer<Void> _mb_set_spatial_tracking_state =
      resolveMethodBind('OpenXRSpatialEntityTracker', 'set_spatial_tracking_state', 2170234447);

  void setSpatialTrackingState(int spatialTrackingState) {
    final arg0 = malloc<Int64>()..value = spatialTrackingState;
    try {
      ptrcallVoid(_mb_set_spatial_tracking_state, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_spatial_tracking_state =
      resolveMethodBind('OpenXRSpatialEntityTracker', 'get_spatial_tracking_state', 3351876560);

  int getSpatialTrackingState() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_spatial_tracking_state, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_next =
      resolveMethodBind('OpenXRSpatialEntityTracker', 'get_next', 2798796760);

  OpenXRStructureBase? getNext() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_next, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : OpenXRStructureBase(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_add_next =
      resolveMethodBind('OpenXRSpatialEntityTracker', 'add_next', 334698771);

  void addNext(OpenXRStructureBase next) {
    final arg0 = malloc<Pointer<Void>>()..value = next.nativePtr;
    try {
      ptrcallVoid(_mb_add_next, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_remove_next =
      resolveMethodBind('OpenXRSpatialEntityTracker', 'remove_next', 334698771);

  void removeNext(OpenXRStructureBase next) {
    final arg0 = malloc<Pointer<Void>>()..value = next.nativePtr;
    try {
      ptrcallVoid(_mb_remove_next, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

}
