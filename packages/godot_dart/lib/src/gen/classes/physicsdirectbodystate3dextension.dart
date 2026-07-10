// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class PhysicsDirectBodyState3DExtension extends PhysicsDirectBodyState3D {
  PhysicsDirectBodyState3DExtension(super.nativePtr);

  /// Constructs a brand-new engine-owned PhysicsDirectBodyState3DExtension instance
  /// (via classdb_construct_object3), not an existing one.
  factory PhysicsDirectBodyState3DExtension.create() {
    return PhysicsDirectBodyState3DExtension(resolveClassConstructor('PhysicsDirectBodyState3DExtension'));
  }

  /// Override to hook into Godot's `_get_total_gravity` virtual.
  Vector3 getTotalGravity() => const Vector3(0.0, 0.0, 0.0);

  /// Override to hook into Godot's `_get_total_linear_damp` virtual.
  double getTotalLinearDamp() => 0.0;

  /// Override to hook into Godot's `_get_total_angular_damp` virtual.
  double getTotalAngularDamp() => 0.0;

  /// Override to hook into Godot's `_get_center_of_mass` virtual.
  Vector3 getCenterOfMass() => const Vector3(0.0, 0.0, 0.0);

  /// Override to hook into Godot's `_get_center_of_mass_local` virtual.
  Vector3 getCenterOfMassLocal() => const Vector3(0.0, 0.0, 0.0);

  /// Override to hook into Godot's `_get_principal_inertia_axes` virtual.
  Basis getPrincipalInertiaAxes() => const Basis(const Vector3(0.0, 0.0, 0.0), const Vector3(0.0, 0.0, 0.0), const Vector3(0.0, 0.0, 0.0));

  /// Override to hook into Godot's `_get_inverse_mass` virtual.
  double getInverseMass() => 0.0;

  /// Override to hook into Godot's `_get_inverse_inertia` virtual.
  Vector3 getInverseInertia() => const Vector3(0.0, 0.0, 0.0);

  /// Override to hook into Godot's `_get_inverse_inertia_tensor` virtual.
  Basis getInverseInertiaTensor() => const Basis(const Vector3(0.0, 0.0, 0.0), const Vector3(0.0, 0.0, 0.0), const Vector3(0.0, 0.0, 0.0));

  /// Override to hook into Godot's `_set_linear_velocity` virtual.
  void setLinearVelocity(Vector3 velocity) {}

  /// Override to hook into Godot's `_get_linear_velocity` virtual.
  Vector3 getLinearVelocity() => const Vector3(0.0, 0.0, 0.0);

  /// Override to hook into Godot's `_set_angular_velocity` virtual.
  void setAngularVelocity(Vector3 velocity) {}

  /// Override to hook into Godot's `_get_angular_velocity` virtual.
  Vector3 getAngularVelocity() => const Vector3(0.0, 0.0, 0.0);

  /// Override to hook into Godot's `_set_transform` virtual.
  void setTransform(Transform3D transform) {}

  /// Override to hook into Godot's `_get_transform` virtual.
  Transform3D getTransform() => const Transform3D(const Basis(const Vector3(0.0, 0.0, 0.0), const Vector3(0.0, 0.0, 0.0), const Vector3(0.0, 0.0, 0.0)), const Vector3(0.0, 0.0, 0.0));

  /// Override to hook into Godot's `_get_velocity_at_local_position` virtual.
  Vector3 getVelocityAtLocalPosition(Vector3 localPosition) => const Vector3(0.0, 0.0, 0.0);

  /// Override to hook into Godot's `_apply_central_impulse` virtual.
  void applyCentralImpulse(Vector3 impulse) {}

  /// Override to hook into Godot's `_apply_impulse` virtual.
  void applyImpulse(Vector3 impulse, Vector3 position) {}

  /// Override to hook into Godot's `_apply_torque_impulse` virtual.
  void applyTorqueImpulse(Vector3 impulse) {}

  /// Override to hook into Godot's `_apply_central_force` virtual.
  void applyCentralForce(Vector3 force) {}

  /// Override to hook into Godot's `_apply_force` virtual.
  void applyForce(Vector3 force, Vector3 position) {}

  /// Override to hook into Godot's `_apply_torque` virtual.
  void applyTorque(Vector3 torque) {}

  /// Override to hook into Godot's `_add_constant_central_force` virtual.
  void addConstantCentralForce(Vector3 force) {}

  /// Override to hook into Godot's `_add_constant_force` virtual.
  void addConstantForce(Vector3 force, Vector3 position) {}

  /// Override to hook into Godot's `_add_constant_torque` virtual.
  void addConstantTorque(Vector3 torque) {}

  /// Override to hook into Godot's `_set_constant_force` virtual.
  void setConstantForce(Vector3 force) {}

  /// Override to hook into Godot's `_get_constant_force` virtual.
  Vector3 getConstantForce() => const Vector3(0.0, 0.0, 0.0);

  /// Override to hook into Godot's `_set_constant_torque` virtual.
  void setConstantTorque(Vector3 torque) {}

  /// Override to hook into Godot's `_get_constant_torque` virtual.
  Vector3 getConstantTorque() => const Vector3(0.0, 0.0, 0.0);

  /// Override to hook into Godot's `_set_sleep_state` virtual.
  void setSleepState(bool enabled) {}

  /// Override to hook into Godot's `_is_sleeping` virtual.
  bool isSleeping() => false;

  /// Override to hook into Godot's `_set_collision_layer` virtual.
  void setCollisionLayer(int layer) {}

  /// Override to hook into Godot's `_get_collision_layer` virtual.
  int getCollisionLayer() => 0;

  /// Override to hook into Godot's `_set_collision_mask` virtual.
  void setCollisionMask(int mask) {}

  /// Override to hook into Godot's `_get_collision_mask` virtual.
  int getCollisionMask() => 0;

  /// Override to hook into Godot's `_get_contact_count` virtual.
  int getContactCount() => 0;

  /// Override to hook into Godot's `_get_contact_local_position` virtual.
  Vector3 getContactLocalPosition(int contactIdx) => const Vector3(0.0, 0.0, 0.0);

  /// Override to hook into Godot's `_get_contact_local_normal` virtual.
  Vector3 getContactLocalNormal(int contactIdx) => const Vector3(0.0, 0.0, 0.0);

  /// Override to hook into Godot's `_get_contact_impulse` virtual.
  Vector3 getContactImpulse(int contactIdx) => const Vector3(0.0, 0.0, 0.0);

  /// Override to hook into Godot's `_get_contact_local_shape` virtual.
  int getContactLocalShape(int contactIdx) => 0;

  /// Override to hook into Godot's `_get_contact_local_velocity_at_position` virtual.
  Vector3 getContactLocalVelocityAtPosition(int contactIdx) => const Vector3(0.0, 0.0, 0.0);

  // Skipped virtual _get_contact_collider(): unsupported return type "RID".
  /// Override to hook into Godot's `_get_contact_collider_position` virtual.
  Vector3 getContactColliderPosition(int contactIdx) => const Vector3(0.0, 0.0, 0.0);

  /// Override to hook into Godot's `_get_contact_collider_id` virtual.
  int getContactColliderId(int contactIdx) => 0;

  // Skipped virtual _get_contact_collider_object(): unsupported return type "Object".
  /// Override to hook into Godot's `_get_contact_collider_shape` virtual.
  int getContactColliderShape(int contactIdx) => 0;

  /// Override to hook into Godot's `_get_contact_collider_velocity_at_position` virtual.
  Vector3 getContactColliderVelocityAtPosition(int contactIdx) => const Vector3(0.0, 0.0, 0.0);

  /// Override to hook into Godot's `_get_step` virtual.
  double getStep() => 0.0;

  /// Override to hook into Godot's `_integrate_forces` virtual.
  void integrateForces() {}

  /// Override to hook into Godot's `_get_space_state` virtual.
  PhysicsDirectSpaceState3D? getSpaceState() => null;

}
