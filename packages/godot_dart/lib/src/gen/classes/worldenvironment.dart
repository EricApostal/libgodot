// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class WorldEnvironment extends Node {
  WorldEnvironment(super.nativePtr);

  /// Constructs a brand-new engine-owned WorldEnvironment instance
  /// (via classdb_construct_object3), not an existing one.
  factory WorldEnvironment.create() {
    return WorldEnvironment(resolveClassConstructor('WorldEnvironment'));
  }

  static final Pointer<Void> _mb_set_environment =
      resolveMethodBind('WorldEnvironment', 'set_environment', 4143518816);

  void setEnvironment(Environment env) {
    final arg0 = malloc<Pointer<Void>>()..value = env.nativePtr;
    try {
      ptrcallVoid(_mb_set_environment, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_environment =
      resolveMethodBind('WorldEnvironment', 'get_environment', 3082064660);

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

  static final Pointer<Void> _mb_set_camera_attributes =
      resolveMethodBind('WorldEnvironment', 'set_camera_attributes', 2817810567);

  void setCameraAttributes(CameraAttributes cameraAttributes) {
    final arg0 = malloc<Pointer<Void>>()..value = cameraAttributes.nativePtr;
    try {
      ptrcallVoid(_mb_set_camera_attributes, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_camera_attributes =
      resolveMethodBind('WorldEnvironment', 'get_camera_attributes', 3921283215);

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

  static final Pointer<Void> _mb_set_compositor =
      resolveMethodBind('WorldEnvironment', 'set_compositor', 1586754307);

  void setCompositor(Compositor compositor) {
    final arg0 = malloc<Pointer<Void>>()..value = compositor.nativePtr;
    try {
      ptrcallVoid(_mb_set_compositor, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_compositor =
      resolveMethodBind('WorldEnvironment', 'get_compositor', 3647707413);

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

}
