// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class OpenXRAPIExtension extends RefCounted {
  OpenXRAPIExtension(super.nativePtr);

  /// Constructs a brand-new engine-owned OpenXRAPIExtension instance
  /// (via classdb_construct_object3), not an existing one.
  factory OpenXRAPIExtension.create() {
    return OpenXRAPIExtension(resolveClassConstructor('OpenXRAPIExtension'));
  }

  static final Pointer<Void> _mb_get_openxr_version =
      resolveMethodBind('OpenXRAPIExtension', 'get_openxr_version', 2455072627);

  int getOpenxrVersion() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_openxr_version, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_instance =
      resolveMethodBind('OpenXRAPIExtension', 'get_instance', 2455072627);

  int getInstance() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_instance, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_system_id =
      resolveMethodBind('OpenXRAPIExtension', 'get_system_id', 2455072627);

  int getSystemId() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_system_id, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_session =
      resolveMethodBind('OpenXRAPIExtension', 'get_session', 2455072627);

  int getSession() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_session, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  // Skipped transform_from_pose(): an argument type is unsupported.
  // Skipped xr_result(): an argument type is unsupported.
  static final Pointer<Void> _mb_get_instance_proc_addr =
      resolveMethodBind('OpenXRAPIExtension', 'get_instance_proc_addr', 1597066294);

  int getInstanceProcAddr(String name) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), name);
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_instance_proc_addr, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_error_string =
      resolveMethodBind('OpenXRAPIExtension', 'get_error_string', 990163283);

  String getErrorString(int result) {
    final arg0 = malloc<Int64>()..value = result;
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_error_string, nativePtr, [arg0.cast<Void>()], ret.cast());
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

  static final Pointer<Void> _mb_get_swapchain_format_name =
      resolveMethodBind('OpenXRAPIExtension', 'get_swapchain_format_name', 990163283);

  String getSwapchainFormatName(int swapchainFormat) {
    final arg0 = malloc<Int64>()..value = swapchainFormat;
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_swapchain_format_name, nativePtr, [arg0.cast<Void>()], ret.cast());
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

  static final Pointer<Void> _mb_set_object_name =
      resolveMethodBind('OpenXRAPIExtension', 'set_object_name', 2285447957);

  void setObjectName(int objectType, int objectHandle, String objectName) {
    final arg0 = malloc<Int64>()..value = objectType;
    final arg1 = malloc<Int64>()..value = objectHandle;
    final arg2 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg2.cast(), objectName);
    try {
      ptrcallVoid(_mb_set_object_name, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      BuiltinMarshal.destroyGDString(arg2.cast());
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_begin_debug_label_region =
      resolveMethodBind('OpenXRAPIExtension', 'begin_debug_label_region', 83702148);

  void beginDebugLabelRegion(String labelName) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), labelName);
    try {
      ptrcallVoid(_mb_begin_debug_label_region, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_end_debug_label_region =
      resolveMethodBind('OpenXRAPIExtension', 'end_debug_label_region', 3218959716);

  void endDebugLabelRegion() {
    try {
      ptrcallVoid(_mb_end_debug_label_region, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_insert_debug_label =
      resolveMethodBind('OpenXRAPIExtension', 'insert_debug_label', 83702148);

  void insertDebugLabel(String labelName) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), labelName);
    try {
      ptrcallVoid(_mb_insert_debug_label, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_view_count =
      resolveMethodBind('OpenXRAPIExtension', 'get_view_count', 3905245786);

  int getViewCount() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_view_count, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_view_configuration =
      resolveMethodBind('OpenXRAPIExtension', 'get_view_configuration', 3905245786);

  int getViewConfiguration() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_view_configuration, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_is_initialized =
      resolveMethodBind('OpenXRAPIExtension', 'is_initialized', 2240911060);

  bool isInitialized() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_initialized, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_is_running =
      resolveMethodBind('OpenXRAPIExtension', 'is_running', 2240911060);

  bool isRunning() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_running, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  // Skipped set_custom_play_space(): an argument type is unsupported.
  static final Pointer<Void> _mb_get_play_space =
      resolveMethodBind('OpenXRAPIExtension', 'get_play_space', 2455072627);

  int getPlaySpace() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_play_space, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_predicted_display_time =
      resolveMethodBind('OpenXRAPIExtension', 'get_predicted_display_time', 2455072627);

  int getPredictedDisplayTime() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_predicted_display_time, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_next_frame_time =
      resolveMethodBind('OpenXRAPIExtension', 'get_next_frame_time', 2455072627);

  int getNextFrameTime() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_next_frame_time, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_can_render =
      resolveMethodBind('OpenXRAPIExtension', 'can_render', 2240911060);

  bool canRender() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_can_render, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  // Skipped find_action(): unsupported return type "RID".
  // Skipped action_get_handle(): an argument type is unsupported.
  static final Pointer<Void> _mb_get_hand_tracker =
      resolveMethodBind('OpenXRAPIExtension', 'get_hand_tracker', 3744713108);

  int getHandTracker(int handIndex) {
    final arg0 = malloc<Int64>()..value = handIndex;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_hand_tracker, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_register_composition_layer_provider =
      resolveMethodBind('OpenXRAPIExtension', 'register_composition_layer_provider', 1477360496);

  void registerCompositionLayerProvider(OpenXRExtensionWrapper extension_) {
    final arg0 = malloc<Pointer<Void>>()..value = extension_.nativePtr;
    try {
      ptrcallVoid(_mb_register_composition_layer_provider, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_unregister_composition_layer_provider =
      resolveMethodBind('OpenXRAPIExtension', 'unregister_composition_layer_provider', 1477360496);

  void unregisterCompositionLayerProvider(OpenXRExtensionWrapper extension_) {
    final arg0 = malloc<Pointer<Void>>()..value = extension_.nativePtr;
    try {
      ptrcallVoid(_mb_unregister_composition_layer_provider, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_register_projection_views_extension =
      resolveMethodBind('OpenXRAPIExtension', 'register_projection_views_extension', 1477360496);

  void registerProjectionViewsExtension(OpenXRExtensionWrapper extension_) {
    final arg0 = malloc<Pointer<Void>>()..value = extension_.nativePtr;
    try {
      ptrcallVoid(_mb_register_projection_views_extension, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_unregister_projection_views_extension =
      resolveMethodBind('OpenXRAPIExtension', 'unregister_projection_views_extension', 1477360496);

  void unregisterProjectionViewsExtension(OpenXRExtensionWrapper extension_) {
    final arg0 = malloc<Pointer<Void>>()..value = extension_.nativePtr;
    try {
      ptrcallVoid(_mb_unregister_projection_views_extension, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_register_frame_info_extension =
      resolveMethodBind('OpenXRAPIExtension', 'register_frame_info_extension', 1477360496);

  void registerFrameInfoExtension(OpenXRExtensionWrapper extension_) {
    final arg0 = malloc<Pointer<Void>>()..value = extension_.nativePtr;
    try {
      ptrcallVoid(_mb_register_frame_info_extension, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_unregister_frame_info_extension =
      resolveMethodBind('OpenXRAPIExtension', 'unregister_frame_info_extension', 1477360496);

  void unregisterFrameInfoExtension(OpenXRExtensionWrapper extension_) {
    final arg0 = malloc<Pointer<Void>>()..value = extension_.nativePtr;
    try {
      ptrcallVoid(_mb_unregister_frame_info_extension, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_register_projection_layer_extension =
      resolveMethodBind('OpenXRAPIExtension', 'register_projection_layer_extension', 1477360496);

  void registerProjectionLayerExtension(OpenXRExtensionWrapper extension_) {
    final arg0 = malloc<Pointer<Void>>()..value = extension_.nativePtr;
    try {
      ptrcallVoid(_mb_register_projection_layer_extension, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_unregister_projection_layer_extension =
      resolveMethodBind('OpenXRAPIExtension', 'unregister_projection_layer_extension', 1477360496);

  void unregisterProjectionLayerExtension(OpenXRExtensionWrapper extension_) {
    final arg0 = malloc<Pointer<Void>>()..value = extension_.nativePtr;
    try {
      ptrcallVoid(_mb_unregister_projection_layer_extension, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_render_state_z_near =
      resolveMethodBind('OpenXRAPIExtension', 'get_render_state_z_near', 191475506);

  double getRenderStateZNear() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_render_state_z_near, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_render_state_z_far =
      resolveMethodBind('OpenXRAPIExtension', 'get_render_state_z_far', 191475506);

  double getRenderStateZFar() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_render_state_z_far, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  // Skipped set_velocity_texture(): an argument type is unsupported.
  // Skipped set_velocity_depth_texture(): an argument type is unsupported.
  static final Pointer<Void> _mb_set_velocity_target_size =
      resolveMethodBind('OpenXRAPIExtension', 'set_velocity_target_size', 1130785943);

  void setVelocityTargetSize(Vector2i targetSize) {
    final arg0 = malloc<Uint8>(Vector2i.nativeSize);
    targetSize.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_velocity_target_size, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  // Skipped get_supported_swapchain_formats(): unsupported return type "PackedInt64Array".
  static final Pointer<Void> _mb_openxr_swapchain_create =
      resolveMethodBind('OpenXRAPIExtension', 'openxr_swapchain_create', 2162228999);

  int openxrSwapchainCreate(int createFlags, int usageFlags, int swapchainFormat, int width, int height, int sampleCount, int arraySize) {
    final arg0 = malloc<Int64>()..value = createFlags;
    final arg1 = malloc<Int64>()..value = usageFlags;
    final arg2 = malloc<Int64>()..value = swapchainFormat;
    final arg3 = malloc<Int64>()..value = width;
    final arg4 = malloc<Int64>()..value = height;
    final arg5 = malloc<Int64>()..value = sampleCount;
    final arg6 = malloc<Int64>()..value = arraySize;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_openxr_swapchain_create, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>(), arg3.cast<Void>(), arg4.cast<Void>(), arg5.cast<Void>(), arg6.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
      malloc.free(arg3);
      malloc.free(arg4);
      malloc.free(arg5);
      malloc.free(arg6);
    }
  }

  static final Pointer<Void> _mb_openxr_swapchain_free =
      resolveMethodBind('OpenXRAPIExtension', 'openxr_swapchain_free', 1286410249);

  void openxrSwapchainFree(int swapchain) {
    final arg0 = malloc<Int64>()..value = swapchain;
    try {
      ptrcallVoid(_mb_openxr_swapchain_free, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_openxr_swapchain_get_swapchain =
      resolveMethodBind('OpenXRAPIExtension', 'openxr_swapchain_get_swapchain', 3744713108);

  int openxrSwapchainGetSwapchain(int swapchain) {
    final arg0 = malloc<Int64>()..value = swapchain;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_openxr_swapchain_get_swapchain, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_openxr_swapchain_acquire =
      resolveMethodBind('OpenXRAPIExtension', 'openxr_swapchain_acquire', 1286410249);

  void openxrSwapchainAcquire(int swapchain) {
    final arg0 = malloc<Int64>()..value = swapchain;
    try {
      ptrcallVoid(_mb_openxr_swapchain_acquire, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  // Skipped openxr_swapchain_get_image(): unsupported return type "RID".
  static final Pointer<Void> _mb_openxr_swapchain_release =
      resolveMethodBind('OpenXRAPIExtension', 'openxr_swapchain_release', 1286410249);

  void openxrSwapchainRelease(int swapchain) {
    final arg0 = malloc<Int64>()..value = swapchain;
    try {
      ptrcallVoid(_mb_openxr_swapchain_release, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_projection_layer =
      resolveMethodBind('OpenXRAPIExtension', 'get_projection_layer', 2455072627);

  int getProjectionLayer() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_projection_layer, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_render_region =
      resolveMethodBind('OpenXRAPIExtension', 'set_render_region', 1763793166);

  void setRenderRegion(Rect2i renderRegion) {
    final arg0 = malloc<Uint8>(Rect2i.nativeSize);
    renderRegion.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_render_region, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_emulate_environment_blend_mode_alpha_blend =
      resolveMethodBind('OpenXRAPIExtension', 'set_emulate_environment_blend_mode_alpha_blend', 2586408642);

  void setEmulateEnvironmentBlendModeAlphaBlend(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_emulate_environment_blend_mode_alpha_blend, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_environment_blend_mode_alpha_supported =
      resolveMethodBind('OpenXRAPIExtension', 'is_environment_blend_mode_alpha_supported', 1579290861);

  int isEnvironmentBlendModeAlphaSupported() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_is_environment_blend_mode_alpha_supported, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_update_main_swapchain_size =
      resolveMethodBind('OpenXRAPIExtension', 'update_main_swapchain_size', 3218959716);

  void updateMainSwapchainSize() {
    try {
      ptrcallVoid(_mb_update_main_swapchain_size, nativePtr, []);
    } finally {
    }
  }

}
