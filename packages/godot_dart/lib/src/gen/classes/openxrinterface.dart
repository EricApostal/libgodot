// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class OpenXRInterface extends XRInterface {
  OpenXRInterface(super.nativePtr);

  static final Pointer<Void> _mb_get_session_state =
      resolveMethodBind('OpenXRInterface', 'get_session_state', 896364779);

  int getSessionState() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_session_state, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_is_user_presence_supported =
      resolveMethodBind('OpenXRInterface', 'is_user_presence_supported', 36873697);

  bool isUserPresenceSupported() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_user_presence_supported, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_is_user_present =
      resolveMethodBind('OpenXRInterface', 'is_user_present', 36873697);

  bool isUserPresent() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_user_present, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_display_refresh_rate =
      resolveMethodBind('OpenXRInterface', 'get_display_refresh_rate', 1740695150);

  double getDisplayRefreshRate() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_display_refresh_rate, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_display_refresh_rate =
      resolveMethodBind('OpenXRInterface', 'set_display_refresh_rate', 373806689);

  void setDisplayRefreshRate(double refreshRate) {
    final arg0 = malloc<Double>()..value = refreshRate;
    try {
      ptrcallVoid(_mb_set_display_refresh_rate, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_render_target_size_multiplier =
      resolveMethodBind('OpenXRInterface', 'get_render_target_size_multiplier', 1740695150);

  double getRenderTargetSizeMultiplier() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_render_target_size_multiplier, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_render_target_size_multiplier =
      resolveMethodBind('OpenXRInterface', 'set_render_target_size_multiplier', 373806689);

  void setRenderTargetSizeMultiplier(double multiplier) {
    final arg0 = malloc<Double>()..value = multiplier;
    try {
      ptrcallVoid(_mb_set_render_target_size_multiplier, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_foveation_supported =
      resolveMethodBind('OpenXRInterface', 'is_foveation_supported', 36873697);

  bool isFoveationSupported() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_foveation_supported, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_foveation_level =
      resolveMethodBind('OpenXRInterface', 'get_foveation_level', 3905245786);

  int getFoveationLevel() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_foveation_level, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_foveation_level =
      resolveMethodBind('OpenXRInterface', 'set_foveation_level', 1286410249);

  void setFoveationLevel(int foveationLevel) {
    final arg0 = malloc<Int64>()..value = foveationLevel;
    try {
      ptrcallVoid(_mb_set_foveation_level, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_foveation_dynamic =
      resolveMethodBind('OpenXRInterface', 'get_foveation_dynamic', 36873697);

  bool getFoveationDynamic() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_foveation_dynamic, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_foveation_dynamic =
      resolveMethodBind('OpenXRInterface', 'set_foveation_dynamic', 2586408642);

  void setFoveationDynamic(bool foveationDynamic) {
    final arg0 = malloc<Uint8>()..value = foveationDynamic ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_foveation_dynamic, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_foveation_with_subsampled_images =
      resolveMethodBind('OpenXRInterface', 'get_foveation_with_subsampled_images', 36873697);

  bool getFoveationWithSubsampledImages() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_foveation_with_subsampled_images, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_foveation_with_subsampled_images =
      resolveMethodBind('OpenXRInterface', 'set_foveation_with_subsampled_images', 2586408642);

  void setFoveationWithSubsampledImages(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_foveation_with_subsampled_images, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_action_set_active =
      resolveMethodBind('OpenXRInterface', 'is_action_set_active', 3927539163);

  bool isActionSetActive(String name) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), name);
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_action_set_active, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_action_set_active =
      resolveMethodBind('OpenXRInterface', 'set_action_set_active', 2678287736);

  void setActionSetActive(String name, bool active) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), name);
    final arg1 = malloc<Uint8>()..value = active ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_action_set_active, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  // Skipped get_action_sets(): unsupported return type "Array".
  // Skipped get_available_display_refresh_rates(): unsupported return type "Array".
  static final Pointer<Void> _mb_set_motion_range =
      resolveMethodBind('OpenXRInterface', 'set_motion_range', 855158159);

  void setMotionRange(int hand, int motionRange) {
    final arg0 = malloc<Int64>()..value = hand;
    final arg1 = malloc<Int64>()..value = motionRange;
    try {
      ptrcallVoid(_mb_set_motion_range, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_motion_range =
      resolveMethodBind('OpenXRInterface', 'get_motion_range', 3955838114);

  int getMotionRange(int hand) {
    final arg0 = malloc<Int64>()..value = hand;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_motion_range, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_hand_tracking_source =
      resolveMethodBind('OpenXRInterface', 'get_hand_tracking_source', 4092421202);

  int getHandTrackingSource(int hand) {
    final arg0 = malloc<Int64>()..value = hand;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_hand_tracking_source, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_hand_joint_flags =
      resolveMethodBind('OpenXRInterface', 'get_hand_joint_flags', 720567706);

  int getHandJointFlags(int hand, int joint) {
    final arg0 = malloc<Int64>()..value = hand;
    final arg1 = malloc<Int64>()..value = joint;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_hand_joint_flags, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_hand_joint_rotation =
      resolveMethodBind('OpenXRInterface', 'get_hand_joint_rotation', 1974618321);

  Quaternion getHandJointRotation(int hand, int joint) {
    final arg0 = malloc<Int64>()..value = hand;
    final arg1 = malloc<Int64>()..value = joint;
    try {
      final ret = malloc<Uint8>(Quaternion.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_hand_joint_rotation, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return Quaternion.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_hand_joint_position =
      resolveMethodBind('OpenXRInterface', 'get_hand_joint_position', 3529194242);

  Vector3 getHandJointPosition(int hand, int joint) {
    final arg0 = malloc<Int64>()..value = hand;
    final arg1 = malloc<Int64>()..value = joint;
    try {
      final ret = malloc<Uint8>(Vector3.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_hand_joint_position, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return Vector3.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_hand_joint_radius =
      resolveMethodBind('OpenXRInterface', 'get_hand_joint_radius', 901522724);

  double getHandJointRadius(int hand, int joint) {
    final arg0 = malloc<Int64>()..value = hand;
    final arg1 = malloc<Int64>()..value = joint;
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_hand_joint_radius, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_hand_joint_linear_velocity =
      resolveMethodBind('OpenXRInterface', 'get_hand_joint_linear_velocity', 3529194242);

  Vector3 getHandJointLinearVelocity(int hand, int joint) {
    final arg0 = malloc<Int64>()..value = hand;
    final arg1 = malloc<Int64>()..value = joint;
    try {
      final ret = malloc<Uint8>(Vector3.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_hand_joint_linear_velocity, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return Vector3.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_hand_joint_angular_velocity =
      resolveMethodBind('OpenXRInterface', 'get_hand_joint_angular_velocity', 3529194242);

  Vector3 getHandJointAngularVelocity(int hand, int joint) {
    final arg0 = malloc<Int64>()..value = hand;
    final arg1 = malloc<Int64>()..value = joint;
    try {
      final ret = malloc<Uint8>(Vector3.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_hand_joint_angular_velocity, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return Vector3.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_is_hand_tracking_supported =
      resolveMethodBind('OpenXRInterface', 'is_hand_tracking_supported', 2240911060);

  bool isHandTrackingSupported() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_hand_tracking_supported, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_is_hand_interaction_supported =
      resolveMethodBind('OpenXRInterface', 'is_hand_interaction_supported', 36873697);

  bool isHandInteractionSupported() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_hand_interaction_supported, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_is_eye_gaze_interaction_supported =
      resolveMethodBind('OpenXRInterface', 'is_eye_gaze_interaction_supported', 2240911060);

  bool isEyeGazeInteractionSupported() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_eye_gaze_interaction_supported, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_vrs_min_radius =
      resolveMethodBind('OpenXRInterface', 'get_vrs_min_radius', 1740695150);

  double getVrsMinRadius() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_vrs_min_radius, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_vrs_min_radius =
      resolveMethodBind('OpenXRInterface', 'set_vrs_min_radius', 373806689);

  void setVrsMinRadius(double radius) {
    final arg0 = malloc<Double>()..value = radius;
    try {
      ptrcallVoid(_mb_set_vrs_min_radius, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_vrs_strength =
      resolveMethodBind('OpenXRInterface', 'get_vrs_strength', 1740695150);

  double getVrsStrength() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_vrs_strength, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_vrs_strength =
      resolveMethodBind('OpenXRInterface', 'set_vrs_strength', 373806689);

  void setVrsStrength(double strength) {
    final arg0 = malloc<Double>()..value = strength;
    try {
      ptrcallVoid(_mb_set_vrs_strength, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_cpu_level =
      resolveMethodBind('OpenXRInterface', 'set_cpu_level', 2940842095);

  void setCpuLevel(int level) {
    final arg0 = malloc<Int64>()..value = level;
    try {
      ptrcallVoid(_mb_set_cpu_level, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_gpu_level =
      resolveMethodBind('OpenXRInterface', 'set_gpu_level', 2940842095);

  void setGpuLevel(int level) {
    final arg0 = malloc<Int64>()..value = level;
    try {
      ptrcallVoid(_mb_set_gpu_level, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

}
