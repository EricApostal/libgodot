// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class ImmediateMesh extends Mesh {
  ImmediateMesh(super.nativePtr);

  static final Pointer<Void> _mb_surface_begin =
      resolveMethodBind('ImmediateMesh', 'surface_begin', 2794442543);

  void surfaceBegin(int primitive, Material material) {
    final arg0 = malloc<Int64>()..value = primitive;
    final arg1 = malloc<Pointer<Void>>()..value = material.nativePtr;
    try {
      ptrcallVoid(_mb_surface_begin, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_surface_set_color =
      resolveMethodBind('ImmediateMesh', 'surface_set_color', 2920490490);

  void surfaceSetColor(Color color) {
    final arg0 = malloc<Uint8>(Color.nativeSize);
    color.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_surface_set_color, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_surface_set_normal =
      resolveMethodBind('ImmediateMesh', 'surface_set_normal', 3460891852);

  void surfaceSetNormal(Vector3 normal) {
    final arg0 = malloc<Uint8>(Vector3.nativeSize);
    normal.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_surface_set_normal, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_surface_set_tangent =
      resolveMethodBind('ImmediateMesh', 'surface_set_tangent', 3505987427);

  void surfaceSetTangent(Plane tangent) {
    final arg0 = malloc<Uint8>(Plane.nativeSize);
    tangent.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_surface_set_tangent, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_surface_set_uv =
      resolveMethodBind('ImmediateMesh', 'surface_set_uv', 743155724);

  void surfaceSetUv(Vector2 uv) {
    final arg0 = malloc<Uint8>(Vector2.nativeSize);
    uv.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_surface_set_uv, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_surface_set_uv2 =
      resolveMethodBind('ImmediateMesh', 'surface_set_uv2', 743155724);

  void surfaceSetUv2(Vector2 uv2) {
    final arg0 = malloc<Uint8>(Vector2.nativeSize);
    uv2.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_surface_set_uv2, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_surface_add_vertex =
      resolveMethodBind('ImmediateMesh', 'surface_add_vertex', 3460891852);

  void surfaceAddVertex(Vector3 vertex) {
    final arg0 = malloc<Uint8>(Vector3.nativeSize);
    vertex.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_surface_add_vertex, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_surface_add_vertex_2d =
      resolveMethodBind('ImmediateMesh', 'surface_add_vertex_2d', 743155724);

  void surfaceAddVertex2d(Vector2 vertex) {
    final arg0 = malloc<Uint8>(Vector2.nativeSize);
    vertex.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_surface_add_vertex_2d, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_surface_end =
      resolveMethodBind('ImmediateMesh', 'surface_end', 3218959716);

  void surfaceEnd() {
    try {
      ptrcallVoid(_mb_surface_end, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_clear_surfaces =
      resolveMethodBind('ImmediateMesh', 'clear_surfaces', 3218959716);

  void clearSurfaces() {
    try {
      ptrcallVoid(_mb_clear_surfaces, nativePtr, []);
    } finally {
    }
  }

}
