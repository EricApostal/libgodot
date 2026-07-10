// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class RetargetModifier3D extends SkeletonModifier3D {
  RetargetModifier3D(super.nativePtr);

  static final Pointer<Void> _mb_set_profile =
      resolveMethodBind('RetargetModifier3D', 'set_profile', 3870374136);

  void setProfile(SkeletonProfile profile) {
    final arg0 = malloc<Pointer<Void>>()..value = profile.nativePtr;
    try {
      ptrcallVoid(_mb_set_profile, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_profile =
      resolveMethodBind('RetargetModifier3D', 'get_profile', 4291782652);

  SkeletonProfile? getProfile() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_profile, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : SkeletonProfile(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_use_global_pose =
      resolveMethodBind('RetargetModifier3D', 'set_use_global_pose', 2586408642);

  void setUseGlobalPose(bool useGlobalPose) {
    final arg0 = malloc<Uint8>()..value = useGlobalPose ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_use_global_pose, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_using_global_pose =
      resolveMethodBind('RetargetModifier3D', 'is_using_global_pose', 36873697);

  bool isUsingGlobalPose() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_using_global_pose, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_enable_flags =
      resolveMethodBind('RetargetModifier3D', 'set_enable_flags', 2687954213);

  void setEnableFlags(int enableFlags) {
    final arg0 = malloc<Int64>()..value = enableFlags;
    try {
      ptrcallVoid(_mb_set_enable_flags, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_enable_flags =
      resolveMethodBind('RetargetModifier3D', 'get_enable_flags', 358995420);

  int getEnableFlags() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_enable_flags, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_position_enabled =
      resolveMethodBind('RetargetModifier3D', 'set_position_enabled', 2586408642);

  void setPositionEnabled(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_position_enabled, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_position_enabled =
      resolveMethodBind('RetargetModifier3D', 'is_position_enabled', 36873697);

  bool isPositionEnabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_position_enabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_rotation_enabled =
      resolveMethodBind('RetargetModifier3D', 'set_rotation_enabled', 2586408642);

  void setRotationEnabled(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_rotation_enabled, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_rotation_enabled =
      resolveMethodBind('RetargetModifier3D', 'is_rotation_enabled', 36873697);

  bool isRotationEnabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_rotation_enabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_scale_enabled =
      resolveMethodBind('RetargetModifier3D', 'set_scale_enabled', 2586408642);

  void setScaleEnabled(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_scale_enabled, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_scale_enabled =
      resolveMethodBind('RetargetModifier3D', 'is_scale_enabled', 36873697);

  bool isScaleEnabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_scale_enabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
