// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class OpenXRMarkerTracker extends OpenXRSpatialEntityTracker {
  OpenXRMarkerTracker(super.nativePtr);

  static final Pointer<Void> _mb_set_bounds_size =
      resolveMethodBind('OpenXRMarkerTracker', 'set_bounds_size', 743155724);

  void setBoundsSize(Vector2 boundsSize) {
    final arg0 = malloc<Uint8>(Vector2.nativeSize);
    boundsSize.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_bounds_size, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_bounds_size =
      resolveMethodBind('OpenXRMarkerTracker', 'get_bounds_size', 3341600327);

  Vector2 getBoundsSize() {
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_bounds_size, nativePtr, [], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_marker_type =
      resolveMethodBind('OpenXRMarkerTracker', 'set_marker_type', 2156241362);

  void setMarkerType(int markerType) {
    final arg0 = malloc<Int64>()..value = markerType;
    try {
      ptrcallVoid(_mb_set_marker_type, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_marker_type =
      resolveMethodBind('OpenXRMarkerTracker', 'get_marker_type', 612702862);

  int getMarkerType() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_marker_type, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_marker_id =
      resolveMethodBind('OpenXRMarkerTracker', 'set_marker_id', 1286410249);

  void setMarkerId(int markerId) {
    final arg0 = malloc<Int64>()..value = markerId;
    try {
      ptrcallVoid(_mb_set_marker_id, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_marker_id =
      resolveMethodBind('OpenXRMarkerTracker', 'get_marker_id', 3905245786);

  int getMarkerId() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_marker_id, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  // Skipped set_marker_data(): an argument type is unsupported.
  // Skipped get_marker_data(): unsupported return type "Variant".
}
