// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class PinJoint2D extends Joint2D {
  PinJoint2D(super.nativePtr);

  /// Constructs a brand-new engine-owned PinJoint2D instance
  /// (via classdb_construct_object3), not an existing one.
  factory PinJoint2D.create() {
    return PinJoint2D(resolveClassConstructor('PinJoint2D'));
  }

  static final Pointer<Void> _mb_set_softness =
      resolveMethodBind('PinJoint2D', 'set_softness', 373806689);

  void setSoftness(double softness) {
    final arg0 = malloc<Double>()..value = softness;
    try {
      ptrcallVoid(_mb_set_softness, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_softness =
      resolveMethodBind('PinJoint2D', 'get_softness', 1740695150);

  double getSoftness() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_softness, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_angular_limit_lower =
      resolveMethodBind('PinJoint2D', 'set_angular_limit_lower', 373806689);

  void setAngularLimitLower(double angularLimitLower) {
    final arg0 = malloc<Double>()..value = angularLimitLower;
    try {
      ptrcallVoid(_mb_set_angular_limit_lower, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_angular_limit_lower =
      resolveMethodBind('PinJoint2D', 'get_angular_limit_lower', 1740695150);

  double getAngularLimitLower() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_angular_limit_lower, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_angular_limit_upper =
      resolveMethodBind('PinJoint2D', 'set_angular_limit_upper', 373806689);

  void setAngularLimitUpper(double angularLimitUpper) {
    final arg0 = malloc<Double>()..value = angularLimitUpper;
    try {
      ptrcallVoid(_mb_set_angular_limit_upper, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_angular_limit_upper =
      resolveMethodBind('PinJoint2D', 'get_angular_limit_upper', 1740695150);

  double getAngularLimitUpper() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_angular_limit_upper, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_motor_target_velocity =
      resolveMethodBind('PinJoint2D', 'set_motor_target_velocity', 373806689);

  void setMotorTargetVelocity(double motorTargetVelocity) {
    final arg0 = malloc<Double>()..value = motorTargetVelocity;
    try {
      ptrcallVoid(_mb_set_motor_target_velocity, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_motor_target_velocity =
      resolveMethodBind('PinJoint2D', 'get_motor_target_velocity', 1740695150);

  double getMotorTargetVelocity() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_motor_target_velocity, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_motor_enabled =
      resolveMethodBind('PinJoint2D', 'set_motor_enabled', 2586408642);

  void setMotorEnabled(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_motor_enabled, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_motor_enabled =
      resolveMethodBind('PinJoint2D', 'is_motor_enabled', 36873697);

  bool isMotorEnabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_motor_enabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_angular_limit_enabled =
      resolveMethodBind('PinJoint2D', 'set_angular_limit_enabled', 2586408642);

  void setAngularLimitEnabled(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_angular_limit_enabled, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_angular_limit_enabled =
      resolveMethodBind('PinJoint2D', 'is_angular_limit_enabled', 36873697);

  bool isAngularLimitEnabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_angular_limit_enabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
