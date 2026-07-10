// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class ImporterMesh extends Resource {
  ImporterMesh(super.nativePtr);

  static final Pointer<Void> _mb_add_blend_shape =
      resolveMethodBind('ImporterMesh', 'add_blend_shape', 83702148);

  void addBlendShape(String name) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), name);
    try {
      ptrcallVoid(_mb_add_blend_shape, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_blend_shape_count =
      resolveMethodBind('ImporterMesh', 'get_blend_shape_count', 3905245786);

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
      resolveMethodBind('ImporterMesh', 'get_blend_shape_name', 844755477);

  String getBlendShapeName(int blendShapeIdx) {
    final arg0 = malloc<Int64>()..value = blendShapeIdx;
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_blend_shape_name, nativePtr, [arg0.cast<Void>()], ret.cast());
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

  static final Pointer<Void> _mb_set_blend_shape_mode =
      resolveMethodBind('ImporterMesh', 'set_blend_shape_mode', 227983991);

  void setBlendShapeMode(int mode) {
    final arg0 = malloc<Int64>()..value = mode;
    try {
      ptrcallVoid(_mb_set_blend_shape_mode, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_blend_shape_mode =
      resolveMethodBind('ImporterMesh', 'get_blend_shape_mode', 836485024);

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

  // Skipped add_surface(): an argument type is unsupported.
  static final Pointer<Void> _mb_get_surface_count =
      resolveMethodBind('ImporterMesh', 'get_surface_count', 3905245786);

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

  static final Pointer<Void> _mb_get_surface_primitive_type =
      resolveMethodBind('ImporterMesh', 'get_surface_primitive_type', 3552571330);

  int getSurfacePrimitiveType(int surfaceIdx) {
    final arg0 = malloc<Int64>()..value = surfaceIdx;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_surface_primitive_type, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_surface_name =
      resolveMethodBind('ImporterMesh', 'get_surface_name', 844755477);

  String getSurfaceName(int surfaceIdx) {
    final arg0 = malloc<Int64>()..value = surfaceIdx;
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_surface_name, nativePtr, [arg0.cast<Void>()], ret.cast());
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

  // Skipped get_surface_arrays(): unsupported return type "Array".
  // Skipped get_surface_blend_shape_arrays(): unsupported return type "Array".
  static final Pointer<Void> _mb_get_surface_lod_count =
      resolveMethodBind('ImporterMesh', 'get_surface_lod_count', 923996154);

  int getSurfaceLodCount(int surfaceIdx) {
    final arg0 = malloc<Int64>()..value = surfaceIdx;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_surface_lod_count, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_surface_lod_size =
      resolveMethodBind('ImporterMesh', 'get_surface_lod_size', 3085491603);

  double getSurfaceLodSize(int surfaceIdx, int lodIdx) {
    final arg0 = malloc<Int64>()..value = surfaceIdx;
    final arg1 = malloc<Int64>()..value = lodIdx;
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_surface_lod_size, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  // Skipped get_surface_lod_indices(): unsupported return type "PackedInt32Array".
  static final Pointer<Void> _mb_get_surface_material =
      resolveMethodBind('ImporterMesh', 'get_surface_material', 2897466400);

  Material? getSurfaceMaterial(int surfaceIdx) {
    final arg0 = malloc<Int64>()..value = surfaceIdx;
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_surface_material, nativePtr, [arg0.cast<Void>()], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Material(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_surface_format =
      resolveMethodBind('ImporterMesh', 'get_surface_format', 923996154);

  int getSurfaceFormat(int surfaceIdx) {
    final arg0 = malloc<Int64>()..value = surfaceIdx;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_surface_format, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_surface_name =
      resolveMethodBind('ImporterMesh', 'set_surface_name', 501894301);

  void setSurfaceName(int surfaceIdx, String name) {
    final arg0 = malloc<Int64>()..value = surfaceIdx;
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg1.cast(), name);
    try {
      ptrcallVoid(_mb_set_surface_name, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      BuiltinMarshal.destroyGDString(arg1.cast());
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_set_surface_material =
      resolveMethodBind('ImporterMesh', 'set_surface_material', 3671737478);

  void setSurfaceMaterial(int surfaceIdx, Material material) {
    final arg0 = malloc<Int64>()..value = surfaceIdx;
    final arg1 = malloc<Pointer<Void>>()..value = material.nativePtr;
    try {
      ptrcallVoid(_mb_set_surface_material, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  // Skipped generate_lods(): an argument type is unsupported.
  static final Pointer<Void> _mb_get_mesh =
      resolveMethodBind('ImporterMesh', 'get_mesh', 1457573577);

  ArrayMesh? getMesh(ArrayMesh baseMesh) {
    final arg0 = malloc<Pointer<Void>>()..value = baseMesh.nativePtr;
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_mesh, nativePtr, [arg0.cast<Void>()], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : ArrayMesh(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_clear =
      resolveMethodBind('ImporterMesh', 'clear', 3218959716);

  void clear() {
    try {
      ptrcallVoid(_mb_clear, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_lightmap_size_hint =
      resolveMethodBind('ImporterMesh', 'set_lightmap_size_hint', 1130785943);

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
      resolveMethodBind('ImporterMesh', 'get_lightmap_size_hint', 3690982128);

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

}
