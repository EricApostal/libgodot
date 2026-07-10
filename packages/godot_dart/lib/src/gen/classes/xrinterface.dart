// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class XRInterface extends RefCounted {
  XRInterface(super.nativePtr);

  static final Pointer<Void> _mb_get_name =
      resolveMethodBind('XRInterface', 'get_name', 2002593661);

  String getName() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_name, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readStringName(ret.cast());
        BuiltinMarshal.destroyStringName(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_capabilities =
      resolveMethodBind('XRInterface', 'get_capabilities', 3905245786);

  int getCapabilities() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_capabilities, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_is_primary =
      resolveMethodBind('XRInterface', 'is_primary', 2240911060);

  bool isPrimary() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_primary, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_primary =
      resolveMethodBind('XRInterface', 'set_primary', 2586408642);

  void setPrimary(bool primary) {
    final arg0 = malloc<Uint8>()..value = primary ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_primary, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_initialized =
      resolveMethodBind('XRInterface', 'is_initialized', 36873697);

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

  static final Pointer<Void> _mb_initialize =
      resolveMethodBind('XRInterface', 'initialize', 2240911060);

  bool initialize() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_initialize, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_uninitialize =
      resolveMethodBind('XRInterface', 'uninitialize', 3218959716);

  void uninitialize() {
    try {
      ptrcallVoid(_mb_uninitialize, nativePtr, []);
    } finally {
    }
  }

  // Skipped get_system_info(): unsupported return type "Dictionary".
  static final Pointer<Void> _mb_get_tracking_status =
      resolveMethodBind('XRInterface', 'get_tracking_status', 167423259);

  int getTrackingStatus() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_tracking_status, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_render_target_size =
      resolveMethodBind('XRInterface', 'get_render_target_size', 1497962370);

  Vector2 getRenderTargetSize() {
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_render_target_size, nativePtr, [], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_view_count =
      resolveMethodBind('XRInterface', 'get_view_count', 2455072627);

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

  static final Pointer<Void> _mb_trigger_haptic_pulse =
      resolveMethodBind('XRInterface', 'trigger_haptic_pulse', 3752640163);

  void triggerHapticPulse(String actionName, String trackerName, double frequency, double amplitude, double durationSec, double delaySec) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), actionName);
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg1.cast(), trackerName);
    final arg2 = malloc<Double>()..value = frequency;
    final arg3 = malloc<Double>()..value = amplitude;
    final arg4 = malloc<Double>()..value = durationSec;
    final arg5 = malloc<Double>()..value = delaySec;
    try {
      ptrcallVoid(_mb_trigger_haptic_pulse, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>(), arg3.cast<Void>(), arg4.cast<Void>(), arg5.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
      BuiltinMarshal.destroyStringName(arg1.cast());
      malloc.free(arg1);
      malloc.free(arg2);
      malloc.free(arg3);
      malloc.free(arg4);
      malloc.free(arg5);
    }
  }

  static final Pointer<Void> _mb_supports_play_area_mode =
      resolveMethodBind('XRInterface', 'supports_play_area_mode', 3429955281);

  bool supportsPlayAreaMode(int mode) {
    final arg0 = malloc<Int64>()..value = mode;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_supports_play_area_mode, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_play_area_mode =
      resolveMethodBind('XRInterface', 'get_play_area_mode', 1615132885);

  int getPlayAreaMode() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_play_area_mode, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_play_area_mode =
      resolveMethodBind('XRInterface', 'set_play_area_mode', 3429955281);

  bool setPlayAreaMode(int mode) {
    final arg0 = malloc<Int64>()..value = mode;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_set_play_area_mode, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  // Skipped get_play_area(): unsupported return type "PackedVector3Array".
  static final Pointer<Void> _mb_get_anchor_detection_is_enabled =
      resolveMethodBind('XRInterface', 'get_anchor_detection_is_enabled', 36873697);

  bool getAnchorDetectionIsEnabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_anchor_detection_is_enabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_anchor_detection_is_enabled =
      resolveMethodBind('XRInterface', 'set_anchor_detection_is_enabled', 2586408642);

  void setAnchorDetectionIsEnabled(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_anchor_detection_is_enabled, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_camera_feed_id =
      resolveMethodBind('XRInterface', 'get_camera_feed_id', 2455072627);

  int getCameraFeedId() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_camera_feed_id, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_is_passthrough_supported =
      resolveMethodBind('XRInterface', 'is_passthrough_supported', 2240911060);

  bool isPassthroughSupported() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_passthrough_supported, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_is_passthrough_enabled =
      resolveMethodBind('XRInterface', 'is_passthrough_enabled', 2240911060);

  bool isPassthroughEnabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_passthrough_enabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_start_passthrough =
      resolveMethodBind('XRInterface', 'start_passthrough', 2240911060);

  bool startPassthrough() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_start_passthrough, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_stop_passthrough =
      resolveMethodBind('XRInterface', 'stop_passthrough', 3218959716);

  void stopPassthrough() {
    try {
      ptrcallVoid(_mb_stop_passthrough, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_transform_for_view =
      resolveMethodBind('XRInterface', 'get_transform_for_view', 518934792);

  Transform3D getTransformForView(int view, Transform3D camTransform) {
    final arg0 = malloc<Int64>()..value = view;
    final arg1 = malloc<Uint8>(Transform3D.nativeSize);
    camTransform.writeTo(arg1, 0);
    try {
      final ret = malloc<Uint8>(Transform3D.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_transform_for_view, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return Transform3D.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_projection_for_view =
      resolveMethodBind('XRInterface', 'get_projection_for_view', 3766090294);

  Projection getProjectionForView(int view, double aspect, double near, double far) {
    final arg0 = malloc<Int64>()..value = view;
    final arg1 = malloc<Double>()..value = aspect;
    final arg2 = malloc<Double>()..value = near;
    final arg3 = malloc<Double>()..value = far;
    try {
      final ret = malloc<Uint8>(Projection.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_projection_for_view, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>(), arg3.cast<Void>()], ret.cast());
        return Projection.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
      malloc.free(arg3);
    }
  }

  // Skipped get_supported_environment_blend_modes(): unsupported return type "Array".
  static final Pointer<Void> _mb_set_environment_blend_mode =
      resolveMethodBind('XRInterface', 'set_environment_blend_mode', 551152418);

  bool setEnvironmentBlendMode(int mode) {
    final arg0 = malloc<Int64>()..value = mode;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_set_environment_blend_mode, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_environment_blend_mode =
      resolveMethodBind('XRInterface', 'get_environment_blend_mode', 1984334071);

  int getEnvironmentBlendMode() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_environment_blend_mode, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
