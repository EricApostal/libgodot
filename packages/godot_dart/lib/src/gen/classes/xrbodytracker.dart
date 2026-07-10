// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class XRBodyTracker extends XRPositionalTracker {
  XRBodyTracker(super.nativePtr);

  /// Constructs a brand-new engine-owned XRBodyTracker instance
  /// (via classdb_construct_object3), not an existing one.
  factory XRBodyTracker.create() {
    return XRBodyTracker(resolveClassConstructor('XRBodyTracker'));
  }

  static final Pointer<Void> _mb_set_has_tracking_data =
      resolveMethodBind('XRBodyTracker', 'set_has_tracking_data', 2586408642);

  void setHasTrackingData(bool hasData) {
    final arg0 = malloc<Uint8>()..value = hasData ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_has_tracking_data, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_has_tracking_data =
      resolveMethodBind('XRBodyTracker', 'get_has_tracking_data', 36873697);

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

  static final Pointer<Void> _mb_set_body_flags =
      resolveMethodBind('XRBodyTracker', 'set_body_flags', 2103235750);

  void setBodyFlags(int flags) {
    final arg0 = malloc<Int64>()..value = flags;
    try {
      ptrcallVoid(_mb_set_body_flags, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_body_flags =
      resolveMethodBind('XRBodyTracker', 'get_body_flags', 3543166366);

  int getBodyFlags() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_body_flags, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_joint_flags =
      resolveMethodBind('XRBodyTracker', 'set_joint_flags', 592144999);

  void setJointFlags(int joint, int flags) {
    final arg0 = malloc<Int64>()..value = joint;
    final arg1 = malloc<Int64>()..value = flags;
    try {
      ptrcallVoid(_mb_set_joint_flags, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_joint_flags =
      resolveMethodBind('XRBodyTracker', 'get_joint_flags', 1030162609);

  int getJointFlags(int joint) {
    final arg0 = malloc<Int64>()..value = joint;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_joint_flags, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_joint_transform =
      resolveMethodBind('XRBodyTracker', 'set_joint_transform', 2635424328);

  void setJointTransform(int joint, Transform3D transform) {
    final arg0 = malloc<Int64>()..value = joint;
    final arg1 = malloc<Uint8>(Transform3D.nativeSize);
    transform.writeTo(arg1, 0);
    try {
      ptrcallVoid(_mb_set_joint_transform, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_joint_transform =
      resolveMethodBind('XRBodyTracker', 'get_joint_transform', 3474811534);

  Transform3D getJointTransform(int joint) {
    final arg0 = malloc<Int64>()..value = joint;
    try {
      final ret = malloc<Uint8>(Transform3D.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_joint_transform, nativePtr, [arg0.cast<Void>()], ret.cast());
        return Transform3D.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

}
