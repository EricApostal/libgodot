// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class GPUParticlesCollisionSDF3D extends GPUParticlesCollision3D {
  GPUParticlesCollisionSDF3D(super.nativePtr);

  /// Constructs a brand-new engine-owned GPUParticlesCollisionSDF3D instance
  /// (via classdb_construct_object3), not an existing one.
  factory GPUParticlesCollisionSDF3D.create() {
    return GPUParticlesCollisionSDF3D(resolveClassConstructor('GPUParticlesCollisionSDF3D'));
  }

  static final Pointer<Void> _mb_set_size =
      resolveMethodBind('GPUParticlesCollisionSDF3D', 'set_size', 3460891852);

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
      resolveMethodBind('GPUParticlesCollisionSDF3D', 'get_size', 3360562783);

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
      resolveMethodBind('GPUParticlesCollisionSDF3D', 'set_resolution', 1155629297);

  void setResolution(int resolution) {
    final arg0 = malloc<Int64>()..value = resolution;
    try {
      ptrcallVoid(_mb_set_resolution, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_resolution =
      resolveMethodBind('GPUParticlesCollisionSDF3D', 'get_resolution', 2919555867);

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

  static final Pointer<Void> _mb_set_texture =
      resolveMethodBind('GPUParticlesCollisionSDF3D', 'set_texture', 1188404210);

  void setTexture(Texture3D texture) {
    final arg0 = malloc<Pointer<Void>>()..value = texture.nativePtr;
    try {
      ptrcallVoid(_mb_set_texture, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_texture =
      resolveMethodBind('GPUParticlesCollisionSDF3D', 'get_texture', 373985333);

  Texture3D? getTexture() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_texture, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Texture3D(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_thickness =
      resolveMethodBind('GPUParticlesCollisionSDF3D', 'set_thickness', 373806689);

  void setThickness(double thickness) {
    final arg0 = malloc<Double>()..value = thickness;
    try {
      ptrcallVoid(_mb_set_thickness, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_thickness =
      resolveMethodBind('GPUParticlesCollisionSDF3D', 'get_thickness', 1740695150);

  double getThickness() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_thickness, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_bake_mask =
      resolveMethodBind('GPUParticlesCollisionSDF3D', 'set_bake_mask', 1286410249);

  void setBakeMask(int mask) {
    final arg0 = malloc<Int64>()..value = mask;
    try {
      ptrcallVoid(_mb_set_bake_mask, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_bake_mask =
      resolveMethodBind('GPUParticlesCollisionSDF3D', 'get_bake_mask', 3905245786);

  int getBakeMask() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_bake_mask, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_bake_mask_value =
      resolveMethodBind('GPUParticlesCollisionSDF3D', 'set_bake_mask_value', 300928843);

  void setBakeMaskValue(int layerNumber, bool value) {
    final arg0 = malloc<Int64>()..value = layerNumber;
    final arg1 = malloc<Uint8>()..value = value ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_bake_mask_value, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_bake_mask_value =
      resolveMethodBind('GPUParticlesCollisionSDF3D', 'get_bake_mask_value', 1116898809);

  bool getBakeMaskValue(int layerNumber) {
    final arg0 = malloc<Int64>()..value = layerNumber;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_bake_mask_value, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

}
