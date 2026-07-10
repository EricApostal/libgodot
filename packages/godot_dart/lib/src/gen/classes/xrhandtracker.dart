// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class XRHandTracker extends XRPositionalTracker {
  XRHandTracker(super.nativePtr);

  static final Pointer<Void> _mb_set_has_tracking_data =
      resolveMethodBind('XRHandTracker', 'set_has_tracking_data', 2586408642);

  void setHasTrackingData(bool hasData) {
    final arg0 = malloc<Uint8>()..value = hasData ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_has_tracking_data, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_has_tracking_data =
      resolveMethodBind('XRHandTracker', 'get_has_tracking_data', 36873697);

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

  static final Pointer<Void> _mb_set_hand_tracking_source =
      resolveMethodBind('XRHandTracker', 'set_hand_tracking_source', 2958308861);

  void setHandTrackingSource(int source) {
    final arg0 = malloc<Int64>()..value = source;
    try {
      ptrcallVoid(_mb_set_hand_tracking_source, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_hand_tracking_source =
      resolveMethodBind('XRHandTracker', 'get_hand_tracking_source', 2475045250);

  int getHandTrackingSource() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_hand_tracking_source, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_hand_joint_flags =
      resolveMethodBind('XRHandTracker', 'set_hand_joint_flags', 3028437365);

  void setHandJointFlags(int joint, int flags) {
    final arg0 = malloc<Int64>()..value = joint;
    final arg1 = malloc<Int64>()..value = flags;
    try {
      ptrcallVoid(_mb_set_hand_joint_flags, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_hand_joint_flags =
      resolveMethodBind('XRHandTracker', 'get_hand_joint_flags', 1730972401);

  int getHandJointFlags(int joint) {
    final arg0 = malloc<Int64>()..value = joint;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_hand_joint_flags, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_hand_joint_transform =
      resolveMethodBind('XRHandTracker', 'set_hand_joint_transform', 2529959613);

  void setHandJointTransform(int joint, Transform3D transform) {
    final arg0 = malloc<Int64>()..value = joint;
    final arg1 = malloc<Uint8>(Transform3D.nativeSize);
    transform.writeTo(arg1, 0);
    try {
      ptrcallVoid(_mb_set_hand_joint_transform, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_hand_joint_transform =
      resolveMethodBind('XRHandTracker', 'get_hand_joint_transform', 1090840196);

  Transform3D getHandJointTransform(int joint) {
    final arg0 = malloc<Int64>()..value = joint;
    try {
      final ret = malloc<Uint8>(Transform3D.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_hand_joint_transform, nativePtr, [arg0.cast<Void>()], ret.cast());
        return Transform3D.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_hand_joint_radius =
      resolveMethodBind('XRHandTracker', 'set_hand_joint_radius', 2723659615);

  void setHandJointRadius(int joint, double radius) {
    final arg0 = malloc<Int64>()..value = joint;
    final arg1 = malloc<Double>()..value = radius;
    try {
      ptrcallVoid(_mb_set_hand_joint_radius, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_hand_joint_radius =
      resolveMethodBind('XRHandTracker', 'get_hand_joint_radius', 3400025734);

  double getHandJointRadius(int joint) {
    final arg0 = malloc<Int64>()..value = joint;
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_hand_joint_radius, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_hand_joint_linear_velocity =
      resolveMethodBind('XRHandTracker', 'set_hand_joint_linear_velocity', 1978646737);

  void setHandJointLinearVelocity(int joint, Vector3 linearVelocity) {
    final arg0 = malloc<Int64>()..value = joint;
    final arg1 = malloc<Uint8>(Vector3.nativeSize);
    linearVelocity.writeTo(arg1, 0);
    try {
      ptrcallVoid(_mb_set_hand_joint_linear_velocity, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_hand_joint_linear_velocity =
      resolveMethodBind('XRHandTracker', 'get_hand_joint_linear_velocity', 547240792);

  Vector3 getHandJointLinearVelocity(int joint) {
    final arg0 = malloc<Int64>()..value = joint;
    try {
      final ret = malloc<Uint8>(Vector3.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_hand_joint_linear_velocity, nativePtr, [arg0.cast<Void>()], ret.cast());
        return Vector3.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_hand_joint_angular_velocity =
      resolveMethodBind('XRHandTracker', 'set_hand_joint_angular_velocity', 1978646737);

  void setHandJointAngularVelocity(int joint, Vector3 angularVelocity) {
    final arg0 = malloc<Int64>()..value = joint;
    final arg1 = malloc<Uint8>(Vector3.nativeSize);
    angularVelocity.writeTo(arg1, 0);
    try {
      ptrcallVoid(_mb_set_hand_joint_angular_velocity, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_hand_joint_angular_velocity =
      resolveMethodBind('XRHandTracker', 'get_hand_joint_angular_velocity', 547240792);

  Vector3 getHandJointAngularVelocity(int joint) {
    final arg0 = malloc<Int64>()..value = joint;
    try {
      final ret = malloc<Uint8>(Vector3.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_hand_joint_angular_velocity, nativePtr, [arg0.cast<Void>()], ret.cast());
        return Vector3.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

}
