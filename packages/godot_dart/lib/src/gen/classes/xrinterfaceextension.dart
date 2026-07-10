// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class XRInterfaceExtension extends XRInterface {
  XRInterfaceExtension(super.nativePtr);

  /// Constructs a brand-new engine-owned XRInterfaceExtension instance
  /// (via classdb_construct_object3), not an existing one.
  factory XRInterfaceExtension.create() {
    return XRInterfaceExtension(resolveClassConstructor('XRInterfaceExtension'));
  }

  /// Override to hook into Godot's `_get_name` virtual.
  String getName() => '';

  /// Override to hook into Godot's `_get_capabilities` virtual.
  int getCapabilities() => 0;

  /// Override to hook into Godot's `_is_initialized` virtual.
  bool isInitialized() => false;

  /// Override to hook into Godot's `_initialize` virtual.
  bool initialize() => false;

  /// Override to hook into Godot's `_uninitialize` virtual.
  void uninitialize() {}

  // Skipped virtual _get_system_info(): unsupported return type "Dictionary".
  /// Override to hook into Godot's `_supports_play_area_mode` virtual.
  bool supportsPlayAreaMode(int mode) => false;

  /// Override to hook into Godot's `_get_play_area_mode` virtual.
  int getPlayAreaMode() => 0;

  /// Override to hook into Godot's `_set_play_area_mode` virtual.
  bool setPlayAreaMode(int mode) => false;

  // Skipped virtual _get_play_area(): unsupported return type "PackedVector3Array".
  /// Override to hook into Godot's `_get_render_target_size` virtual.
  Vector2 getRenderTargetSize() => const Vector2(0.0, 0.0);

  /// Override to hook into Godot's `_get_view_count` virtual.
  int getViewCount() => 0;

  /// Override to hook into Godot's `_get_camera_transform` virtual.
  Transform3D getCameraTransform() => const Transform3D(const Basis(const Vector3(0.0, 0.0, 0.0), const Vector3(0.0, 0.0, 0.0), const Vector3(0.0, 0.0, 0.0)), const Vector3(0.0, 0.0, 0.0));

  /// Override to hook into Godot's `_get_transform_for_view` virtual.
  Transform3D getTransformForView(int view, Transform3D camTransform) => const Transform3D(const Basis(const Vector3(0.0, 0.0, 0.0), const Vector3(0.0, 0.0, 0.0), const Vector3(0.0, 0.0, 0.0)), const Vector3(0.0, 0.0, 0.0));

  // Skipped virtual _get_projection_for_view(): unsupported return type "PackedFloat64Array".
  // Skipped virtual _get_vrs_texture(): unsupported return type "RID".
  /// Override to hook into Godot's `_get_vrs_texture_format` virtual.
  int getVrsTextureFormat() => 0;

  /// Override to hook into Godot's `_process` virtual.
  void process() {}

  /// Override to hook into Godot's `_pre_render` virtual.
  void preRender() {}

  // Skipped virtual _pre_draw_viewport(): an argument type is unsupported ("RID").
  // Skipped virtual _post_draw_viewport(): an argument type is unsupported ("RID").
  /// Override to hook into Godot's `_end_frame` virtual.
  void endFrame() {}

  // Skipped virtual _get_suggested_tracker_names(): unsupported return type "PackedStringArray".
  // Skipped virtual _get_suggested_pose_names(): unsupported return type "PackedStringArray".
  /// Override to hook into Godot's `_get_tracking_status` virtual.
  int getTrackingStatus() => 0;

  /// Override to hook into Godot's `_trigger_haptic_pulse` virtual.
  void triggerHapticPulse(String actionName, String trackerName, double frequency, double amplitude, double durationSec, double delaySec) {}

  /// Override to hook into Godot's `_get_anchor_detection_is_enabled` virtual.
  bool getAnchorDetectionIsEnabled() => false;

  /// Override to hook into Godot's `_set_anchor_detection_is_enabled` virtual.
  void setAnchorDetectionIsEnabled(bool enabled) {}

  /// Override to hook into Godot's `_get_camera_feed_id` virtual.
  int getCameraFeedId() => 0;

  // Skipped virtual _get_color_texture(): unsupported return type "RID".
  // Skipped virtual _get_depth_texture(): unsupported return type "RID".
  // Skipped virtual _get_velocity_texture(): unsupported return type "RID".
  // Skipped get_color_texture(): unsupported return type "RID".
  // Skipped get_depth_texture(): unsupported return type "RID".
  // Skipped get_velocity_texture(): unsupported return type "RID".
  // Skipped add_blit(): an argument type is unsupported.
  // Skipped get_render_target_texture(): unsupported return type "RID".
}
