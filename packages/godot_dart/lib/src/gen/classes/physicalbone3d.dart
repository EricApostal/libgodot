// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class PhysicalBone3D extends PhysicsBody3D {
  PhysicalBone3D(super.nativePtr);

  static final Pointer<Void> _mb_apply_central_impulse =
      resolveMethodBind('PhysicalBone3D', 'apply_central_impulse', 3460891852);

  void applyCentralImpulse(Vector3 impulse) {
    final arg0 = malloc<Uint8>(Vector3.nativeSize);
    impulse.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_apply_central_impulse, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_apply_impulse =
      resolveMethodBind('PhysicalBone3D', 'apply_impulse', 2754756483);

  void applyImpulse(Vector3 impulse, Vector3 position) {
    final arg0 = malloc<Uint8>(Vector3.nativeSize);
    impulse.writeTo(arg0, 0);
    final arg1 = malloc<Uint8>(Vector3.nativeSize);
    position.writeTo(arg1, 0);
    try {
      ptrcallVoid(_mb_apply_impulse, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_set_joint_type =
      resolveMethodBind('PhysicalBone3D', 'set_joint_type', 2289552604);

  void setJointType(int jointType) {
    final arg0 = malloc<Int64>()..value = jointType;
    try {
      ptrcallVoid(_mb_set_joint_type, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_joint_type =
      resolveMethodBind('PhysicalBone3D', 'get_joint_type', 931347320);

  int getJointType() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_joint_type, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  // Skipped get_joint_rid(): unsupported return type "RID".
  static final Pointer<Void> _mb_set_joint_offset =
      resolveMethodBind('PhysicalBone3D', 'set_joint_offset', 2952846383);

  void setJointOffset(Transform3D offset) {
    final arg0 = malloc<Uint8>(Transform3D.nativeSize);
    offset.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_joint_offset, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_joint_offset =
      resolveMethodBind('PhysicalBone3D', 'get_joint_offset', 3229777777);

  Transform3D getJointOffset() {
    try {
      final ret = malloc<Uint8>(Transform3D.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_joint_offset, nativePtr, [], ret.cast());
        return Transform3D.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_joint_rotation =
      resolveMethodBind('PhysicalBone3D', 'set_joint_rotation', 3460891852);

  void setJointRotation(Vector3 euler) {
    final arg0 = malloc<Uint8>(Vector3.nativeSize);
    euler.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_joint_rotation, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_joint_rotation =
      resolveMethodBind('PhysicalBone3D', 'get_joint_rotation', 3360562783);

  Vector3 getJointRotation() {
    try {
      final ret = malloc<Uint8>(Vector3.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_joint_rotation, nativePtr, [], ret.cast());
        return Vector3.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_body_offset =
      resolveMethodBind('PhysicalBone3D', 'set_body_offset', 2952846383);

  void setBodyOffset(Transform3D offset) {
    final arg0 = malloc<Uint8>(Transform3D.nativeSize);
    offset.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_body_offset, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_body_offset =
      resolveMethodBind('PhysicalBone3D', 'get_body_offset', 3229777777);

  Transform3D getBodyOffset() {
    try {
      final ret = malloc<Uint8>(Transform3D.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_body_offset, nativePtr, [], ret.cast());
        return Transform3D.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_simulate_physics =
      resolveMethodBind('PhysicalBone3D', 'get_simulate_physics', 2240911060);

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
      resolveMethodBind('PhysicalBone3D', 'is_simulating_physics', 2240911060);

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

  static final Pointer<Void> _mb_get_bone_id =
      resolveMethodBind('PhysicalBone3D', 'get_bone_id', 3905245786);

  int getBoneId() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_bone_id, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_mass =
      resolveMethodBind('PhysicalBone3D', 'set_mass', 373806689);

  void setMass(double mass) {
    final arg0 = malloc<Double>()..value = mass;
    try {
      ptrcallVoid(_mb_set_mass, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_mass =
      resolveMethodBind('PhysicalBone3D', 'get_mass', 1740695150);

  double getMass() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_mass, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_friction =
      resolveMethodBind('PhysicalBone3D', 'set_friction', 373806689);

  void setFriction(double friction) {
    final arg0 = malloc<Double>()..value = friction;
    try {
      ptrcallVoid(_mb_set_friction, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_friction =
      resolveMethodBind('PhysicalBone3D', 'get_friction', 1740695150);

  double getFriction() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_friction, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_bounce =
      resolveMethodBind('PhysicalBone3D', 'set_bounce', 373806689);

  void setBounce(double bounce) {
    final arg0 = malloc<Double>()..value = bounce;
    try {
      ptrcallVoid(_mb_set_bounce, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_bounce =
      resolveMethodBind('PhysicalBone3D', 'get_bounce', 1740695150);

  double getBounce() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_bounce, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_gravity_scale =
      resolveMethodBind('PhysicalBone3D', 'set_gravity_scale', 373806689);

  void setGravityScale(double gravityScale) {
    final arg0 = malloc<Double>()..value = gravityScale;
    try {
      ptrcallVoid(_mb_set_gravity_scale, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_gravity_scale =
      resolveMethodBind('PhysicalBone3D', 'get_gravity_scale', 1740695150);

  double getGravityScale() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_gravity_scale, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_linear_damp_mode =
      resolveMethodBind('PhysicalBone3D', 'set_linear_damp_mode', 1244972221);

  void setLinearDampMode(int linearDampMode) {
    final arg0 = malloc<Int64>()..value = linearDampMode;
    try {
      ptrcallVoid(_mb_set_linear_damp_mode, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_linear_damp_mode =
      resolveMethodBind('PhysicalBone3D', 'get_linear_damp_mode', 205884699);

  int getLinearDampMode() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_linear_damp_mode, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_angular_damp_mode =
      resolveMethodBind('PhysicalBone3D', 'set_angular_damp_mode', 1244972221);

  void setAngularDampMode(int angularDampMode) {
    final arg0 = malloc<Int64>()..value = angularDampMode;
    try {
      ptrcallVoid(_mb_set_angular_damp_mode, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_angular_damp_mode =
      resolveMethodBind('PhysicalBone3D', 'get_angular_damp_mode', 205884699);

  int getAngularDampMode() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_angular_damp_mode, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_linear_damp =
      resolveMethodBind('PhysicalBone3D', 'set_linear_damp', 373806689);

  void setLinearDamp(double linearDamp) {
    final arg0 = malloc<Double>()..value = linearDamp;
    try {
      ptrcallVoid(_mb_set_linear_damp, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_linear_damp =
      resolveMethodBind('PhysicalBone3D', 'get_linear_damp', 1740695150);

  double getLinearDamp() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_linear_damp, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_angular_damp =
      resolveMethodBind('PhysicalBone3D', 'set_angular_damp', 373806689);

  void setAngularDamp(double angularDamp) {
    final arg0 = malloc<Double>()..value = angularDamp;
    try {
      ptrcallVoid(_mb_set_angular_damp, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_angular_damp =
      resolveMethodBind('PhysicalBone3D', 'get_angular_damp', 1740695150);

  double getAngularDamp() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_angular_damp, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_linear_velocity =
      resolveMethodBind('PhysicalBone3D', 'set_linear_velocity', 3460891852);

  void setLinearVelocity(Vector3 linearVelocity) {
    final arg0 = malloc<Uint8>(Vector3.nativeSize);
    linearVelocity.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_linear_velocity, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_linear_velocity =
      resolveMethodBind('PhysicalBone3D', 'get_linear_velocity', 3360562783);

  Vector3 getLinearVelocity() {
    try {
      final ret = malloc<Uint8>(Vector3.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_linear_velocity, nativePtr, [], ret.cast());
        return Vector3.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_angular_velocity =
      resolveMethodBind('PhysicalBone3D', 'set_angular_velocity', 3460891852);

  void setAngularVelocity(Vector3 angularVelocity) {
    final arg0 = malloc<Uint8>(Vector3.nativeSize);
    angularVelocity.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_angular_velocity, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_angular_velocity =
      resolveMethodBind('PhysicalBone3D', 'get_angular_velocity', 3360562783);

  Vector3 getAngularVelocity() {
    try {
      final ret = malloc<Uint8>(Vector3.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_angular_velocity, nativePtr, [], ret.cast());
        return Vector3.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_use_custom_integrator =
      resolveMethodBind('PhysicalBone3D', 'set_use_custom_integrator', 2586408642);

  void setUseCustomIntegrator(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_use_custom_integrator, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_using_custom_integrator =
      resolveMethodBind('PhysicalBone3D', 'is_using_custom_integrator', 2240911060);

  bool isUsingCustomIntegrator() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_using_custom_integrator, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_can_sleep =
      resolveMethodBind('PhysicalBone3D', 'set_can_sleep', 2586408642);

  void setCanSleep(bool ableToSleep) {
    final arg0 = malloc<Uint8>()..value = ableToSleep ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_can_sleep, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_able_to_sleep =
      resolveMethodBind('PhysicalBone3D', 'is_able_to_sleep', 36873697);

  bool isAbleToSleep() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_able_to_sleep, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
