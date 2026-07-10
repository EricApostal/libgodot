// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class MultiMesh extends Resource {
  MultiMesh(super.nativePtr);

  /// Constructs a brand-new engine-owned MultiMesh instance
  /// (via classdb_construct_object3), not an existing one.
  factory MultiMesh.create() {
    return MultiMesh(resolveClassConstructor('MultiMesh'));
  }

  static final Pointer<Void> _mb_set_mesh =
      resolveMethodBind('MultiMesh', 'set_mesh', 194775623);

  void setMesh(Mesh mesh) {
    final arg0 = malloc<Pointer<Void>>()..value = mesh.nativePtr;
    try {
      ptrcallVoid(_mb_set_mesh, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_mesh =
      resolveMethodBind('MultiMesh', 'get_mesh', 1808005922);

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

  static final Pointer<Void> _mb_set_use_colors =
      resolveMethodBind('MultiMesh', 'set_use_colors', 2586408642);

  void setUseColors(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_use_colors, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_using_colors =
      resolveMethodBind('MultiMesh', 'is_using_colors', 36873697);

  bool isUsingColors() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_using_colors, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_use_custom_data =
      resolveMethodBind('MultiMesh', 'set_use_custom_data', 2586408642);

  void setUseCustomData(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_use_custom_data, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_using_custom_data =
      resolveMethodBind('MultiMesh', 'is_using_custom_data', 36873697);

  bool isUsingCustomData() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_using_custom_data, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_transform_format =
      resolveMethodBind('MultiMesh', 'set_transform_format', 2404750322);

  void setTransformFormat(int format) {
    final arg0 = malloc<Int64>()..value = format;
    try {
      ptrcallVoid(_mb_set_transform_format, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_transform_format =
      resolveMethodBind('MultiMesh', 'get_transform_format', 2444156481);

  int getTransformFormat() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_transform_format, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_instance_count =
      resolveMethodBind('MultiMesh', 'set_instance_count', 1286410249);

  void setInstanceCount(int count) {
    final arg0 = malloc<Int64>()..value = count;
    try {
      ptrcallVoid(_mb_set_instance_count, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_instance_count =
      resolveMethodBind('MultiMesh', 'get_instance_count', 3905245786);

  int getInstanceCount() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_instance_count, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_visible_instance_count =
      resolveMethodBind('MultiMesh', 'set_visible_instance_count', 1286410249);

  void setVisibleInstanceCount(int count) {
    final arg0 = malloc<Int64>()..value = count;
    try {
      ptrcallVoid(_mb_set_visible_instance_count, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_visible_instance_count =
      resolveMethodBind('MultiMesh', 'get_visible_instance_count', 3905245786);

  int getVisibleInstanceCount() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_visible_instance_count, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_physics_interpolation_quality =
      resolveMethodBind('MultiMesh', 'set_physics_interpolation_quality', 1819488408);

  void setPhysicsInterpolationQuality(int quality) {
    final arg0 = malloc<Int64>()..value = quality;
    try {
      ptrcallVoid(_mb_set_physics_interpolation_quality, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_physics_interpolation_quality =
      resolveMethodBind('MultiMesh', 'get_physics_interpolation_quality', 1465701882);

  int getPhysicsInterpolationQuality() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_physics_interpolation_quality, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_instance_transform =
      resolveMethodBind('MultiMesh', 'set_instance_transform', 3616898986);

  void setInstanceTransform(int instance, Transform3D transform) {
    final arg0 = malloc<Int64>()..value = instance;
    final arg1 = malloc<Uint8>(Transform3D.nativeSize);
    transform.writeTo(arg1, 0);
    try {
      ptrcallVoid(_mb_set_instance_transform, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_set_instance_transform_2d =
      resolveMethodBind('MultiMesh', 'set_instance_transform_2d', 30160968);

  void setInstanceTransform2d(int instance, Transform2D transform) {
    final arg0 = malloc<Int64>()..value = instance;
    final arg1 = malloc<Uint8>(Transform2D.nativeSize);
    transform.writeTo(arg1, 0);
    try {
      ptrcallVoid(_mb_set_instance_transform_2d, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_instance_transform =
      resolveMethodBind('MultiMesh', 'get_instance_transform', 1965739696);

  Transform3D getInstanceTransform(int instance) {
    final arg0 = malloc<Int64>()..value = instance;
    try {
      final ret = malloc<Uint8>(Transform3D.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_instance_transform, nativePtr, [arg0.cast<Void>()], ret.cast());
        return Transform3D.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_instance_transform_2d =
      resolveMethodBind('MultiMesh', 'get_instance_transform_2d', 3836996910);

  Transform2D getInstanceTransform2d(int instance) {
    final arg0 = malloc<Int64>()..value = instance;
    try {
      final ret = malloc<Uint8>(Transform2D.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_instance_transform_2d, nativePtr, [arg0.cast<Void>()], ret.cast());
        return Transform2D.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_instance_color =
      resolveMethodBind('MultiMesh', 'set_instance_color', 2878471219);

  void setInstanceColor(int instance, Color color) {
    final arg0 = malloc<Int64>()..value = instance;
    final arg1 = malloc<Uint8>(Color.nativeSize);
    color.writeTo(arg1, 0);
    try {
      ptrcallVoid(_mb_set_instance_color, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_instance_color =
      resolveMethodBind('MultiMesh', 'get_instance_color', 3457211756);

  Color getInstanceColor(int instance) {
    final arg0 = malloc<Int64>()..value = instance;
    try {
      final ret = malloc<Uint8>(Color.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_instance_color, nativePtr, [arg0.cast<Void>()], ret.cast());
        return Color.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_instance_custom_data =
      resolveMethodBind('MultiMesh', 'set_instance_custom_data', 2878471219);

  void setInstanceCustomData(int instance, Color customData) {
    final arg0 = malloc<Int64>()..value = instance;
    final arg1 = malloc<Uint8>(Color.nativeSize);
    customData.writeTo(arg1, 0);
    try {
      ptrcallVoid(_mb_set_instance_custom_data, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_instance_custom_data =
      resolveMethodBind('MultiMesh', 'get_instance_custom_data', 3457211756);

  Color getInstanceCustomData(int instance) {
    final arg0 = malloc<Int64>()..value = instance;
    try {
      final ret = malloc<Uint8>(Color.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_instance_custom_data, nativePtr, [arg0.cast<Void>()], ret.cast());
        return Color.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_reset_instance_physics_interpolation =
      resolveMethodBind('MultiMesh', 'reset_instance_physics_interpolation', 1286410249);

  void resetInstancePhysicsInterpolation(int instance) {
    final arg0 = malloc<Int64>()..value = instance;
    try {
      ptrcallVoid(_mb_reset_instance_physics_interpolation, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_reset_instances_physics_interpolation =
      resolveMethodBind('MultiMesh', 'reset_instances_physics_interpolation', 3218959716);

  void resetInstancesPhysicsInterpolation() {
    try {
      ptrcallVoid(_mb_reset_instances_physics_interpolation, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_custom_aabb =
      resolveMethodBind('MultiMesh', 'set_custom_aabb', 259215842);

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
      resolveMethodBind('MultiMesh', 'get_custom_aabb', 1068685055);

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

  static final Pointer<Void> _mb_get_aabb =
      resolveMethodBind('MultiMesh', 'get_aabb', 1068685055);

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

  // Skipped get_buffer(): unsupported return type "PackedFloat32Array".
  // Skipped set_buffer(): an argument type is unsupported.
  // Skipped set_buffer_interpolated(): an argument type is unsupported.
}
