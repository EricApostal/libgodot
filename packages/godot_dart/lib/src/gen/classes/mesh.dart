// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class Mesh extends Resource {
  Mesh(super.nativePtr);

  /// Constructs a brand-new engine-owned Mesh instance
  /// (via classdb_construct_object3), not an existing one.
  factory Mesh.create() {
    return Mesh(resolveClassConstructor('Mesh'));
  }

  static final Pointer<Void> _mb_set_lightmap_size_hint =
      resolveMethodBind('Mesh', 'set_lightmap_size_hint', 1130785943);

  void setLightmapSizeHint(Vector2i size) {
    final arg0 = malloc<Uint8>(Vector2i.nativeSize);
    size.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_lightmap_size_hint, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_lightmap_size_hint =
      resolveMethodBind('Mesh', 'get_lightmap_size_hint', 3690982128);

  Vector2i getLightmapSizeHint() {
    try {
      final ret = malloc<Uint8>(Vector2i.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_lightmap_size_hint, nativePtr, [], ret.cast());
        return Vector2i.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_aabb =
      resolveMethodBind('Mesh', 'get_aabb', 1068685055);

  AABB getAabb() {
    try {
      final ret = malloc<Uint8>(AABB.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_aabb, nativePtr, [], ret.cast());
        return AABB.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  // Skipped get_faces(): unsupported return type "PackedVector3Array".
  static final Pointer<Void> _mb_get_surface_count =
      resolveMethodBind('Mesh', 'get_surface_count', 3905245786);

  int getSurfaceCount() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_surface_count, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  // Skipped surface_get_arrays(): unsupported return type "Array".
  // Skipped surface_get_blend_shape_arrays(): unsupported return type "typedarray::Array".
  static final Pointer<Void> _mb_surface_set_material =
      resolveMethodBind('Mesh', 'surface_set_material', 3671737478);

  void surfaceSetMaterial(int surfIdx, Material material) {
    final arg0 = malloc<Int64>()..value = surfIdx;
    final arg1 = malloc<Pointer<Void>>()..value = material.nativePtr;
    try {
      ptrcallVoid(_mb_surface_set_material, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_surface_get_material =
      resolveMethodBind('Mesh', 'surface_get_material', 2897466400);

  Material? surfaceGetMaterial(int surfIdx) {
    final arg0 = malloc<Int64>()..value = surfIdx;
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_surface_get_material, nativePtr, [arg0.cast<Void>()], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Material(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_create_placeholder =
      resolveMethodBind('Mesh', 'create_placeholder', 121922552);

  Resource? createPlaceholder() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_create_placeholder, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Resource(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_create_trimesh_shape =
      resolveMethodBind('Mesh', 'create_trimesh_shape', 4160111210);

  ConcavePolygonShape3D? createTrimeshShape() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_create_trimesh_shape, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : ConcavePolygonShape3D(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_create_convex_shape =
      resolveMethodBind('Mesh', 'create_convex_shape', 2529984628);

  ConvexPolygonShape3D? createConvexShape(bool clean, bool simplify) {
    final arg0 = malloc<Uint8>()..value = clean ? 1 : 0;
    final arg1 = malloc<Uint8>()..value = simplify ? 1 : 0;
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_create_convex_shape, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : ConvexPolygonShape3D(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_create_outline =
      resolveMethodBind('Mesh', 'create_outline', 1208642001);

  Mesh? createOutline(double margin) {
    final arg0 = malloc<Double>()..value = margin;
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_create_outline, nativePtr, [arg0.cast<Void>()], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Mesh(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_generate_triangle_mesh =
      resolveMethodBind('Mesh', 'generate_triangle_mesh', 3476533166);

  TriangleMesh? generateTriangleMesh() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_generate_triangle_mesh, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : TriangleMesh(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
