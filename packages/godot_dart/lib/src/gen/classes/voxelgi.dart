// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class VoxelGI extends VisualInstance3D {
  VoxelGI(super.nativePtr);

  static final Pointer<Void> _mb_set_probe_data =
      resolveMethodBind('VoxelGI', 'set_probe_data', 1637849675);

  void setProbeData(VoxelGIData data) {
    final arg0 = malloc<Pointer<Void>>()..value = data.nativePtr;
    try {
      ptrcallVoid(_mb_set_probe_data, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_probe_data =
      resolveMethodBind('VoxelGI', 'get_probe_data', 1730645405);

  VoxelGIData? getProbeData() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_probe_data, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : VoxelGIData(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_subdiv =
      resolveMethodBind('VoxelGI', 'set_subdiv', 2240898472);

  void setSubdiv(int subdiv) {
    final arg0 = malloc<Int64>()..value = subdiv;
    try {
      ptrcallVoid(_mb_set_subdiv, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_subdiv =
      resolveMethodBind('VoxelGI', 'get_subdiv', 4261647950);

  int getSubdiv() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_subdiv, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_size =
      resolveMethodBind('VoxelGI', 'set_size', 3460891852);

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
      resolveMethodBind('VoxelGI', 'get_size', 3360562783);

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

  static final Pointer<Void> _mb_set_camera_attributes =
      resolveMethodBind('VoxelGI', 'set_camera_attributes', 2817810567);

  void setCameraAttributes(CameraAttributes cameraAttributes) {
    final arg0 = malloc<Pointer<Void>>()..value = cameraAttributes.nativePtr;
    try {
      ptrcallVoid(_mb_set_camera_attributes, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_camera_attributes =
      resolveMethodBind('VoxelGI', 'get_camera_attributes', 3921283215);

  CameraAttributes? getCameraAttributes() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_camera_attributes, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : CameraAttributes(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_bake =
      resolveMethodBind('VoxelGI', 'bake', 2781551026);

  void bake(Node fromNode, bool createVisualDebug) {
    final arg0 = malloc<Pointer<Void>>()..value = fromNode.nativePtr;
    final arg1 = malloc<Uint8>()..value = createVisualDebug ? 1 : 0;
    try {
      ptrcallVoid(_mb_bake, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_debug_bake =
      resolveMethodBind('VoxelGI', 'debug_bake', 3218959716);

  void debugBake() {
    try {
      ptrcallVoid(_mb_debug_bake, nativePtr, []);
    } finally {
    }
  }

}
