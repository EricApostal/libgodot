// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class PhysicsDirectBodyState3D extends GodotObject {
  PhysicsDirectBodyState3D(super.nativePtr);

  static final Pointer<Void> _mb_get_total_gravity =
      resolveMethodBind('PhysicsDirectBodyState3D', 'get_total_gravity', 3360562783);

  Vector3 getTotalGravity() {
    try {
      final ret = malloc<Uint8>(Vector3.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_total_gravity, nativePtr, [], ret.cast());
        return Vector3.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_total_linear_damp =
      resolveMethodBind('PhysicsDirectBodyState3D', 'get_total_linear_damp', 1740695150);

  double getTotalLinearDamp() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_total_linear_damp, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_total_angular_damp =
      resolveMethodBind('PhysicsDirectBodyState3D', 'get_total_angular_damp', 1740695150);

  double getTotalAngularDamp() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_total_angular_damp, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_center_of_mass =
      resolveMethodBind('PhysicsDirectBodyState3D', 'get_center_of_mass', 3360562783);

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

  static final Pointer<Void> _mb_get_center_of_mass_local =
      resolveMethodBind('PhysicsDirectBodyState3D', 'get_center_of_mass_local', 3360562783);

  Vector3 getCenterOfMassLocal() {
    try {
      final ret = malloc<Uint8>(Vector3.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_center_of_mass_local, nativePtr, [], ret.cast());
        return Vector3.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_principal_inertia_axes =
      resolveMethodBind('PhysicsDirectBodyState3D', 'get_principal_inertia_axes', 2716978435);

  Basis getPrincipalInertiaAxes() {
    try {
      final ret = malloc<Uint8>(Basis.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_principal_inertia_axes, nativePtr, [], ret.cast());
        return Basis.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_inverse_mass =
      resolveMethodBind('PhysicsDirectBodyState3D', 'get_inverse_mass', 1740695150);

  double getInverseMass() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_inverse_mass, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_inverse_inertia =
      resolveMethodBind('PhysicsDirectBodyState3D', 'get_inverse_inertia', 3360562783);

  Vector3 getInverseInertia() {
    try {
      final ret = malloc<Uint8>(Vector3.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_inverse_inertia, nativePtr, [], ret.cast());
        return Vector3.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_inverse_inertia_tensor =
      resolveMethodBind('PhysicsDirectBodyState3D', 'get_inverse_inertia_tensor', 2716978435);

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

  static final Pointer<Void> _mb_set_linear_velocity =
      resolveMethodBind('PhysicsDirectBodyState3D', 'set_linear_velocity', 3460891852);

  void setLinearVelocity(Vector3 velocity) {
    final arg0 = malloc<Uint8>(Vector3.nativeSize);
    velocity.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_linear_velocity, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_linear_velocity =
      resolveMethodBind('PhysicsDirectBodyState3D', 'get_linear_velocity', 3360562783);

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
      resolveMethodBind('PhysicsDirectBodyState3D', 'set_angular_velocity', 3460891852);

  void setAngularVelocity(Vector3 velocity) {
    final arg0 = malloc<Uint8>(Vector3.nativeSize);
    velocity.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_angular_velocity, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_angular_velocity =
      resolveMethodBind('PhysicsDirectBodyState3D', 'get_angular_velocity', 3360562783);

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

  static final Pointer<Void> _mb_set_transform =
      resolveMethodBind('PhysicsDirectBodyState3D', 'set_transform', 2952846383);

  void setTransform(Transform3D transform) {
    final arg0 = malloc<Uint8>(Transform3D.nativeSize);
    transform.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_transform, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_transform =
      resolveMethodBind('PhysicsDirectBodyState3D', 'get_transform', 3229777777);

  Transform3D getTransform() {
    try {
      final ret = malloc<Uint8>(Transform3D.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_transform, nativePtr, [], ret.cast());
        return Transform3D.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_velocity_at_local_position =
      resolveMethodBind('PhysicsDirectBodyState3D', 'get_velocity_at_local_position', 192990374);

  Vector3 getVelocityAtLocalPosition(Vector3 localPosition) {
    final arg0 = malloc<Uint8>(Vector3.nativeSize);
    localPosition.writeTo(arg0, 0);
    try {
      final ret = malloc<Uint8>(Vector3.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_velocity_at_local_position, nativePtr, [arg0.cast<Void>()], ret.cast());
        return Vector3.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_apply_central_impulse =
      resolveMethodBind('PhysicsDirectBodyState3D', 'apply_central_impulse', 2007698547);

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
      resolveMethodBind('PhysicsDirectBodyState3D', 'apply_impulse', 2754756483);

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
      resolveMethodBind('PhysicsDirectBodyState3D', 'apply_torque_impulse', 3460891852);

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
      resolveMethodBind('PhysicsDirectBodyState3D', 'apply_central_force', 2007698547);

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
      resolveMethodBind('PhysicsDirectBodyState3D', 'apply_force', 2754756483);

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
      resolveMethodBind('PhysicsDirectBodyState3D', 'apply_torque', 3460891852);

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
      resolveMethodBind('PhysicsDirectBodyState3D', 'add_constant_central_force', 2007698547);

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
      resolveMethodBind('PhysicsDirectBodyState3D', 'add_constant_force', 2754756483);

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
      resolveMethodBind('PhysicsDirectBodyState3D', 'add_constant_torque', 3460891852);

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
      resolveMethodBind('PhysicsDirectBodyState3D', 'set_constant_force', 3460891852);

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
      resolveMethodBind('PhysicsDirectBodyState3D', 'get_constant_force', 3360562783);

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
      resolveMethodBind('PhysicsDirectBodyState3D', 'set_constant_torque', 3460891852);

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
      resolveMethodBind('PhysicsDirectBodyState3D', 'get_constant_torque', 3360562783);

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

  static final Pointer<Void> _mb_set_sleep_state =
      resolveMethodBind('PhysicsDirectBodyState3D', 'set_sleep_state', 2586408642);

  void setSleepState(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_sleep_state, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_sleeping =
      resolveMethodBind('PhysicsDirectBodyState3D', 'is_sleeping', 36873697);

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

  static final Pointer<Void> _mb_set_collision_layer =
      resolveMethodBind('PhysicsDirectBodyState3D', 'set_collision_layer', 1286410249);

  void setCollisionLayer(int layer) {
    final arg0 = malloc<Int64>()..value = layer;
    try {
      ptrcallVoid(_mb_set_collision_layer, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_collision_layer =
      resolveMethodBind('PhysicsDirectBodyState3D', 'get_collision_layer', 3905245786);

  int getCollisionLayer() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_collision_layer, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_collision_mask =
      resolveMethodBind('PhysicsDirectBodyState3D', 'set_collision_mask', 1286410249);

  void setCollisionMask(int mask) {
    final arg0 = malloc<Int64>()..value = mask;
    try {
      ptrcallVoid(_mb_set_collision_mask, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_collision_mask =
      resolveMethodBind('PhysicsDirectBodyState3D', 'get_collision_mask', 3905245786);

  int getCollisionMask() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_collision_mask, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_contact_count =
      resolveMethodBind('PhysicsDirectBodyState3D', 'get_contact_count', 3905245786);

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

  static final Pointer<Void> _mb_get_contact_local_position =
      resolveMethodBind('PhysicsDirectBodyState3D', 'get_contact_local_position', 711720468);

  Vector3 getContactLocalPosition(int contactIdx) {
    final arg0 = malloc<Int64>()..value = contactIdx;
    try {
      final ret = malloc<Uint8>(Vector3.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_contact_local_position, nativePtr, [arg0.cast<Void>()], ret.cast());
        return Vector3.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_contact_local_normal =
      resolveMethodBind('PhysicsDirectBodyState3D', 'get_contact_local_normal', 711720468);

  Vector3 getContactLocalNormal(int contactIdx) {
    final arg0 = malloc<Int64>()..value = contactIdx;
    try {
      final ret = malloc<Uint8>(Vector3.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_contact_local_normal, nativePtr, [arg0.cast<Void>()], ret.cast());
        return Vector3.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_contact_impulse =
      resolveMethodBind('PhysicsDirectBodyState3D', 'get_contact_impulse', 711720468);

  Vector3 getContactImpulse(int contactIdx) {
    final arg0 = malloc<Int64>()..value = contactIdx;
    try {
      final ret = malloc<Uint8>(Vector3.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_contact_impulse, nativePtr, [arg0.cast<Void>()], ret.cast());
        return Vector3.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_contact_local_shape =
      resolveMethodBind('PhysicsDirectBodyState3D', 'get_contact_local_shape', 923996154);

  int getContactLocalShape(int contactIdx) {
    final arg0 = malloc<Int64>()..value = contactIdx;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_contact_local_shape, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_contact_local_velocity_at_position =
      resolveMethodBind('PhysicsDirectBodyState3D', 'get_contact_local_velocity_at_position', 711720468);

  Vector3 getContactLocalVelocityAtPosition(int contactIdx) {
    final arg0 = malloc<Int64>()..value = contactIdx;
    try {
      final ret = malloc<Uint8>(Vector3.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_contact_local_velocity_at_position, nativePtr, [arg0.cast<Void>()], ret.cast());
        return Vector3.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  // Skipped get_contact_collider(): unsupported return type "RID".
  static final Pointer<Void> _mb_get_contact_collider_position =
      resolveMethodBind('PhysicsDirectBodyState3D', 'get_contact_collider_position', 711720468);

  Vector3 getContactColliderPosition(int contactIdx) {
    final arg0 = malloc<Int64>()..value = contactIdx;
    try {
      final ret = malloc<Uint8>(Vector3.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_contact_collider_position, nativePtr, [arg0.cast<Void>()], ret.cast());
        return Vector3.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_contact_collider_id =
      resolveMethodBind('PhysicsDirectBodyState3D', 'get_contact_collider_id', 923996154);

  int getContactColliderId(int contactIdx) {
    final arg0 = malloc<Int64>()..value = contactIdx;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_contact_collider_id, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  // Skipped get_contact_collider_object(): unsupported return type "Object".
  static final Pointer<Void> _mb_get_contact_collider_shape =
      resolveMethodBind('PhysicsDirectBodyState3D', 'get_contact_collider_shape', 923996154);

  int getContactColliderShape(int contactIdx) {
    final arg0 = malloc<Int64>()..value = contactIdx;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_contact_collider_shape, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_contact_collider_velocity_at_position =
      resolveMethodBind('PhysicsDirectBodyState3D', 'get_contact_collider_velocity_at_position', 711720468);

  Vector3 getContactColliderVelocityAtPosition(int contactIdx) {
    final arg0 = malloc<Int64>()..value = contactIdx;
    try {
      final ret = malloc<Uint8>(Vector3.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_contact_collider_velocity_at_position, nativePtr, [arg0.cast<Void>()], ret.cast());
        return Vector3.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_step =
      resolveMethodBind('PhysicsDirectBodyState3D', 'get_step', 1740695150);

  double getStep() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_step, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_integrate_forces =
      resolveMethodBind('PhysicsDirectBodyState3D', 'integrate_forces', 3218959716);

  void integrateForces() {
    try {
      ptrcallVoid(_mb_integrate_forces, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_space_state =
      resolveMethodBind('PhysicsDirectBodyState3D', 'get_space_state', 2069328350);

  PhysicsDirectSpaceState3D? getSpaceState() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_space_state, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : PhysicsDirectSpaceState3D(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
