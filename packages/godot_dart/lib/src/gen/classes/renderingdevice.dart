// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class RenderingDevice extends GodotObject {
  RenderingDevice(super.nativePtr);

  // Skipped texture_create(): unsupported return type "RID".
  // Skipped texture_create_shared(): unsupported return type "RID".
  // Skipped texture_create_shared_from_slice(): unsupported return type "RID".
  // Skipped texture_create_from_extension(): unsupported return type "RID".
  // Skipped texture_update(): an argument type is unsupported.
  // Skipped texture_get_data(): unsupported return type "PackedByteArray".
  // Skipped texture_get_data_async(): an argument type is unsupported.
  static final Pointer<Void> _mb_texture_is_format_supported_for_usage =
      resolveMethodBind('RenderingDevice', 'texture_is_format_supported_for_usage', 2592520478);

  bool textureIsFormatSupportedForUsage(int format, int usageFlags) {
    final arg0 = malloc<Int64>()..value = format;
    final arg1 = malloc<Int64>()..value = usageFlags;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_texture_is_format_supported_for_usage, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  // Skipped texture_is_shared(): an argument type is unsupported.
  // Skipped texture_is_valid(): an argument type is unsupported.
  // Skipped texture_set_discardable(): an argument type is unsupported.
  // Skipped texture_is_discardable(): an argument type is unsupported.
  // Skipped texture_copy(): an argument type is unsupported.
  // Skipped texture_clear(): an argument type is unsupported.
  // Skipped texture_resolve_multisample(): an argument type is unsupported.
  // Skipped texture_get_format(): an argument type is unsupported.
  // Skipped texture_get_native_handle(): an argument type is unsupported.
  // Skipped framebuffer_format_create(): an argument type is unsupported.
  // Skipped framebuffer_format_create_multipass(): an argument type is unsupported.
  static final Pointer<Void> _mb_framebuffer_format_create_empty =
      resolveMethodBind('RenderingDevice', 'framebuffer_format_create_empty', 555930169);

  int framebufferFormatCreateEmpty(int samples) {
    final arg0 = malloc<Int64>()..value = samples;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_framebuffer_format_create_empty, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_framebuffer_format_get_texture_samples =
      resolveMethodBind('RenderingDevice', 'framebuffer_format_get_texture_samples', 4223391010);

  int framebufferFormatGetTextureSamples(int format, int renderPass) {
    final arg0 = malloc<Int64>()..value = format;
    final arg1 = malloc<Int64>()..value = renderPass;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_framebuffer_format_get_texture_samples, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  // Skipped framebuffer_create(): unsupported return type "RID".
  // Skipped framebuffer_create_multipass(): unsupported return type "RID".
  // Skipped framebuffer_create_empty(): unsupported return type "RID".
  // Skipped framebuffer_get_format(): an argument type is unsupported.
  // Skipped framebuffer_is_valid(): an argument type is unsupported.
  // Skipped sampler_create(): unsupported return type "RID".
  static final Pointer<Void> _mb_sampler_is_format_supported_for_filter =
      resolveMethodBind('RenderingDevice', 'sampler_is_format_supported_for_filter', 2247922238);

  bool samplerIsFormatSupportedForFilter(int format, int samplerFilter) {
    final arg0 = malloc<Int64>()..value = format;
    final arg1 = malloc<Int64>()..value = samplerFilter;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_sampler_is_format_supported_for_filter, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  // Skipped vertex_buffer_create(): unsupported return type "RID".
  // Skipped vertex_format_create(): an argument type is unsupported.
  // Skipped vertex_array_create(): unsupported return type "RID".
  // Skipped index_buffer_create(): unsupported return type "RID".
  // Skipped index_array_create(): unsupported return type "RID".
  static final Pointer<Void> _mb_shader_compile_spirv_from_source =
      resolveMethodBind('RenderingDevice', 'shader_compile_spirv_from_source', 1178973306);

  RDShaderSPIRV? shaderCompileSpirvFromSource(RDShaderSource shaderSource, bool allowCache) {
    final arg0 = malloc<Pointer<Void>>()..value = shaderSource.nativePtr;
    final arg1 = malloc<Uint8>()..value = allowCache ? 1 : 0;
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_shader_compile_spirv_from_source, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : RDShaderSPIRV(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  // Skipped shader_compile_binary_from_spirv(): unsupported return type "PackedByteArray".
  // Skipped shader_create_from_spirv(): unsupported return type "RID".
  // Skipped shader_create_from_bytecode(): unsupported return type "RID".
  // Skipped shader_create_placeholder(): unsupported return type "RID".
  // Skipped shader_get_vertex_input_attribute_mask(): an argument type is unsupported.
  // Skipped uniform_buffer_create(): unsupported return type "RID".
  // Skipped storage_buffer_create(): unsupported return type "RID".
  // Skipped texture_buffer_create(): unsupported return type "RID".
  // Skipped uniform_set_create(): unsupported return type "RID".
  // Skipped uniform_set_is_valid(): an argument type is unsupported.
  // Skipped buffer_copy(): an argument type is unsupported.
  // Skipped buffer_update(): an argument type is unsupported.
  // Skipped buffer_clear(): an argument type is unsupported.
  // Skipped buffer_get_data(): unsupported return type "PackedByteArray".
  // Skipped buffer_get_data_async(): an argument type is unsupported.
  // Skipped buffer_get_device_address(): an argument type is unsupported.
  // Skipped render_pipeline_create(): unsupported return type "RID".
  // Skipped render_pipeline_is_valid(): an argument type is unsupported.
  // Skipped compute_pipeline_create(): unsupported return type "RID".
  // Skipped compute_pipeline_is_valid(): an argument type is unsupported.
  // Skipped raytracing_pipeline_create(): unsupported return type "RID".
  // Skipped raytracing_pipeline_is_valid(): an argument type is unsupported.
  // Skipped blas_create(): unsupported return type "RID".
  // Skipped tlas_create(): unsupported return type "RID".
  // Skipped blas_build(): an argument type is unsupported.
  // Skipped tlas_build(): an argument type is unsupported.
  // Skipped hit_sbt_create(): unsupported return type "RID".
  // Skipped hit_sbt_set_pipeline(): an argument type is unsupported.
  // Skipped hit_sbt_range_alloc(): an argument type is unsupported.
  // Skipped hit_sbt_range_free(): an argument type is unsupported.
  // Skipped hit_sbt_range_update(): an argument type is unsupported.
  static final Pointer<Void> _mb_screen_get_width =
      resolveMethodBind('RenderingDevice', 'screen_get_width', 1591665591);

  int screenGetWidth(int screen) {
    final arg0 = malloc<Int64>()..value = screen;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_screen_get_width, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_screen_get_height =
      resolveMethodBind('RenderingDevice', 'screen_get_height', 1591665591);

  int screenGetHeight(int screen) {
    final arg0 = malloc<Int64>()..value = screen;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_screen_get_height, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_screen_get_framebuffer_format =
      resolveMethodBind('RenderingDevice', 'screen_get_framebuffer_format', 1591665591);

  int screenGetFramebufferFormat(int screen) {
    final arg0 = malloc<Int64>()..value = screen;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_screen_get_framebuffer_format, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_draw_list_begin_for_screen =
      resolveMethodBind('RenderingDevice', 'draw_list_begin_for_screen', 3988079995);

  int drawListBeginForScreen(int screen, Color clearColor) {
    final arg0 = malloc<Int64>()..value = screen;
    final arg1 = malloc<Uint8>(Color.nativeSize);
    clearColor.writeTo(arg1, 0);
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_draw_list_begin_for_screen, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  // Skipped draw_list_begin(): an argument type is unsupported.
  // Skipped draw_list_begin_split(): unsupported return type "PackedInt64Array".
  static final Pointer<Void> _mb_draw_list_set_blend_constants =
      resolveMethodBind('RenderingDevice', 'draw_list_set_blend_constants', 2878471219);

  void drawListSetBlendConstants(int drawList, Color color) {
    final arg0 = malloc<Int64>()..value = drawList;
    final arg1 = malloc<Uint8>(Color.nativeSize);
    color.writeTo(arg1, 0);
    try {
      ptrcallVoid(_mb_draw_list_set_blend_constants, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  // Skipped draw_list_bind_render_pipeline(): an argument type is unsupported.
  // Skipped draw_list_bind_uniform_set(): an argument type is unsupported.
  // Skipped draw_list_bind_vertex_array(): an argument type is unsupported.
  // Skipped draw_list_bind_vertex_buffers_format(): an argument type is unsupported.
  // Skipped draw_list_bind_index_array(): an argument type is unsupported.
  // Skipped draw_list_set_push_constant(): an argument type is unsupported.
  static final Pointer<Void> _mb_draw_list_draw =
      resolveMethodBind('RenderingDevice', 'draw_list_draw', 4230067973);

  void drawListDraw(int drawList, bool useIndices, int instances, int proceduralVertexCount) {
    final arg0 = malloc<Int64>()..value = drawList;
    final arg1 = malloc<Uint8>()..value = useIndices ? 1 : 0;
    final arg2 = malloc<Int64>()..value = instances;
    final arg3 = malloc<Int64>()..value = proceduralVertexCount;
    try {
      ptrcallVoid(_mb_draw_list_draw, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>(), arg3.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
      malloc.free(arg3);
    }
  }

  // Skipped draw_list_draw_indirect(): an argument type is unsupported.
  static final Pointer<Void> _mb_draw_list_enable_scissor =
      resolveMethodBind('RenderingDevice', 'draw_list_enable_scissor', 244650101);

  void drawListEnableScissor(int drawList, Rect2 rect) {
    final arg0 = malloc<Int64>()..value = drawList;
    final arg1 = malloc<Uint8>(Rect2.nativeSize);
    rect.writeTo(arg1, 0);
    try {
      ptrcallVoid(_mb_draw_list_enable_scissor, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_draw_list_disable_scissor =
      resolveMethodBind('RenderingDevice', 'draw_list_disable_scissor', 1286410249);

  void drawListDisableScissor(int drawList) {
    final arg0 = malloc<Int64>()..value = drawList;
    try {
      ptrcallVoid(_mb_draw_list_disable_scissor, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_draw_list_switch_to_next_pass =
      resolveMethodBind('RenderingDevice', 'draw_list_switch_to_next_pass', 2455072627);

  int drawListSwitchToNextPass() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_draw_list_switch_to_next_pass, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  // Skipped draw_list_switch_to_next_pass_split(): unsupported return type "PackedInt64Array".
  static final Pointer<Void> _mb_draw_list_end =
      resolveMethodBind('RenderingDevice', 'draw_list_end', 3218959716);

  void drawListEnd() {
    try {
      ptrcallVoid(_mb_draw_list_end, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_compute_list_begin =
      resolveMethodBind('RenderingDevice', 'compute_list_begin', 2455072627);

  int computeListBegin() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_compute_list_begin, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  // Skipped compute_list_bind_compute_pipeline(): an argument type is unsupported.
  // Skipped compute_list_set_push_constant(): an argument type is unsupported.
  // Skipped compute_list_bind_uniform_set(): an argument type is unsupported.
  static final Pointer<Void> _mb_compute_list_dispatch =
      resolveMethodBind('RenderingDevice', 'compute_list_dispatch', 4275841770);

  void computeListDispatch(int computeList, int xGroups, int yGroups, int zGroups) {
    final arg0 = malloc<Int64>()..value = computeList;
    final arg1 = malloc<Int64>()..value = xGroups;
    final arg2 = malloc<Int64>()..value = yGroups;
    final arg3 = malloc<Int64>()..value = zGroups;
    try {
      ptrcallVoid(_mb_compute_list_dispatch, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>(), arg3.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
      malloc.free(arg3);
    }
  }

  // Skipped compute_list_dispatch_indirect(): an argument type is unsupported.
  static final Pointer<Void> _mb_compute_list_add_barrier =
      resolveMethodBind('RenderingDevice', 'compute_list_add_barrier', 1286410249);

  void computeListAddBarrier(int computeList) {
    final arg0 = malloc<Int64>()..value = computeList;
    try {
      ptrcallVoid(_mb_compute_list_add_barrier, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_compute_list_end =
      resolveMethodBind('RenderingDevice', 'compute_list_end', 3218959716);

  void computeListEnd() {
    try {
      ptrcallVoid(_mb_compute_list_end, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_raytracing_list_begin =
      resolveMethodBind('RenderingDevice', 'raytracing_list_begin', 2455072627);

  int raytracingListBegin() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_raytracing_list_begin, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  // Skipped raytracing_list_bind_raytracing_pipeline(): an argument type is unsupported.
  // Skipped raytracing_list_set_push_constant(): an argument type is unsupported.
  // Skipped raytracing_list_bind_uniform_set(): an argument type is unsupported.
  // Skipped raytracing_list_trace_rays(): an argument type is unsupported.
  static final Pointer<Void> _mb_raytracing_list_end =
      resolveMethodBind('RenderingDevice', 'raytracing_list_end', 3218959716);

  void raytracingListEnd() {
    try {
      ptrcallVoid(_mb_raytracing_list_end, nativePtr, []);
    } finally {
    }
  }

  // Skipped free_rid(): an argument type is unsupported.
  static final Pointer<Void> _mb_capture_timestamp =
      resolveMethodBind('RenderingDevice', 'capture_timestamp', 83702148);

  void captureTimestamp(String name) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), name);
    try {
      ptrcallVoid(_mb_capture_timestamp, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_captured_timestamps_count =
      resolveMethodBind('RenderingDevice', 'get_captured_timestamps_count', 3905245786);

  int getCapturedTimestampsCount() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_captured_timestamps_count, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_captured_timestamps_frame =
      resolveMethodBind('RenderingDevice', 'get_captured_timestamps_frame', 3905245786);

  int getCapturedTimestampsFrame() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_captured_timestamps_frame, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_captured_timestamp_gpu_time =
      resolveMethodBind('RenderingDevice', 'get_captured_timestamp_gpu_time', 923996154);

  int getCapturedTimestampGpuTime(int index) {
    final arg0 = malloc<Int64>()..value = index;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_captured_timestamp_gpu_time, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_captured_timestamp_cpu_time =
      resolveMethodBind('RenderingDevice', 'get_captured_timestamp_cpu_time', 923996154);

  int getCapturedTimestampCpuTime(int index) {
    final arg0 = malloc<Int64>()..value = index;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_captured_timestamp_cpu_time, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_captured_timestamp_name =
      resolveMethodBind('RenderingDevice', 'get_captured_timestamp_name', 844755477);

  String getCapturedTimestampName(int index) {
    final arg0 = malloc<Int64>()..value = index;
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_captured_timestamp_name, nativePtr, [arg0.cast<Void>()], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_has_feature =
      resolveMethodBind('RenderingDevice', 'has_feature', 1772728326);

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

  static final Pointer<Void> _mb_limit_get =
      resolveMethodBind('RenderingDevice', 'limit_get', 1559202131);

  int limitGet(int limit) {
    final arg0 = malloc<Int64>()..value = limit;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_limit_get, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_frame_delay =
      resolveMethodBind('RenderingDevice', 'get_frame_delay', 3905245786);

  int getFrameDelay() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_frame_delay, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_submit =
      resolveMethodBind('RenderingDevice', 'submit', 3218959716);

  void submit() {
    try {
      ptrcallVoid(_mb_submit, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_sync =
      resolveMethodBind('RenderingDevice', 'sync', 3218959716);

  void sync_() {
    try {
      ptrcallVoid(_mb_sync, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_barrier =
      resolveMethodBind('RenderingDevice', 'barrier', 3718155691);

  void barrier(int from, int to) {
    final arg0 = malloc<Int64>()..value = from;
    final arg1 = malloc<Int64>()..value = to;
    try {
      ptrcallVoid(_mb_barrier, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_full_barrier =
      resolveMethodBind('RenderingDevice', 'full_barrier', 3218959716);

  void fullBarrier() {
    try {
      ptrcallVoid(_mb_full_barrier, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_create_local_device =
      resolveMethodBind('RenderingDevice', 'create_local_device', 2846302423);

  RenderingDevice? createLocalDevice() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_create_local_device, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : RenderingDevice(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  // Skipped set_resource_name(): an argument type is unsupported.
  static final Pointer<Void> _mb_draw_command_begin_label =
      resolveMethodBind('RenderingDevice', 'draw_command_begin_label', 1636512886);

  void drawCommandBeginLabel(String name, Color color) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), name);
    final arg1 = malloc<Uint8>(Color.nativeSize);
    color.writeTo(arg1, 0);
    try {
      ptrcallVoid(_mb_draw_command_begin_label, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_draw_command_insert_label =
      resolveMethodBind('RenderingDevice', 'draw_command_insert_label', 1636512886);

  void drawCommandInsertLabel(String name, Color color) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), name);
    final arg1 = malloc<Uint8>(Color.nativeSize);
    color.writeTo(arg1, 0);
    try {
      ptrcallVoid(_mb_draw_command_insert_label, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_draw_command_end_label =
      resolveMethodBind('RenderingDevice', 'draw_command_end_label', 3218959716);

  void drawCommandEndLabel() {
    try {
      ptrcallVoid(_mb_draw_command_end_label, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_device_vendor_name =
      resolveMethodBind('RenderingDevice', 'get_device_vendor_name', 201670096);

  String getDeviceVendorName() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_device_vendor_name, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_device_name =
      resolveMethodBind('RenderingDevice', 'get_device_name', 201670096);

  String getDeviceName() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_device_name, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_device_pipeline_cache_uuid =
      resolveMethodBind('RenderingDevice', 'get_device_pipeline_cache_uuid', 201670096);

  String getDevicePipelineCacheUuid() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_device_pipeline_cache_uuid, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_memory_usage =
      resolveMethodBind('RenderingDevice', 'get_memory_usage', 251690689);

  int getMemoryUsage(int type) {
    final arg0 = malloc<Int64>()..value = type;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_memory_usage, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  // Skipped get_driver_resource(): an argument type is unsupported.
  static final Pointer<Void> _mb_get_perf_report =
      resolveMethodBind('RenderingDevice', 'get_perf_report', 201670096);

  String getPerfReport() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_perf_report, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_driver_and_device_memory_report =
      resolveMethodBind('RenderingDevice', 'get_driver_and_device_memory_report', 201670096);

  String getDriverAndDeviceMemoryReport() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_driver_and_device_memory_report, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_tracked_object_name =
      resolveMethodBind('RenderingDevice', 'get_tracked_object_name', 844755477);

  String getTrackedObjectName(int typeIndex) {
    final arg0 = malloc<Int64>()..value = typeIndex;
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_tracked_object_name, nativePtr, [arg0.cast<Void>()], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_tracked_object_type_count =
      resolveMethodBind('RenderingDevice', 'get_tracked_object_type_count', 3905245786);

  int getTrackedObjectTypeCount() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_tracked_object_type_count, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_driver_total_memory =
      resolveMethodBind('RenderingDevice', 'get_driver_total_memory', 3905245786);

  int getDriverTotalMemory() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_driver_total_memory, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_driver_allocation_count =
      resolveMethodBind('RenderingDevice', 'get_driver_allocation_count', 3905245786);

  int getDriverAllocationCount() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_driver_allocation_count, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_driver_memory_by_object_type =
      resolveMethodBind('RenderingDevice', 'get_driver_memory_by_object_type', 923996154);

  int getDriverMemoryByObjectType(int type) {
    final arg0 = malloc<Int64>()..value = type;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_driver_memory_by_object_type, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_driver_allocs_by_object_type =
      resolveMethodBind('RenderingDevice', 'get_driver_allocs_by_object_type', 923996154);

  int getDriverAllocsByObjectType(int type) {
    final arg0 = malloc<Int64>()..value = type;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_driver_allocs_by_object_type, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_device_total_memory =
      resolveMethodBind('RenderingDevice', 'get_device_total_memory', 3905245786);

  int getDeviceTotalMemory() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_device_total_memory, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_device_allocation_count =
      resolveMethodBind('RenderingDevice', 'get_device_allocation_count', 3905245786);

  int getDeviceAllocationCount() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_device_allocation_count, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_device_memory_by_object_type =
      resolveMethodBind('RenderingDevice', 'get_device_memory_by_object_type', 923996154);

  int getDeviceMemoryByObjectType(int type) {
    final arg0 = malloc<Int64>()..value = type;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_device_memory_by_object_type, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_device_allocs_by_object_type =
      resolveMethodBind('RenderingDevice', 'get_device_allocs_by_object_type', 923996154);

  int getDeviceAllocsByObjectType(int type) {
    final arg0 = malloc<Int64>()..value = type;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_device_allocs_by_object_type, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

}
