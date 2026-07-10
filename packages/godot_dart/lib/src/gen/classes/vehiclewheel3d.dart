// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class VehicleWheel3D extends Node3D {
  VehicleWheel3D(super.nativePtr);

  static final Pointer<Void> _mb_set_radius =
      resolveMethodBind('VehicleWheel3D', 'set_radius', 373806689);

  void setRadius(double length) {
    final arg0 = malloc<Double>()..value = length;
    try {
      ptrcallVoid(_mb_set_radius, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_radius =
      resolveMethodBind('VehicleWheel3D', 'get_radius', 1740695150);

  double getRadius() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_radius, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_suspension_rest_length =
      resolveMethodBind('VehicleWheel3D', 'set_suspension_rest_length', 373806689);

  void setSuspensionRestLength(double length) {
    final arg0 = malloc<Double>()..value = length;
    try {
      ptrcallVoid(_mb_set_suspension_rest_length, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_suspension_rest_length =
      resolveMethodBind('VehicleWheel3D', 'get_suspension_rest_length', 1740695150);

  double getSuspensionRestLength() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_suspension_rest_length, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_suspension_travel =
      resolveMethodBind('VehicleWheel3D', 'set_suspension_travel', 373806689);

  void setSuspensionTravel(double length) {
    final arg0 = malloc<Double>()..value = length;
    try {
      ptrcallVoid(_mb_set_suspension_travel, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_suspension_travel =
      resolveMethodBind('VehicleWheel3D', 'get_suspension_travel', 1740695150);

  double getSuspensionTravel() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_suspension_travel, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_suspension_stiffness =
      resolveMethodBind('VehicleWheel3D', 'set_suspension_stiffness', 373806689);

  void setSuspensionStiffness(double length) {
    final arg0 = malloc<Double>()..value = length;
    try {
      ptrcallVoid(_mb_set_suspension_stiffness, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_suspension_stiffness =
      resolveMethodBind('VehicleWheel3D', 'get_suspension_stiffness', 1740695150);

  double getSuspensionStiffness() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_suspension_stiffness, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_suspension_max_force =
      resolveMethodBind('VehicleWheel3D', 'set_suspension_max_force', 373806689);

  void setSuspensionMaxForce(double length) {
    final arg0 = malloc<Double>()..value = length;
    try {
      ptrcallVoid(_mb_set_suspension_max_force, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_suspension_max_force =
      resolveMethodBind('VehicleWheel3D', 'get_suspension_max_force', 1740695150);

  double getSuspensionMaxForce() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_suspension_max_force, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_damping_compression =
      resolveMethodBind('VehicleWheel3D', 'set_damping_compression', 373806689);

  void setDampingCompression(double length) {
    final arg0 = malloc<Double>()..value = length;
    try {
      ptrcallVoid(_mb_set_damping_compression, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_damping_compression =
      resolveMethodBind('VehicleWheel3D', 'get_damping_compression', 1740695150);

  double getDampingCompression() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_damping_compression, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_damping_relaxation =
      resolveMethodBind('VehicleWheel3D', 'set_damping_relaxation', 373806689);

  void setDampingRelaxation(double length) {
    final arg0 = malloc<Double>()..value = length;
    try {
      ptrcallVoid(_mb_set_damping_relaxation, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_damping_relaxation =
      resolveMethodBind('VehicleWheel3D', 'get_damping_relaxation', 1740695150);

  double getDampingRelaxation() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_damping_relaxation, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_use_as_traction =
      resolveMethodBind('VehicleWheel3D', 'set_use_as_traction', 2586408642);

  void setUseAsTraction(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_use_as_traction, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_used_as_traction =
      resolveMethodBind('VehicleWheel3D', 'is_used_as_traction', 36873697);

  bool isUsedAsTraction() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_used_as_traction, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_use_as_steering =
      resolveMethodBind('VehicleWheel3D', 'set_use_as_steering', 2586408642);

  void setUseAsSteering(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_use_as_steering, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_used_as_steering =
      resolveMethodBind('VehicleWheel3D', 'is_used_as_steering', 36873697);

  bool isUsedAsSteering() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_used_as_steering, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_friction_slip =
      resolveMethodBind('VehicleWheel3D', 'set_friction_slip', 373806689);

  void setFrictionSlip(double length) {
    final arg0 = malloc<Double>()..value = length;
    try {
      ptrcallVoid(_mb_set_friction_slip, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_friction_slip =
      resolveMethodBind('VehicleWheel3D', 'get_friction_slip', 1740695150);

  double getFrictionSlip() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_friction_slip, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_is_in_contact =
      resolveMethodBind('VehicleWheel3D', 'is_in_contact', 36873697);

  bool isInContact() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_in_contact, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_contact_body =
      resolveMethodBind('VehicleWheel3D', 'get_contact_body', 151077316);

  Node3D? getContactBody() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_contact_body, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Node3D(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_contact_point =
      resolveMethodBind('VehicleWheel3D', 'get_contact_point', 3360562783);

  Vector3 getContactPoint() {
    try {
      final ret = malloc<Uint8>(Vector3.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_contact_point, nativePtr, [], ret.cast());
        return Vector3.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_contact_normal =
      resolveMethodBind('VehicleWheel3D', 'get_contact_normal', 3360562783);

  Vector3 getContactNormal() {
    try {
      final ret = malloc<Uint8>(Vector3.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_contact_normal, nativePtr, [], ret.cast());
        return Vector3.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_roll_influence =
      resolveMethodBind('VehicleWheel3D', 'set_roll_influence', 373806689);

  void setRollInfluence(double rollInfluence) {
    final arg0 = malloc<Double>()..value = rollInfluence;
    try {
      ptrcallVoid(_mb_set_roll_influence, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_roll_influence =
      resolveMethodBind('VehicleWheel3D', 'get_roll_influence', 1740695150);

  double getRollInfluence() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_roll_influence, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_skidinfo =
      resolveMethodBind('VehicleWheel3D', 'get_skidinfo', 1740695150);

  double getSkidinfo() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_skidinfo, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_rpm =
      resolveMethodBind('VehicleWheel3D', 'get_rpm', 1740695150);

  double getRpm() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_rpm, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_engine_force =
      resolveMethodBind('VehicleWheel3D', 'set_engine_force', 373806689);

  void setEngineForce(double engineForce) {
    final arg0 = malloc<Double>()..value = engineForce;
    try {
      ptrcallVoid(_mb_set_engine_force, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_engine_force =
      resolveMethodBind('VehicleWheel3D', 'get_engine_force', 1740695150);

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
      resolveMethodBind('VehicleWheel3D', 'set_brake', 373806689);

  void setBrake(double brake) {
    final arg0 = malloc<Double>()..value = brake;
    try {
      ptrcallVoid(_mb_set_brake, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_brake =
      resolveMethodBind('VehicleWheel3D', 'get_brake', 1740695150);

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
      resolveMethodBind('VehicleWheel3D', 'set_steering', 373806689);

  void setSteering(double steering) {
    final arg0 = malloc<Double>()..value = steering;
    try {
      ptrcallVoid(_mb_set_steering, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_steering =
      resolveMethodBind('VehicleWheel3D', 'get_steering', 1740695150);

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
