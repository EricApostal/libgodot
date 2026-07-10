// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class VehicleBody3D extends RigidBody3D {
  VehicleBody3D(super.nativePtr);

  /// Constructs a brand-new engine-owned VehicleBody3D instance
  /// (via classdb_construct_object3), not an existing one.
  factory VehicleBody3D.create() {
    return VehicleBody3D(resolveClassConstructor('VehicleBody3D'));
  }

  static final Pointer<Void> _mb_set_engine_force =
      resolveMethodBind('VehicleBody3D', 'set_engine_force', 373806689);

  void setEngineForce(double engineForce) {
    final arg0 = malloc<Double>()..value = engineForce;
    try {
      ptrcallVoid(_mb_set_engine_force, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_engine_force =
      resolveMethodBind('VehicleBody3D', 'get_engine_force', 1740695150);

  double getEngineForce() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_engine_force, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_brake =
      resolveMethodBind('VehicleBody3D', 'set_brake', 373806689);

  void setBrake(double brake) {
    final arg0 = malloc<Double>()..value = brake;
    try {
      ptrcallVoid(_mb_set_brake, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_brake =
      resolveMethodBind('VehicleBody3D', 'get_brake', 1740695150);

  double getBrake() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_brake, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_steering =
      resolveMethodBind('VehicleBody3D', 'set_steering', 373806689);

  void setSteering(double steering) {
    final arg0 = malloc<Double>()..value = steering;
    try {
      ptrcallVoid(_mb_set_steering, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_steering =
      resolveMethodBind('VehicleBody3D', 'get_steering', 1740695150);

  double getSteering() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_steering, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
