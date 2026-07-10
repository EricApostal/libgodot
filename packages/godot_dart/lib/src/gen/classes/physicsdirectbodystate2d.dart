// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class PhysicsDirectBodyState2D extends GodotObject {
  PhysicsDirectBodyState2D(super.nativePtr);

  static final Pointer<Void> _mb_get_total_gravity =
      resolveMethodBind('PhysicsDirectBodyState2D', 'get_total_gravity', 3341600327);

  Vector2 getTotalGravity() {
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_total_gravity, nativePtr, [], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_total_linear_damp =
      resolveMethodBind('PhysicsDirectBodyState2D', 'get_total_linear_damp', 1740695150);

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
      resolveMethodBind('PhysicsDirectBodyState2D', 'get_total_angular_damp', 1740695150);

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
      resolveMethodBind('PhysicsDirectBodyState2D', 'get_center_of_mass', 3341600327);

  Vector2 getCenterOfMass() {
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_center_of_mass, nativePtr, [], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_center_of_mass_local =
      resolveMethodBind('PhysicsDirectBodyState2D', 'get_center_of_mass_local', 3341600327);

  Vector2 getCenterOfMassLocal() {
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_center_of_mass_local, nativePtr, [], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_inverse_mass =
      resolveMethodBind('PhysicsDirectBodyState2D', 'get_inverse_mass', 1740695150);

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
      resolveMethodBind('PhysicsDirectBodyState2D', 'get_inverse_inertia', 1740695150);

  double getInverseInertia() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_inverse_inertia, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_linear_velocity =
      resolveMethodBind('PhysicsDirectBodyState2D', 'set_linear_velocity', 743155724);

  void setLinearVelocity(Vector2 velocity) {
    final arg0 = malloc<Uint8>(Vector2.nativeSize);
    velocity.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_linear_velocity, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_linear_velocity =
      resolveMethodBind('PhysicsDirectBodyState2D', 'get_linear_velocity', 3341600327);

  Vector2 getLinearVelocity() {
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_linear_velocity, nativePtr, [], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_angular_velocity =
      resolveMethodBind('PhysicsDirectBodyState2D', 'set_angular_velocity', 373806689);

  void setAngularVelocity(double velocity) {
    final arg0 = malloc<Double>()..value = velocity;
    try {
      ptrcallVoid(_mb_set_angular_velocity, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_angular_velocity =
      resolveMethodBind('PhysicsDirectBodyState2D', 'get_angular_velocity', 1740695150);

  double getAngularVelocity() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_angular_velocity, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_transform =
      resolveMethodBind('PhysicsDirectBodyState2D', 'set_transform', 2761652528);

  void setTransform(Transform2D transform) {
    final arg0 = malloc<Uint8>(Transform2D.nativeSize);
    transform.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_transform, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_transform =
      resolveMethodBind('PhysicsDirectBodyState2D', 'get_transform', 3814499831);

  Transform2D getTransform() {
    try {
      final ret = malloc<Uint8>(Transform2D.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_transform, nativePtr, [], ret.cast());
        return Transform2D.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_velocity_at_local_position =
      resolveMethodBind('PhysicsDirectBodyState2D', 'get_velocity_at_local_position', 2656412154);

  Vector2 getVelocityAtLocalPosition(Vector2 localPosition) {
    final arg0 = malloc<Uint8>(Vector2.nativeSize);
    localPosition.writeTo(arg0, 0);
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_velocity_at_local_position, nativePtr, [arg0.cast<Void>()], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_apply_central_impulse =
      resolveMethodBind('PhysicsDirectBodyState2D', 'apply_central_impulse', 743155724);

  void applyCentralImpulse(Vector2 impulse) {
    final arg0 = malloc<Uint8>(Vector2.nativeSize);
    impulse.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_apply_central_impulse, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_apply_torque_impulse =
      resolveMethodBind('PhysicsDirectBodyState2D', 'apply_torque_impulse', 373806689);

  void applyTorqueImpulse(double impulse) {
    final arg0 = malloc<Double>()..value = impulse;
    try {
      ptrcallVoid(_mb_apply_torque_impulse, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_apply_impulse =
      resolveMethodBind('PhysicsDirectBodyState2D', 'apply_impulse', 4288681949);

  void applyImpulse(Vector2 impulse, Vector2 position) {
    final arg0 = malloc<Uint8>(Vector2.nativeSize);
    impulse.writeTo(arg0, 0);
    final arg1 = malloc<Uint8>(Vector2.nativeSize);
    position.writeTo(arg1, 0);
    try {
      ptrcallVoid(_mb_apply_impulse, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_apply_central_force =
      resolveMethodBind('PhysicsDirectBodyState2D', 'apply_central_force', 3862383994);

  void applyCentralForce(Vector2 force) {
    final arg0 = malloc<Uint8>(Vector2.nativeSize);
    force.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_apply_central_force, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_apply_force =
      resolveMethodBind('PhysicsDirectBodyState2D', 'apply_force', 4288681949);

  void applyForce(Vector2 force, Vector2 position) {
    final arg0 = malloc<Uint8>(Vector2.nativeSize);
    force.writeTo(arg0, 0);
    final arg1 = malloc<Uint8>(Vector2.nativeSize);
    position.writeTo(arg1, 0);
    try {
      ptrcallVoid(_mb_apply_force, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_apply_torque =
      resolveMethodBind('PhysicsDirectBodyState2D', 'apply_torque', 373806689);

  void applyTorque(double torque) {
    final arg0 = malloc<Double>()..value = torque;
    try {
      ptrcallVoid(_mb_apply_torque, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_add_constant_central_force =
      resolveMethodBind('PhysicsDirectBodyState2D', 'add_constant_central_force', 3862383994);

  void addConstantCentralForce(Vector2 force) {
    final arg0 = malloc<Uint8>(Vector2.nativeSize);
    force.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_add_constant_central_force, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_add_constant_force =
      resolveMethodBind('PhysicsDirectBodyState2D', 'add_constant_force', 4288681949);

  void addConstantForce(Vector2 force, Vector2 position) {
    final arg0 = malloc<Uint8>(Vector2.nativeSize);
    force.writeTo(arg0, 0);
    final arg1 = malloc<Uint8>(Vector2.nativeSize);
    position.writeTo(arg1, 0);
    try {
      ptrcallVoid(_mb_add_constant_force, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_add_constant_torque =
      resolveMethodBind('PhysicsDirectBodyState2D', 'add_constant_torque', 373806689);

  void addConstantTorque(double torque) {
    final arg0 = malloc<Double>()..value = torque;
    try {
      ptrcallVoid(_mb_add_constant_torque, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_constant_force =
      resolveMethodBind('PhysicsDirectBodyState2D', 'set_constant_force', 743155724);

  void setConstantForce(Vector2 force) {
    final arg0 = malloc<Uint8>(Vector2.nativeSize);
    force.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_constant_force, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_constant_force =
      resolveMethodBind('PhysicsDirectBodyState2D', 'get_constant_force', 3341600327);

  Vector2 getConstantForce() {
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_constant_force, nativePtr, [], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_constant_torque =
      resolveMethodBind('PhysicsDirectBodyState2D', 'set_constant_torque', 373806689);

  void setConstantTorque(double torque) {
    final arg0 = malloc<Double>()..value = torque;
    try {
      ptrcallVoid(_mb_set_constant_torque, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_constant_torque =
      resolveMethodBind('PhysicsDirectBodyState2D', 'get_constant_torque', 1740695150);

  double getConstantTorque() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_constant_torque, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_sleep_state =
      resolveMethodBind('PhysicsDirectBodyState2D', 'set_sleep_state', 2586408642);

  void setSleepState(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_sleep_state, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_sleeping =
      resolveMethodBind('PhysicsDirectBodyState2D', 'is_sleeping', 36873697);

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
      resolveMethodBind('PhysicsDirectBodyState2D', 'set_collision_layer', 1286410249);

  void setCollisionLayer(int layer) {
    final arg0 = malloc<Int64>()..value = layer;
    try {
      ptrcallVoid(_mb_set_collision_layer, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_collision_layer =
      resolveMethodBind('PhysicsDirectBodyState2D', 'get_collision_layer', 3905245786);

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
      resolveMethodBind('PhysicsDirectBodyState2D', 'set_collision_mask', 1286410249);

  void setCollisionMask(int mask) {
    final arg0 = malloc<Int64>()..value = mask;
    try {
      ptrcallVoid(_mb_set_collision_mask, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_collision_mask =
      resolveMethodBind('PhysicsDirectBodyState2D', 'get_collision_mask', 3905245786);

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
      resolveMethodBind('PhysicsDirectBodyState2D', 'get_contact_count', 3905245786);

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
      resolveMethodBind('PhysicsDirectBodyState2D', 'get_contact_local_position', 2299179447);

  Vector2 getContactLocalPosition(int contactIdx) {
    final arg0 = malloc<Int64>()..value = contactIdx;
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_contact_local_position, nativePtr, [arg0.cast<Void>()], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_contact_local_normal =
      resolveMethodBind('PhysicsDirectBodyState2D', 'get_contact_local_normal', 2299179447);

  Vector2 getContactLocalNormal(int contactIdx) {
    final arg0 = malloc<Int64>()..value = contactIdx;
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_contact_local_normal, nativePtr, [arg0.cast<Void>()], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_contact_local_shape =
      resolveMethodBind('PhysicsDirectBodyState2D', 'get_contact_local_shape', 923996154);

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
      resolveMethodBind('PhysicsDirectBodyState2D', 'get_contact_local_velocity_at_position', 2299179447);

  Vector2 getContactLocalVelocityAtPosition(int contactIdx) {
    final arg0 = malloc<Int64>()..value = contactIdx;
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_contact_local_velocity_at_position, nativePtr, [arg0.cast<Void>()], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  // Skipped get_contact_collider(): unsupported return type "RID".
  static final Pointer<Void> _mb_get_contact_collider_position =
      resolveMethodBind('PhysicsDirectBodyState2D', 'get_contact_collider_position', 2299179447);

  Vector2 getContactColliderPosition(int contactIdx) {
    final arg0 = malloc<Int64>()..value = contactIdx;
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_contact_collider_position, nativePtr, [arg0.cast<Void>()], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_contact_collider_id =
      resolveMethodBind('PhysicsDirectBodyState2D', 'get_contact_collider_id', 923996154);

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
      resolveMethodBind('PhysicsDirectBodyState2D', 'get_contact_collider_shape', 923996154);

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
      resolveMethodBind('PhysicsDirectBodyState2D', 'get_contact_collider_velocity_at_position', 2299179447);

  Vector2 getContactColliderVelocityAtPosition(int contactIdx) {
    final arg0 = malloc<Int64>()..value = contactIdx;
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_contact_collider_velocity_at_position, nativePtr, [arg0.cast<Void>()], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_contact_impulse =
      resolveMethodBind('PhysicsDirectBodyState2D', 'get_contact_impulse', 2299179447);

  Vector2 getContactImpulse(int contactIdx) {
    final arg0 = malloc<Int64>()..value = contactIdx;
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_contact_impulse, nativePtr, [arg0.cast<Void>()], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_step =
      resolveMethodBind('PhysicsDirectBodyState2D', 'get_step', 1740695150);

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
      resolveMethodBind('PhysicsDirectBodyState2D', 'integrate_forces', 3218959716);

  void integrateForces() {
    try {
      ptrcallVoid(_mb_integrate_forces, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_space_state =
      resolveMethodBind('PhysicsDirectBodyState2D', 'get_space_state', 2506717822);

  PhysicsDirectSpaceState2D? getSpaceState() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_space_state, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : PhysicsDirectSpaceState2D(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
