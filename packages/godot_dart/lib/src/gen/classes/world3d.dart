// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class World3D extends Resource {
  World3D(super.nativePtr);

  // Skipped get_space(): unsupported return type "RID".
  // Skipped get_navigation_map(): unsupported return type "RID".
  // Skipped get_scenario(): unsupported return type "RID".
  static final Pointer<Void> _mb_set_environment =
      resolveMethodBind('World3D', 'set_environment', 4143518816);

  void setEnvironment(Environment env) {
    final arg0 = malloc<Pointer<Void>>()..value = env.nativePtr;
    try {
      ptrcallVoid(_mb_set_environment, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_environment =
      resolveMethodBind('World3D', 'get_environment', 3082064660);

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

  static final Pointer<Void> _mb_set_fallback_environment =
      resolveMethodBind('World3D', 'set_fallback_environment', 4143518816);

  void setFallbackEnvironment(Environment env) {
    final arg0 = malloc<Pointer<Void>>()..value = env.nativePtr;
    try {
      ptrcallVoid(_mb_set_fallback_environment, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_fallback_environment =
      resolveMethodBind('World3D', 'get_fallback_environment', 3082064660);

  Environment? getFallbackEnvironment() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_fallback_environment, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Environment(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_camera_attributes =
      resolveMethodBind('World3D', 'set_camera_attributes', 2817810567);

  void setCameraAttributes(CameraAttributes attributes) {
    final arg0 = malloc<Pointer<Void>>()..value = attributes.nativePtr;
    try {
      ptrcallVoid(_mb_set_camera_attributes, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_camera_attributes =
      resolveMethodBind('World3D', 'get_camera_attributes', 3921283215);

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

  static final Pointer<Void> _mb_get_direct_space_state =
      resolveMethodBind('World3D', 'get_direct_space_state', 2069328350);

  PhysicsDirectSpaceState3D? getDirectSpaceState() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_direct_space_state, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : PhysicsDirectSpaceState3D(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
