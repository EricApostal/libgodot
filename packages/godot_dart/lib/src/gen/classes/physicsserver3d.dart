// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class PhysicsServer3D extends GodotObject {
  PhysicsServer3D(super.nativePtr);

  static PhysicsServer3D? _singleton;
  static PhysicsServer3D get singleton {
    return _singleton ??= PhysicsServer3D(resolveSingleton('PhysicsServer3D'));
  }

  // Skipped world_boundary_shape_create(): unsupported return type "RID".
  // Skipped separation_ray_shape_create(): unsupported return type "RID".
  // Skipped sphere_shape_create(): unsupported return type "RID".
  // Skipped box_shape_create(): unsupported return type "RID".
  // Skipped capsule_shape_create(): unsupported return type "RID".
  // Skipped cylinder_shape_create(): unsupported return type "RID".
  // Skipped convex_polygon_shape_create(): unsupported return type "RID".
  // Skipped concave_polygon_shape_create(): unsupported return type "RID".
  // Skipped heightmap_shape_create(): unsupported return type "RID".
  // Skipped custom_shape_create(): unsupported return type "RID".
  // Skipped shape_set_data(): an argument type is unsupported.
  // Skipped shape_set_margin(): an argument type is unsupported.
  // Skipped shape_get_type(): an argument type is unsupported.
  // Skipped shape_get_data(): unsupported return type "Variant".
  // Skipped shape_get_margin(): an argument type is unsupported.
  // Skipped space_create(): unsupported return type "RID".
  // Skipped space_set_active(): an argument type is unsupported.
  // Skipped space_is_active(): an argument type is unsupported.
  // Skipped space_set_param(): an argument type is unsupported.
  // Skipped space_get_param(): an argument type is unsupported.
  // Skipped space_get_direct_state(): an argument type is unsupported.
  // Skipped area_create(): unsupported return type "RID".
  // Skipped area_set_space(): an argument type is unsupported.
  // Skipped area_get_space(): unsupported return type "RID".
  // Skipped area_add_shape(): an argument type is unsupported.
  // Skipped area_set_shape(): an argument type is unsupported.
  // Skipped area_set_shape_transform(): an argument type is unsupported.
  // Skipped area_set_shape_disabled(): an argument type is unsupported.
  // Skipped area_get_shape_count(): an argument type is unsupported.
  // Skipped area_get_shape(): unsupported return type "RID".
  // Skipped area_get_shape_transform(): an argument type is unsupported.
  // Skipped area_remove_shape(): an argument type is unsupported.
  // Skipped area_clear_shapes(): an argument type is unsupported.
  // Skipped area_set_collision_layer(): an argument type is unsupported.
  // Skipped area_get_collision_layer(): an argument type is unsupported.
  // Skipped area_set_collision_mask(): an argument type is unsupported.
  // Skipped area_get_collision_mask(): an argument type is unsupported.
  // Skipped area_set_param(): an argument type is unsupported.
  // Skipped area_set_transform(): an argument type is unsupported.
  // Skipped area_get_param(): unsupported return type "Variant".
  // Skipped area_get_transform(): an argument type is unsupported.
  // Skipped area_attach_object_instance_id(): an argument type is unsupported.
  // Skipped area_get_object_instance_id(): an argument type is unsupported.
  // Skipped area_set_monitor_callback(): an argument type is unsupported.
  // Skipped area_set_area_monitor_callback(): an argument type is unsupported.
  // Skipped area_set_monitorable(): an argument type is unsupported.
  // Skipped area_set_ray_pickable(): an argument type is unsupported.
  // Skipped body_create(): unsupported return type "RID".
  // Skipped body_set_space(): an argument type is unsupported.
  // Skipped body_get_space(): unsupported return type "RID".
  // Skipped body_set_mode(): an argument type is unsupported.
  // Skipped body_get_mode(): an argument type is unsupported.
  // Skipped body_set_collision_layer(): an argument type is unsupported.
  // Skipped body_get_collision_layer(): an argument type is unsupported.
  // Skipped body_set_collision_mask(): an argument type is unsupported.
  // Skipped body_get_collision_mask(): an argument type is unsupported.
  // Skipped body_set_collision_priority(): an argument type is unsupported.
  // Skipped body_get_collision_priority(): an argument type is unsupported.
  // Skipped body_add_shape(): an argument type is unsupported.
  // Skipped body_set_shape(): an argument type is unsupported.
  // Skipped body_set_shape_transform(): an argument type is unsupported.
  // Skipped body_set_shape_disabled(): an argument type is unsupported.
  // Skipped body_get_shape_count(): an argument type is unsupported.
  // Skipped body_get_shape(): unsupported return type "RID".
  // Skipped body_get_shape_transform(): an argument type is unsupported.
  // Skipped body_remove_shape(): an argument type is unsupported.
  // Skipped body_clear_shapes(): an argument type is unsupported.
  // Skipped body_attach_object_instance_id(): an argument type is unsupported.
  // Skipped body_get_object_instance_id(): an argument type is unsupported.
  // Skipped body_set_enable_continuous_collision_detection(): an argument type is unsupported.
  // Skipped body_is_continuous_collision_detection_enabled(): an argument type is unsupported.
  // Skipped body_set_param(): an argument type is unsupported.
  // Skipped body_get_param(): unsupported return type "Variant".
  // Skipped body_reset_mass_properties(): an argument type is unsupported.
  // Skipped body_set_state(): an argument type is unsupported.
  // Skipped body_get_state(): unsupported return type "Variant".
  // Skipped body_apply_central_impulse(): an argument type is unsupported.
  // Skipped body_apply_impulse(): an argument type is unsupported.
  // Skipped body_apply_torque_impulse(): an argument type is unsupported.
  // Skipped body_apply_central_force(): an argument type is unsupported.
  // Skipped body_apply_force(): an argument type is unsupported.
  // Skipped body_apply_torque(): an argument type is unsupported.
  // Skipped body_add_constant_central_force(): an argument type is unsupported.
  // Skipped body_add_constant_force(): an argument type is unsupported.
  // Skipped body_add_constant_torque(): an argument type is unsupported.
  // Skipped body_set_constant_force(): an argument type is unsupported.
  // Skipped body_get_constant_force(): an argument type is unsupported.
  // Skipped body_set_constant_torque(): an argument type is unsupported.
  // Skipped body_get_constant_torque(): an argument type is unsupported.
  // Skipped body_set_axis_velocity(): an argument type is unsupported.
  // Skipped body_set_axis_lock(): an argument type is unsupported.
  // Skipped body_is_axis_locked(): an argument type is unsupported.
  // Skipped body_add_collision_exception(): an argument type is unsupported.
  // Skipped body_remove_collision_exception(): an argument type is unsupported.
  // Skipped body_set_max_contacts_reported(): an argument type is unsupported.
  // Skipped body_get_max_contacts_reported(): an argument type is unsupported.
  // Skipped body_set_omit_force_integration(): an argument type is unsupported.
  // Skipped body_is_omitting_force_integration(): an argument type is unsupported.
  // Skipped body_set_state_sync_callback(): an argument type is unsupported.
  // Skipped body_set_force_integration_callback(): an argument type is unsupported.
  // Skipped body_set_ray_pickable(): an argument type is unsupported.
  // Skipped body_test_motion(): an argument type is unsupported.
  // Skipped body_get_direct_state(): an argument type is unsupported.
  // Skipped soft_body_create(): unsupported return type "RID".
  // Skipped soft_body_update_rendering_server(): an argument type is unsupported.
  // Skipped soft_body_set_space(): an argument type is unsupported.
  // Skipped soft_body_get_space(): unsupported return type "RID".
  // Skipped soft_body_set_mesh(): an argument type is unsupported.
  // Skipped soft_body_get_bounds(): an argument type is unsupported.
  // Skipped soft_body_set_collision_layer(): an argument type is unsupported.
  // Skipped soft_body_get_collision_layer(): an argument type is unsupported.
  // Skipped soft_body_set_collision_mask(): an argument type is unsupported.
  // Skipped soft_body_get_collision_mask(): an argument type is unsupported.
  // Skipped soft_body_add_collision_exception(): an argument type is unsupported.
  // Skipped soft_body_remove_collision_exception(): an argument type is unsupported.
  // Skipped soft_body_set_state(): an argument type is unsupported.
  // Skipped soft_body_get_state(): unsupported return type "Variant".
  // Skipped soft_body_set_transform(): an argument type is unsupported.
  // Skipped soft_body_set_ray_pickable(): an argument type is unsupported.
  // Skipped soft_body_set_simulation_precision(): an argument type is unsupported.
  // Skipped soft_body_get_simulation_precision(): an argument type is unsupported.
  // Skipped soft_body_set_total_mass(): an argument type is unsupported.
  // Skipped soft_body_get_total_mass(): an argument type is unsupported.
  // Skipped soft_body_set_linear_stiffness(): an argument type is unsupported.
  // Skipped soft_body_get_linear_stiffness(): an argument type is unsupported.
  // Skipped soft_body_set_shrinking_factor(): an argument type is unsupported.
  // Skipped soft_body_get_shrinking_factor(): an argument type is unsupported.
  // Skipped soft_body_set_pressure_coefficient(): an argument type is unsupported.
  // Skipped soft_body_get_pressure_coefficient(): an argument type is unsupported.
  // Skipped soft_body_set_damping_coefficient(): an argument type is unsupported.
  // Skipped soft_body_get_damping_coefficient(): an argument type is unsupported.
  // Skipped soft_body_set_drag_coefficient(): an argument type is unsupported.
  // Skipped soft_body_get_drag_coefficient(): an argument type is unsupported.
  // Skipped soft_body_move_point(): an argument type is unsupported.
  // Skipped soft_body_get_point_global_position(): an argument type is unsupported.
  // Skipped soft_body_remove_all_pinned_points(): an argument type is unsupported.
  // Skipped soft_body_pin_point(): an argument type is unsupported.
  // Skipped soft_body_is_point_pinned(): an argument type is unsupported.
  // Skipped soft_body_apply_point_impulse(): an argument type is unsupported.
  // Skipped soft_body_apply_point_force(): an argument type is unsupported.
  // Skipped soft_body_apply_central_impulse(): an argument type is unsupported.
  // Skipped soft_body_apply_central_force(): an argument type is unsupported.
  // Skipped joint_create(): unsupported return type "RID".
  // Skipped joint_clear(): an argument type is unsupported.
  // Skipped joint_make_pin(): an argument type is unsupported.
  // Skipped pin_joint_set_param(): an argument type is unsupported.
  // Skipped pin_joint_get_param(): an argument type is unsupported.
  // Skipped pin_joint_set_local_a(): an argument type is unsupported.
  // Skipped pin_joint_get_local_a(): an argument type is unsupported.
  // Skipped pin_joint_set_local_b(): an argument type is unsupported.
  // Skipped pin_joint_get_local_b(): an argument type is unsupported.
  // Skipped joint_make_hinge(): an argument type is unsupported.
  // Skipped hinge_joint_set_param(): an argument type is unsupported.
  // Skipped hinge_joint_get_param(): an argument type is unsupported.
  // Skipped hinge_joint_set_flag(): an argument type is unsupported.
  // Skipped hinge_joint_get_flag(): an argument type is unsupported.
  // Skipped joint_make_slider(): an argument type is unsupported.
  // Skipped slider_joint_set_param(): an argument type is unsupported.
  // Skipped slider_joint_get_param(): an argument type is unsupported.
  // Skipped joint_make_cone_twist(): an argument type is unsupported.
  // Skipped cone_twist_joint_set_param(): an argument type is unsupported.
  // Skipped cone_twist_joint_get_param(): an argument type is unsupported.
  // Skipped joint_get_type(): an argument type is unsupported.
  // Skipped joint_set_solver_priority(): an argument type is unsupported.
  // Skipped joint_get_solver_priority(): an argument type is unsupported.
  // Skipped joint_disable_collisions_between_bodies(): an argument type is unsupported.
  // Skipped joint_is_disabled_collisions_between_bodies(): an argument type is unsupported.
  // Skipped joint_make_generic_6dof(): an argument type is unsupported.
  // Skipped generic_6dof_joint_set_param(): an argument type is unsupported.
  // Skipped generic_6dof_joint_get_param(): an argument type is unsupported.
  // Skipped generic_6dof_joint_set_flag(): an argument type is unsupported.
  // Skipped generic_6dof_joint_get_flag(): an argument type is unsupported.
  // Skipped generic_6dof_joint_set_angular_target_rotation(): an argument type is unsupported.
  // Skipped generic_6dof_joint_get_angular_target_rotation(): an argument type is unsupported.
  // Skipped free_rid(): an argument type is unsupported.
  static final Pointer<Void> _mb_set_active =
      resolveMethodBind('PhysicsServer3D', 'set_active', 2586408642);

  void setActive(bool active) {
    final arg0 = malloc<Uint8>()..value = active ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_active, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_process_info =
      resolveMethodBind('PhysicsServer3D', 'get_process_info', 1332958745);

  int getProcessInfo(int processInfo) {
    final arg0 = malloc<Int64>()..value = processInfo;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_process_info, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

}
