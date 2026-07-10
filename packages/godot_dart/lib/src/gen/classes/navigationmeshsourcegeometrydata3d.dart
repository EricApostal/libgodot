// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class NavigationMeshSourceGeometryData3D extends Resource {
  NavigationMeshSourceGeometryData3D(super.nativePtr);

  // Skipped set_vertices(): an argument type is unsupported.
  // Skipped get_vertices(): unsupported return type "PackedFloat32Array".
  // Skipped set_indices(): an argument type is unsupported.
  // Skipped get_indices(): unsupported return type "PackedInt32Array".
  // Skipped append_arrays(): an argument type is unsupported.
  static final Pointer<Void> _mb_clear =
      resolveMethodBind('NavigationMeshSourceGeometryData3D', 'clear', 3218959716);

  void clear() {
    try {
      ptrcallVoid(_mb_clear, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_has_data =
      resolveMethodBind('NavigationMeshSourceGeometryData3D', 'has_data', 2240911060);

  bool hasData() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_has_data, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_add_mesh =
      resolveMethodBind('NavigationMeshSourceGeometryData3D', 'add_mesh', 975462459);

  void addMesh(Mesh mesh, Transform3D xform) {
    final arg0 = malloc<Pointer<Void>>()..value = mesh.nativePtr;
    final arg1 = malloc<Uint8>(Transform3D.nativeSize);
    xform.writeTo(arg1, 0);
    try {
      ptrcallVoid(_mb_add_mesh, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  // Skipped add_mesh_array(): an argument type is unsupported.
  // Skipped add_faces(): an argument type is unsupported.
  static final Pointer<Void> _mb_merge =
      resolveMethodBind('NavigationMeshSourceGeometryData3D', 'merge', 655828145);

  void merge(NavigationMeshSourceGeometryData3D otherGeometry) {
    final arg0 = malloc<Pointer<Void>>()..value = otherGeometry.nativePtr;
    try {
      ptrcallVoid(_mb_merge, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  // Skipped add_projected_obstruction(): an argument type is unsupported.
  static final Pointer<Void> _mb_clear_projected_obstructions =
      resolveMethodBind('NavigationMeshSourceGeometryData3D', 'clear_projected_obstructions', 3218959716);

  void clearProjectedObstructions() {
    try {
      ptrcallVoid(_mb_clear_projected_obstructions, nativePtr, []);
    } finally {
    }
  }

  // Skipped set_projected_obstructions(): an argument type is unsupported.
  // Skipped get_projected_obstructions(): unsupported return type "Array".
  static final Pointer<Void> _mb_get_bounds =
      resolveMethodBind('NavigationMeshSourceGeometryData3D', 'get_bounds', 1021181044);

  AABB getBounds() {
    try {
      final ret = malloc<Uint8>(AABB.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_bounds, nativePtr, [], ret.cast());
        return AABB.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
