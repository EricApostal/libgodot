// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class XRNode3D extends Node3D {
  XRNode3D(super.nativePtr);

  static final Pointer<Void> _mb_set_tracker =
      resolveMethodBind('XRNode3D', 'set_tracker', 3304788590);

  void setTracker(String trackerName) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), trackerName);
    try {
      ptrcallVoid(_mb_set_tracker, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_tracker =
      resolveMethodBind('XRNode3D', 'get_tracker', 2002593661);

  String getTracker() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_tracker, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readStringName(ret.cast());
        BuiltinMarshal.destroyStringName(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_pose_name =
      resolveMethodBind('XRNode3D', 'set_pose_name', 3304788590);

  void setPoseName(String pose) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), pose);
    try {
      ptrcallVoid(_mb_set_pose_name, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_pose_name =
      resolveMethodBind('XRNode3D', 'get_pose_name', 2002593661);

  String getPoseName() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_pose_name, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readStringName(ret.cast());
        BuiltinMarshal.destroyStringName(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_show_when_tracked =
      resolveMethodBind('XRNode3D', 'set_show_when_tracked', 2586408642);

  void setShowWhenTracked(bool show_) {
    final arg0 = malloc<Uint8>()..value = show_ ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_show_when_tracked, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_show_when_tracked =
      resolveMethodBind('XRNode3D', 'get_show_when_tracked', 36873697);

  bool getShowWhenTracked() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_show_when_tracked, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_is_active =
      resolveMethodBind('XRNode3D', 'get_is_active', 36873697);

  bool getIsActive() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_is_active, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_has_tracking_data =
      resolveMethodBind('XRNode3D', 'get_has_tracking_data', 36873697);

  bool getHasTrackingData() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_has_tracking_data, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_pose =
      resolveMethodBind('XRNode3D', 'get_pose', 2806551826);

  XRPose? getPose() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_pose, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : XRPose(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_trigger_haptic_pulse =
      resolveMethodBind('XRNode3D', 'trigger_haptic_pulse', 508576839);

  void triggerHapticPulse(String actionName, double frequency, double amplitude, double durationSec, double delaySec) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), actionName);
    final arg1 = malloc<Double>()..value = frequency;
    final arg2 = malloc<Double>()..value = amplitude;
    final arg3 = malloc<Double>()..value = durationSec;
    final arg4 = malloc<Double>()..value = delaySec;
    try {
      ptrcallVoid(_mb_trigger_haptic_pulse, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>(), arg3.cast<Void>(), arg4.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
      malloc.free(arg3);
      malloc.free(arg4);
    }
  }

}
