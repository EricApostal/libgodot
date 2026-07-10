// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class Camera3D extends Node3D {
  Camera3D(super.nativePtr);

  /// Constructs a brand-new engine-owned Camera3D instance
  /// (via classdb_construct_object3), not an existing one.
  factory Camera3D.create() {
    return Camera3D(resolveClassConstructor('Camera3D'));
  }

  static final Pointer<Void> _mb_project_ray_normal =
      resolveMethodBind('Camera3D', 'project_ray_normal', 1718073306);

  Vector3 projectRayNormal(Vector2 screenPoint) {
    final arg0 = malloc<Uint8>(Vector2.nativeSize);
    screenPoint.writeTo(arg0, 0);
    try {
      final ret = malloc<Uint8>(Vector3.nativeSize);
      try {
        ptrcallWithReturn(_mb_project_ray_normal, nativePtr, [arg0.cast<Void>()], ret.cast());
        return Vector3.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_project_local_ray_normal =
      resolveMethodBind('Camera3D', 'project_local_ray_normal', 1718073306);

  Vector3 projectLocalRayNormal(Vector2 screenPoint) {
    final arg0 = malloc<Uint8>(Vector2.nativeSize);
    screenPoint.writeTo(arg0, 0);
    try {
      final ret = malloc<Uint8>(Vector3.nativeSize);
      try {
        ptrcallWithReturn(_mb_project_local_ray_normal, nativePtr, [arg0.cast<Void>()], ret.cast());
        return Vector3.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_project_ray_origin =
      resolveMethodBind('Camera3D', 'project_ray_origin', 1718073306);

  Vector3 projectRayOrigin(Vector2 screenPoint) {
    final arg0 = malloc<Uint8>(Vector2.nativeSize);
    screenPoint.writeTo(arg0, 0);
    try {
      final ret = malloc<Uint8>(Vector3.nativeSize);
      try {
        ptrcallWithReturn(_mb_project_ray_origin, nativePtr, [arg0.cast<Void>()], ret.cast());
        return Vector3.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_unproject_position =
      resolveMethodBind('Camera3D', 'unproject_position', 3758901831);

  Vector2 unprojectPosition(Vector3 worldPoint) {
    final arg0 = malloc<Uint8>(Vector3.nativeSize);
    worldPoint.writeTo(arg0, 0);
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_unproject_position, nativePtr, [arg0.cast<Void>()], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_position_behind =
      resolveMethodBind('Camera3D', 'is_position_behind', 3108956480);

  bool isPositionBehind(Vector3 worldPoint) {
    final arg0 = malloc<Uint8>(Vector3.nativeSize);
    worldPoint.writeTo(arg0, 0);
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_position_behind, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_project_position =
      resolveMethodBind('Camera3D', 'project_position', 2171975744);

  Vector3 projectPosition(Vector2 screenPoint, double zDepth) {
    final arg0 = malloc<Uint8>(Vector2.nativeSize);
    screenPoint.writeTo(arg0, 0);
    final arg1 = malloc<Double>()..value = zDepth;
    try {
      final ret = malloc<Uint8>(Vector3.nativeSize);
      try {
        ptrcallWithReturn(_mb_project_position, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return Vector3.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_set_perspective =
      resolveMethodBind('Camera3D', 'set_perspective', 2385087082);

  void setPerspective(double fov, double zNear, double zFar) {
    final arg0 = malloc<Double>()..value = fov;
    final arg1 = malloc<Double>()..value = zNear;
    final arg2 = malloc<Double>()..value = zFar;
    try {
      ptrcallVoid(_mb_set_perspective, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_set_orthogonal =
      resolveMethodBind('Camera3D', 'set_orthogonal', 2385087082);

  void setOrthogonal(double size, double zNear, double zFar) {
    final arg0 = malloc<Double>()..value = size;
    final arg1 = malloc<Double>()..value = zNear;
    final arg2 = malloc<Double>()..value = zFar;
    try {
      ptrcallVoid(_mb_set_orthogonal, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_set_frustum =
      resolveMethodBind('Camera3D', 'set_frustum', 354890663);

  void setFrustum(double size, Vector2 offset, double zNear, double zFar) {
    final arg0 = malloc<Double>()..value = size;
    final arg1 = malloc<Uint8>(Vector2.nativeSize);
    offset.writeTo(arg1, 0);
    final arg2 = malloc<Double>()..value = zNear;
    final arg3 = malloc<Double>()..value = zFar;
    try {
      ptrcallVoid(_mb_set_frustum, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>(), arg3.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
      malloc.free(arg3);
    }
  }

  static final Pointer<Void> _mb_make_current =
      resolveMethodBind('Camera3D', 'make_current', 3218959716);

  void makeCurrent() {
    try {
      ptrcallVoid(_mb_make_current, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_clear_current =
      resolveMethodBind('Camera3D', 'clear_current', 3216645846);

  void clearCurrent(bool enableNext) {
    final arg0 = malloc<Uint8>()..value = enableNext ? 1 : 0;
    try {
      ptrcallVoid(_mb_clear_current, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_current =
      resolveMethodBind('Camera3D', 'set_current', 2586408642);

  void setCurrent(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_current, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_current =
      resolveMethodBind('Camera3D', 'is_current', 36873697);

  bool isCurrent() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_current, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_camera_transform =
      resolveMethodBind('Camera3D', 'get_camera_transform', 3229777777);

  Transform3D getCameraTransform() {
    try {
      final ret = malloc<Uint8>(Transform3D.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_camera_transform, nativePtr, [], ret.cast());
        return Transform3D.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_camera_projection =
      resolveMethodBind('Camera3D', 'get_camera_projection', 2910717950);

  Projection getCameraProjection() {
    try {
      final ret = malloc<Uint8>(Projection.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_camera_projection, nativePtr, [], ret.cast());
        return Projection.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_fov =
      resolveMethodBind('Camera3D', 'get_fov', 1740695150);

  double getFov() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_fov, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_frustum_offset =
      resolveMethodBind('Camera3D', 'get_frustum_offset', 3341600327);

  Vector2 getFrustumOffset() {
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_frustum_offset, nativePtr, [], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_size =
      resolveMethodBind('Camera3D', 'get_size', 1740695150);

  double getSize() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_size, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_far =
      resolveMethodBind('Camera3D', 'get_far', 1740695150);

  double getFar() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_far, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_near =
      resolveMethodBind('Camera3D', 'get_near', 1740695150);

  double getNear() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_near, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_fov =
      resolveMethodBind('Camera3D', 'set_fov', 373806689);

  void setFov(double fov) {
    final arg0 = malloc<Double>()..value = fov;
    try {
      ptrcallVoid(_mb_set_fov, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_frustum_offset =
      resolveMethodBind('Camera3D', 'set_frustum_offset', 743155724);

  void setFrustumOffset(Vector2 offset) {
    final arg0 = malloc<Uint8>(Vector2.nativeSize);
    offset.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_frustum_offset, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_size =
      resolveMethodBind('Camera3D', 'set_size', 373806689);

  void setSize(double size) {
    final arg0 = malloc<Double>()..value = size;
    try {
      ptrcallVoid(_mb_set_size, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_far =
      resolveMethodBind('Camera3D', 'set_far', 373806689);

  void setFar(double far) {
    final arg0 = malloc<Double>()..value = far;
    try {
      ptrcallVoid(_mb_set_far, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_near =
      resolveMethodBind('Camera3D', 'set_near', 373806689);

  void setNear(double near) {
    final arg0 = malloc<Double>()..value = near;
    try {
      ptrcallVoid(_mb_set_near, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_projection =
      resolveMethodBind('Camera3D', 'get_projection', 2624185235);

  int getProjection() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_projection, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_projection =
      resolveMethodBind('Camera3D', 'set_projection', 4218540108);

  void setProjection(int mode) {
    final arg0 = malloc<Int64>()..value = mode;
    try {
      ptrcallVoid(_mb_set_projection, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_h_offset =
      resolveMethodBind('Camera3D', 'set_h_offset', 373806689);

  void setHOffset(double offset) {
    final arg0 = malloc<Double>()..value = offset;
    try {
      ptrcallVoid(_mb_set_h_offset, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_h_offset =
      resolveMethodBind('Camera3D', 'get_h_offset', 1740695150);

  double getHOffset() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_h_offset, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_v_offset =
      resolveMethodBind('Camera3D', 'set_v_offset', 373806689);

  void setVOffset(double offset) {
    final arg0 = malloc<Double>()..value = offset;
    try {
      ptrcallVoid(_mb_set_v_offset, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_v_offset =
      resolveMethodBind('Camera3D', 'get_v_offset', 1740695150);

  double getVOffset() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_v_offset, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_cull_mask =
      resolveMethodBind('Camera3D', 'set_cull_mask', 1286410249);

  void setCullMask(int mask) {
    final arg0 = malloc<Int64>()..value = mask;
    try {
      ptrcallVoid(_mb_set_cull_mask, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_cull_mask =
      resolveMethodBind('Camera3D', 'get_cull_mask', 3905245786);

  int getCullMask() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_cull_mask, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_environment =
      resolveMethodBind('Camera3D', 'set_environment', 4143518816);

  void setEnvironment(Environment env) {
    final arg0 = malloc<Pointer<Void>>()..value = env.nativePtr;
    try {
      ptrcallVoid(_mb_set_environment, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_environment =
      resolveMethodBind('Camera3D', 'get_environment', 3082064660);

  Environment? getEnvironment() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_environment, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Environment(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_attributes =
      resolveMethodBind('Camera3D', 'set_attributes', 2817810567);

  void setAttributes(CameraAttributes env) {
    final arg0 = malloc<Pointer<Void>>()..value = env.nativePtr;
    try {
      ptrcallVoid(_mb_set_attributes, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_attributes =
      resolveMethodBind('Camera3D', 'get_attributes', 3921283215);

  CameraAttributes? getAttributes() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_attributes, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : CameraAttributes(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_compositor =
      resolveMethodBind('Camera3D', 'set_compositor', 1586754307);

  void setCompositor(Compositor compositor) {
    final arg0 = malloc<Pointer<Void>>()..value = compositor.nativePtr;
    try {
      ptrcallVoid(_mb_set_compositor, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_compositor =
      resolveMethodBind('Camera3D', 'get_compositor', 3647707413);

  Compositor? getCompositor() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_compositor, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Compositor(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_keep_aspect_mode =
      resolveMethodBind('Camera3D', 'set_keep_aspect_mode', 1740651252);

  void setKeepAspectMode(int mode) {
    final arg0 = malloc<Int64>()..value = mode;
    try {
      ptrcallVoid(_mb_set_keep_aspect_mode, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_keep_aspect_mode =
      resolveMethodBind('Camera3D', 'get_keep_aspect_mode', 2790278316);

  int getKeepAspectMode() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_keep_aspect_mode, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_doppler_tracking =
      resolveMethodBind('Camera3D', 'set_doppler_tracking', 3109431270);

  void setDopplerTracking(int mode) {
    final arg0 = malloc<Int64>()..value = mode;
    try {
      ptrcallVoid(_mb_set_doppler_tracking, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_doppler_tracking =
      resolveMethodBind('Camera3D', 'get_doppler_tracking', 1584483649);

  int getDopplerTracking() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_doppler_tracking, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  // Skipped get_frustum(): unsupported return type "typedarray::Plane".
  static final Pointer<Void> _mb_is_position_in_frustum =
      resolveMethodBind('Camera3D', 'is_position_in_frustum', 3108956480);

  bool isPositionInFrustum(Vector3 worldPoint) {
    final arg0 = malloc<Uint8>(Vector3.nativeSize);
    worldPoint.writeTo(arg0, 0);
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_position_in_frustum, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  // Skipped get_camera_rid(): unsupported return type "RID".
  // Skipped get_pyramid_shape_rid(): unsupported return type "RID".
  static final Pointer<Void> _mb_set_cull_mask_value =
      resolveMethodBind('Camera3D', 'set_cull_mask_value', 300928843);

  void setCullMaskValue(int layerNumber, bool value) {
    final arg0 = malloc<Int64>()..value = layerNumber;
    final arg1 = malloc<Uint8>()..value = value ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_cull_mask_value, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_cull_mask_value =
      resolveMethodBind('Camera3D', 'get_cull_mask_value', 1116898809);

  bool getCullMaskValue(int layerNumber) {
    final arg0 = malloc<Int64>()..value = layerNumber;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_cull_mask_value, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

}
