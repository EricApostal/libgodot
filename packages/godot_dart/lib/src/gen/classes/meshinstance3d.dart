// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
//
// Phase 1 scope: extends GodotObject directly (not the real Node/CanvasItem
// chain yet) and only emits methods whose args/return are float/int/bool.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/godot_object.dart';
import 'node3d.dart';

class MeshInstance3D extends Node3D {
  MeshInstance3D(super.nativePtr);

  // Skipped set_mesh(): an argument type is unsupported (Phase 2 breadth work).
  // Skipped get_mesh(): unsupported return type "Mesh" (Phase 2 breadth work).
  // Skipped set_skeleton_path(): an argument type is unsupported (Phase 2 breadth work).
  // Skipped get_skeleton_path(): unsupported return type "NodePath" (Phase 2 breadth work).
  // Skipped set_skin(): an argument type is unsupported (Phase 2 breadth work).
  // Skipped get_skin(): unsupported return type "Skin" (Phase 2 breadth work).
  // Skipped get_skin_reference(): unsupported return type "SkinReference" (Phase 2 breadth work).
  static final Pointer<Void> _mb_get_surface_override_material_count =
      resolveMethodBind('MeshInstance3D', 'get_surface_override_material_count', 3905245786);

  int getSurfaceOverrideMaterialCount() {
    final ret = malloc<Int64>();
    try {
      ptrcallWithReturn(_mb_get_surface_override_material_count, nativePtr, [], ret.cast());
      return ret.value;
    } finally {
      malloc.free(ret);
    }
  }

  // Skipped set_surface_override_material(): an argument type is unsupported (Phase 2 breadth work).
  // Skipped get_surface_override_material(): unsupported return type "Material" (Phase 2 breadth work).
  // Skipped get_active_material(): unsupported return type "Material" (Phase 2 breadth work).
  static final Pointer<Void> _mb_create_trimesh_collision =
      resolveMethodBind('MeshInstance3D', 'create_trimesh_collision', 3218959716);

  void createTrimeshCollision() {
    try {
      ptrcallVoid(_mb_create_trimesh_collision, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_create_convex_collision =
      resolveMethodBind('MeshInstance3D', 'create_convex_collision', 2751962654);

  void createConvexCollision(bool clean, bool simplify) {
    final arg0 = malloc<Uint8>()..value = clean ? 1 : 0;
    final arg1 = malloc<Uint8>()..value = simplify ? 1 : 0;
    try {
      ptrcallVoid(_mb_create_convex_collision, nativePtr, [arg0.cast(), arg1.cast()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  // Skipped create_multiple_convex_collisions(): an argument type is unsupported (Phase 2 breadth work).
  static final Pointer<Void> _mb_get_blend_shape_count =
      resolveMethodBind('MeshInstance3D', 'get_blend_shape_count', 3905245786);

  int getBlendShapeCount() {
    final ret = malloc<Int64>();
    try {
      ptrcallWithReturn(_mb_get_blend_shape_count, nativePtr, [], ret.cast());
      return ret.value;
    } finally {
      malloc.free(ret);
    }
  }

  // Skipped find_blend_shape_by_name(): an argument type is unsupported (Phase 2 breadth work).
  static final Pointer<Void> _mb_get_blend_shape_value =
      resolveMethodBind('MeshInstance3D', 'get_blend_shape_value', 2339986948);

  double getBlendShapeValue(int blendShapeIdx) {
    final arg0 = malloc<Int64>()..value = blendShapeIdx;
    final ret = malloc<Double>();
    try {
      ptrcallWithReturn(_mb_get_blend_shape_value, nativePtr, [arg0.cast()], ret.cast());
      return ret.value;
    } finally {
      malloc.free(ret);
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_blend_shape_value =
      resolveMethodBind('MeshInstance3D', 'set_blend_shape_value', 1602489585);

  void setBlendShapeValue(int blendShapeIdx, double value) {
    final arg0 = malloc<Int64>()..value = blendShapeIdx;
    final arg1 = malloc<Double>()..value = value;
    try {
      ptrcallVoid(_mb_set_blend_shape_value, nativePtr, [arg0.cast(), arg1.cast()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_create_debug_tangents =
      resolveMethodBind('MeshInstance3D', 'create_debug_tangents', 3218959716);

  void createDebugTangents() {
    try {
      ptrcallVoid(_mb_create_debug_tangents, nativePtr, []);
    } finally {
    }
  }

  // Skipped bake_mesh_from_current_blend_shape_mix(): unsupported return type "ArrayMesh" (Phase 2 breadth work).
  // Skipped bake_mesh_from_current_skeleton_pose(): unsupported return type "ArrayMesh" (Phase 2 breadth work).
}
