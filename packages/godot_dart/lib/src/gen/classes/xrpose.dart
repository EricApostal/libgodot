// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class XRPose extends RefCounted {
  XRPose(super.nativePtr);

  static final Pointer<Void> _mb_set_has_tracking_data =
      resolveMethodBind('XRPose', 'set_has_tracking_data', 2586408642);

  void setHasTrackingData(bool hasTrackingData) {
    final arg0 = malloc<Uint8>()..value = hasTrackingData ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_has_tracking_data, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_has_tracking_data =
      resolveMethodBind('XRPose', 'get_has_tracking_data', 36873697);

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

  static final Pointer<Void> _mb_set_name =
      resolveMethodBind('XRPose', 'set_name', 3304788590);

  void setName(String name) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), name);
    try {
      ptrcallVoid(_mb_set_name, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_name =
      resolveMethodBind('XRPose', 'get_name', 2002593661);

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

  static final Pointer<Void> _mb_set_transform =
      resolveMethodBind('XRPose', 'set_transform', 2952846383);

  void setTransform(Transform3D transform) {
    final arg0 = malloc<Uint8>(Transform3D.nativeSize);
    transform.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_transform, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_transform =
      resolveMethodBind('XRPose', 'get_transform', 3229777777);

  Transform3D getTransform() {
    try {
      final ret = malloc<Uint8>(Transform3D.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_transform, nativePtr, [], ret.cast());
        return Transform3D.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_adjusted_transform =
      resolveMethodBind('XRPose', 'get_adjusted_transform', 3229777777);

  Transform3D getAdjustedTransform() {
    try {
      final ret = malloc<Uint8>(Transform3D.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_adjusted_transform, nativePtr, [], ret.cast());
        return Transform3D.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_linear_velocity =
      resolveMethodBind('XRPose', 'set_linear_velocity', 3460891852);

  void setLinearVelocity(Vector3 velocity) {
    final arg0 = malloc<Uint8>(Vector3.nativeSize);
    velocity.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_linear_velocity, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_linear_velocity =
      resolveMethodBind('XRPose', 'get_linear_velocity', 3360562783);

  Vector3 getLinearVelocity() {
    try {
      final ret = malloc<Uint8>(Vector3.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_linear_velocity, nativePtr, [], ret.cast());
        return Vector3.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_angular_velocity =
      resolveMethodBind('XRPose', 'set_angular_velocity', 3460891852);

  void setAngularVelocity(Vector3 velocity) {
    final arg0 = malloc<Uint8>(Vector3.nativeSize);
    velocity.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_angular_velocity, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_angular_velocity =
      resolveMethodBind('XRPose', 'get_angular_velocity', 3360562783);

  Vector3 getAngularVelocity() {
    try {
      final ret = malloc<Uint8>(Vector3.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_angular_velocity, nativePtr, [], ret.cast());
        return Vector3.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_tracking_confidence =
      resolveMethodBind('XRPose', 'set_tracking_confidence', 4171656666);

  void setTrackingConfidence(int trackingConfidence) {
    final arg0 = malloc<Int64>()..value = trackingConfidence;
    try {
      ptrcallVoid(_mb_set_tracking_confidence, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_tracking_confidence =
      resolveMethodBind('XRPose', 'get_tracking_confidence', 2064923680);

  int getTrackingConfidence() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_tracking_confidence, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
