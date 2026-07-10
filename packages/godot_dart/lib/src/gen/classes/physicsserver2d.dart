// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class PhysicsServer2D extends GodotObject {
  PhysicsServer2D(super.nativePtr);

  static PhysicsServer2D? _singleton;
  static PhysicsServer2D get singleton {
    return _singleton ??= PhysicsServer2D(resolveSingleton('PhysicsServer2D'));
  }

  // Skipped world_boundary_shape_create(): unsupported return type "RID".
  // Skipped separation_ray_shape_create(): unsupported return type "RID".
  // Skipped segment_shape_create(): unsupported return type "RID".
  // Skipped circle_shape_create(): unsupported return type "RID".
  // Skipped rectangle_shape_create(): unsupported return type "RID".
  // Skipped capsule_shape_create(): unsupported return type "RID".
  // Skipped convex_polygon_shape_create(): unsupported return type "RID".
  // Skipped concave_polygon_shape_create(): unsupported return type "RID".
  // Skipped shape_set_data(): an argument type is unsupported.
  // Skipped shape_get_type(): an argument type is unsupported.
  // Skipped shape_get_data(): unsupported return type "Variant".
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
  // Skipped area_attach_canvas_instance_id(): an argument type is unsupported.
  // Skipped area_get_canvas_instance_id(): an argument type is unsupported.
  // Skipped area_set_monitor_callback(): an argument type is unsupported.
  // Skipped area_set_area_monitor_callback(): an argument type is unsupported.
  // Skipped area_set_monitorable(): an argument type is unsupported.
  // Skipped body_create(): unsupported return type "RID".
  // Skipped body_set_space(): an argument type is unsupported.
  // Skipped body_get_space(): unsupported return type "RID".
  // Skipped body_set_mode(): an argument type is unsupported.
  // Skipped body_get_mode(): an argument type is unsupported.
  // Skipped body_add_shape(): an argument type is unsupported.
  // Skipped body_set_shape(): an argument type is unsupported.
  // Skipped body_set_shape_transform(): an argument type is unsupported.
  // Skipped body_get_shape_count(): an argument type is unsupported.
  // Skipped body_get_shape(): unsupported return type "RID".
  // Skipped body_get_shape_transform(): an argument type is unsupported.
  // Skipped body_remove_shape(): an argument type is unsupported.
  // Skipped body_clear_shapes(): an argument type is unsupported.
  // Skipped body_set_shape_disabled(): an argument type is unsupported.
  // Skipped body_set_shape_as_one_way_collision(): an argument type is unsupported.
  // Skipped body_attach_object_instance_id(): an argument type is unsupported.
  // Skipped body_get_object_instance_id(): an argument type is unsupported.
  // Skipped body_attach_canvas_instance_id(): an argument type is unsupported.
  // Skipped body_get_canvas_instance_id(): an argument type is unsupported.
  // Skipped body_set_continuous_collision_detection_mode(): an argument type is unsupported.
  // Skipped body_get_continuous_collision_detection_mode(): an argument type is unsupported.
  // Skipped body_set_collision_layer(): an argument type is unsupported.
  // Skipped body_get_collision_layer(): an argument type is unsupported.
  // Skipped body_set_collision_mask(): an argument type is unsupported.
  // Skipped body_get_collision_mask(): an argument type is unsupported.
  // Skipped body_set_collision_priority(): an argument type is unsupported.
  // Skipped body_get_collision_priority(): an argument type is unsupported.
  // Skipped body_set_param(): an argument type is unsupported.
  // Skipped body_get_param(): unsupported return type "Variant".
  // Skipped body_reset_mass_properties(): an argument type is unsupported.
  // Skipped body_set_state(): an argument type is unsupported.
  // Skipped body_get_state(): unsupported return type "Variant".
  // Skipped body_apply_central_impulse(): an argument type is unsupported.
  // Skipped body_apply_torque_impulse(): an argument type is unsupported.
  // Skipped body_apply_impulse(): an argument type is unsupported.
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
  // Skipped body_add_collision_exception(): an argument type is unsupported.
  // Skipped body_remove_collision_exception(): an argument type is unsupported.
  // Skipped body_set_max_contacts_reported(): an argument type is unsupported.
  // Skipped body_get_max_contacts_reported(): an argument type is unsupported.
  // Skipped body_set_omit_force_integration(): an argument type is unsupported.
  // Skipped body_is_omitting_force_integration(): an argument type is unsupported.
  // Skipped body_set_state_sync_callback(): an argument type is unsupported.
  // Skipped body_set_force_integration_callback(): an argument type is unsupported.
  // Skipped body_test_motion(): an argument type is unsupported.
  // Skipped body_get_direct_state(): an argument type is unsupported.
  // Skipped joint_create(): unsupported return type "RID".
  // Skipped joint_clear(): an argument type is unsupported.
  // Skipped joint_set_param(): an argument type is unsupported.
  // Skipped joint_get_param(): an argument type is unsupported.
  // Skipped joint_disable_collisions_between_bodies(): an argument type is unsupported.
  // Skipped joint_is_disabled_collisions_between_bodies(): an argument type is unsupported.
  // Skipped joint_make_pin(): an argument type is unsupported.
  // Skipped joint_make_groove(): an argument type is unsupported.
  // Skipped joint_make_damped_spring(): an argument type is unsupported.
  // Skipped pin_joint_set_flag(): an argument type is unsupported.
  // Skipped pin_joint_get_flag(): an argument type is unsupported.
  // Skipped pin_joint_set_param(): an argument type is unsupported.
  // Skipped pin_joint_get_param(): an argument type is unsupported.
  // Skipped damped_spring_joint_set_param(): an argument type is unsupported.
  // Skipped damped_spring_joint_get_param(): an argument type is unsupported.
  // Skipped joint_get_type(): an argument type is unsupported.
  // Skipped free_rid(): an argument type is unsupported.
  static final Pointer<Void> _mb_set_active =
      resolveMethodBind('PhysicsServer2D', 'set_active', 2586408642);

  void setActive(bool active) {
    final arg0 = malloc<Uint8>()..value = active ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_active, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_process_info =
      resolveMethodBind('PhysicsServer2D', 'get_process_info', 576496006);

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
