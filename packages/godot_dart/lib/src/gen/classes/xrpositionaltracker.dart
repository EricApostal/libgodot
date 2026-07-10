// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class XRPositionalTracker extends XRTracker {
  XRPositionalTracker(super.nativePtr);

  /// Constructs a brand-new engine-owned XRPositionalTracker instance
  /// (via classdb_construct_object3), not an existing one.
  factory XRPositionalTracker.create() {
    return XRPositionalTracker(resolveClassConstructor('XRPositionalTracker'));
  }

  static final Pointer<Void> _mb_get_tracker_profile =
      resolveMethodBind('XRPositionalTracker', 'get_tracker_profile', 201670096);

  String getTrackerProfile() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_tracker_profile, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_tracker_profile =
      resolveMethodBind('XRPositionalTracker', 'set_tracker_profile', 83702148);

  void setTrackerProfile(String profile) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), profile);
    try {
      ptrcallVoid(_mb_set_tracker_profile, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_tracker_hand =
      resolveMethodBind('XRPositionalTracker', 'get_tracker_hand', 4181770860);

  int getTrackerHand() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_tracker_hand, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_tracker_hand =
      resolveMethodBind('XRPositionalTracker', 'set_tracker_hand', 3904108980);

  void setTrackerHand(int hand) {
    final arg0 = malloc<Int64>()..value = hand;
    try {
      ptrcallVoid(_mb_set_tracker_hand, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_has_pose =
      resolveMethodBind('XRPositionalTracker', 'has_pose', 2619796661);

  bool hasPose(String name) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), name);
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_has_pose, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_pose =
      resolveMethodBind('XRPositionalTracker', 'get_pose', 4099720006);

  XRPose? getPose(String name) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), name);
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_pose, nativePtr, [arg0.cast<Void>()], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : XRPose(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_invalidate_pose =
      resolveMethodBind('XRPositionalTracker', 'invalidate_pose', 3304788590);

  void invalidatePose(String name) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), name);
    try {
      ptrcallVoid(_mb_invalidate_pose, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_pose =
      resolveMethodBind('XRPositionalTracker', 'set_pose', 3451230163);

  void setPose(String name, Transform3D transform, Vector3 linearVelocity, Vector3 angularVelocity, int trackingConfidence) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), name);
    final arg1 = malloc<Uint8>(Transform3D.nativeSize);
    transform.writeTo(arg1, 0);
    final arg2 = malloc<Uint8>(Vector3.nativeSize);
    linearVelocity.writeTo(arg2, 0);
    final arg3 = malloc<Uint8>(Vector3.nativeSize);
    angularVelocity.writeTo(arg3, 0);
    final arg4 = malloc<Int64>()..value = trackingConfidence;
    try {
      ptrcallVoid(_mb_set_pose, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>(), arg3.cast<Void>(), arg4.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
      malloc.free(arg3);
      malloc.free(arg4);
    }
  }

  // Skipped get_input(): unsupported return type "Variant".
  // Skipped set_input(): an argument type is unsupported.
}
