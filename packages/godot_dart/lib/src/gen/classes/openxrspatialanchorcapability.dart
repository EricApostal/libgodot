// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class OpenXRSpatialAnchorCapability extends OpenXRExtensionWrapper {
  OpenXRSpatialAnchorCapability(super.nativePtr);

  static final Pointer<Void> _mb_is_spatial_anchor_supported =
      resolveMethodBind('OpenXRSpatialAnchorCapability', 'is_spatial_anchor_supported', 2240911060);

  bool isSpatialAnchorSupported() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_spatial_anchor_supported, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_is_spatial_persistence_supported =
      resolveMethodBind('OpenXRSpatialAnchorCapability', 'is_spatial_persistence_supported', 2240911060);

  bool isSpatialPersistenceSupported() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_spatial_persistence_supported, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_is_persistence_scope_supported =
      resolveMethodBind('OpenXRSpatialAnchorCapability', 'is_persistence_scope_supported', 3651771626);

  bool isPersistenceScopeSupported(int scope) {
    final arg0 = malloc<Int64>()..value = scope;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_persistence_scope_supported, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  // Skipped create_default_persistence_context(): an argument type is unsupported.
  // Skipped create_persistence_context(): an argument type is unsupported.
  // Skipped get_persistence_context_handle(): an argument type is unsupported.
  // Skipped free_persistence_context(): an argument type is unsupported.
  // Skipped create_new_anchor(): an argument type is unsupported.
  static final Pointer<Void> _mb_remove_anchor =
      resolveMethodBind('OpenXRSpatialAnchorCapability', 'remove_anchor', 3579451518);

  void removeAnchor(OpenXRAnchorTracker anchorTracker) {
    final arg0 = malloc<Pointer<Void>>()..value = anchorTracker.nativePtr;
    try {
      ptrcallVoid(_mb_remove_anchor, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  // Skipped persist_anchor(): an argument type is unsupported.
  // Skipped unpersist_anchor(): an argument type is unsupported.
  // Skipped start_entity_discovery(): an argument type is unsupported.
  // Skipped do_entity_update(): an argument type is unsupported.
}
