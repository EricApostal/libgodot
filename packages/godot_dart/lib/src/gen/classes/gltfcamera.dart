// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class GLTFCamera extends Resource {
  GLTFCamera(super.nativePtr);

  /// Constructs a brand-new engine-owned GLTFCamera instance
  /// (via classdb_construct_object3), not an existing one.
  factory GLTFCamera.create() {
    return GLTFCamera(resolveClassConstructor('GLTFCamera'));
  }

  static final Pointer<Void> _mb_to_node =
      resolveMethodBind('GLTFCamera', 'to_node', 2285090890);

  Camera3D? toNode() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_to_node, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Camera3D(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  // Skipped to_dictionary(): unsupported return type "Dictionary".
  static final Pointer<Void> _mb_get_perspective =
      resolveMethodBind('GLTFCamera', 'get_perspective', 36873697);

  bool getPerspective() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_perspective, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_perspective =
      resolveMethodBind('GLTFCamera', 'set_perspective', 2586408642);

  void setPerspective(bool perspective) {
    final arg0 = malloc<Uint8>()..value = perspective ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_perspective, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_fov =
      resolveMethodBind('GLTFCamera', 'get_fov', 1740695150);

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

  static final Pointer<Void> _mb_set_fov =
      resolveMethodBind('GLTFCamera', 'set_fov', 373806689);

  void setFov(double fov) {
    final arg0 = malloc<Double>()..value = fov;
    try {
      ptrcallVoid(_mb_set_fov, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_size_mag =
      resolveMethodBind('GLTFCamera', 'get_size_mag', 1740695150);

  double getSizeMag() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_size_mag, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_size_mag =
      resolveMethodBind('GLTFCamera', 'set_size_mag', 373806689);

  void setSizeMag(double sizeMag) {
    final arg0 = malloc<Double>()..value = sizeMag;
    try {
      ptrcallVoid(_mb_set_size_mag, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_depth_far =
      resolveMethodBind('GLTFCamera', 'get_depth_far', 1740695150);

  double getDepthFar() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_depth_far, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_depth_far =
      resolveMethodBind('GLTFCamera', 'set_depth_far', 373806689);

  void setDepthFar(double zdepthFar) {
    final arg0 = malloc<Double>()..value = zdepthFar;
    try {
      ptrcallVoid(_mb_set_depth_far, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_depth_near =
      resolveMethodBind('GLTFCamera', 'get_depth_near', 1740695150);

  double getDepthNear() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_depth_near, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_depth_near =
      resolveMethodBind('GLTFCamera', 'set_depth_near', 373806689);

  void setDepthNear(double zdepthNear) {
    final arg0 = malloc<Double>()..value = zdepthNear;
    try {
      ptrcallVoid(_mb_set_depth_near, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

}
