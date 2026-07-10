// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class PhysicalBone2D extends RigidBody2D {
  PhysicalBone2D(super.nativePtr);

  static final Pointer<Void> _mb_get_joint =
      resolveMethodBind('PhysicalBone2D', 'get_joint', 3582132112);

  Joint2D? getJoint() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_joint, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Joint2D(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_auto_configure_joint =
      resolveMethodBind('PhysicalBone2D', 'get_auto_configure_joint', 36873697);

  bool getAutoConfigureJoint() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_auto_configure_joint, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_auto_configure_joint =
      resolveMethodBind('PhysicalBone2D', 'set_auto_configure_joint', 2586408642);

  void setAutoConfigureJoint(bool autoConfigureJoint) {
    final arg0 = malloc<Uint8>()..value = autoConfigureJoint ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_auto_configure_joint, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_simulate_physics =
      resolveMethodBind('PhysicalBone2D', 'set_simulate_physics', 2586408642);

  void setSimulatePhysics(bool simulatePhysics) {
    final arg0 = malloc<Uint8>()..value = simulatePhysics ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_simulate_physics, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_simulate_physics =
      resolveMethodBind('PhysicalBone2D', 'get_simulate_physics', 36873697);

  bool getSimulatePhysics() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_simulate_physics, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_is_simulating_physics =
      resolveMethodBind('PhysicalBone2D', 'is_simulating_physics', 36873697);

  bool isSimulatingPhysics() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_simulating_physics, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  // Skipped set_bone2d_nodepath(): an argument type is unsupported.
  // Skipped get_bone2d_nodepath(): unsupported return type "NodePath".
  static final Pointer<Void> _mb_set_bone2d_index =
      resolveMethodBind('PhysicalBone2D', 'set_bone2d_index', 1286410249);

  void setBone2dIndex(int boneIndex) {
    final arg0 = malloc<Int64>()..value = boneIndex;
    try {
      ptrcallVoid(_mb_set_bone2d_index, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_bone2d_index =
      resolveMethodBind('PhysicalBone2D', 'get_bone2d_index', 3905245786);

  int getBone2dIndex() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_bone2d_index, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_follow_bone_when_simulating =
      resolveMethodBind('PhysicalBone2D', 'set_follow_bone_when_simulating', 2586408642);

  void setFollowBoneWhenSimulating(bool followBone) {
    final arg0 = malloc<Uint8>()..value = followBone ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_follow_bone_when_simulating, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_follow_bone_when_simulating =
      resolveMethodBind('PhysicalBone2D', 'get_follow_bone_when_simulating', 36873697);

  bool getFollowBoneWhenSimulating() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_follow_bone_when_simulating, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
