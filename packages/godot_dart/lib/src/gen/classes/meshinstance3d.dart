// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class MeshInstance3D extends GeometryInstance3D {
  MeshInstance3D(super.nativePtr);

  /// Constructs a brand-new engine-owned MeshInstance3D instance
  /// (via classdb_construct_object3), not an existing one.
  factory MeshInstance3D.create() {
    return MeshInstance3D(resolveClassConstructor('MeshInstance3D'));
  }

  static final Pointer<Void> _mb_set_mesh =
      resolveMethodBind('MeshInstance3D', 'set_mesh', 194775623);

  void setMesh(Mesh mesh) {
    final arg0 = malloc<Pointer<Void>>()..value = mesh.nativePtr;
    try {
      ptrcallVoid(_mb_set_mesh, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_mesh =
      resolveMethodBind('MeshInstance3D', 'get_mesh', 1808005922);

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

  // Skipped set_skeleton_path(): an argument type is unsupported.
  // Skipped get_skeleton_path(): unsupported return type "NodePath".
  static final Pointer<Void> _mb_set_skin =
      resolveMethodBind('MeshInstance3D', 'set_skin', 3971435618);

  void setSkin(Skin skin) {
    final arg0 = malloc<Pointer<Void>>()..value = skin.nativePtr;
    try {
      ptrcallVoid(_mb_set_skin, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_skin =
      resolveMethodBind('MeshInstance3D', 'get_skin', 2074563878);

  Skin? getSkin() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_skin, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Skin(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_skin_reference =
      resolveMethodBind('MeshInstance3D', 'get_skin_reference', 2060603409);

  SkinReference? getSkinReference() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_skin_reference, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : SkinReference(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_surface_override_material_count =
      resolveMethodBind('MeshInstance3D', 'get_surface_override_material_count', 3905245786);

  int getSurfaceOverrideMaterialCount() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_surface_override_material_count, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_surface_override_material =
      resolveMethodBind('MeshInstance3D', 'set_surface_override_material', 3671737478);

  void setSurfaceOverrideMaterial(int surface, Material material) {
    final arg0 = malloc<Int64>()..value = surface;
    final arg1 = malloc<Pointer<Void>>()..value = material.nativePtr;
    try {
      ptrcallVoid(_mb_set_surface_override_material, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_surface_override_material =
      resolveMethodBind('MeshInstance3D', 'get_surface_override_material', 2897466400);

  Material? getSurfaceOverrideMaterial(int surface) {
    final arg0 = malloc<Int64>()..value = surface;
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_surface_override_material, nativePtr, [arg0.cast<Void>()], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Material(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_active_material =
      resolveMethodBind('MeshInstance3D', 'get_active_material', 2897466400);

  Material? getActiveMaterial(int surface) {
    final arg0 = malloc<Int64>()..value = surface;
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_active_material, nativePtr, [arg0.cast<Void>()], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Material(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

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
      ptrcallVoid(_mb_create_convex_collision, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_create_multiple_convex_collisions =
      resolveMethodBind('MeshInstance3D', 'create_multiple_convex_collisions', 628789669);

  void createMultipleConvexCollisions(MeshConvexDecompositionSettings settings) {
    final arg0 = malloc<Pointer<Void>>()..value = settings.nativePtr;
    try {
      ptrcallVoid(_mb_create_multiple_convex_collisions, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_blend_shape_count =
      resolveMethodBind('MeshInstance3D', 'get_blend_shape_count', 3905245786);

  int getBlendShapeCount() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_blend_shape_count, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_find_blend_shape_by_name =
      resolveMethodBind('MeshInstance3D', 'find_blend_shape_by_name', 4150868206);

  int findBlendShapeByName(String name) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), name);
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_find_blend_shape_by_name, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_blend_shape_value =
      resolveMethodBind('MeshInstance3D', 'get_blend_shape_value', 2339986948);

  double getBlendShapeValue(int blendShapeIdx) {
    final arg0 = malloc<Int64>()..value = blendShapeIdx;
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_blend_shape_value, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_blend_shape_value =
      resolveMethodBind('MeshInstance3D', 'set_blend_shape_value', 1602489585);

  void setBlendShapeValue(int blendShapeIdx, double value) {
    final arg0 = malloc<Int64>()..value = blendShapeIdx;
    final arg1 = malloc<Double>()..value = value;
    try {
      ptrcallVoid(_mb_set_blend_shape_value, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
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

  static final Pointer<Void> _mb_bake_mesh_from_current_blend_shape_mix =
      resolveMethodBind('MeshInstance3D', 'bake_mesh_from_current_blend_shape_mix', 1457573577);

  ArrayMesh? bakeMeshFromCurrentBlendShapeMix(ArrayMesh existing) {
    final arg0 = malloc<Pointer<Void>>()..value = existing.nativePtr;
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_bake_mesh_from_current_blend_shape_mix, nativePtr, [arg0.cast<Void>()], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : ArrayMesh(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_bake_mesh_from_current_skeleton_pose =
      resolveMethodBind('MeshInstance3D', 'bake_mesh_from_current_skeleton_pose', 1457573577);

  ArrayMesh? bakeMeshFromCurrentSkeletonPose(ArrayMesh existing) {
    final arg0 = malloc<Pointer<Void>>()..value = existing.nativePtr;
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_bake_mesh_from_current_skeleton_pose, nativePtr, [arg0.cast<Void>()], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : ArrayMesh(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

}
