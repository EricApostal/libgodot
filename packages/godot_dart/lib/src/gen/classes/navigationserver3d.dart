// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class NavigationServer3D extends GodotObject {
  NavigationServer3D(super.nativePtr);

  // Skipped get_maps(): unsupported return type "typedarray::RID".
  // Skipped map_create(): unsupported return type "RID".
  // Skipped map_set_active(): an argument type is unsupported.
  // Skipped map_is_active(): an argument type is unsupported.
  // Skipped map_set_up(): an argument type is unsupported.
  // Skipped map_get_up(): an argument type is unsupported.
  // Skipped map_set_cell_size(): an argument type is unsupported.
  // Skipped map_get_cell_size(): an argument type is unsupported.
  // Skipped map_set_cell_height(): an argument type is unsupported.
  // Skipped map_get_cell_height(): an argument type is unsupported.
  // Skipped map_set_merge_rasterizer_cell_scale(): an argument type is unsupported.
  // Skipped map_get_merge_rasterizer_cell_scale(): an argument type is unsupported.
  // Skipped map_set_use_edge_connections(): an argument type is unsupported.
  // Skipped map_get_use_edge_connections(): an argument type is unsupported.
  // Skipped map_set_edge_connection_margin(): an argument type is unsupported.
  // Skipped map_get_edge_connection_margin(): an argument type is unsupported.
  // Skipped map_set_link_connection_radius(): an argument type is unsupported.
  // Skipped map_get_link_connection_radius(): an argument type is unsupported.
  // Skipped map_get_path(): unsupported return type "PackedVector3Array".
  // Skipped map_get_closest_point_to_segment(): an argument type is unsupported.
  // Skipped map_get_closest_point(): an argument type is unsupported.
  // Skipped map_get_closest_point_normal(): an argument type is unsupported.
  // Skipped map_get_closest_point_owner(): unsupported return type "RID".
  // Skipped map_get_links(): unsupported return type "typedarray::RID".
  // Skipped map_get_regions(): unsupported return type "typedarray::RID".
  // Skipped map_get_agents(): unsupported return type "typedarray::RID".
  // Skipped map_get_obstacles(): unsupported return type "typedarray::RID".
  // Skipped map_force_update(): an argument type is unsupported.
  // Skipped map_get_iteration_id(): an argument type is unsupported.
  // Skipped map_set_use_async_iterations(): an argument type is unsupported.
  // Skipped map_get_use_async_iterations(): an argument type is unsupported.
  // Skipped map_get_random_point(): an argument type is unsupported.
  // Skipped query_path(): an argument type is unsupported.
  // Skipped region_create(): unsupported return type "RID".
  // Skipped region_get_iteration_id(): an argument type is unsupported.
  // Skipped region_set_use_async_iterations(): an argument type is unsupported.
  // Skipped region_get_use_async_iterations(): an argument type is unsupported.
  // Skipped region_set_enabled(): an argument type is unsupported.
  // Skipped region_get_enabled(): an argument type is unsupported.
  // Skipped region_set_use_edge_connections(): an argument type is unsupported.
  // Skipped region_get_use_edge_connections(): an argument type is unsupported.
  // Skipped region_set_enter_cost(): an argument type is unsupported.
  // Skipped region_get_enter_cost(): an argument type is unsupported.
  // Skipped region_set_travel_cost(): an argument type is unsupported.
  // Skipped region_get_travel_cost(): an argument type is unsupported.
  // Skipped region_set_owner_id(): an argument type is unsupported.
  // Skipped region_get_owner_id(): an argument type is unsupported.
  // Skipped region_owns_point(): an argument type is unsupported.
  // Skipped region_set_map(): an argument type is unsupported.
  // Skipped region_get_map(): unsupported return type "RID".
  // Skipped region_set_navigation_layers(): an argument type is unsupported.
  // Skipped region_get_navigation_layers(): an argument type is unsupported.
  // Skipped region_set_transform(): an argument type is unsupported.
  // Skipped region_get_transform(): an argument type is unsupported.
  // Skipped region_set_navigation_mesh(): an argument type is unsupported.
  static final Pointer<Void> _mb_region_bake_navigation_mesh =
      resolveMethodBind('NavigationServer3D', 'region_bake_navigation_mesh', 1401173477);

  void regionBakeNavigationMesh(NavigationMesh navigationMesh, Node rootNode) {
    final arg0 = malloc<Pointer<Void>>()..value = navigationMesh.nativePtr;
    final arg1 = malloc<Pointer<Void>>()..value = rootNode.nativePtr;
    try {
      ptrcallVoid(_mb_region_bake_navigation_mesh, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  // Skipped region_get_connections_count(): an argument type is unsupported.
  // Skipped region_get_connection_pathway_start(): an argument type is unsupported.
  // Skipped region_get_connection_pathway_end(): an argument type is unsupported.
  // Skipped region_get_closest_point_to_segment(): an argument type is unsupported.
  // Skipped region_get_closest_point(): an argument type is unsupported.
  // Skipped region_get_closest_point_normal(): an argument type is unsupported.
  // Skipped region_get_random_point(): an argument type is unsupported.
  // Skipped region_get_bounds(): an argument type is unsupported.
  // Skipped link_create(): unsupported return type "RID".
  // Skipped link_get_iteration_id(): an argument type is unsupported.
  // Skipped link_set_map(): an argument type is unsupported.
  // Skipped link_get_map(): unsupported return type "RID".
  // Skipped link_set_enabled(): an argument type is unsupported.
  // Skipped link_get_enabled(): an argument type is unsupported.
  // Skipped link_set_bidirectional(): an argument type is unsupported.
  // Skipped link_is_bidirectional(): an argument type is unsupported.
  // Skipped link_set_navigation_layers(): an argument type is unsupported.
  // Skipped link_get_navigation_layers(): an argument type is unsupported.
  // Skipped link_set_start_position(): an argument type is unsupported.
  // Skipped link_get_start_position(): an argument type is unsupported.
  // Skipped link_set_end_position(): an argument type is unsupported.
  // Skipped link_get_end_position(): an argument type is unsupported.
  // Skipped link_set_enter_cost(): an argument type is unsupported.
  // Skipped link_get_enter_cost(): an argument type is unsupported.
  // Skipped link_set_travel_cost(): an argument type is unsupported.
  // Skipped link_get_travel_cost(): an argument type is unsupported.
  // Skipped link_set_owner_id(): an argument type is unsupported.
  // Skipped link_get_owner_id(): an argument type is unsupported.
  // Skipped agent_create(): unsupported return type "RID".
  // Skipped agent_set_avoidance_enabled(): an argument type is unsupported.
  // Skipped agent_get_avoidance_enabled(): an argument type is unsupported.
  // Skipped agent_set_use_3d_avoidance(): an argument type is unsupported.
  // Skipped agent_get_use_3d_avoidance(): an argument type is unsupported.
  // Skipped agent_set_map(): an argument type is unsupported.
  // Skipped agent_get_map(): unsupported return type "RID".
  // Skipped agent_set_paused(): an argument type is unsupported.
  // Skipped agent_get_paused(): an argument type is unsupported.
  // Skipped agent_set_neighbor_distance(): an argument type is unsupported.
  // Skipped agent_get_neighbor_distance(): an argument type is unsupported.
  // Skipped agent_set_max_neighbors(): an argument type is unsupported.
  // Skipped agent_get_max_neighbors(): an argument type is unsupported.
  // Skipped agent_set_time_horizon_agents(): an argument type is unsupported.
  // Skipped agent_get_time_horizon_agents(): an argument type is unsupported.
  // Skipped agent_set_time_horizon_obstacles(): an argument type is unsupported.
  // Skipped agent_get_time_horizon_obstacles(): an argument type is unsupported.
  // Skipped agent_set_radius(): an argument type is unsupported.
  // Skipped agent_get_radius(): an argument type is unsupported.
  // Skipped agent_set_height(): an argument type is unsupported.
  // Skipped agent_get_height(): an argument type is unsupported.
  // Skipped agent_set_max_speed(): an argument type is unsupported.
  // Skipped agent_get_max_speed(): an argument type is unsupported.
  // Skipped agent_set_velocity_forced(): an argument type is unsupported.
  // Skipped agent_set_velocity(): an argument type is unsupported.
  // Skipped agent_get_velocity(): an argument type is unsupported.
  // Skipped agent_set_position(): an argument type is unsupported.
  // Skipped agent_get_position(): an argument type is unsupported.
  // Skipped agent_is_map_changed(): an argument type is unsupported.
  // Skipped agent_set_avoidance_callback(): an argument type is unsupported.
  // Skipped agent_has_avoidance_callback(): an argument type is unsupported.
  // Skipped agent_set_avoidance_layers(): an argument type is unsupported.
  // Skipped agent_get_avoidance_layers(): an argument type is unsupported.
  // Skipped agent_set_avoidance_mask(): an argument type is unsupported.
  // Skipped agent_get_avoidance_mask(): an argument type is unsupported.
  // Skipped agent_set_avoidance_priority(): an argument type is unsupported.
  // Skipped agent_get_avoidance_priority(): an argument type is unsupported.
  // Skipped obstacle_create(): unsupported return type "RID".
  // Skipped obstacle_set_avoidance_enabled(): an argument type is unsupported.
  // Skipped obstacle_get_avoidance_enabled(): an argument type is unsupported.
  // Skipped obstacle_set_use_3d_avoidance(): an argument type is unsupported.
  // Skipped obstacle_get_use_3d_avoidance(): an argument type is unsupported.
  // Skipped obstacle_set_map(): an argument type is unsupported.
  // Skipped obstacle_get_map(): unsupported return type "RID".
  // Skipped obstacle_set_paused(): an argument type is unsupported.
  // Skipped obstacle_get_paused(): an argument type is unsupported.
  // Skipped obstacle_set_radius(): an argument type is unsupported.
  // Skipped obstacle_get_radius(): an argument type is unsupported.
  // Skipped obstacle_set_height(): an argument type is unsupported.
  // Skipped obstacle_get_height(): an argument type is unsupported.
  // Skipped obstacle_set_velocity(): an argument type is unsupported.
  // Skipped obstacle_get_velocity(): an argument type is unsupported.
  // Skipped obstacle_set_position(): an argument type is unsupported.
  // Skipped obstacle_get_position(): an argument type is unsupported.
  // Skipped obstacle_set_vertices(): an argument type is unsupported.
  // Skipped obstacle_get_vertices(): unsupported return type "PackedVector3Array".
  // Skipped obstacle_set_avoidance_layers(): an argument type is unsupported.
  // Skipped obstacle_get_avoidance_layers(): an argument type is unsupported.
  // Skipped parse_source_geometry_data(): an argument type is unsupported.
  // Skipped bake_from_source_geometry_data(): an argument type is unsupported.
  // Skipped bake_from_source_geometry_data_async(): an argument type is unsupported.
  static final Pointer<Void> _mb_is_baking_navigation_mesh =
      resolveMethodBind('NavigationServer3D', 'is_baking_navigation_mesh', 3142026141);

  bool isBakingNavigationMesh(NavigationMesh navigationMesh) {
    final arg0 = malloc<Pointer<Void>>()..value = navigationMesh.nativePtr;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_baking_navigation_mesh, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  // Skipped source_geometry_parser_create(): unsupported return type "RID".
  // Skipped source_geometry_parser_set_callback(): an argument type is unsupported.
  // Skipped simplify_path(): unsupported return type "PackedVector3Array".
  // Skipped free_rid(): an argument type is unsupported.
  static final Pointer<Void> _mb_set_active =
      resolveMethodBind('NavigationServer3D', 'set_active', 2586408642);

  void setActive(bool active) {
    final arg0 = malloc<Uint8>()..value = active ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_active, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_debug_enabled =
      resolveMethodBind('NavigationServer3D', 'set_debug_enabled', 2586408642);

  void setDebugEnabled(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_debug_enabled, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_debug_enabled =
      resolveMethodBind('NavigationServer3D', 'get_debug_enabled', 36873697);

  bool getDebugEnabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_debug_enabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_process_info =
      resolveMethodBind('NavigationServer3D', 'get_process_info', 1938440894);

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
