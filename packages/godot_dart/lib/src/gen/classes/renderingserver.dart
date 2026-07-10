// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class RenderingServer extends GodotObject {
  RenderingServer(super.nativePtr);

  // Skipped texture_2d_create(): unsupported return type "RID".
  // Skipped texture_2d_layered_create(): unsupported return type "RID".
  // Skipped texture_3d_create(): unsupported return type "RID".
  // Skipped texture_proxy_create(): unsupported return type "RID".
  // Skipped texture_create_from_native_handle(): unsupported return type "RID".
  // Skipped texture_drawable_create(): unsupported return type "RID".
  // Skipped texture_2d_update(): an argument type is unsupported.
  // Skipped texture_3d_update(): an argument type is unsupported.
  // Skipped texture_proxy_update(): an argument type is unsupported.
  // Skipped texture_drawable_blit_rect(): an argument type is unsupported.
  // Skipped texture_2d_placeholder_create(): unsupported return type "RID".
  // Skipped texture_2d_layered_placeholder_create(): unsupported return type "RID".
  // Skipped texture_3d_placeholder_create(): unsupported return type "RID".
  // Skipped texture_2d_get(): an argument type is unsupported.
  // Skipped texture_2d_layer_get(): an argument type is unsupported.
  // Skipped texture_3d_get(): unsupported return type "typedarray::Image".
  // Skipped texture_drawable_generate_mipmaps(): an argument type is unsupported.
  // Skipped texture_drawable_get_default_material(): unsupported return type "RID".
  // Skipped texture_replace(): an argument type is unsupported.
  // Skipped texture_set_size_override(): an argument type is unsupported.
  // Skipped texture_set_path(): an argument type is unsupported.
  // Skipped texture_get_path(): an argument type is unsupported.
  // Skipped texture_get_format(): an argument type is unsupported.
  // Skipped texture_set_force_redraw_if_visible(): an argument type is unsupported.
  // Skipped texture_rd_create(): unsupported return type "RID".
  // Skipped texture_get_rd_texture(): unsupported return type "RID".
  // Skipped texture_get_native_handle(): an argument type is unsupported.
  // Skipped shader_create(): unsupported return type "RID".
  // Skipped shader_set_code(): an argument type is unsupported.
  // Skipped shader_set_path_hint(): an argument type is unsupported.
  // Skipped shader_get_code(): an argument type is unsupported.
  // Skipped get_shader_parameter_list(): unsupported return type "typedarray::Dictionary".
  // Skipped shader_get_parameter_default(): unsupported return type "Variant".
  // Skipped shader_set_default_texture_parameter(): an argument type is unsupported.
  // Skipped shader_get_default_texture_parameter(): unsupported return type "RID".
  // Skipped material_create(): unsupported return type "RID".
  // Skipped material_set_shader(): an argument type is unsupported.
  // Skipped material_set_param(): an argument type is unsupported.
  // Skipped material_get_param(): unsupported return type "Variant".
  // Skipped material_set_render_priority(): an argument type is unsupported.
  // Skipped material_set_next_pass(): an argument type is unsupported.
  static final Pointer<Void> _mb_material_set_use_debanding =
      resolveMethodBind('RenderingServer', 'material_set_use_debanding', 2586408642);

  void materialSetUseDebanding(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_material_set_use_debanding, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  // Skipped mesh_create_from_surfaces(): unsupported return type "RID".
  // Skipped mesh_create(): unsupported return type "RID".
  static final Pointer<Void> _mb_mesh_surface_get_format_offset =
      resolveMethodBind('RenderingServer', 'mesh_surface_get_format_offset', 2981368685);

  int meshSurfaceGetFormatOffset(int format, int vertexCount, int arrayIndex) {
    final arg0 = malloc<Int64>()..value = format;
    final arg1 = malloc<Int64>()..value = vertexCount;
    final arg2 = malloc<Int64>()..value = arrayIndex;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_mesh_surface_get_format_offset, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_mesh_surface_get_format_vertex_stride =
      resolveMethodBind('RenderingServer', 'mesh_surface_get_format_vertex_stride', 3188363337);

  int meshSurfaceGetFormatVertexStride(int format, int vertexCount) {
    final arg0 = malloc<Int64>()..value = format;
    final arg1 = malloc<Int64>()..value = vertexCount;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_mesh_surface_get_format_vertex_stride, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_mesh_surface_get_format_normal_tangent_stride =
      resolveMethodBind('RenderingServer', 'mesh_surface_get_format_normal_tangent_stride', 3188363337);

  int meshSurfaceGetFormatNormalTangentStride(int format, int vertexCount) {
    final arg0 = malloc<Int64>()..value = format;
    final arg1 = malloc<Int64>()..value = vertexCount;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_mesh_surface_get_format_normal_tangent_stride, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_mesh_surface_get_format_attribute_stride =
      resolveMethodBind('RenderingServer', 'mesh_surface_get_format_attribute_stride', 3188363337);

  int meshSurfaceGetFormatAttributeStride(int format, int vertexCount) {
    final arg0 = malloc<Int64>()..value = format;
    final arg1 = malloc<Int64>()..value = vertexCount;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_mesh_surface_get_format_attribute_stride, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_mesh_surface_get_format_skin_stride =
      resolveMethodBind('RenderingServer', 'mesh_surface_get_format_skin_stride', 3188363337);

  int meshSurfaceGetFormatSkinStride(int format, int vertexCount) {
    final arg0 = malloc<Int64>()..value = format;
    final arg1 = malloc<Int64>()..value = vertexCount;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_mesh_surface_get_format_skin_stride, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_mesh_surface_get_format_index_stride =
      resolveMethodBind('RenderingServer', 'mesh_surface_get_format_index_stride', 3188363337);

  int meshSurfaceGetFormatIndexStride(int format, int vertexCount) {
    final arg0 = malloc<Int64>()..value = format;
    final arg1 = malloc<Int64>()..value = vertexCount;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_mesh_surface_get_format_index_stride, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  // Skipped mesh_add_surface(): an argument type is unsupported.
  // Skipped mesh_add_surface_from_arrays(): an argument type is unsupported.
  // Skipped mesh_get_blend_shape_count(): an argument type is unsupported.
  // Skipped mesh_set_blend_shape_mode(): an argument type is unsupported.
  // Skipped mesh_get_blend_shape_mode(): an argument type is unsupported.
  // Skipped mesh_surface_set_material(): an argument type is unsupported.
  // Skipped mesh_surface_get_material(): unsupported return type "RID".
  // Skipped mesh_get_surface(): unsupported return type "Dictionary".
  // Skipped mesh_surface_get_arrays(): unsupported return type "Array".
  // Skipped mesh_surface_get_blend_shape_arrays(): unsupported return type "typedarray::Array".
  // Skipped mesh_get_surface_count(): an argument type is unsupported.
  // Skipped mesh_set_custom_aabb(): an argument type is unsupported.
  // Skipped mesh_get_custom_aabb(): an argument type is unsupported.
  // Skipped mesh_surface_remove(): an argument type is unsupported.
  // Skipped mesh_clear(): an argument type is unsupported.
  // Skipped mesh_surface_update_vertex_region(): an argument type is unsupported.
  // Skipped mesh_surface_update_attribute_region(): an argument type is unsupported.
  // Skipped mesh_surface_update_skin_region(): an argument type is unsupported.
  // Skipped mesh_surface_update_index_region(): an argument type is unsupported.
  // Skipped mesh_surface_get_vertex_buffer_rd_rid(): unsupported return type "RID".
  // Skipped mesh_surface_get_attribute_buffer_rd_rid(): unsupported return type "RID".
  // Skipped mesh_surface_get_skin_buffer_rd_rid(): unsupported return type "RID".
  // Skipped mesh_surface_get_index_buffer_rd_rid(): unsupported return type "RID".
  // Skipped mesh_set_shadow_mesh(): an argument type is unsupported.
  // Skipped multimesh_create(): unsupported return type "RID".
  // Skipped multimesh_allocate_data(): an argument type is unsupported.
  // Skipped multimesh_get_instance_count(): an argument type is unsupported.
  // Skipped multimesh_set_mesh(): an argument type is unsupported.
  // Skipped multimesh_instance_set_transform(): an argument type is unsupported.
  // Skipped multimesh_instance_set_transform_2d(): an argument type is unsupported.
  // Skipped multimesh_instance_set_color(): an argument type is unsupported.
  // Skipped multimesh_instance_set_custom_data(): an argument type is unsupported.
  // Skipped multimesh_get_mesh(): unsupported return type "RID".
  // Skipped multimesh_get_aabb(): an argument type is unsupported.
  // Skipped multimesh_set_custom_aabb(): an argument type is unsupported.
  // Skipped multimesh_get_custom_aabb(): an argument type is unsupported.
  // Skipped multimesh_instance_get_transform(): an argument type is unsupported.
  // Skipped multimesh_instance_get_transform_2d(): an argument type is unsupported.
  // Skipped multimesh_instance_get_color(): an argument type is unsupported.
  // Skipped multimesh_instance_get_custom_data(): an argument type is unsupported.
  // Skipped multimesh_set_visible_instances(): an argument type is unsupported.
  // Skipped multimesh_get_visible_instances(): an argument type is unsupported.
  // Skipped multimesh_set_buffer(): an argument type is unsupported.
  // Skipped multimesh_get_command_buffer_rd_rid(): unsupported return type "RID".
  // Skipped multimesh_get_buffer_rd_rid(): unsupported return type "RID".
  // Skipped multimesh_get_buffer(): unsupported return type "PackedFloat32Array".
  // Skipped multimesh_set_buffer_interpolated(): an argument type is unsupported.
  // Skipped multimesh_set_physics_interpolated(): an argument type is unsupported.
  // Skipped multimesh_set_physics_interpolation_quality(): an argument type is unsupported.
  // Skipped multimesh_instance_reset_physics_interpolation(): an argument type is unsupported.
  // Skipped multimesh_instances_reset_physics_interpolation(): an argument type is unsupported.
  // Skipped skeleton_create(): unsupported return type "RID".
  // Skipped skeleton_allocate_data(): an argument type is unsupported.
  // Skipped skeleton_get_bone_count(): an argument type is unsupported.
  // Skipped skeleton_bone_set_transform(): an argument type is unsupported.
  // Skipped skeleton_bone_get_transform(): an argument type is unsupported.
  // Skipped skeleton_bone_set_transform_2d(): an argument type is unsupported.
  // Skipped skeleton_bone_get_transform_2d(): an argument type is unsupported.
  // Skipped skeleton_set_base_transform_2d(): an argument type is unsupported.
  // Skipped directional_light_create(): unsupported return type "RID".
  // Skipped omni_light_create(): unsupported return type "RID".
  // Skipped spot_light_create(): unsupported return type "RID".
  // Skipped area_light_create(): unsupported return type "RID".
  // Skipped light_set_color(): an argument type is unsupported.
  // Skipped light_set_param(): an argument type is unsupported.
  // Skipped light_set_shadow(): an argument type is unsupported.
  // Skipped light_set_projector(): an argument type is unsupported.
  // Skipped light_set_negative(): an argument type is unsupported.
  // Skipped light_set_cull_mask(): an argument type is unsupported.
  // Skipped light_set_distance_fade(): an argument type is unsupported.
  // Skipped light_set_reverse_cull_face_mode(): an argument type is unsupported.
  // Skipped light_set_shadow_caster_mask(): an argument type is unsupported.
  // Skipped light_set_bake_mode(): an argument type is unsupported.
  // Skipped light_set_max_sdfgi_cascade(): an argument type is unsupported.
  // Skipped light_omni_set_shadow_mode(): an argument type is unsupported.
  // Skipped light_directional_set_shadow_mode(): an argument type is unsupported.
  // Skipped light_directional_set_blend_splits(): an argument type is unsupported.
  // Skipped light_directional_set_sky_mode(): an argument type is unsupported.
  // Skipped light_area_set_size(): an argument type is unsupported.
  // Skipped light_area_set_normalize_energy(): an argument type is unsupported.
  static final Pointer<Void> _mb_light_projectors_set_filter =
      resolveMethodBind('RenderingServer', 'light_projectors_set_filter', 43944325);

  void lightProjectorsSetFilter(int filter) {
    final arg0 = malloc<Int64>()..value = filter;
    try {
      ptrcallVoid(_mb_light_projectors_set_filter, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_lightmaps_set_bicubic_filter =
      resolveMethodBind('RenderingServer', 'lightmaps_set_bicubic_filter', 2586408642);

  void lightmapsSetBicubicFilter(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_lightmaps_set_bicubic_filter, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_positional_soft_shadow_filter_set_quality =
      resolveMethodBind('RenderingServer', 'positional_soft_shadow_filter_set_quality', 3613045266);

  void positionalSoftShadowFilterSetQuality(int quality) {
    final arg0 = malloc<Int64>()..value = quality;
    try {
      ptrcallVoid(_mb_positional_soft_shadow_filter_set_quality, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_directional_soft_shadow_filter_set_quality =
      resolveMethodBind('RenderingServer', 'directional_soft_shadow_filter_set_quality', 3613045266);

  void directionalSoftShadowFilterSetQuality(int quality) {
    final arg0 = malloc<Int64>()..value = quality;
    try {
      ptrcallVoid(_mb_directional_soft_shadow_filter_set_quality, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_directional_shadow_atlas_set_size =
      resolveMethodBind('RenderingServer', 'directional_shadow_atlas_set_size', 300928843);

  void directionalShadowAtlasSetSize(int size, bool is16bits) {
    final arg0 = malloc<Int64>()..value = size;
    final arg1 = malloc<Uint8>()..value = is16bits ? 1 : 0;
    try {
      ptrcallVoid(_mb_directional_shadow_atlas_set_size, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  // Skipped reflection_probe_create(): unsupported return type "RID".
  // Skipped reflection_probe_set_update_mode(): an argument type is unsupported.
  // Skipped reflection_probe_set_intensity(): an argument type is unsupported.
  // Skipped reflection_probe_set_blend_distance(): an argument type is unsupported.
  // Skipped reflection_probe_set_ambient_mode(): an argument type is unsupported.
  // Skipped reflection_probe_set_ambient_color(): an argument type is unsupported.
  // Skipped reflection_probe_set_ambient_energy(): an argument type is unsupported.
  // Skipped reflection_probe_set_max_distance(): an argument type is unsupported.
  // Skipped reflection_probe_set_size(): an argument type is unsupported.
  // Skipped reflection_probe_set_origin_offset(): an argument type is unsupported.
  // Skipped reflection_probe_set_as_interior(): an argument type is unsupported.
  // Skipped reflection_probe_set_enable_box_projection(): an argument type is unsupported.
  // Skipped reflection_probe_set_enable_shadows(): an argument type is unsupported.
  // Skipped reflection_probe_set_cull_mask(): an argument type is unsupported.
  // Skipped reflection_probe_set_reflection_mask(): an argument type is unsupported.
  // Skipped reflection_probe_set_resolution(): an argument type is unsupported.
  // Skipped reflection_probe_set_mesh_lod_threshold(): an argument type is unsupported.
  // Skipped decal_create(): unsupported return type "RID".
  // Skipped decal_set_size(): an argument type is unsupported.
  // Skipped decal_set_texture(): an argument type is unsupported.
  // Skipped decal_set_emission_energy(): an argument type is unsupported.
  // Skipped decal_set_albedo_mix(): an argument type is unsupported.
  // Skipped decal_set_modulate(): an argument type is unsupported.
  // Skipped decal_set_cull_mask(): an argument type is unsupported.
  // Skipped decal_set_distance_fade(): an argument type is unsupported.
  // Skipped decal_set_fade(): an argument type is unsupported.
  // Skipped decal_set_normal_fade(): an argument type is unsupported.
  static final Pointer<Void> _mb_decals_set_filter =
      resolveMethodBind('RenderingServer', 'decals_set_filter', 3519875702);

  void decalsSetFilter(int filter) {
    final arg0 = malloc<Int64>()..value = filter;
    try {
      ptrcallVoid(_mb_decals_set_filter, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_gi_set_use_half_resolution =
      resolveMethodBind('RenderingServer', 'gi_set_use_half_resolution', 2586408642);

  void giSetUseHalfResolution(bool halfResolution) {
    final arg0 = malloc<Uint8>()..value = halfResolution ? 1 : 0;
    try {
      ptrcallVoid(_mb_gi_set_use_half_resolution, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  // Skipped voxel_gi_create(): unsupported return type "RID".
  // Skipped voxel_gi_allocate_data(): an argument type is unsupported.
  // Skipped voxel_gi_get_octree_size(): an argument type is unsupported.
  // Skipped voxel_gi_get_octree_cells(): unsupported return type "PackedByteArray".
  // Skipped voxel_gi_get_data_cells(): unsupported return type "PackedByteArray".
  // Skipped voxel_gi_get_distance_field(): unsupported return type "PackedByteArray".
  // Skipped voxel_gi_get_level_counts(): unsupported return type "PackedInt32Array".
  // Skipped voxel_gi_get_to_cell_xform(): an argument type is unsupported.
  // Skipped voxel_gi_set_dynamic_range(): an argument type is unsupported.
  // Skipped voxel_gi_set_propagation(): an argument type is unsupported.
  // Skipped voxel_gi_set_energy(): an argument type is unsupported.
  // Skipped voxel_gi_set_baked_exposure_normalization(): an argument type is unsupported.
  // Skipped voxel_gi_set_bias(): an argument type is unsupported.
  // Skipped voxel_gi_set_normal_bias(): an argument type is unsupported.
  // Skipped voxel_gi_set_interior(): an argument type is unsupported.
  // Skipped voxel_gi_set_use_two_bounces(): an argument type is unsupported.
  static final Pointer<Void> _mb_voxel_gi_set_quality =
      resolveMethodBind('RenderingServer', 'voxel_gi_set_quality', 1538689978);

  void voxelGiSetQuality(int quality) {
    final arg0 = malloc<Int64>()..value = quality;
    try {
      ptrcallVoid(_mb_voxel_gi_set_quality, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  // Skipped lightmap_create(): unsupported return type "RID".
  // Skipped lightmap_set_textures(): an argument type is unsupported.
  // Skipped lightmap_set_probe_bounds(): an argument type is unsupported.
  // Skipped lightmap_set_probe_interior(): an argument type is unsupported.
  // Skipped lightmap_set_probe_capture_data(): an argument type is unsupported.
  // Skipped lightmap_get_probe_capture_points(): unsupported return type "PackedVector3Array".
  // Skipped lightmap_get_probe_capture_sh(): unsupported return type "PackedColorArray".
  // Skipped lightmap_get_probe_capture_tetrahedra(): unsupported return type "PackedInt32Array".
  // Skipped lightmap_get_probe_capture_bsp_tree(): unsupported return type "PackedInt32Array".
  // Skipped lightmap_set_baked_exposure_normalization(): an argument type is unsupported.
  static final Pointer<Void> _mb_lightmap_set_probe_capture_update_speed =
      resolveMethodBind('RenderingServer', 'lightmap_set_probe_capture_update_speed', 373806689);

  void lightmapSetProbeCaptureUpdateSpeed(double speed) {
    final arg0 = malloc<Double>()..value = speed;
    try {
      ptrcallVoid(_mb_lightmap_set_probe_capture_update_speed, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  // Skipped particles_create(): unsupported return type "RID".
  // Skipped particles_set_mode(): an argument type is unsupported.
  // Skipped particles_set_emitting(): an argument type is unsupported.
  // Skipped particles_get_emitting(): an argument type is unsupported.
  // Skipped particles_set_amount(): an argument type is unsupported.
  // Skipped particles_set_amount_ratio(): an argument type is unsupported.
  // Skipped particles_set_lifetime(): an argument type is unsupported.
  // Skipped particles_set_one_shot(): an argument type is unsupported.
  // Skipped particles_set_pre_process_time(): an argument type is unsupported.
  // Skipped particles_request_process_time(): an argument type is unsupported.
  // Skipped particles_set_explosiveness_ratio(): an argument type is unsupported.
  // Skipped particles_set_randomness_ratio(): an argument type is unsupported.
  // Skipped particles_set_interp_to_end(): an argument type is unsupported.
  // Skipped particles_set_emitter_velocity(): an argument type is unsupported.
  // Skipped particles_set_custom_aabb(): an argument type is unsupported.
  // Skipped particles_set_speed_scale(): an argument type is unsupported.
  // Skipped particles_set_use_local_coordinates(): an argument type is unsupported.
  // Skipped particles_set_process_material(): an argument type is unsupported.
  // Skipped particles_set_fixed_fps(): an argument type is unsupported.
  // Skipped particles_set_interpolate(): an argument type is unsupported.
  // Skipped particles_set_fractional_delta(): an argument type is unsupported.
  // Skipped particles_set_collision_base_size(): an argument type is unsupported.
  // Skipped particles_set_transform_align(): an argument type is unsupported.
  // Skipped particles_set_transform_align_channel_filter(): an argument type is unsupported.
  // Skipped particles_set_transform_align_axis(): an argument type is unsupported.
  // Skipped particles_set_trails(): an argument type is unsupported.
  // Skipped particles_set_trail_bind_poses(): an argument type is unsupported.
  // Skipped particles_is_inactive(): an argument type is unsupported.
  // Skipped particles_request_process(): an argument type is unsupported.
  // Skipped particles_restart(): an argument type is unsupported.
  // Skipped particles_set_subemitter(): an argument type is unsupported.
  // Skipped particles_emit(): an argument type is unsupported.
  // Skipped particles_set_draw_order(): an argument type is unsupported.
  // Skipped particles_set_draw_passes(): an argument type is unsupported.
  // Skipped particles_set_draw_pass_mesh(): an argument type is unsupported.
  // Skipped particles_get_current_aabb(): an argument type is unsupported.
  // Skipped particles_set_emission_transform(): an argument type is unsupported.
  // Skipped particles_collision_create(): unsupported return type "RID".
  // Skipped particles_collision_set_collision_type(): an argument type is unsupported.
  // Skipped particles_collision_set_cull_mask(): an argument type is unsupported.
  // Skipped particles_collision_set_sphere_radius(): an argument type is unsupported.
  // Skipped particles_collision_set_box_extents(): an argument type is unsupported.
  // Skipped particles_collision_set_attractor_strength(): an argument type is unsupported.
  // Skipped particles_collision_set_attractor_directionality(): an argument type is unsupported.
  // Skipped particles_collision_set_attractor_attenuation(): an argument type is unsupported.
  // Skipped particles_collision_set_field_texture(): an argument type is unsupported.
  // Skipped particles_collision_height_field_update(): an argument type is unsupported.
  // Skipped particles_collision_set_height_field_resolution(): an argument type is unsupported.
  // Skipped particles_collision_set_height_field_mask(): an argument type is unsupported.
  // Skipped fog_volume_create(): unsupported return type "RID".
  // Skipped fog_volume_set_shape(): an argument type is unsupported.
  // Skipped fog_volume_set_size(): an argument type is unsupported.
  // Skipped fog_volume_set_material(): an argument type is unsupported.
  // Skipped visibility_notifier_create(): unsupported return type "RID".
  // Skipped visibility_notifier_set_aabb(): an argument type is unsupported.
  // Skipped visibility_notifier_set_callbacks(): an argument type is unsupported.
  // Skipped occluder_create(): unsupported return type "RID".
  // Skipped occluder_set_mesh(): an argument type is unsupported.
  // Skipped camera_create(): unsupported return type "RID".
  // Skipped camera_set_perspective(): an argument type is unsupported.
  // Skipped camera_set_orthogonal(): an argument type is unsupported.
  // Skipped camera_set_frustum(): an argument type is unsupported.
  // Skipped camera_set_transform(): an argument type is unsupported.
  // Skipped camera_set_cull_mask(): an argument type is unsupported.
  // Skipped camera_set_environment(): an argument type is unsupported.
  // Skipped camera_set_camera_attributes(): an argument type is unsupported.
  // Skipped camera_set_compositor(): an argument type is unsupported.
  // Skipped camera_set_use_vertical_aspect(): an argument type is unsupported.
  // Skipped viewport_create(): unsupported return type "RID".
  // Skipped viewport_set_use_xr(): an argument type is unsupported.
  // Skipped viewport_set_size(): an argument type is unsupported.
  // Skipped viewport_set_active(): an argument type is unsupported.
  // Skipped viewport_set_parent_viewport(): an argument type is unsupported.
  // Skipped viewport_attach_to_screen(): an argument type is unsupported.
  // Skipped viewport_set_render_direct_to_screen(): an argument type is unsupported.
  // Skipped viewport_set_canvas_cull_mask(): an argument type is unsupported.
  // Skipped viewport_set_scaling_3d_mode(): an argument type is unsupported.
  // Skipped viewport_set_scaling_3d_scale(): an argument type is unsupported.
  // Skipped viewport_set_fsr_sharpness(): an argument type is unsupported.
  // Skipped viewport_set_texture_mipmap_bias(): an argument type is unsupported.
  // Skipped viewport_set_anisotropic_filtering_level(): an argument type is unsupported.
  // Skipped viewport_set_update_mode(): an argument type is unsupported.
  // Skipped viewport_get_update_mode(): an argument type is unsupported.
  // Skipped viewport_set_clear_mode(): an argument type is unsupported.
  // Skipped viewport_get_render_target(): unsupported return type "RID".
  // Skipped viewport_get_texture(): unsupported return type "RID".
  // Skipped viewport_set_disable_3d(): an argument type is unsupported.
  // Skipped viewport_set_disable_2d(): an argument type is unsupported.
  // Skipped viewport_set_environment_mode(): an argument type is unsupported.
  // Skipped viewport_attach_camera(): an argument type is unsupported.
  // Skipped viewport_set_scenario(): an argument type is unsupported.
  // Skipped viewport_attach_canvas(): an argument type is unsupported.
  // Skipped viewport_remove_canvas(): an argument type is unsupported.
  // Skipped viewport_set_snap_2d_transforms_to_pixel(): an argument type is unsupported.
  // Skipped viewport_set_snap_2d_vertices_to_pixel(): an argument type is unsupported.
  // Skipped viewport_set_default_canvas_item_texture_filter(): an argument type is unsupported.
  // Skipped viewport_set_default_canvas_item_texture_repeat(): an argument type is unsupported.
  // Skipped viewport_set_canvas_transform(): an argument type is unsupported.
  // Skipped viewport_set_canvas_stacking(): an argument type is unsupported.
  // Skipped viewport_set_transparent_background(): an argument type is unsupported.
  // Skipped viewport_set_global_canvas_transform(): an argument type is unsupported.
  // Skipped viewport_set_sdf_oversize_and_scale(): an argument type is unsupported.
  // Skipped viewport_set_positional_shadow_atlas_size(): an argument type is unsupported.
  // Skipped viewport_set_positional_shadow_atlas_quadrant_subdivision(): an argument type is unsupported.
  // Skipped viewport_set_msaa_3d(): an argument type is unsupported.
  // Skipped viewport_set_msaa_2d(): an argument type is unsupported.
  // Skipped viewport_set_use_hdr_2d(): an argument type is unsupported.
  // Skipped viewport_set_screen_space_aa(): an argument type is unsupported.
  // Skipped viewport_set_use_taa(): an argument type is unsupported.
  // Skipped viewport_set_use_debanding(): an argument type is unsupported.
  // Skipped viewport_set_use_occlusion_culling(): an argument type is unsupported.
  static final Pointer<Void> _mb_viewport_set_occlusion_rays_per_thread =
      resolveMethodBind('RenderingServer', 'viewport_set_occlusion_rays_per_thread', 1286410249);

  void viewportSetOcclusionRaysPerThread(int raysPerThread) {
    final arg0 = malloc<Int64>()..value = raysPerThread;
    try {
      ptrcallVoid(_mb_viewport_set_occlusion_rays_per_thread, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_viewport_set_occlusion_culling_build_quality =
      resolveMethodBind('RenderingServer', 'viewport_set_occlusion_culling_build_quality', 2069725696);

  void viewportSetOcclusionCullingBuildQuality(int quality) {
    final arg0 = malloc<Int64>()..value = quality;
    try {
      ptrcallVoid(_mb_viewport_set_occlusion_culling_build_quality, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  // Skipped viewport_get_render_info(): an argument type is unsupported.
  // Skipped viewport_set_debug_draw(): an argument type is unsupported.
  // Skipped viewport_set_measure_render_time(): an argument type is unsupported.
  // Skipped viewport_get_measured_render_time_cpu(): an argument type is unsupported.
  // Skipped viewport_get_measured_render_time_gpu(): an argument type is unsupported.
  // Skipped viewport_set_vrs_mode(): an argument type is unsupported.
  // Skipped viewport_set_vrs_update_mode(): an argument type is unsupported.
  // Skipped viewport_set_vrs_texture(): an argument type is unsupported.
  // Skipped sky_create(): unsupported return type "RID".
  // Skipped sky_set_radiance_size(): an argument type is unsupported.
  // Skipped sky_set_mode(): an argument type is unsupported.
  // Skipped sky_set_material(): an argument type is unsupported.
  // Skipped sky_bake_panorama(): an argument type is unsupported.
  // Skipped compositor_effect_create(): unsupported return type "RID".
  // Skipped compositor_effect_set_enabled(): an argument type is unsupported.
  // Skipped compositor_effect_set_callback(): an argument type is unsupported.
  // Skipped compositor_effect_set_flag(): an argument type is unsupported.
  // Skipped compositor_create(): unsupported return type "RID".
  // Skipped compositor_set_compositor_effects(): an argument type is unsupported.
  // Skipped environment_create(): unsupported return type "RID".
  // Skipped environment_set_background(): an argument type is unsupported.
  // Skipped environment_set_camera_id(): an argument type is unsupported.
  // Skipped environment_set_sky(): an argument type is unsupported.
  // Skipped environment_set_sky_custom_fov(): an argument type is unsupported.
  // Skipped environment_set_sky_orientation(): an argument type is unsupported.
  // Skipped environment_set_bg_color(): an argument type is unsupported.
  // Skipped environment_set_bg_energy(): an argument type is unsupported.
  // Skipped environment_set_canvas_max_layer(): an argument type is unsupported.
  // Skipped environment_set_ambient_light(): an argument type is unsupported.
  // Skipped environment_set_glow(): an argument type is unsupported.
  // Skipped environment_set_tonemap(): an argument type is unsupported.
  // Skipped environment_set_tonemap_agx_contrast(): an argument type is unsupported.
  // Skipped environment_set_adjustment(): an argument type is unsupported.
  // Skipped environment_set_ssr(): an argument type is unsupported.
  // Skipped environment_set_ssao(): an argument type is unsupported.
  // Skipped environment_set_fog(): an argument type is unsupported.
  // Skipped environment_set_fog_depth(): an argument type is unsupported.
  // Skipped environment_set_sdfgi(): an argument type is unsupported.
  // Skipped environment_set_volumetric_fog(): an argument type is unsupported.
  static final Pointer<Void> _mb_environment_glow_set_use_bicubic_upscale =
      resolveMethodBind('RenderingServer', 'environment_glow_set_use_bicubic_upscale', 2586408642);

  void environmentGlowSetUseBicubicUpscale(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_environment_glow_set_use_bicubic_upscale, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_environment_set_ssr_half_size =
      resolveMethodBind('RenderingServer', 'environment_set_ssr_half_size', 2586408642);

  void environmentSetSsrHalfSize(bool halfSize) {
    final arg0 = malloc<Uint8>()..value = halfSize ? 1 : 0;
    try {
      ptrcallVoid(_mb_environment_set_ssr_half_size, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_environment_set_ssr_roughness_quality =
      resolveMethodBind('RenderingServer', 'environment_set_ssr_roughness_quality', 1190026788);

  void environmentSetSsrRoughnessQuality(int quality) {
    final arg0 = malloc<Int64>()..value = quality;
    try {
      ptrcallVoid(_mb_environment_set_ssr_roughness_quality, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_environment_set_ssao_quality =
      resolveMethodBind('RenderingServer', 'environment_set_ssao_quality', 189753569);

  void environmentSetSsaoQuality(int quality, bool halfSize, double adaptiveTarget, int blurPasses, double fadeoutFrom, double fadeoutTo) {
    final arg0 = malloc<Int64>()..value = quality;
    final arg1 = malloc<Uint8>()..value = halfSize ? 1 : 0;
    final arg2 = malloc<Double>()..value = adaptiveTarget;
    final arg3 = malloc<Int64>()..value = blurPasses;
    final arg4 = malloc<Double>()..value = fadeoutFrom;
    final arg5 = malloc<Double>()..value = fadeoutTo;
    try {
      ptrcallVoid(_mb_environment_set_ssao_quality, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>(), arg3.cast<Void>(), arg4.cast<Void>(), arg5.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
      malloc.free(arg3);
      malloc.free(arg4);
      malloc.free(arg5);
    }
  }

  static final Pointer<Void> _mb_environment_set_ssil_quality =
      resolveMethodBind('RenderingServer', 'environment_set_ssil_quality', 1713836683);

  void environmentSetSsilQuality(int quality, bool halfSize, double adaptiveTarget, int blurPasses, double fadeoutFrom, double fadeoutTo) {
    final arg0 = malloc<Int64>()..value = quality;
    final arg1 = malloc<Uint8>()..value = halfSize ? 1 : 0;
    final arg2 = malloc<Double>()..value = adaptiveTarget;
    final arg3 = malloc<Int64>()..value = blurPasses;
    final arg4 = malloc<Double>()..value = fadeoutFrom;
    final arg5 = malloc<Double>()..value = fadeoutTo;
    try {
      ptrcallVoid(_mb_environment_set_ssil_quality, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>(), arg3.cast<Void>(), arg4.cast<Void>(), arg5.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
      malloc.free(arg3);
      malloc.free(arg4);
      malloc.free(arg5);
    }
  }

  static final Pointer<Void> _mb_environment_set_sdfgi_ray_count =
      resolveMethodBind('RenderingServer', 'environment_set_sdfgi_ray_count', 340137951);

  void environmentSetSdfgiRayCount(int rayCount) {
    final arg0 = malloc<Int64>()..value = rayCount;
    try {
      ptrcallVoid(_mb_environment_set_sdfgi_ray_count, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_environment_set_sdfgi_frames_to_converge =
      resolveMethodBind('RenderingServer', 'environment_set_sdfgi_frames_to_converge', 2182444374);

  void environmentSetSdfgiFramesToConverge(int frames) {
    final arg0 = malloc<Int64>()..value = frames;
    try {
      ptrcallVoid(_mb_environment_set_sdfgi_frames_to_converge, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_environment_set_sdfgi_frames_to_update_light =
      resolveMethodBind('RenderingServer', 'environment_set_sdfgi_frames_to_update_light', 1251144068);

  void environmentSetSdfgiFramesToUpdateLight(int frames) {
    final arg0 = malloc<Int64>()..value = frames;
    try {
      ptrcallVoid(_mb_environment_set_sdfgi_frames_to_update_light, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_environment_set_volumetric_fog_volume_size =
      resolveMethodBind('RenderingServer', 'environment_set_volumetric_fog_volume_size', 3937882851);

  void environmentSetVolumetricFogVolumeSize(int size, int depth) {
    final arg0 = malloc<Int64>()..value = size;
    final arg1 = malloc<Int64>()..value = depth;
    try {
      ptrcallVoid(_mb_environment_set_volumetric_fog_volume_size, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_environment_set_volumetric_fog_filter_active =
      resolveMethodBind('RenderingServer', 'environment_set_volumetric_fog_filter_active', 2586408642);

  void environmentSetVolumetricFogFilterActive(bool active) {
    final arg0 = malloc<Uint8>()..value = active ? 1 : 0;
    try {
      ptrcallVoid(_mb_environment_set_volumetric_fog_filter_active, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  // Skipped environment_bake_panorama(): an argument type is unsupported.
  static final Pointer<Void> _mb_screen_space_roughness_limiter_set_active =
      resolveMethodBind('RenderingServer', 'screen_space_roughness_limiter_set_active', 916716790);

  void screenSpaceRoughnessLimiterSetActive(bool enable, double amount, double limit) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    final arg1 = malloc<Double>()..value = amount;
    final arg2 = malloc<Double>()..value = limit;
    try {
      ptrcallVoid(_mb_screen_space_roughness_limiter_set_active, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_sub_surface_scattering_set_quality =
      resolveMethodBind('RenderingServer', 'sub_surface_scattering_set_quality', 64571803);

  void subSurfaceScatteringSetQuality(int quality) {
    final arg0 = malloc<Int64>()..value = quality;
    try {
      ptrcallVoid(_mb_sub_surface_scattering_set_quality, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_sub_surface_scattering_set_scale =
      resolveMethodBind('RenderingServer', 'sub_surface_scattering_set_scale', 1017552074);

  void subSurfaceScatteringSetScale(double scale, double depthScale) {
    final arg0 = malloc<Double>()..value = scale;
    final arg1 = malloc<Double>()..value = depthScale;
    try {
      ptrcallVoid(_mb_sub_surface_scattering_set_scale, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  // Skipped camera_attributes_create(): unsupported return type "RID".
  static final Pointer<Void> _mb_camera_attributes_set_dof_blur_quality =
      resolveMethodBind('RenderingServer', 'camera_attributes_set_dof_blur_quality', 2220136795);

  void cameraAttributesSetDofBlurQuality(int quality, bool useJitter) {
    final arg0 = malloc<Int64>()..value = quality;
    final arg1 = malloc<Uint8>()..value = useJitter ? 1 : 0;
    try {
      ptrcallVoid(_mb_camera_attributes_set_dof_blur_quality, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_camera_attributes_set_dof_blur_bokeh_shape =
      resolveMethodBind('RenderingServer', 'camera_attributes_set_dof_blur_bokeh_shape', 1205058394);

  void cameraAttributesSetDofBlurBokehShape(int shape) {
    final arg0 = malloc<Int64>()..value = shape;
    try {
      ptrcallVoid(_mb_camera_attributes_set_dof_blur_bokeh_shape, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  // Skipped camera_attributes_set_dof_blur(): an argument type is unsupported.
  // Skipped camera_attributes_set_exposure(): an argument type is unsupported.
  // Skipped camera_attributes_set_auto_exposure(): an argument type is unsupported.
  // Skipped scenario_create(): unsupported return type "RID".
  // Skipped scenario_set_environment(): an argument type is unsupported.
  // Skipped scenario_set_fallback_environment(): an argument type is unsupported.
  // Skipped scenario_set_camera_attributes(): an argument type is unsupported.
  // Skipped scenario_set_compositor(): an argument type is unsupported.
  // Skipped instance_create2(): unsupported return type "RID".
  // Skipped instance_create(): unsupported return type "RID".
  // Skipped instance_set_base(): an argument type is unsupported.
  // Skipped instance_set_scenario(): an argument type is unsupported.
  // Skipped instance_set_layer_mask(): an argument type is unsupported.
  // Skipped instance_set_pivot_data(): an argument type is unsupported.
  // Skipped instance_set_transform(): an argument type is unsupported.
  // Skipped instance_attach_object_instance_id(): an argument type is unsupported.
  // Skipped instance_set_blend_shape_weight(): an argument type is unsupported.
  // Skipped instance_set_surface_override_material(): an argument type is unsupported.
  // Skipped instance_set_visible(): an argument type is unsupported.
  // Skipped instance_geometry_set_transparency(): an argument type is unsupported.
  // Skipped instance_teleport(): an argument type is unsupported.
  // Skipped instance_set_custom_aabb(): an argument type is unsupported.
  // Skipped instance_attach_skeleton(): an argument type is unsupported.
  // Skipped instance_set_extra_visibility_margin(): an argument type is unsupported.
  // Skipped instance_set_visibility_parent(): an argument type is unsupported.
  // Skipped instance_set_ignore_culling(): an argument type is unsupported.
  // Skipped instance_geometry_set_flag(): an argument type is unsupported.
  // Skipped instance_geometry_set_cast_shadows_setting(): an argument type is unsupported.
  // Skipped instance_geometry_set_material_override(): an argument type is unsupported.
  // Skipped instance_geometry_set_material_overlay(): an argument type is unsupported.
  // Skipped instance_geometry_set_visibility_range(): an argument type is unsupported.
  // Skipped instance_geometry_set_lightmap(): an argument type is unsupported.
  // Skipped instance_geometry_set_lod_bias(): an argument type is unsupported.
  // Skipped instance_geometry_set_shader_parameter(): an argument type is unsupported.
  // Skipped instance_geometry_get_shader_parameter(): unsupported return type "Variant".
  // Skipped instance_geometry_get_shader_parameter_default_value(): unsupported return type "Variant".
  // Skipped instance_geometry_get_shader_parameter_list(): unsupported return type "typedarray::Dictionary".
  // Skipped instances_cull_aabb(): unsupported return type "PackedInt64Array".
  // Skipped instances_cull_ray(): unsupported return type "PackedInt64Array".
  // Skipped instances_cull_convex(): unsupported return type "PackedInt64Array".
  // Skipped bake_render_uv2(): unsupported return type "typedarray::Image".
  // Skipped canvas_create(): unsupported return type "RID".
  // Skipped canvas_set_item_mirroring(): an argument type is unsupported.
  // Skipped canvas_set_item_repeat(): an argument type is unsupported.
  // Skipped canvas_set_modulate(): an argument type is unsupported.
  static final Pointer<Void> _mb_canvas_set_disable_scale =
      resolveMethodBind('RenderingServer', 'canvas_set_disable_scale', 2586408642);

  void canvasSetDisableScale(bool disable) {
    final arg0 = malloc<Uint8>()..value = disable ? 1 : 0;
    try {
      ptrcallVoid(_mb_canvas_set_disable_scale, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  // Skipped canvas_texture_create(): unsupported return type "RID".
  // Skipped canvas_texture_set_channel(): an argument type is unsupported.
  // Skipped canvas_texture_set_shading_parameters(): an argument type is unsupported.
  // Skipped canvas_texture_set_texture_filter(): an argument type is unsupported.
  // Skipped canvas_texture_set_texture_repeat(): an argument type is unsupported.
  // Skipped canvas_item_create(): unsupported return type "RID".
  // Skipped canvas_item_set_parent(): an argument type is unsupported.
  // Skipped canvas_item_set_default_texture_filter(): an argument type is unsupported.
  // Skipped canvas_item_set_default_texture_repeat(): an argument type is unsupported.
  // Skipped canvas_item_set_visible(): an argument type is unsupported.
  // Skipped canvas_item_set_light_mask(): an argument type is unsupported.
  // Skipped canvas_item_set_visibility_layer(): an argument type is unsupported.
  // Skipped canvas_item_set_transform(): an argument type is unsupported.
  // Skipped canvas_item_set_clip(): an argument type is unsupported.
  // Skipped canvas_item_set_distance_field_mode(): an argument type is unsupported.
  // Skipped canvas_item_set_custom_rect(): an argument type is unsupported.
  // Skipped canvas_item_set_modulate(): an argument type is unsupported.
  // Skipped canvas_item_set_self_modulate(): an argument type is unsupported.
  // Skipped canvas_item_set_draw_behind_parent(): an argument type is unsupported.
  // Skipped canvas_item_set_interpolated(): an argument type is unsupported.
  // Skipped canvas_item_reset_physics_interpolation(): an argument type is unsupported.
  // Skipped canvas_item_transform_physics_interpolation(): an argument type is unsupported.
  // Skipped canvas_item_add_line(): an argument type is unsupported.
  // Skipped canvas_item_add_polyline(): an argument type is unsupported.
  // Skipped canvas_item_add_multiline(): an argument type is unsupported.
  // Skipped canvas_item_add_rect(): an argument type is unsupported.
  // Skipped canvas_item_add_circle(): an argument type is unsupported.
  // Skipped canvas_item_add_ellipse(): an argument type is unsupported.
  // Skipped canvas_item_add_texture_rect(): an argument type is unsupported.
  // Skipped canvas_item_add_msdf_texture_rect_region(): an argument type is unsupported.
  // Skipped canvas_item_add_lcd_texture_rect_region(): an argument type is unsupported.
  // Skipped canvas_item_add_texture_rect_region(): an argument type is unsupported.
  // Skipped canvas_item_add_nine_patch(): an argument type is unsupported.
  // Skipped canvas_item_add_primitive(): an argument type is unsupported.
  // Skipped canvas_item_add_polygon(): an argument type is unsupported.
  // Skipped canvas_item_add_triangle_array(): an argument type is unsupported.
  // Skipped canvas_item_add_mesh(): an argument type is unsupported.
  // Skipped canvas_item_add_multimesh(): an argument type is unsupported.
  // Skipped canvas_item_add_particles(): an argument type is unsupported.
  // Skipped canvas_item_add_set_transform(): an argument type is unsupported.
  // Skipped canvas_item_add_clip_ignore(): an argument type is unsupported.
  // Skipped canvas_item_add_animation_slice(): an argument type is unsupported.
  // Skipped canvas_item_set_sort_children_by_y(): an argument type is unsupported.
  // Skipped canvas_item_set_z_index(): an argument type is unsupported.
  // Skipped canvas_item_set_z_as_relative_to_parent(): an argument type is unsupported.
  // Skipped canvas_item_set_copy_to_backbuffer(): an argument type is unsupported.
  // Skipped canvas_item_attach_skeleton(): an argument type is unsupported.
  // Skipped canvas_item_clear(): an argument type is unsupported.
  // Skipped canvas_item_set_draw_index(): an argument type is unsupported.
  // Skipped canvas_item_set_material(): an argument type is unsupported.
  // Skipped canvas_item_set_use_parent_material(): an argument type is unsupported.
  // Skipped canvas_item_set_instance_shader_parameter(): an argument type is unsupported.
  // Skipped canvas_item_get_instance_shader_parameter(): unsupported return type "Variant".
  // Skipped canvas_item_get_instance_shader_parameter_default_value(): unsupported return type "Variant".
  // Skipped canvas_item_get_instance_shader_parameter_list(): unsupported return type "typedarray::Dictionary".
  // Skipped canvas_item_set_visibility_notifier(): an argument type is unsupported.
  // Skipped canvas_item_set_canvas_group_mode(): an argument type is unsupported.
  // Skipped debug_canvas_item_get_rect(): an argument type is unsupported.
  // Skipped canvas_light_create(): unsupported return type "RID".
  // Skipped canvas_light_attach_to_canvas(): an argument type is unsupported.
  // Skipped canvas_light_set_enabled(): an argument type is unsupported.
  // Skipped canvas_light_set_texture_scale(): an argument type is unsupported.
  // Skipped canvas_light_set_transform(): an argument type is unsupported.
  // Skipped canvas_light_set_texture(): an argument type is unsupported.
  // Skipped canvas_light_set_texture_offset(): an argument type is unsupported.
  // Skipped canvas_light_set_color(): an argument type is unsupported.
  // Skipped canvas_light_set_height(): an argument type is unsupported.
  // Skipped canvas_light_set_energy(): an argument type is unsupported.
  // Skipped canvas_light_set_z_range(): an argument type is unsupported.
  // Skipped canvas_light_set_layer_range(): an argument type is unsupported.
  // Skipped canvas_light_set_item_cull_mask(): an argument type is unsupported.
  // Skipped canvas_light_set_item_shadow_cull_mask(): an argument type is unsupported.
  // Skipped canvas_light_set_mode(): an argument type is unsupported.
  // Skipped canvas_light_set_shadow_enabled(): an argument type is unsupported.
  // Skipped canvas_light_set_shadow_filter(): an argument type is unsupported.
  // Skipped canvas_light_set_shadow_color(): an argument type is unsupported.
  // Skipped canvas_light_set_shadow_smooth(): an argument type is unsupported.
  // Skipped canvas_light_set_blend_mode(): an argument type is unsupported.
  // Skipped canvas_light_set_interpolated(): an argument type is unsupported.
  // Skipped canvas_light_reset_physics_interpolation(): an argument type is unsupported.
  // Skipped canvas_light_transform_physics_interpolation(): an argument type is unsupported.
  // Skipped canvas_light_occluder_create(): unsupported return type "RID".
  // Skipped canvas_light_occluder_attach_to_canvas(): an argument type is unsupported.
  // Skipped canvas_light_occluder_set_enabled(): an argument type is unsupported.
  // Skipped canvas_light_occluder_set_polygon(): an argument type is unsupported.
  // Skipped canvas_light_occluder_set_as_sdf_collision(): an argument type is unsupported.
  // Skipped canvas_light_occluder_set_transform(): an argument type is unsupported.
  // Skipped canvas_light_occluder_set_light_mask(): an argument type is unsupported.
  // Skipped canvas_light_occluder_set_interpolated(): an argument type is unsupported.
  // Skipped canvas_light_occluder_reset_physics_interpolation(): an argument type is unsupported.
  // Skipped canvas_light_occluder_transform_physics_interpolation(): an argument type is unsupported.
  // Skipped canvas_occluder_polygon_create(): unsupported return type "RID".
  // Skipped canvas_occluder_polygon_set_shape(): an argument type is unsupported.
  // Skipped canvas_occluder_polygon_set_cull_mode(): an argument type is unsupported.
  static final Pointer<Void> _mb_canvas_set_shadow_texture_size =
      resolveMethodBind('RenderingServer', 'canvas_set_shadow_texture_size', 1286410249);

  void canvasSetShadowTextureSize(int size) {
    final arg0 = malloc<Int64>()..value = size;
    try {
      ptrcallVoid(_mb_canvas_set_shadow_texture_size, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  // Skipped global_shader_parameter_add(): an argument type is unsupported.
  static final Pointer<Void> _mb_global_shader_parameter_remove =
      resolveMethodBind('RenderingServer', 'global_shader_parameter_remove', 3304788590);

  void globalShaderParameterRemove(String name) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), name);
    try {
      ptrcallVoid(_mb_global_shader_parameter_remove, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
    }
  }

  // Skipped global_shader_parameter_get_list(): unsupported return type "typedarray::StringName".
  // Skipped global_shader_parameter_set(): an argument type is unsupported.
  // Skipped global_shader_parameter_set_override(): an argument type is unsupported.
  // Skipped global_shader_parameter_get(): unsupported return type "Variant".
  static final Pointer<Void> _mb_global_shader_parameter_get_type =
      resolveMethodBind('RenderingServer', 'global_shader_parameter_get_type', 1601414142);

  int globalShaderParameterGetType(String name) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), name);
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_global_shader_parameter_get_type, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
    }
  }

  // Skipped free_rid(): an argument type is unsupported.
  // Skipped request_frame_drawn_callback(): an argument type is unsupported.
  static final Pointer<Void> _mb_has_changed =
      resolveMethodBind('RenderingServer', 'has_changed', 36873697);

  bool hasChanged() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_has_changed, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_rendering_info =
      resolveMethodBind('RenderingServer', 'get_rendering_info', 3763192241);

  int getRenderingInfo(int info) {
    final arg0 = malloc<Int64>()..value = info;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_rendering_info, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_video_adapter_name =
      resolveMethodBind('RenderingServer', 'get_video_adapter_name', 201670096);

  String getVideoAdapterName() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_video_adapter_name, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_video_adapter_vendor =
      resolveMethodBind('RenderingServer', 'get_video_adapter_vendor', 201670096);

  String getVideoAdapterVendor() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_video_adapter_vendor, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_video_adapter_type =
      resolveMethodBind('RenderingServer', 'get_video_adapter_type', 3099547011);

  int getVideoAdapterType() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_video_adapter_type, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_video_adapter_api_version =
      resolveMethodBind('RenderingServer', 'get_video_adapter_api_version', 201670096);

  String getVideoAdapterApiVersion() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_video_adapter_api_version, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_current_rendering_driver_name =
      resolveMethodBind('RenderingServer', 'get_current_rendering_driver_name', 201670096);

  String getCurrentRenderingDriverName() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_current_rendering_driver_name, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_current_rendering_method =
      resolveMethodBind('RenderingServer', 'get_current_rendering_method', 201670096);

  String getCurrentRenderingMethod() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_current_rendering_method, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  // Skipped make_sphere_mesh(): unsupported return type "RID".
  // Skipped get_test_cube(): unsupported return type "RID".
  // Skipped get_test_texture(): unsupported return type "RID".
  // Skipped get_white_texture(): unsupported return type "RID".
  static final Pointer<Void> _mb_set_boot_image_with_stretch =
      resolveMethodBind('RenderingServer', 'set_boot_image_with_stretch', 1104470771);

  void setBootImageWithStretch(Image image, Color color, int stretchMode, bool useFilter) {
    final arg0 = malloc<Pointer<Void>>()..value = image.nativePtr;
    final arg1 = malloc<Uint8>(Color.nativeSize);
    color.writeTo(arg1, 0);
    final arg2 = malloc<Int64>()..value = stretchMode;
    final arg3 = malloc<Uint8>()..value = useFilter ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_boot_image_with_stretch, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>(), arg3.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
      malloc.free(arg3);
    }
  }

  static final Pointer<Void> _mb_set_boot_image =
      resolveMethodBind('RenderingServer', 'set_boot_image', 3759744527);

  void setBootImage(Image image, Color color, bool scale, bool useFilter) {
    final arg0 = malloc<Pointer<Void>>()..value = image.nativePtr;
    final arg1 = malloc<Uint8>(Color.nativeSize);
    color.writeTo(arg1, 0);
    final arg2 = malloc<Uint8>()..value = scale ? 1 : 0;
    final arg3 = malloc<Uint8>()..value = useFilter ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_boot_image, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>(), arg3.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
      malloc.free(arg3);
    }
  }

  static final Pointer<Void> _mb_get_default_clear_color =
      resolveMethodBind('RenderingServer', 'get_default_clear_color', 3200896285);

  Color getDefaultClearColor() {
    try {
      final ret = malloc<Uint8>(Color.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_default_clear_color, nativePtr, [], ret.cast());
        return Color.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_default_clear_color =
      resolveMethodBind('RenderingServer', 'set_default_clear_color', 2920490490);

  void setDefaultClearColor(Color color) {
    final arg0 = malloc<Uint8>(Color.nativeSize);
    color.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_default_clear_color, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_has_os_feature =
      resolveMethodBind('RenderingServer', 'has_os_feature', 3927539163);

  bool hasOsFeature(String feature) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), feature);
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_has_os_feature, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_debug_generate_wireframes =
      resolveMethodBind('RenderingServer', 'set_debug_generate_wireframes', 2586408642);

  void setDebugGenerateWireframes(bool generate) {
    final arg0 = malloc<Uint8>()..value = generate ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_debug_generate_wireframes, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_render_loop_enabled =
      resolveMethodBind('RenderingServer', 'is_render_loop_enabled', 36873697);

  bool isRenderLoopEnabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_render_loop_enabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_render_loop_enabled =
      resolveMethodBind('RenderingServer', 'set_render_loop_enabled', 2586408642);

  void setRenderLoopEnabled(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_render_loop_enabled, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_frame_setup_time_cpu =
      resolveMethodBind('RenderingServer', 'get_frame_setup_time_cpu', 1740695150);

  double getFrameSetupTimeCpu() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_frame_setup_time_cpu, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_force_sync =
      resolveMethodBind('RenderingServer', 'force_sync', 3218959716);

  void forceSync() {
    try {
      ptrcallVoid(_mb_force_sync, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_force_draw =
      resolveMethodBind('RenderingServer', 'force_draw', 1076185472);

  void forceDraw(bool swapBuffers, double frameStep) {
    final arg0 = malloc<Uint8>()..value = swapBuffers ? 1 : 0;
    final arg1 = malloc<Double>()..value = frameStep;
    try {
      ptrcallVoid(_mb_force_draw, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_rendering_device =
      resolveMethodBind('RenderingServer', 'get_rendering_device', 1405107940);

  RenderingDevice? getRenderingDevice() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_rendering_device, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : RenderingDevice(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_create_local_rendering_device =
      resolveMethodBind('RenderingServer', 'create_local_rendering_device', 1405107940);

  RenderingDevice? createLocalRenderingDevice() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_create_local_rendering_device, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : RenderingDevice(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_is_on_render_thread =
      resolveMethodBind('RenderingServer', 'is_on_render_thread', 2240911060);

  bool isOnRenderThread() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_on_render_thread, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  // Skipped call_on_render_thread(): an argument type is unsupported.
  static final Pointer<Void> _mb_has_feature =
      resolveMethodBind('RenderingServer', 'has_feature', 598462696);

  bool hasFeature(int feature) {
    final arg0 = malloc<Int64>()..value = feature;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_has_feature, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

}
