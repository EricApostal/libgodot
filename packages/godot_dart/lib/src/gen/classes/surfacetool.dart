// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class SurfaceTool extends RefCounted {
  SurfaceTool(super.nativePtr);

  static final Pointer<Void> _mb_set_skin_weight_count =
      resolveMethodBind('SurfaceTool', 'set_skin_weight_count', 618679515);

  void setSkinWeightCount(int count) {
    final arg0 = malloc<Int64>()..value = count;
    try {
      ptrcallVoid(_mb_set_skin_weight_count, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_skin_weight_count =
      resolveMethodBind('SurfaceTool', 'get_skin_weight_count', 1072401130);

  int getSkinWeightCount() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_skin_weight_count, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_custom_format =
      resolveMethodBind('SurfaceTool', 'set_custom_format', 4087759856);

  void setCustomFormat(int channelIndex, int format) {
    final arg0 = malloc<Int64>()..value = channelIndex;
    final arg1 = malloc<Int64>()..value = format;
    try {
      ptrcallVoid(_mb_set_custom_format, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_custom_format =
      resolveMethodBind('SurfaceTool', 'get_custom_format', 839863283);

  int getCustomFormat(int channelIndex) {
    final arg0 = malloc<Int64>()..value = channelIndex;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_custom_format, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_begin =
      resolveMethodBind('SurfaceTool', 'begin', 2230304113);

  void begin(int primitive) {
    final arg0 = malloc<Int64>()..value = primitive;
    try {
      ptrcallVoid(_mb_begin, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_add_vertex =
      resolveMethodBind('SurfaceTool', 'add_vertex', 3460891852);

  void addVertex(Vector3 vertex) {
    final arg0 = malloc<Uint8>(Vector3.nativeSize);
    vertex.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_add_vertex, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_color =
      resolveMethodBind('SurfaceTool', 'set_color', 2920490490);

  void setColor(Color color) {
    final arg0 = malloc<Uint8>(Color.nativeSize);
    color.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_color, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_normal =
      resolveMethodBind('SurfaceTool', 'set_normal', 3460891852);

  void setNormal(Vector3 normal) {
    final arg0 = malloc<Uint8>(Vector3.nativeSize);
    normal.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_normal, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_tangent =
      resolveMethodBind('SurfaceTool', 'set_tangent', 3505987427);

  void setTangent(Plane tangent) {
    final arg0 = malloc<Uint8>(Plane.nativeSize);
    tangent.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_tangent, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_uv =
      resolveMethodBind('SurfaceTool', 'set_uv', 743155724);

  void setUv(Vector2 uv) {
    final arg0 = malloc<Uint8>(Vector2.nativeSize);
    uv.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_uv, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_uv2 =
      resolveMethodBind('SurfaceTool', 'set_uv2', 743155724);

  void setUv2(Vector2 uv2) {
    final arg0 = malloc<Uint8>(Vector2.nativeSize);
    uv2.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_uv2, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  // Skipped set_bones(): an argument type is unsupported.
  // Skipped set_weights(): an argument type is unsupported.
  static final Pointer<Void> _mb_set_custom =
      resolveMethodBind('SurfaceTool', 'set_custom', 2878471219);

  void setCustom(int channelIndex, Color customColor) {
    final arg0 = malloc<Int64>()..value = channelIndex;
    final arg1 = malloc<Uint8>(Color.nativeSize);
    customColor.writeTo(arg1, 0);
    try {
      ptrcallVoid(_mb_set_custom, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_set_smooth_group =
      resolveMethodBind('SurfaceTool', 'set_smooth_group', 1286410249);

  void setSmoothGroup(int index) {
    final arg0 = malloc<Int64>()..value = index;
    try {
      ptrcallVoid(_mb_set_smooth_group, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  // Skipped add_triangle_fan(): an argument type is unsupported.
  static final Pointer<Void> _mb_add_index =
      resolveMethodBind('SurfaceTool', 'add_index', 1286410249);

  void addIndex(int index) {
    final arg0 = malloc<Int64>()..value = index;
    try {
      ptrcallVoid(_mb_add_index, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_index =
      resolveMethodBind('SurfaceTool', 'index', 3218959716);

  void index() {
    try {
      ptrcallVoid(_mb_index, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_deindex =
      resolveMethodBind('SurfaceTool', 'deindex', 3218959716);

  void deindex() {
    try {
      ptrcallVoid(_mb_deindex, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_generate_normals =
      resolveMethodBind('SurfaceTool', 'generate_normals', 107499316);

  void generateNormals(bool flip) {
    final arg0 = malloc<Uint8>()..value = flip ? 1 : 0;
    try {
      ptrcallVoid(_mb_generate_normals, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_generate_tangents =
      resolveMethodBind('SurfaceTool', 'generate_tangents', 3218959716);

  void generateTangents() {
    try {
      ptrcallVoid(_mb_generate_tangents, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_optimize_indices_for_cache =
      resolveMethodBind('SurfaceTool', 'optimize_indices_for_cache', 3218959716);

  void optimizeIndicesForCache() {
    try {
      ptrcallVoid(_mb_optimize_indices_for_cache, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_aabb =
      resolveMethodBind('SurfaceTool', 'get_aabb', 1068685055);

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

  // Skipped generate_lod(): unsupported return type "PackedInt32Array".
  static final Pointer<Void> _mb_set_material =
      resolveMethodBind('SurfaceTool', 'set_material', 2757459619);

  void setMaterial(Material material) {
    final arg0 = malloc<Pointer<Void>>()..value = material.nativePtr;
    try {
      ptrcallVoid(_mb_set_material, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_primitive_type =
      resolveMethodBind('SurfaceTool', 'get_primitive_type', 768822145);

  int getPrimitiveType() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_primitive_type, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_clear =
      resolveMethodBind('SurfaceTool', 'clear', 3218959716);

  void clear() {
    try {
      ptrcallVoid(_mb_clear, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_create_from =
      resolveMethodBind('SurfaceTool', 'create_from', 1767024570);

  void createFrom(Mesh existing, int surface) {
    final arg0 = malloc<Pointer<Void>>()..value = existing.nativePtr;
    final arg1 = malloc<Int64>()..value = surface;
    try {
      ptrcallVoid(_mb_create_from, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  // Skipped create_from_arrays(): an argument type is unsupported.
  static final Pointer<Void> _mb_create_from_blend_shape =
      resolveMethodBind('SurfaceTool', 'create_from_blend_shape', 1306185582);

  void createFromBlendShape(Mesh existing, int surface, String blendShape) {
    final arg0 = malloc<Pointer<Void>>()..value = existing.nativePtr;
    final arg1 = malloc<Int64>()..value = surface;
    final arg2 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg2.cast(), blendShape);
    try {
      ptrcallVoid(_mb_create_from_blend_shape, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      BuiltinMarshal.destroyGDString(arg2.cast());
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_append_from =
      resolveMethodBind('SurfaceTool', 'append_from', 2217967155);

  void appendFrom(Mesh existing, int surface, Transform3D transform) {
    final arg0 = malloc<Pointer<Void>>()..value = existing.nativePtr;
    final arg1 = malloc<Int64>()..value = surface;
    final arg2 = malloc<Uint8>(Transform3D.nativeSize);
    transform.writeTo(arg2, 0);
    try {
      ptrcallVoid(_mb_append_from, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_commit =
      resolveMethodBind('SurfaceTool', 'commit', 4107864055);

  ArrayMesh? commit(ArrayMesh existing, int flags) {
    final arg0 = malloc<Pointer<Void>>()..value = existing.nativePtr;
    final arg1 = malloc<Int64>()..value = flags;
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_commit, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : ArrayMesh(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  // Skipped commit_to_arrays(): unsupported return type "Array".
}
