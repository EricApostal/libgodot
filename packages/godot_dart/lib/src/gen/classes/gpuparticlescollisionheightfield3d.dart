// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class GPUParticlesCollisionHeightField3D extends GPUParticlesCollision3D {
  GPUParticlesCollisionHeightField3D(super.nativePtr);

  /// Constructs a brand-new engine-owned GPUParticlesCollisionHeightField3D instance
  /// (via classdb_construct_object3), not an existing one.
  factory GPUParticlesCollisionHeightField3D.create() {
    return GPUParticlesCollisionHeightField3D(resolveClassConstructor('GPUParticlesCollisionHeightField3D'));
  }

  static final Pointer<Void> _mb_set_size =
      resolveMethodBind('GPUParticlesCollisionHeightField3D', 'set_size', 3460891852);

  void setSize(Vector3 size) {
    final arg0 = malloc<Uint8>(Vector3.nativeSize);
    size.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_size, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_size =
      resolveMethodBind('GPUParticlesCollisionHeightField3D', 'get_size', 3360562783);

  Vector3 getSize() {
    try {
      final ret = malloc<Uint8>(Vector3.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_size, nativePtr, [], ret.cast());
        return Vector3.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_resolution =
      resolveMethodBind('GPUParticlesCollisionHeightField3D', 'set_resolution', 1009996517);

  void setResolution(int resolution) {
    final arg0 = malloc<Int64>()..value = resolution;
    try {
      ptrcallVoid(_mb_set_resolution, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_resolution =
      resolveMethodBind('GPUParticlesCollisionHeightField3D', 'get_resolution', 1156065644);

  int getResolution() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_resolution, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_update_mode =
      resolveMethodBind('GPUParticlesCollisionHeightField3D', 'set_update_mode', 673680859);

  void setUpdateMode(int updateMode) {
    final arg0 = malloc<Int64>()..value = updateMode;
    try {
      ptrcallVoid(_mb_set_update_mode, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_update_mode =
      resolveMethodBind('GPUParticlesCollisionHeightField3D', 'get_update_mode', 1998141380);

  int getUpdateMode() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_update_mode, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_heightfield_mask =
      resolveMethodBind('GPUParticlesCollisionHeightField3D', 'set_heightfield_mask', 1286410249);

  void setHeightfieldMask(int heightfieldMask) {
    final arg0 = malloc<Int64>()..value = heightfieldMask;
    try {
      ptrcallVoid(_mb_set_heightfield_mask, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_heightfield_mask =
      resolveMethodBind('GPUParticlesCollisionHeightField3D', 'get_heightfield_mask', 3905245786);

  int getHeightfieldMask() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_heightfield_mask, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_heightfield_mask_value =
      resolveMethodBind('GPUParticlesCollisionHeightField3D', 'set_heightfield_mask_value', 300928843);

  void setHeightfieldMaskValue(int layerNumber, bool value) {
    final arg0 = malloc<Int64>()..value = layerNumber;
    final arg1 = malloc<Uint8>()..value = value ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_heightfield_mask_value, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_heightfield_mask_value =
      resolveMethodBind('GPUParticlesCollisionHeightField3D', 'get_heightfield_mask_value', 1116898809);

  bool getHeightfieldMaskValue(int layerNumber) {
    final arg0 = malloc<Int64>()..value = layerNumber;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_heightfield_mask_value, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_follow_camera_enabled =
      resolveMethodBind('GPUParticlesCollisionHeightField3D', 'set_follow_camera_enabled', 2586408642);

  void setFollowCameraEnabled(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_follow_camera_enabled, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_follow_camera_enabled =
      resolveMethodBind('GPUParticlesCollisionHeightField3D', 'is_follow_camera_enabled', 36873697);

  bool isFollowCameraEnabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_follow_camera_enabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
