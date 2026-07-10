// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class PhysicsServer3DExtension extends PhysicsServer3D {
  PhysicsServer3DExtension(super.nativePtr);

  /// Constructs a brand-new engine-owned PhysicsServer3DExtension instance
  /// (via classdb_construct_object3), not an existing one.
  factory PhysicsServer3DExtension.create() {
    return PhysicsServer3DExtension(resolveClassConstructor('PhysicsServer3DExtension'));
  }

  // Skipped virtual _world_boundary_shape_create(): unsupported return type "RID".
  // Skipped virtual _separation_ray_shape_create(): unsupported return type "RID".
  // Skipped virtual _sphere_shape_create(): unsupported return type "RID".
  // Skipped virtual _box_shape_create(): unsupported return type "RID".
  // Skipped virtual _capsule_shape_create(): unsupported return type "RID".
  // Skipped virtual _cylinder_shape_create(): unsupported return type "RID".
  // Skipped virtual _convex_polygon_shape_create(): unsupported return type "RID".
  // Skipped virtual _concave_polygon_shape_create(): unsupported return type "RID".
  // Skipped virtual _heightmap_shape_create(): unsupported return type "RID".
  // Skipped virtual _custom_shape_create(): unsupported return type "RID".
  // Skipped virtual _shape_set_data(): an argument type is unsupported ("RID").
  // Skipped virtual _shape_set_custom_solver_bias(): an argument type is unsupported ("RID").
  // Skipped virtual _shape_set_margin(): an argument type is unsupported ("RID").
  // Skipped virtual _shape_get_margin(): an argument type is unsupported ("RID").
  // Skipped virtual _shape_get_type(): an argument type is unsupported ("RID").
  // Skipped virtual _shape_get_data(): unsupported return type "Variant".
  // Skipped virtual _shape_get_custom_solver_bias(): an argument type is unsupported ("RID").
  // Skipped virtual _space_create(): unsupported return type "RID".
  // Skipped virtual _space_set_active(): an argument type is unsupported ("RID").
  // Skipped virtual _space_is_active(): an argument type is unsupported ("RID").
  // Skipped virtual _space_set_param(): an argument type is unsupported ("RID").
  // Skipped virtual _space_get_param(): an argument type is unsupported ("RID").
  // Skipped virtual _space_get_direct_state(): an argument type is unsupported ("RID").
  // Skipped virtual _space_set_debug_contacts(): an argument type is unsupported ("RID").
  // Skipped virtual _space_get_contacts(): unsupported return type "PackedVector3Array".
  // Skipped virtual _space_get_contact_count(): an argument type is unsupported ("RID").
  // Skipped virtual _area_create(): unsupported return type "RID".
  // Skipped virtual _area_set_space(): an argument type is unsupported ("RID").
  // Skipped virtual _area_get_space(): unsupported return type "RID".
  // Skipped virtual _area_add_shape(): an argument type is unsupported ("RID").
  // Skipped virtual _area_set_shape(): an argument type is unsupported ("RID").
  // Skipped virtual _area_set_shape_transform(): an argument type is unsupported ("RID").
  // Skipped virtual _area_set_shape_disabled(): an argument type is unsupported ("RID").
  // Skipped virtual _area_get_shape_count(): an argument type is unsupported ("RID").
  // Skipped virtual _area_get_shape(): unsupported return type "RID".
  // Skipped virtual _area_get_shape_transform(): an argument type is unsupported ("RID").
  // Skipped virtual _area_remove_shape(): an argument type is unsupported ("RID").
  // Skipped virtual _area_clear_shapes(): an argument type is unsupported ("RID").
  // Skipped virtual _area_attach_object_instance_id(): an argument type is unsupported ("RID").
  // Skipped virtual _area_get_object_instance_id(): an argument type is unsupported ("RID").
  // Skipped virtual _area_set_param(): an argument type is unsupported ("RID").
  // Skipped virtual _area_set_transform(): an argument type is unsupported ("RID").
  // Skipped virtual _area_get_param(): unsupported return type "Variant".
  // Skipped virtual _area_get_transform(): an argument type is unsupported ("RID").
  // Skipped virtual _area_set_collision_layer(): an argument type is unsupported ("RID").
  // Skipped virtual _area_get_collision_layer(): an argument type is unsupported ("RID").
  // Skipped virtual _area_set_collision_mask(): an argument type is unsupported ("RID").
  // Skipped virtual _area_get_collision_mask(): an argument type is unsupported ("RID").
  // Skipped virtual _area_set_monitorable(): an argument type is unsupported ("RID").
  // Skipped virtual _area_set_ray_pickable(): an argument type is unsupported ("RID").
  // Skipped virtual _area_set_monitor_callback(): an argument type is unsupported ("RID").
  // Skipped virtual _area_set_area_monitor_callback(): an argument type is unsupported ("RID").
  // Skipped virtual _body_create(): unsupported return type "RID".
  // Skipped virtual _body_set_space(): an argument type is unsupported ("RID").
  // Skipped virtual _body_get_space(): unsupported return type "RID".
  // Skipped virtual _body_set_mode(): an argument type is unsupported ("RID").
  // Skipped virtual _body_get_mode(): an argument type is unsupported ("RID").
  // Skipped virtual _body_add_shape(): an argument type is unsupported ("RID").
  // Skipped virtual _body_set_shape(): an argument type is unsupported ("RID").
  // Skipped virtual _body_set_shape_transform(): an argument type is unsupported ("RID").
  // Skipped virtual _body_set_shape_disabled(): an argument type is unsupported ("RID").
  // Skipped virtual _body_get_shape_count(): an argument type is unsupported ("RID").
  // Skipped virtual _body_get_shape(): unsupported return type "RID".
  // Skipped virtual _body_get_shape_transform(): an argument type is unsupported ("RID").
  // Skipped virtual _body_remove_shape(): an argument type is unsupported ("RID").
  // Skipped virtual _body_clear_shapes(): an argument type is unsupported ("RID").
  // Skipped virtual _body_attach_object_instance_id(): an argument type is unsupported ("RID").
  // Skipped virtual _body_get_object_instance_id(): an argument type is unsupported ("RID").
  // Skipped virtual _body_set_enable_continuous_collision_detection(): an argument type is unsupported ("RID").
  // Skipped virtual _body_is_continuous_collision_detection_enabled(): an argument type is unsupported ("RID").
  // Skipped virtual _body_set_collision_layer(): an argument type is unsupported ("RID").
  // Skipped virtual _body_get_collision_layer(): an argument type is unsupported ("RID").
  // Skipped virtual _body_set_collision_mask(): an argument type is unsupported ("RID").
  // Skipped virtual _body_get_collision_mask(): an argument type is unsupported ("RID").
  // Skipped virtual _body_set_collision_priority(): an argument type is unsupported ("RID").
  // Skipped virtual _body_get_collision_priority(): an argument type is unsupported ("RID").
  // Skipped virtual _body_set_user_flags(): an argument type is unsupported ("RID").
  // Skipped virtual _body_get_user_flags(): an argument type is unsupported ("RID").
  // Skipped virtual _body_set_param(): an argument type is unsupported ("RID").
  // Skipped virtual _body_get_param(): unsupported return type "Variant".
  // Skipped virtual _body_reset_mass_properties(): an argument type is unsupported ("RID").
  // Skipped virtual _body_set_state(): an argument type is unsupported ("RID").
  // Skipped virtual _body_get_state(): unsupported return type "Variant".
  // Skipped virtual _body_apply_central_impulse(): an argument type is unsupported ("RID").
  // Skipped virtual _body_apply_impulse(): an argument type is unsupported ("RID").
  // Skipped virtual _body_apply_torque_impulse(): an argument type is unsupported ("RID").
  // Skipped virtual _body_apply_central_force(): an argument type is unsupported ("RID").
  // Skipped virtual _body_apply_force(): an argument type is unsupported ("RID").
  // Skipped virtual _body_apply_torque(): an argument type is unsupported ("RID").
  // Skipped virtual _body_add_constant_central_force(): an argument type is unsupported ("RID").
  // Skipped virtual _body_add_constant_force(): an argument type is unsupported ("RID").
  // Skipped virtual _body_add_constant_torque(): an argument type is unsupported ("RID").
  // Skipped virtual _body_set_constant_force(): an argument type is unsupported ("RID").
  // Skipped virtual _body_get_constant_force(): an argument type is unsupported ("RID").
  // Skipped virtual _body_set_constant_torque(): an argument type is unsupported ("RID").
  // Skipped virtual _body_get_constant_torque(): an argument type is unsupported ("RID").
  // Skipped virtual _body_set_axis_velocity(): an argument type is unsupported ("RID").
  // Skipped virtual _body_set_axis_lock(): an argument type is unsupported ("RID").
  // Skipped virtual _body_is_axis_locked(): an argument type is unsupported ("RID").
  // Skipped virtual _body_add_collision_exception(): an argument type is unsupported ("RID").
  // Skipped virtual _body_remove_collision_exception(): an argument type is unsupported ("RID").
  // Skipped virtual _body_get_collision_exceptions(): unsupported return type "typedarray::RID".
  // Skipped virtual _body_set_max_contacts_reported(): an argument type is unsupported ("RID").
  // Skipped virtual _body_get_max_contacts_reported(): an argument type is unsupported ("RID").
  // Skipped virtual _body_set_contacts_reported_depth_threshold(): an argument type is unsupported ("RID").
  // Skipped virtual _body_get_contacts_reported_depth_threshold(): an argument type is unsupported ("RID").
  // Skipped virtual _body_set_omit_force_integration(): an argument type is unsupported ("RID").
  // Skipped virtual _body_is_omitting_force_integration(): an argument type is unsupported ("RID").
  // Skipped virtual _body_set_state_sync_callback(): an argument type is unsupported ("RID").
  // Skipped virtual _body_set_force_integration_callback(): an argument type is unsupported ("RID").
  // Skipped virtual _body_set_ray_pickable(): an argument type is unsupported ("RID").
  // Skipped virtual _body_test_motion(): an argument type is unsupported ("RID").
  // Skipped virtual _body_get_direct_state(): an argument type is unsupported ("RID").
  // Skipped virtual _soft_body_create(): unsupported return type "RID".
  // Skipped virtual _soft_body_update_rendering_server(): an argument type is unsupported ("RID").
  // Skipped virtual _soft_body_set_space(): an argument type is unsupported ("RID").
  // Skipped virtual _soft_body_get_space(): unsupported return type "RID".
  // Skipped virtual _soft_body_set_ray_pickable(): an argument type is unsupported ("RID").
  // Skipped virtual _soft_body_set_collision_layer(): an argument type is unsupported ("RID").
  // Skipped virtual _soft_body_get_collision_layer(): an argument type is unsupported ("RID").
  // Skipped virtual _soft_body_set_collision_mask(): an argument type is unsupported ("RID").
  // Skipped virtual _soft_body_get_collision_mask(): an argument type is unsupported ("RID").
  // Skipped virtual _soft_body_add_collision_exception(): an argument type is unsupported ("RID").
  // Skipped virtual _soft_body_remove_collision_exception(): an argument type is unsupported ("RID").
  // Skipped virtual _soft_body_get_collision_exceptions(): unsupported return type "typedarray::RID".
  // Skipped virtual _soft_body_set_state(): an argument type is unsupported ("RID").
  // Skipped virtual _soft_body_get_state(): unsupported return type "Variant".
  // Skipped virtual _soft_body_set_transform(): an argument type is unsupported ("RID").
  // Skipped virtual _soft_body_set_simulation_precision(): an argument type is unsupported ("RID").
  // Skipped virtual _soft_body_get_simulation_precision(): an argument type is unsupported ("RID").
  // Skipped virtual _soft_body_set_total_mass(): an argument type is unsupported ("RID").
  // Skipped virtual _soft_body_get_total_mass(): an argument type is unsupported ("RID").
  // Skipped virtual _soft_body_set_linear_stiffness(): an argument type is unsupported ("RID").
  // Skipped virtual _soft_body_get_linear_stiffness(): an argument type is unsupported ("RID").
  // Skipped virtual _soft_body_set_shrinking_factor(): an argument type is unsupported ("RID").
  // Skipped virtual _soft_body_get_shrinking_factor(): an argument type is unsupported ("RID").
  // Skipped virtual _soft_body_set_pressure_coefficient(): an argument type is unsupported ("RID").
  // Skipped virtual _soft_body_get_pressure_coefficient(): an argument type is unsupported ("RID").
  // Skipped virtual _soft_body_set_damping_coefficient(): an argument type is unsupported ("RID").
  // Skipped virtual _soft_body_get_damping_coefficient(): an argument type is unsupported ("RID").
  // Skipped virtual _soft_body_set_drag_coefficient(): an argument type is unsupported ("RID").
  // Skipped virtual _soft_body_get_drag_coefficient(): an argument type is unsupported ("RID").
  // Skipped virtual _soft_body_set_mesh(): an argument type is unsupported ("RID").
  // Skipped virtual _soft_body_get_bounds(): an argument type is unsupported ("RID").
  // Skipped virtual _soft_body_move_point(): an argument type is unsupported ("RID").
  // Skipped virtual _soft_body_get_point_global_position(): an argument type is unsupported ("RID").
  // Skipped virtual _soft_body_remove_all_pinned_points(): an argument type is unsupported ("RID").
  // Skipped virtual _soft_body_pin_point(): an argument type is unsupported ("RID").
  // Skipped virtual _soft_body_is_point_pinned(): an argument type is unsupported ("RID").
  // Skipped virtual _soft_body_apply_point_impulse(): an argument type is unsupported ("RID").
  // Skipped virtual _soft_body_apply_point_force(): an argument type is unsupported ("RID").
  // Skipped virtual _soft_body_apply_central_impulse(): an argument type is unsupported ("RID").
  // Skipped virtual _soft_body_apply_central_force(): an argument type is unsupported ("RID").
  // Skipped virtual _joint_create(): unsupported return type "RID".
  // Skipped virtual _joint_clear(): an argument type is unsupported ("RID").
  // Skipped virtual _joint_make_pin(): an argument type is unsupported ("RID").
  // Skipped virtual _pin_joint_set_param(): an argument type is unsupported ("RID").
  // Skipped virtual _pin_joint_get_param(): an argument type is unsupported ("RID").
  // Skipped virtual _pin_joint_set_local_a(): an argument type is unsupported ("RID").
  // Skipped virtual _pin_joint_get_local_a(): an argument type is unsupported ("RID").
  // Skipped virtual _pin_joint_set_local_b(): an argument type is unsupported ("RID").
  // Skipped virtual _pin_joint_get_local_b(): an argument type is unsupported ("RID").
  // Skipped virtual _joint_make_hinge(): an argument type is unsupported ("RID").
  // Skipped virtual _joint_make_hinge_simple(): an argument type is unsupported ("RID").
  // Skipped virtual _hinge_joint_set_param(): an argument type is unsupported ("RID").
  // Skipped virtual _hinge_joint_get_param(): an argument type is unsupported ("RID").
  // Skipped virtual _hinge_joint_set_flag(): an argument type is unsupported ("RID").
  // Skipped virtual _hinge_joint_get_flag(): an argument type is unsupported ("RID").
  // Skipped virtual _joint_make_slider(): an argument type is unsupported ("RID").
  // Skipped virtual _slider_joint_set_param(): an argument type is unsupported ("RID").
  // Skipped virtual _slider_joint_get_param(): an argument type is unsupported ("RID").
  // Skipped virtual _joint_make_cone_twist(): an argument type is unsupported ("RID").
  // Skipped virtual _cone_twist_joint_set_param(): an argument type is unsupported ("RID").
  // Skipped virtual _cone_twist_joint_get_param(): an argument type is unsupported ("RID").
  // Skipped virtual _joint_make_generic_6dof(): an argument type is unsupported ("RID").
  // Skipped virtual _generic_6dof_joint_set_param(): an argument type is unsupported ("RID").
  // Skipped virtual _generic_6dof_joint_get_param(): an argument type is unsupported ("RID").
  // Skipped virtual _generic_6dof_joint_set_flag(): an argument type is unsupported ("RID").
  // Skipped virtual _generic_6dof_joint_get_flag(): an argument type is unsupported ("RID").
  // Skipped virtual _generic_6dof_joint_set_angular_target_rotation(): an argument type is unsupported ("RID").
  // Skipped virtual _generic_6dof_joint_get_angular_target_rotation(): an argument type is unsupported ("RID").
  // Skipped virtual _joint_get_type(): an argument type is unsupported ("RID").
  // Skipped virtual _joint_set_solver_priority(): an argument type is unsupported ("RID").
  // Skipped virtual _joint_get_solver_priority(): an argument type is unsupported ("RID").
  // Skipped virtual _joint_disable_collisions_between_bodies(): an argument type is unsupported ("RID").
  // Skipped virtual _joint_is_disabled_collisions_between_bodies(): an argument type is unsupported ("RID").
  // Skipped virtual _free_rid(): an argument type is unsupported ("RID").
  /// Override to hook into Godot's `_set_active` virtual.
  void setActive(bool active) {}

  /// Override to hook into Godot's `_init` virtual.
  void init() {}

  /// Override to hook into Godot's `_step` virtual.
  void step(double step) {}

  /// Override to hook into Godot's `_sync` virtual.
  void sync_() {}

  /// Override to hook into Godot's `_flush_queries` virtual.
  void flushQueries() {}

  /// Override to hook into Godot's `_end_sync` virtual.
  void endSync() {}

  /// Override to hook into Godot's `_finish` virtual.
  void finish() {}

  /// Override to hook into Godot's `_is_flushing_queries` virtual.
  bool isFlushingQueries() => false;

  /// Override to hook into Godot's `_get_process_info` virtual.
  int getProcessInfo(int processInfo) => 0;

  // Skipped body_test_motion_is_excluding_body(): an argument type is unsupported.
  static final Pointer<Void> _mb_body_test_motion_is_excluding_object =
      resolveMethodBind('PhysicsServer3DExtension', 'body_test_motion_is_excluding_object', 1116898809);

  bool bodyTestMotionIsExcludingObject(int object) {
    final arg0 = malloc<Int64>()..value = object;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_body_test_motion_is_excluding_object, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

}
