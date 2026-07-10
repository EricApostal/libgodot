// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class ArrayMesh extends Mesh {
  ArrayMesh(super.nativePtr);

  static final Pointer<Void> _mb_add_blend_shape =
      resolveMethodBind('ArrayMesh', 'add_blend_shape', 3304788590);

  void addBlendShape(String name) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), name);
    try {
      ptrcallVoid(_mb_add_blend_shape, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_blend_shape_count =
      resolveMethodBind('ArrayMesh', 'get_blend_shape_count', 3905245786);

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

  static final Pointer<Void> _mb_get_blend_shape_name =
      resolveMethodBind('ArrayMesh', 'get_blend_shape_name', 659327637);

  String getBlendShapeName(int index) {
    final arg0 = malloc<Int64>()..value = index;
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_blend_shape_name, nativePtr, [arg0.cast<Void>()], ret.cast());
        final result = BuiltinMarshal.readStringName(ret.cast());
        BuiltinMarshal.destroyStringName(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_blend_shape_name =
      resolveMethodBind('ArrayMesh', 'set_blend_shape_name', 3780747571);

  void setBlendShapeName(int index, String name) {
    final arg0 = malloc<Int64>()..value = index;
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg1.cast(), name);
    try {
      ptrcallVoid(_mb_set_blend_shape_name, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      BuiltinMarshal.destroyStringName(arg1.cast());
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_clear_blend_shapes =
      resolveMethodBind('ArrayMesh', 'clear_blend_shapes', 3218959716);

  void clearBlendShapes() {
    try {
      ptrcallVoid(_mb_clear_blend_shapes, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_blend_shape_mode =
      resolveMethodBind('ArrayMesh', 'set_blend_shape_mode', 227983991);

  void setBlendShapeMode(int mode) {
    final arg0 = malloc<Int64>()..value = mode;
    try {
      ptrcallVoid(_mb_set_blend_shape_mode, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_blend_shape_mode =
      resolveMethodBind('ArrayMesh', 'get_blend_shape_mode', 836485024);

  int getBlendShapeMode() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_blend_shape_mode, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  // Skipped add_surface_from_arrays(): an argument type is unsupported.
  static final Pointer<Void> _mb_clear_surfaces =
      resolveMethodBind('ArrayMesh', 'clear_surfaces', 3218959716);

  void clearSurfaces() {
    try {
      ptrcallVoid(_mb_clear_surfaces, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_surface_remove =
      resolveMethodBind('ArrayMesh', 'surface_remove', 1286410249);

  void surfaceRemove(int surfIdx) {
    final arg0 = malloc<Int64>()..value = surfIdx;
    try {
      ptrcallVoid(_mb_surface_remove, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  // Skipped surface_update_vertex_region(): an argument type is unsupported.
  // Skipped surface_update_attribute_region(): an argument type is unsupported.
  // Skipped surface_update_skin_region(): an argument type is unsupported.
  static final Pointer<Void> _mb_surface_get_array_len =
      resolveMethodBind('ArrayMesh', 'surface_get_array_len', 923996154);

  int surfaceGetArrayLen(int surfIdx) {
    final arg0 = malloc<Int64>()..value = surfIdx;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_surface_get_array_len, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_surface_get_array_index_len =
      resolveMethodBind('ArrayMesh', 'surface_get_array_index_len', 923996154);

  int surfaceGetArrayIndexLen(int surfIdx) {
    final arg0 = malloc<Int64>()..value = surfIdx;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_surface_get_array_index_len, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_surface_get_format =
      resolveMethodBind('ArrayMesh', 'surface_get_format', 3718287884);

  int surfaceGetFormat(int surfIdx) {
    final arg0 = malloc<Int64>()..value = surfIdx;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_surface_get_format, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_surface_get_primitive_type =
      resolveMethodBind('ArrayMesh', 'surface_get_primitive_type', 4141943888);

  int surfaceGetPrimitiveType(int surfIdx) {
    final arg0 = malloc<Int64>()..value = surfIdx;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_surface_get_primitive_type, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_surface_find_by_name =
      resolveMethodBind('ArrayMesh', 'surface_find_by_name', 1321353865);

  int surfaceFindByName(String name) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), name);
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_surface_find_by_name, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_surface_set_name =
      resolveMethodBind('ArrayMesh', 'surface_set_name', 501894301);

  void surfaceSetName(int surfIdx, String name) {
    final arg0 = malloc<Int64>()..value = surfIdx;
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg1.cast(), name);
    try {
      ptrcallVoid(_mb_surface_set_name, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      BuiltinMarshal.destroyGDString(arg1.cast());
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_surface_get_name =
      resolveMethodBind('ArrayMesh', 'surface_get_name', 844755477);

  String surfaceGetName(int surfIdx) {
    final arg0 = malloc<Int64>()..value = surfIdx;
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_surface_get_name, nativePtr, [arg0.cast<Void>()], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_regen_normal_maps =
      resolveMethodBind('ArrayMesh', 'regen_normal_maps', 3218959716);

  void regenNormalMaps() {
    try {
      ptrcallVoid(_mb_regen_normal_maps, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_lightmap_unwrap =
      resolveMethodBind('ArrayMesh', 'lightmap_unwrap', 1476641071);

  int lightmapUnwrap(Transform3D transform, double texelSize) {
    final arg0 = malloc<Uint8>(Transform3D.nativeSize);
    transform.writeTo(arg0, 0);
    final arg1 = malloc<Double>()..value = texelSize;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_lightmap_unwrap, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_set_custom_aabb =
      resolveMethodBind('ArrayMesh', 'set_custom_aabb', 259215842);

  void setCustomAabb(AABB aabb) {
    final arg0 = malloc<Uint8>(AABB.nativeSize);
    aabb.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_custom_aabb, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_custom_aabb =
      resolveMethodBind('ArrayMesh', 'get_custom_aabb', 1068685055);

  AABB getCustomAabb() {
    try {
      final ret = malloc<Uint8>(AABB.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_custom_aabb, nativePtr, [], ret.cast());
        return AABB.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_shadow_mesh =
      resolveMethodBind('ArrayMesh', 'set_shadow_mesh', 3377897901);

  void setShadowMesh(ArrayMesh mesh) {
    final arg0 = malloc<Pointer<Void>>()..value = mesh.nativePtr;
    try {
      ptrcallVoid(_mb_set_shadow_mesh, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_shadow_mesh =
      resolveMethodBind('ArrayMesh', 'get_shadow_mesh', 3206942465);

  ArrayMesh? getShadowMesh() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_shadow_mesh, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : ArrayMesh(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
