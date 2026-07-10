// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class SkeletonIK3D extends SkeletonModifier3D {
  SkeletonIK3D(super.nativePtr);

  static final Pointer<Void> _mb_set_root_bone =
      resolveMethodBind('SkeletonIK3D', 'set_root_bone', 3304788590);

  void setRootBone(String rootBone) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), rootBone);
    try {
      ptrcallVoid(_mb_set_root_bone, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_root_bone =
      resolveMethodBind('SkeletonIK3D', 'get_root_bone', 2002593661);

  String getRootBone() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_root_bone, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readStringName(ret.cast());
        BuiltinMarshal.destroyStringName(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_tip_bone =
      resolveMethodBind('SkeletonIK3D', 'set_tip_bone', 3304788590);

  void setTipBone(String tipBone) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), tipBone);
    try {
      ptrcallVoid(_mb_set_tip_bone, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_tip_bone =
      resolveMethodBind('SkeletonIK3D', 'get_tip_bone', 2002593661);

  String getTipBone() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_tip_bone, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readStringName(ret.cast());
        BuiltinMarshal.destroyStringName(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_target_transform =
      resolveMethodBind('SkeletonIK3D', 'set_target_transform', 2952846383);

  void setTargetTransform(Transform3D target) {
    final arg0 = malloc<Uint8>(Transform3D.nativeSize);
    target.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_target_transform, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_target_transform =
      resolveMethodBind('SkeletonIK3D', 'get_target_transform', 3229777777);

  Transform3D getTargetTransform() {
    try {
      final ret = malloc<Uint8>(Transform3D.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_target_transform, nativePtr, [], ret.cast());
        return Transform3D.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  // Skipped set_target_node(): an argument type is unsupported.
  // Skipped get_target_node(): unsupported return type "NodePath".
  static final Pointer<Void> _mb_set_override_tip_basis =
      resolveMethodBind('SkeletonIK3D', 'set_override_tip_basis', 2586408642);

  void setOverrideTipBasis(bool override) {
    final arg0 = malloc<Uint8>()..value = override ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_override_tip_basis, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_override_tip_basis =
      resolveMethodBind('SkeletonIK3D', 'is_override_tip_basis', 36873697);

  bool isOverrideTipBasis() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_override_tip_basis, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_use_magnet =
      resolveMethodBind('SkeletonIK3D', 'set_use_magnet', 2586408642);

  void setUseMagnet(bool use) {
    final arg0 = malloc<Uint8>()..value = use ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_use_magnet, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_using_magnet =
      resolveMethodBind('SkeletonIK3D', 'is_using_magnet', 36873697);

  bool isUsingMagnet() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_using_magnet, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_magnet_position =
      resolveMethodBind('SkeletonIK3D', 'set_magnet_position', 3460891852);

  void setMagnetPosition(Vector3 localPosition) {
    final arg0 = malloc<Uint8>(Vector3.nativeSize);
    localPosition.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_magnet_position, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_magnet_position =
      resolveMethodBind('SkeletonIK3D', 'get_magnet_position', 3360562783);

  Vector3 getMagnetPosition() {
    try {
      final ret = malloc<Uint8>(Vector3.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_magnet_position, nativePtr, [], ret.cast());
        return Vector3.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_parent_skeleton =
      resolveMethodBind('SkeletonIK3D', 'get_parent_skeleton', 1488626673);

  Skeleton3D? getParentSkeleton() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_parent_skeleton, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Skeleton3D(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_is_running =
      resolveMethodBind('SkeletonIK3D', 'is_running', 2240911060);

  bool isRunning() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_running, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_min_distance =
      resolveMethodBind('SkeletonIK3D', 'set_min_distance', 373806689);

  void setMinDistance(double minDistance) {
    final arg0 = malloc<Double>()..value = minDistance;
    try {
      ptrcallVoid(_mb_set_min_distance, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_min_distance =
      resolveMethodBind('SkeletonIK3D', 'get_min_distance', 1740695150);

  double getMinDistance() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_min_distance, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_max_iterations =
      resolveMethodBind('SkeletonIK3D', 'set_max_iterations', 1286410249);

  void setMaxIterations(int iterations) {
    final arg0 = malloc<Int64>()..value = iterations;
    try {
      ptrcallVoid(_mb_set_max_iterations, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_max_iterations =
      resolveMethodBind('SkeletonIK3D', 'get_max_iterations', 3905245786);

  int getMaxIterations() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_max_iterations, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_start =
      resolveMethodBind('SkeletonIK3D', 'start', 107499316);

  void start(bool oneTime) {
    final arg0 = malloc<Uint8>()..value = oneTime ? 1 : 0;
    try {
      ptrcallVoid(_mb_start, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_stop =
      resolveMethodBind('SkeletonIK3D', 'stop', 3218959716);

  void stop() {
    try {
      ptrcallVoid(_mb_stop, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_interpolation =
      resolveMethodBind('SkeletonIK3D', 'set_interpolation', 373806689);

  void setInterpolation(double interpolation) {
    final arg0 = malloc<Double>()..value = interpolation;
    try {
      ptrcallVoid(_mb_set_interpolation, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_interpolation =
      resolveMethodBind('SkeletonIK3D', 'get_interpolation', 1740695150);

  double getInterpolation() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_interpolation, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
