// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class OpenXRPlaneTracker extends OpenXRSpatialEntityTracker {
  OpenXRPlaneTracker(super.nativePtr);

  /// Constructs a brand-new engine-owned OpenXRPlaneTracker instance
  /// (via classdb_construct_object3), not an existing one.
  factory OpenXRPlaneTracker.create() {
    return OpenXRPlaneTracker(resolveClassConstructor('OpenXRPlaneTracker'));
  }

  static final Pointer<Void> _mb_set_bounds_size =
      resolveMethodBind('OpenXRPlaneTracker', 'set_bounds_size', 743155724);

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
      resolveMethodBind('OpenXRPlaneTracker', 'get_bounds_size', 3341600327);

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

  static final Pointer<Void> _mb_set_plane_alignment =
      resolveMethodBind('OpenXRPlaneTracker', 'set_plane_alignment', 1214382230);

  void setPlaneAlignment(int planeAlignment) {
    final arg0 = malloc<Int64>()..value = planeAlignment;
    try {
      ptrcallVoid(_mb_set_plane_alignment, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_plane_alignment =
      resolveMethodBind('OpenXRPlaneTracker', 'get_plane_alignment', 845541441);

  int getPlaneAlignment() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_plane_alignment, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_plane_label =
      resolveMethodBind('OpenXRPlaneTracker', 'set_plane_label', 83702148);

  void setPlaneLabel(String planeLabel) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), planeLabel);
    try {
      ptrcallVoid(_mb_set_plane_label, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_plane_label =
      resolveMethodBind('OpenXRPlaneTracker', 'get_plane_label', 201670096);

  String getPlaneLabel() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_plane_label, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  // Skipped set_mesh_data(): an argument type is unsupported.
  static final Pointer<Void> _mb_clear_mesh_data =
      resolveMethodBind('OpenXRPlaneTracker', 'clear_mesh_data', 3218959716);

  void clearMeshData() {
    try {
      ptrcallVoid(_mb_clear_mesh_data, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_mesh_offset =
      resolveMethodBind('OpenXRPlaneTracker', 'get_mesh_offset', 3229777777);

  Transform3D getMeshOffset() {
    try {
      final ret = malloc<Uint8>(Transform3D.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_mesh_offset, nativePtr, [], ret.cast());
        return Transform3D.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_mesh =
      resolveMethodBind('OpenXRPlaneTracker', 'get_mesh', 4081188045);

  Mesh? getMesh() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_mesh, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Mesh(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_shape =
      resolveMethodBind('OpenXRPlaneTracker', 'get_shape', 3358509884);

  Shape3D? getShape(double thickness) {
    final arg0 = malloc<Double>()..value = thickness;
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_shape, nativePtr, [arg0.cast<Void>()], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Shape3D(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

}
