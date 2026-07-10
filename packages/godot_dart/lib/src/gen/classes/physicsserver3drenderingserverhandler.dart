// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class PhysicsServer3DRenderingServerHandler extends GodotObject {
  PhysicsServer3DRenderingServerHandler(super.nativePtr);

  static final Pointer<Void> _mb_set_vertex =
      resolveMethodBind('PhysicsServer3DRenderingServerHandler', 'set_vertex', 1530502735);

  void setVertex(int vertexId, Vector3 vertex) {
    final arg0 = malloc<Int64>()..value = vertexId;
    final arg1 = malloc<Uint8>(Vector3.nativeSize);
    vertex.writeTo(arg1, 0);
    try {
      ptrcallVoid(_mb_set_vertex, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_set_normal =
      resolveMethodBind('PhysicsServer3DRenderingServerHandler', 'set_normal', 1530502735);

  void setNormal(int vertexId, Vector3 normal) {
    final arg0 = malloc<Int64>()..value = vertexId;
    final arg1 = malloc<Uint8>(Vector3.nativeSize);
    normal.writeTo(arg1, 0);
    try {
      ptrcallVoid(_mb_set_normal, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_set_aabb =
      resolveMethodBind('PhysicsServer3DRenderingServerHandler', 'set_aabb', 259215842);

  void setAabb(AABB aabb) {
    final arg0 = malloc<Uint8>(AABB.nativeSize);
    aabb.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_aabb, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

}
