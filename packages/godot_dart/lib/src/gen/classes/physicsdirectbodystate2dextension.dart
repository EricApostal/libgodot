// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class PhysicsDirectBodyState2DExtension extends PhysicsDirectBodyState2D {
  PhysicsDirectBodyState2DExtension(super.nativePtr);

  /// Constructs a brand-new engine-owned PhysicsDirectBodyState2DExtension instance
  /// (via classdb_construct_object3), not an existing one.
  factory PhysicsDirectBodyState2DExtension.create() {
    return PhysicsDirectBodyState2DExtension(resolveClassConstructor('PhysicsDirectBodyState2DExtension'));
  }

  /// Override to hook into Godot's `_get_total_gravity` virtual.
  Vector2 getTotalGravity() => const Vector2(0.0, 0.0);

  /// Override to hook into Godot's `_get_total_linear_damp` virtual.
  double getTotalLinearDamp() => 0.0;

  /// Override to hook into Godot's `_get_total_angular_damp` virtual.
  double getTotalAngularDamp() => 0.0;

  /// Override to hook into Godot's `_get_center_of_mass` virtual.
  Vector2 getCenterOfMass() => const Vector2(0.0, 0.0);

  /// Override to hook into Godot's `_get_center_of_mass_local` virtual.
  Vector2 getCenterOfMassLocal() => const Vector2(0.0, 0.0);

  /// Override to hook into Godot's `_get_inverse_mass` virtual.
  double getInverseMass() => 0.0;

  /// Override to hook into Godot's `_get_inverse_inertia` virtual.
  double getInverseInertia() => 0.0;

  /// Override to hook into Godot's `_set_linear_velocity` virtual.
  void setLinearVelocity(Vector2 velocity) {}

  /// Override to hook into Godot's `_get_linear_velocity` virtual.
  Vector2 getLinearVelocity() => const Vector2(0.0, 0.0);

  /// Override to hook into Godot's `_set_angular_velocity` virtual.
  void setAngularVelocity(double velocity) {}

  /// Override to hook into Godot's `_get_angular_velocity` virtual.
  double getAngularVelocity() => 0.0;

  /// Override to hook into Godot's `_set_transform` virtual.
  void setTransform(Transform2D transform) {}

  /// Override to hook into Godot's `_get_transform` virtual.
  Transform2D getTransform() => const Transform2D(const Vector2(0.0, 0.0), const Vector2(0.0, 0.0), const Vector2(0.0, 0.0));

  /// Override to hook into Godot's `_get_velocity_at_local_position` virtual.
  Vector2 getVelocityAtLocalPosition(Vector2 localPosition) => const Vector2(0.0, 0.0);

  /// Override to hook into Godot's `_apply_central_impulse` virtual.
  void applyCentralImpulse(Vector2 impulse) {}

  /// Override to hook into Godot's `_apply_impulse` virtual.
  void applyImpulse(Vector2 impulse, Vector2 position) {}

  /// Override to hook into Godot's `_apply_torque_impulse` virtual.
  void applyTorqueImpulse(double impulse) {}

  /// Override to hook into Godot's `_apply_central_force` virtual.
  void applyCentralForce(Vector2 force) {}

  /// Override to hook into Godot's `_apply_force` virtual.
  void applyForce(Vector2 force, Vector2 position) {}

  /// Override to hook into Godot's `_apply_torque` virtual.
  void applyTorque(double torque) {}

  /// Override to hook into Godot's `_add_constant_central_force` virtual.
  void addConstantCentralForce(Vector2 force) {}

  /// Override to hook into Godot's `_add_constant_force` virtual.
  void addConstantForce(Vector2 force, Vector2 position) {}

  /// Override to hook into Godot's `_add_constant_torque` virtual.
  void addConstantTorque(double torque) {}

  /// Override to hook into Godot's `_set_constant_force` virtual.
  void setConstantForce(Vector2 force) {}

  /// Override to hook into Godot's `_get_constant_force` virtual.
  Vector2 getConstantForce() => const Vector2(0.0, 0.0);

  /// Override to hook into Godot's `_set_constant_torque` virtual.
  void setConstantTorque(double torque) {}

  /// Override to hook into Godot's `_get_constant_torque` virtual.
  double getConstantTorque() => 0.0;

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
  Vector2 getContactLocalPosition(int contactIdx) => const Vector2(0.0, 0.0);

  /// Override to hook into Godot's `_get_contact_local_normal` virtual.
  Vector2 getContactLocalNormal(int contactIdx) => const Vector2(0.0, 0.0);

  /// Override to hook into Godot's `_get_contact_local_shape` virtual.
  int getContactLocalShape(int contactIdx) => 0;

  /// Override to hook into Godot's `_get_contact_local_velocity_at_position` virtual.
  Vector2 getContactLocalVelocityAtPosition(int contactIdx) => const Vector2(0.0, 0.0);

  // Skipped virtual _get_contact_collider(): unsupported return type "RID".
  /// Override to hook into Godot's `_get_contact_collider_position` virtual.
  Vector2 getContactColliderPosition(int contactIdx) => const Vector2(0.0, 0.0);

  /// Override to hook into Godot's `_get_contact_collider_id` virtual.
  int getContactColliderId(int contactIdx) => 0;

  // Skipped virtual _get_contact_collider_object(): unsupported return type "Object".
  /// Override to hook into Godot's `_get_contact_collider_shape` virtual.
  int getContactColliderShape(int contactIdx) => 0;

  /// Override to hook into Godot's `_get_contact_collider_velocity_at_position` virtual.
  Vector2 getContactColliderVelocityAtPosition(int contactIdx) => const Vector2(0.0, 0.0);

  /// Override to hook into Godot's `_get_contact_impulse` virtual.
  Vector2 getContactImpulse(int contactIdx) => const Vector2(0.0, 0.0);

  /// Override to hook into Godot's `_get_step` virtual.
  double getStep() => 0.0;

  /// Override to hook into Godot's `_integrate_forces` virtual.
  void integrateForces() {}

  /// Override to hook into Godot's `_get_space_state` virtual.
  PhysicsDirectSpaceState2D? getSpaceState() => null;

}
