// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class MeshDataTool extends RefCounted {
  MeshDataTool(super.nativePtr);

  static final Pointer<Void> _mb_clear =
      resolveMethodBind('MeshDataTool', 'clear', 3218959716);

  void clear() {
    try {
      ptrcallVoid(_mb_clear, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_create_from_surface =
      resolveMethodBind('MeshDataTool', 'create_from_surface', 2727020678);

  int createFromSurface(ArrayMesh mesh, int surface) {
    final arg0 = malloc<Pointer<Void>>()..value = mesh.nativePtr;
    final arg1 = malloc<Int64>()..value = surface;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_create_from_surface, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_commit_to_surface =
      resolveMethodBind('MeshDataTool', 'commit_to_surface', 2021686445);

  int commitToSurface(ArrayMesh mesh, int compressionFlags) {
    final arg0 = malloc<Pointer<Void>>()..value = mesh.nativePtr;
    final arg1 = malloc<Int64>()..value = compressionFlags;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_commit_to_surface, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_format =
      resolveMethodBind('MeshDataTool', 'get_format', 3905245786);

  int getFormat() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_format, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_vertex_count =
      resolveMethodBind('MeshDataTool', 'get_vertex_count', 3905245786);

  int getVertexCount() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_vertex_count, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_edge_count =
      resolveMethodBind('MeshDataTool', 'get_edge_count', 3905245786);

  int getEdgeCount() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_edge_count, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_face_count =
      resolveMethodBind('MeshDataTool', 'get_face_count', 3905245786);

  int getFaceCount() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_face_count, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_vertex =
      resolveMethodBind('MeshDataTool', 'set_vertex', 1530502735);

  void setVertex(int idx, Vector3 vertex) {
    final arg0 = malloc<Int64>()..value = idx;
    final arg1 = malloc<Uint8>(Vector3.nativeSize);
    vertex.writeTo(arg1, 0);
    try {
      ptrcallVoid(_mb_set_vertex, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_vertex =
      resolveMethodBind('MeshDataTool', 'get_vertex', 711720468);

  Vector3 getVertex(int idx) {
    final arg0 = malloc<Int64>()..value = idx;
    try {
      final ret = malloc<Uint8>(Vector3.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_vertex, nativePtr, [arg0.cast<Void>()], ret.cast());
        return Vector3.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_vertex_normal =
      resolveMethodBind('MeshDataTool', 'set_vertex_normal', 1530502735);

  void setVertexNormal(int idx, Vector3 normal) {
    final arg0 = malloc<Int64>()..value = idx;
    final arg1 = malloc<Uint8>(Vector3.nativeSize);
    normal.writeTo(arg1, 0);
    try {
      ptrcallVoid(_mb_set_vertex_normal, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_vertex_normal =
      resolveMethodBind('MeshDataTool', 'get_vertex_normal', 711720468);

  Vector3 getVertexNormal(int idx) {
    final arg0 = malloc<Int64>()..value = idx;
    try {
      final ret = malloc<Uint8>(Vector3.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_vertex_normal, nativePtr, [arg0.cast<Void>()], ret.cast());
        return Vector3.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_vertex_tangent =
      resolveMethodBind('MeshDataTool', 'set_vertex_tangent', 1104099133);

  void setVertexTangent(int idx, Plane tangent) {
    final arg0 = malloc<Int64>()..value = idx;
    final arg1 = malloc<Uint8>(Plane.nativeSize);
    tangent.writeTo(arg1, 0);
    try {
      ptrcallVoid(_mb_set_vertex_tangent, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_vertex_tangent =
      resolveMethodBind('MeshDataTool', 'get_vertex_tangent', 1372055458);

  Plane getVertexTangent(int idx) {
    final arg0 = malloc<Int64>()..value = idx;
    try {
      final ret = malloc<Uint8>(Plane.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_vertex_tangent, nativePtr, [arg0.cast<Void>()], ret.cast());
        return Plane.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_vertex_uv =
      resolveMethodBind('MeshDataTool', 'set_vertex_uv', 163021252);

  void setVertexUv(int idx, Vector2 uv) {
    final arg0 = malloc<Int64>()..value = idx;
    final arg1 = malloc<Uint8>(Vector2.nativeSize);
    uv.writeTo(arg1, 0);
    try {
      ptrcallVoid(_mb_set_vertex_uv, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_vertex_uv =
      resolveMethodBind('MeshDataTool', 'get_vertex_uv', 2299179447);

  Vector2 getVertexUv(int idx) {
    final arg0 = malloc<Int64>()..value = idx;
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_vertex_uv, nativePtr, [arg0.cast<Void>()], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_vertex_uv2 =
      resolveMethodBind('MeshDataTool', 'set_vertex_uv2', 163021252);

  void setVertexUv2(int idx, Vector2 uv2) {
    final arg0 = malloc<Int64>()..value = idx;
    final arg1 = malloc<Uint8>(Vector2.nativeSize);
    uv2.writeTo(arg1, 0);
    try {
      ptrcallVoid(_mb_set_vertex_uv2, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_vertex_uv2 =
      resolveMethodBind('MeshDataTool', 'get_vertex_uv2', 2299179447);

  Vector2 getVertexUv2(int idx) {
    final arg0 = malloc<Int64>()..value = idx;
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_vertex_uv2, nativePtr, [arg0.cast<Void>()], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_vertex_color =
      resolveMethodBind('MeshDataTool', 'set_vertex_color', 2878471219);

  void setVertexColor(int idx, Color color) {
    final arg0 = malloc<Int64>()..value = idx;
    final arg1 = malloc<Uint8>(Color.nativeSize);
    color.writeTo(arg1, 0);
    try {
      ptrcallVoid(_mb_set_vertex_color, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_vertex_color =
      resolveMethodBind('MeshDataTool', 'get_vertex_color', 3457211756);

  Color getVertexColor(int idx) {
    final arg0 = malloc<Int64>()..value = idx;
    try {
      final ret = malloc<Uint8>(Color.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_vertex_color, nativePtr, [arg0.cast<Void>()], ret.cast());
        return Color.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  // Skipped set_vertex_bones(): an argument type is unsupported.
  // Skipped get_vertex_bones(): unsupported return type "PackedInt32Array".
  // Skipped set_vertex_weights(): an argument type is unsupported.
  // Skipped get_vertex_weights(): unsupported return type "PackedFloat32Array".
  // Skipped set_vertex_meta(): an argument type is unsupported.
  // Skipped get_vertex_meta(): unsupported return type "Variant".
  // Skipped get_vertex_edges(): unsupported return type "PackedInt32Array".
  // Skipped get_vertex_faces(): unsupported return type "PackedInt32Array".
  static final Pointer<Void> _mb_get_edge_vertex =
      resolveMethodBind('MeshDataTool', 'get_edge_vertex', 3175239445);

  int getEdgeVertex(int idx, int vertex) {
    final arg0 = malloc<Int64>()..value = idx;
    final arg1 = malloc<Int64>()..value = vertex;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_edge_vertex, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  // Skipped get_edge_faces(): unsupported return type "PackedInt32Array".
  // Skipped set_edge_meta(): an argument type is unsupported.
  // Skipped get_edge_meta(): unsupported return type "Variant".
  static final Pointer<Void> _mb_get_face_vertex =
      resolveMethodBind('MeshDataTool', 'get_face_vertex', 3175239445);

  int getFaceVertex(int idx, int vertex) {
    final arg0 = malloc<Int64>()..value = idx;
    final arg1 = malloc<Int64>()..value = vertex;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_face_vertex, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_face_edge =
      resolveMethodBind('MeshDataTool', 'get_face_edge', 3175239445);

  int getFaceEdge(int idx, int edge) {
    final arg0 = malloc<Int64>()..value = idx;
    final arg1 = malloc<Int64>()..value = edge;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_face_edge, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  // Skipped set_face_meta(): an argument type is unsupported.
  // Skipped get_face_meta(): unsupported return type "Variant".
  static final Pointer<Void> _mb_get_face_normal =
      resolveMethodBind('MeshDataTool', 'get_face_normal', 711720468);

  Vector3 getFaceNormal(int idx) {
    final arg0 = malloc<Int64>()..value = idx;
    try {
      final ret = malloc<Uint8>(Vector3.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_face_normal, nativePtr, [arg0.cast<Void>()], ret.cast());
        return Vector3.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_material =
      resolveMethodBind('MeshDataTool', 'set_material', 2757459619);

  void setMaterial(Material material) {
    final arg0 = malloc<Pointer<Void>>()..value = material.nativePtr;
    try {
      ptrcallVoid(_mb_set_material, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_material =
      resolveMethodBind('MeshDataTool', 'get_material', 5934680);

  Material? getMaterial() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_material, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Material(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
