// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class RigidBody3D extends PhysicsBody3D {
  RigidBody3D(super.nativePtr);

  /// Constructs a brand-new engine-owned RigidBody3D instance
  /// (via classdb_construct_object3), not an existing one.
  factory RigidBody3D.create() {
    return RigidBody3D(resolveClassConstructor('RigidBody3D'));
  }

  static final Pointer<Void> _mb_set_mass =
      resolveMethodBind('RigidBody3D', 'set_mass', 373806689);

  void setMass(double mass) {
    final arg0 = malloc<Double>()..value = mass;
    try {
      ptrcallVoid(_mb_set_mass, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_mass =
      resolveMethodBind('RigidBody3D', 'get_mass', 1740695150);

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

  static final Pointer<Void> _mb_set_inertia =
      resolveMethodBind('RigidBody3D', 'set_inertia', 3460891852);

  void setInertia(Vector3 inertia) {
    final arg0 = malloc<Uint8>(Vector3.nativeSize);
    inertia.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_inertia, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_inertia =
      resolveMethodBind('RigidBody3D', 'get_inertia', 3360562783);

  Vector3 getInertia() {
    try {
      final ret = malloc<Uint8>(Vector3.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_inertia, nativePtr, [], ret.cast());
        return Vector3.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_center_of_mass_mode =
      resolveMethodBind('RigidBody3D', 'set_center_of_mass_mode', 3625866032);

  void setCenterOfMassMode(int mode) {
    final arg0 = malloc<Int64>()..value = mode;
    try {
      ptrcallVoid(_mb_set_center_of_mass_mode, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_center_of_mass_mode =
      resolveMethodBind('RigidBody3D', 'get_center_of_mass_mode', 237405040);

  int getCenterOfMassMode() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_center_of_mass_mode, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_center_of_mass =
      resolveMethodBind('RigidBody3D', 'set_center_of_mass', 3460891852);

  void setCenterOfMass(Vector3 centerOfMass) {
    final arg0 = malloc<Uint8>(Vector3.nativeSize);
    centerOfMass.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_center_of_mass, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_center_of_mass =
      resolveMethodBind('RigidBody3D', 'get_center_of_mass', 3360562783);

  Vector3 getCenterOfMass() {
    try {
      final ret = malloc<Uint8>(Vector3.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_center_of_mass, nativePtr, [], ret.cast());
        return Vector3.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_physics_material_override =
      resolveMethodBind('RigidBody3D', 'set_physics_material_override', 1784508650);

  void setPhysicsMaterialOverride(PhysicsMaterial physicsMaterialOverride) {
    final arg0 = malloc<Pointer<Void>>()..value = physicsMaterialOverride.nativePtr;
    try {
      ptrcallVoid(_mb_set_physics_material_override, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_physics_material_override =
      resolveMethodBind('RigidBody3D', 'get_physics_material_override', 2521850424);

  PhysicsMaterial? getPhysicsMaterialOverride() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_physics_material_override, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : PhysicsMaterial(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_linear_velocity =
      resolveMethodBind('RigidBody3D', 'set_linear_velocity', 3460891852);

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
      resolveMethodBind('RigidBody3D', 'get_linear_velocity', 3360562783);

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
      resolveMethodBind('RigidBody3D', 'set_angular_velocity', 3460891852);

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
      resolveMethodBind('RigidBody3D', 'get_angular_velocity', 3360562783);

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

  static final Pointer<Void> _mb_get_inverse_inertia_tensor =
      resolveMethodBind('RigidBody3D', 'get_inverse_inertia_tensor', 2716978435);

  Basis getInverseInertiaTensor() {
    try {
      final ret = malloc<Uint8>(Basis.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_inverse_inertia_tensor, nativePtr, [], ret.cast());
        return Basis.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_gravity_scale =
      resolveMethodBind('RigidBody3D', 'set_gravity_scale', 373806689);

  void setGravityScale(double gravityScale) {
    final arg0 = malloc<Double>()..value = gravityScale;
    try {
      ptrcallVoid(_mb_set_gravity_scale, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_gravity_scale =
      resolveMethodBind('RigidBody3D', 'get_gravity_scale', 1740695150);

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
      resolveMethodBind('RigidBody3D', 'set_linear_damp_mode', 1802035050);

  void setLinearDampMode(int linearDampMode) {
    final arg0 = malloc<Int64>()..value = linearDampMode;
    try {
      ptrcallVoid(_mb_set_linear_damp_mode, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_linear_damp_mode =
      resolveMethodBind('RigidBody3D', 'get_linear_damp_mode', 1366206940);

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
      resolveMethodBind('RigidBody3D', 'set_angular_damp_mode', 1802035050);

  void setAngularDampMode(int angularDampMode) {
    final arg0 = malloc<Int64>()..value = angularDampMode;
    try {
      ptrcallVoid(_mb_set_angular_damp_mode, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_angular_damp_mode =
      resolveMethodBind('RigidBody3D', 'get_angular_damp_mode', 1366206940);

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
      resolveMethodBind('RigidBody3D', 'set_linear_damp', 373806689);

  void setLinearDamp(double linearDamp) {
    final arg0 = malloc<Double>()..value = linearDamp;
    try {
      ptrcallVoid(_mb_set_linear_damp, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_linear_damp =
      resolveMethodBind('RigidBody3D', 'get_linear_damp', 1740695150);

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
      resolveMethodBind('RigidBody3D', 'set_angular_damp', 373806689);

  void setAngularDamp(double angularDamp) {
    final arg0 = malloc<Double>()..value = angularDamp;
    try {
      ptrcallVoid(_mb_set_angular_damp, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_angular_damp =
      resolveMethodBind('RigidBody3D', 'get_angular_damp', 1740695150);

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

  static final Pointer<Void> _mb_set_max_contacts_reported =
      resolveMethodBind('RigidBody3D', 'set_max_contacts_reported', 1286410249);

  void setMaxContactsReported(int amount) {
    final arg0 = malloc<Int64>()..value = amount;
    try {
      ptrcallVoid(_mb_set_max_contacts_reported, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_max_contacts_reported =
      resolveMethodBind('RigidBody3D', 'get_max_contacts_reported', 3905245786);

  int getMaxContactsReported() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_max_contacts_reported, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_contact_count =
      resolveMethodBind('RigidBody3D', 'get_contact_count', 3905245786);

  int getContactCount() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_contact_count, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_use_custom_integrator =
      resolveMethodBind('RigidBody3D', 'set_use_custom_integrator', 2586408642);

  void setUseCustomIntegrator(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_use_custom_integrator, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_using_custom_integrator =
      resolveMethodBind('RigidBody3D', 'is_using_custom_integrator', 2240911060);

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

  static final Pointer<Void> _mb_set_contact_monitor =
      resolveMethodBind('RigidBody3D', 'set_contact_monitor', 2586408642);

  void setContactMonitor(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_contact_monitor, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_contact_monitor_enabled =
      resolveMethodBind('RigidBody3D', 'is_contact_monitor_enabled', 36873697);

  bool isContactMonitorEnabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_contact_monitor_enabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_use_continuous_collision_detection =
      resolveMethodBind('RigidBody3D', 'set_use_continuous_collision_detection', 2586408642);

  void setUseContinuousCollisionDetection(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_use_continuous_collision_detection, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_using_continuous_collision_detection =
      resolveMethodBind('RigidBody3D', 'is_using_continuous_collision_detection', 36873697);

  bool isUsingContinuousCollisionDetection() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_using_continuous_collision_detection, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_axis_velocity =
      resolveMethodBind('RigidBody3D', 'set_axis_velocity', 3460891852);

  void setAxisVelocity(Vector3 axisVelocity) {
    final arg0 = malloc<Uint8>(Vector3.nativeSize);
    axisVelocity.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_axis_velocity, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_apply_central_impulse =
      resolveMethodBind('RigidBody3D', 'apply_central_impulse', 3460891852);

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
      resolveMethodBind('RigidBody3D', 'apply_impulse', 2754756483);

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

  static final Pointer<Void> _mb_apply_torque_impulse =
      resolveMethodBind('RigidBody3D', 'apply_torque_impulse', 3460891852);

  void applyTorqueImpulse(Vector3 impulse) {
    final arg0 = malloc<Uint8>(Vector3.nativeSize);
    impulse.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_apply_torque_impulse, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_apply_central_force =
      resolveMethodBind('RigidBody3D', 'apply_central_force', 3460891852);

  void applyCentralForce(Vector3 force) {
    final arg0 = malloc<Uint8>(Vector3.nativeSize);
    force.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_apply_central_force, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_apply_force =
      resolveMethodBind('RigidBody3D', 'apply_force', 2754756483);

  void applyForce(Vector3 force, Vector3 position) {
    final arg0 = malloc<Uint8>(Vector3.nativeSize);
    force.writeTo(arg0, 0);
    final arg1 = malloc<Uint8>(Vector3.nativeSize);
    position.writeTo(arg1, 0);
    try {
      ptrcallVoid(_mb_apply_force, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_apply_torque =
      resolveMethodBind('RigidBody3D', 'apply_torque', 3460891852);

  void applyTorque(Vector3 torque) {
    final arg0 = malloc<Uint8>(Vector3.nativeSize);
    torque.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_apply_torque, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_add_constant_central_force =
      resolveMethodBind('RigidBody3D', 'add_constant_central_force', 3460891852);

  void addConstantCentralForce(Vector3 force) {
    final arg0 = malloc<Uint8>(Vector3.nativeSize);
    force.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_add_constant_central_force, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_add_constant_force =
      resolveMethodBind('RigidBody3D', 'add_constant_force', 2754756483);

  void addConstantForce(Vector3 force, Vector3 position) {
    final arg0 = malloc<Uint8>(Vector3.nativeSize);
    force.writeTo(arg0, 0);
    final arg1 = malloc<Uint8>(Vector3.nativeSize);
    position.writeTo(arg1, 0);
    try {
      ptrcallVoid(_mb_add_constant_force, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_add_constant_torque =
      resolveMethodBind('RigidBody3D', 'add_constant_torque', 3460891852);

  void addConstantTorque(Vector3 torque) {
    final arg0 = malloc<Uint8>(Vector3.nativeSize);
    torque.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_add_constant_torque, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_constant_force =
      resolveMethodBind('RigidBody3D', 'set_constant_force', 3460891852);

  void setConstantForce(Vector3 force) {
    final arg0 = malloc<Uint8>(Vector3.nativeSize);
    force.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_constant_force, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_constant_force =
      resolveMethodBind('RigidBody3D', 'get_constant_force', 3360562783);

  Vector3 getConstantForce() {
    try {
      final ret = malloc<Uint8>(Vector3.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_constant_force, nativePtr, [], ret.cast());
        return Vector3.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_constant_torque =
      resolveMethodBind('RigidBody3D', 'set_constant_torque', 3460891852);

  void setConstantTorque(Vector3 torque) {
    final arg0 = malloc<Uint8>(Vector3.nativeSize);
    torque.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_constant_torque, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_constant_torque =
      resolveMethodBind('RigidBody3D', 'get_constant_torque', 3360562783);

  Vector3 getConstantTorque() {
    try {
      final ret = malloc<Uint8>(Vector3.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_constant_torque, nativePtr, [], ret.cast());
        return Vector3.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_sleeping =
      resolveMethodBind('RigidBody3D', 'set_sleeping', 2586408642);

  void setSleeping(bool sleeping) {
    final arg0 = malloc<Uint8>()..value = sleeping ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_sleeping, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_sleeping =
      resolveMethodBind('RigidBody3D', 'is_sleeping', 36873697);

  bool isSleeping() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_sleeping, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_can_sleep =
      resolveMethodBind('RigidBody3D', 'set_can_sleep', 2586408642);

  void setCanSleep(bool ableToSleep) {
    final arg0 = malloc<Uint8>()..value = ableToSleep ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_can_sleep, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_able_to_sleep =
      resolveMethodBind('RigidBody3D', 'is_able_to_sleep', 36873697);

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

  static final Pointer<Void> _mb_set_lock_rotation_enabled =
      resolveMethodBind('RigidBody3D', 'set_lock_rotation_enabled', 2586408642);

  void setLockRotationEnabled(bool lockRotation) {
    final arg0 = malloc<Uint8>()..value = lockRotation ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_lock_rotation_enabled, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_lock_rotation_enabled =
      resolveMethodBind('RigidBody3D', 'is_lock_rotation_enabled', 36873697);

  bool isLockRotationEnabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_lock_rotation_enabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_freeze_enabled =
      resolveMethodBind('RigidBody3D', 'set_freeze_enabled', 2586408642);

  void setFreezeEnabled(bool freezeMode) {
    final arg0 = malloc<Uint8>()..value = freezeMode ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_freeze_enabled, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_freeze_enabled =
      resolveMethodBind('RigidBody3D', 'is_freeze_enabled', 36873697);

  bool isFreezeEnabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_freeze_enabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_freeze_mode =
      resolveMethodBind('RigidBody3D', 'set_freeze_mode', 1319914653);

  void setFreezeMode(int freezeMode) {
    final arg0 = malloc<Int64>()..value = freezeMode;
    try {
      ptrcallVoid(_mb_set_freeze_mode, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_freeze_mode =
      resolveMethodBind('RigidBody3D', 'get_freeze_mode', 2008423905);

  int getFreezeMode() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_freeze_mode, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  // Skipped get_colliding_bodies(): unsupported return type "typedarray::Node3D".
}
