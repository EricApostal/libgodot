// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class OpenXRExtensionWrapper extends GodotObject {
  OpenXRExtensionWrapper(super.nativePtr);

  /// Constructs a brand-new engine-owned OpenXRExtensionWrapper instance
  /// (via classdb_construct_object3), not an existing one.
  factory OpenXRExtensionWrapper.create() {
    return OpenXRExtensionWrapper(resolveClassConstructor('OpenXRExtensionWrapper'));
  }

  // Skipped virtual _get_requested_extensions(): unsupported return type "Dictionary".
  // Skipped virtual _set_system_properties_and_get_next_pointer(): an argument type is unsupported ("void*").
  // Skipped virtual _set_instance_create_info_and_get_next_pointer(): an argument type is unsupported ("void*").
  // Skipped virtual _set_session_create_and_get_next_pointer(): an argument type is unsupported ("void*").
  // Skipped virtual _set_swapchain_create_info_and_get_next_pointer(): an argument type is unsupported ("void*").
  // Skipped virtual _set_hand_joint_locations_and_get_next_pointer(): an argument type is unsupported ("void*").
  // Skipped virtual _set_projection_views_and_get_next_pointer(): an argument type is unsupported ("void*").
  // Skipped virtual _set_frame_wait_info_and_get_next_pointer(): an argument type is unsupported ("void*").
  // Skipped virtual _set_frame_end_info_and_get_next_pointer(): an argument type is unsupported ("void*").
  // Skipped virtual _set_projection_layer_and_get_next_pointer(): an argument type is unsupported ("void*").
  // Skipped virtual _set_view_locate_info_and_get_next_pointer(): an argument type is unsupported ("void*").
  // Skipped virtual _set_reference_space_create_info_and_get_next_pointer(): an argument type is unsupported ("void*").
  /// Override to hook into Godot's `_prepare_view_configuration` virtual.
  void prepareViewConfiguration(int viewCount) {}

  // Skipped virtual _set_view_configuration_and_get_next_pointer(): an argument type is unsupported ("void*").
  /// Override to hook into Godot's `_print_view_configuration_info` virtual.
  void printViewConfigurationInfo(int view) {}

  /// Override to hook into Godot's `_get_composition_layer_count` virtual.
  int getCompositionLayerCount() => 0;

  /// Override to hook into Godot's `_get_composition_layer` virtual.
  int getCompositionLayer(int index) => 0;

  /// Override to hook into Godot's `_get_composition_layer_order` virtual.
  int getCompositionLayerOrder(int index) => 0;

  // Skipped virtual _get_suggested_tracker_names(): unsupported return type "PackedStringArray".
  /// Override to hook into Godot's `_on_register_metadata` virtual.
  void onRegisterMetadata(OpenXRInteractionProfileMetadata interactionProfileMetadata) {}

  /// Override to hook into Godot's `_on_before_instance_created` virtual.
  void onBeforeInstanceCreated() {}

  /// Override to hook into Godot's `_on_instance_created` virtual.
  void onInstanceCreated(int instance) {}

  /// Override to hook into Godot's `_on_instance_destroyed` virtual.
  void onInstanceDestroyed() {}

  /// Override to hook into Godot's `_on_session_created` virtual.
  void onSessionCreated(int session) {}

  /// Override to hook into Godot's `_on_process` virtual.
  void onProcess() {}

  /// Override to hook into Godot's `_on_sync_actions` virtual.
  void onSyncActions() {}

  /// Override to hook into Godot's `_on_pre_render` virtual.
  void onPreRender() {}

  /// Override to hook into Godot's `_on_main_swapchains_created` virtual.
  void onMainSwapchainsCreated() {}

  // Skipped virtual _on_pre_draw_viewport(): an argument type is unsupported ("RID").
  // Skipped virtual _on_post_draw_viewport(): an argument type is unsupported ("RID").
  /// Override to hook into Godot's `_on_session_destroyed` virtual.
  void onSessionDestroyed() {}

  /// Override to hook into Godot's `_on_state_idle` virtual.
  void onStateIdle() {}

  /// Override to hook into Godot's `_on_state_ready` virtual.
  void onStateReady() {}

  /// Override to hook into Godot's `_on_state_synchronized` virtual.
  void onStateSynchronized() {}

  /// Override to hook into Godot's `_on_state_visible` virtual.
  void onStateVisible() {}

  /// Override to hook into Godot's `_on_state_focused` virtual.
  void onStateFocused() {}

  /// Override to hook into Godot's `_on_state_stopping` virtual.
  void onStateStopping() {}

  /// Override to hook into Godot's `_on_state_loss_pending` virtual.
  void onStateLossPending() {}

  /// Override to hook into Godot's `_on_state_exiting` virtual.
  void onStateExiting() {}

  // Skipped virtual _on_event_polled(): an argument type is unsupported ("const void*").
  // Skipped virtual _set_viewport_composition_layer_and_get_next_pointer(): an argument type is unsupported ("const void*").
  // Skipped virtual _get_viewport_composition_layer_extension_properties(): unsupported return type "typedarray::Dictionary".
  // Skipped virtual _get_viewport_composition_layer_extension_property_defaults(): unsupported return type "Dictionary".
  // Skipped virtual _on_viewport_composition_layer_destroyed(): an argument type is unsupported ("const void*").
  // Skipped virtual _set_android_surface_swapchain_create_info_and_get_next_pointer(): an argument type is unsupported ("Dictionary").
  static final Pointer<Void> _mb_get_openxr_api =
      resolveMethodBind('OpenXRExtensionWrapper', 'get_openxr_api', 1637791613);

  OpenXRAPIExtension? getOpenxrApi() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_openxr_api, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : OpenXRAPIExtension(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_register_extension_wrapper =
      resolveMethodBind('OpenXRExtensionWrapper', 'register_extension_wrapper', 3218959716);

  void registerExtensionWrapper() {
    try {
      ptrcallVoid(_mb_register_extension_wrapper, nativePtr, []);
    } finally {
    }
  }

}
