// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class Area3D extends CollisionObject3D {
  Area3D(super.nativePtr);

  /// Constructs a brand-new engine-owned Area3D instance
  /// (via classdb_construct_object3), not an existing one.
  factory Area3D.create() {
    return Area3D(resolveClassConstructor('Area3D'));
  }

  static final Pointer<Void> _mb_set_gravity_space_override_mode =
      resolveMethodBind('Area3D', 'set_gravity_space_override_mode', 2311433571);

  void setGravitySpaceOverrideMode(int spaceOverrideMode) {
    final arg0 = malloc<Int64>()..value = spaceOverrideMode;
    try {
      ptrcallVoid(_mb_set_gravity_space_override_mode, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_gravity_space_override_mode =
      resolveMethodBind('Area3D', 'get_gravity_space_override_mode', 958191869);

  int getGravitySpaceOverrideMode() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_gravity_space_override_mode, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_gravity_is_point =
      resolveMethodBind('Area3D', 'set_gravity_is_point', 2586408642);

  void setGravityIsPoint(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_gravity_is_point, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_gravity_a_point =
      resolveMethodBind('Area3D', 'is_gravity_a_point', 36873697);

  bool isGravityAPoint() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_gravity_a_point, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_gravity_point_unit_distance =
      resolveMethodBind('Area3D', 'set_gravity_point_unit_distance', 373806689);

  void setGravityPointUnitDistance(double distanceScale) {
    final arg0 = malloc<Double>()..value = distanceScale;
    try {
      ptrcallVoid(_mb_set_gravity_point_unit_distance, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_gravity_point_unit_distance =
      resolveMethodBind('Area3D', 'get_gravity_point_unit_distance', 1740695150);

  double getGravityPointUnitDistance() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_gravity_point_unit_distance, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_gravity_point_center =
      resolveMethodBind('Area3D', 'set_gravity_point_center', 3460891852);

  void setGravityPointCenter(Vector3 center) {
    final arg0 = malloc<Uint8>(Vector3.nativeSize);
    center.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_gravity_point_center, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_gravity_point_center =
      resolveMethodBind('Area3D', 'get_gravity_point_center', 3360562783);

  Vector3 getGravityPointCenter() {
    try {
      final ret = malloc<Uint8>(Vector3.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_gravity_point_center, nativePtr, [], ret.cast());
        return Vector3.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_gravity_direction =
      resolveMethodBind('Area3D', 'set_gravity_direction', 3460891852);

  void setGravityDirection(Vector3 direction) {
    final arg0 = malloc<Uint8>(Vector3.nativeSize);
    direction.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_gravity_direction, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_gravity_direction =
      resolveMethodBind('Area3D', 'get_gravity_direction', 3360562783);

  Vector3 getGravityDirection() {
    try {
      final ret = malloc<Uint8>(Vector3.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_gravity_direction, nativePtr, [], ret.cast());
        return Vector3.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_gravity =
      resolveMethodBind('Area3D', 'set_gravity', 373806689);

  void setGravity(double gravity) {
    final arg0 = malloc<Double>()..value = gravity;
    try {
      ptrcallVoid(_mb_set_gravity, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_gravity =
      resolveMethodBind('Area3D', 'get_gravity', 1740695150);

  double getGravity() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_gravity, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_linear_damp_space_override_mode =
      resolveMethodBind('Area3D', 'set_linear_damp_space_override_mode', 2311433571);

  void setLinearDampSpaceOverrideMode(int spaceOverrideMode) {
    final arg0 = malloc<Int64>()..value = spaceOverrideMode;
    try {
      ptrcallVoid(_mb_set_linear_damp_space_override_mode, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_linear_damp_space_override_mode =
      resolveMethodBind('Area3D', 'get_linear_damp_space_override_mode', 958191869);

  int getLinearDampSpaceOverrideMode() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_linear_damp_space_override_mode, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_angular_damp_space_override_mode =
      resolveMethodBind('Area3D', 'set_angular_damp_space_override_mode', 2311433571);

  void setAngularDampSpaceOverrideMode(int spaceOverrideMode) {
    final arg0 = malloc<Int64>()..value = spaceOverrideMode;
    try {
      ptrcallVoid(_mb_set_angular_damp_space_override_mode, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_angular_damp_space_override_mode =
      resolveMethodBind('Area3D', 'get_angular_damp_space_override_mode', 958191869);

  int getAngularDampSpaceOverrideMode() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_angular_damp_space_override_mode, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_angular_damp =
      resolveMethodBind('Area3D', 'set_angular_damp', 373806689);

  void setAngularDamp(double angularDamp) {
    final arg0 = malloc<Double>()..value = angularDamp;
    try {
      ptrcallVoid(_mb_set_angular_damp, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_angular_damp =
      resolveMethodBind('Area3D', 'get_angular_damp', 1740695150);

  double getAngularDamp() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_angular_damp, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_linear_damp =
      resolveMethodBind('Area3D', 'set_linear_damp', 373806689);

  void setLinearDamp(double linearDamp) {
    final arg0 = malloc<Double>()..value = linearDamp;
    try {
      ptrcallVoid(_mb_set_linear_damp, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_linear_damp =
      resolveMethodBind('Area3D', 'get_linear_damp', 1740695150);

  double getLinearDamp() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_linear_damp, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_priority =
      resolveMethodBind('Area3D', 'set_priority', 1286410249);

  void setPriority(int priority) {
    final arg0 = malloc<Int64>()..value = priority;
    try {
      ptrcallVoid(_mb_set_priority, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_priority =
      resolveMethodBind('Area3D', 'get_priority', 3905245786);

  int getPriority() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_priority, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_wind_force_magnitude =
      resolveMethodBind('Area3D', 'set_wind_force_magnitude', 373806689);

  void setWindForceMagnitude(double windForceMagnitude) {
    final arg0 = malloc<Double>()..value = windForceMagnitude;
    try {
      ptrcallVoid(_mb_set_wind_force_magnitude, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_wind_force_magnitude =
      resolveMethodBind('Area3D', 'get_wind_force_magnitude', 1740695150);

  double getWindForceMagnitude() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_wind_force_magnitude, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_wind_attenuation_factor =
      resolveMethodBind('Area3D', 'set_wind_attenuation_factor', 373806689);

  void setWindAttenuationFactor(double windAttenuationFactor) {
    final arg0 = malloc<Double>()..value = windAttenuationFactor;
    try {
      ptrcallVoid(_mb_set_wind_attenuation_factor, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_wind_attenuation_factor =
      resolveMethodBind('Area3D', 'get_wind_attenuation_factor', 1740695150);

  double getWindAttenuationFactor() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_wind_attenuation_factor, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  // Skipped set_wind_source_path(): an argument type is unsupported.
  // Skipped get_wind_source_path(): unsupported return type "NodePath".
  static final Pointer<Void> _mb_set_monitorable =
      resolveMethodBind('Area3D', 'set_monitorable', 2586408642);

  void setMonitorable(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_monitorable, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_monitorable =
      resolveMethodBind('Area3D', 'is_monitorable', 36873697);

  bool isMonitorable() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_monitorable, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_monitoring =
      resolveMethodBind('Area3D', 'set_monitoring', 2586408642);

  void setMonitoring(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_monitoring, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_monitoring =
      resolveMethodBind('Area3D', 'is_monitoring', 36873697);

  bool isMonitoring() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_monitoring, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  // Skipped get_overlapping_bodies(): unsupported return type "typedarray::Node3D".
  // Skipped get_overlapping_areas(): unsupported return type "typedarray::Area3D".
  static final Pointer<Void> _mb_has_overlapping_bodies =
      resolveMethodBind('Area3D', 'has_overlapping_bodies', 36873697);

  bool hasOverlappingBodies() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_has_overlapping_bodies, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_has_overlapping_areas =
      resolveMethodBind('Area3D', 'has_overlapping_areas', 36873697);

  bool hasOverlappingAreas() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_has_overlapping_areas, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_overlaps_body =
      resolveMethodBind('Area3D', 'overlaps_body', 3093956946);

  bool overlapsBody(Node body) {
    final arg0 = malloc<Pointer<Void>>()..value = body.nativePtr;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_overlaps_body, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_overlaps_area =
      resolveMethodBind('Area3D', 'overlaps_area', 3093956946);

  bool overlapsArea(Node area) {
    final arg0 = malloc<Pointer<Void>>()..value = area.nativePtr;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_overlaps_area, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_audio_bus_override =
      resolveMethodBind('Area3D', 'set_audio_bus_override', 2586408642);

  void setAudioBusOverride(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_audio_bus_override, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_overriding_audio_bus =
      resolveMethodBind('Area3D', 'is_overriding_audio_bus', 36873697);

  bool isOverridingAudioBus() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_overriding_audio_bus, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_audio_bus_name =
      resolveMethodBind('Area3D', 'set_audio_bus_name', 3304788590);

  void setAudioBusName(String name) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), name);
    try {
      ptrcallVoid(_mb_set_audio_bus_name, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_audio_bus_name =
      resolveMethodBind('Area3D', 'get_audio_bus_name', 2002593661);

  String getAudioBusName() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_audio_bus_name, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readStringName(ret.cast());
        BuiltinMarshal.destroyStringName(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_use_reverb_bus =
      resolveMethodBind('Area3D', 'set_use_reverb_bus', 2586408642);

  void setUseReverbBus(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_use_reverb_bus, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_using_reverb_bus =
      resolveMethodBind('Area3D', 'is_using_reverb_bus', 36873697);

  bool isUsingReverbBus() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_using_reverb_bus, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_reverb_bus_name =
      resolveMethodBind('Area3D', 'set_reverb_bus_name', 3304788590);

  void setReverbBusName(String name) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), name);
    try {
      ptrcallVoid(_mb_set_reverb_bus_name, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_reverb_bus_name =
      resolveMethodBind('Area3D', 'get_reverb_bus_name', 2002593661);

  String getReverbBusName() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_reverb_bus_name, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readStringName(ret.cast());
        BuiltinMarshal.destroyStringName(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_reverb_amount =
      resolveMethodBind('Area3D', 'set_reverb_amount', 373806689);

  void setReverbAmount(double amount) {
    final arg0 = malloc<Double>()..value = amount;
    try {
      ptrcallVoid(_mb_set_reverb_amount, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_reverb_amount =
      resolveMethodBind('Area3D', 'get_reverb_amount', 1740695150);

  double getReverbAmount() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_reverb_amount, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_reverb_uniformity =
      resolveMethodBind('Area3D', 'set_reverb_uniformity', 373806689);

  void setReverbUniformity(double amount) {
    final arg0 = malloc<Double>()..value = amount;
    try {
      ptrcallVoid(_mb_set_reverb_uniformity, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_reverb_uniformity =
      resolveMethodBind('Area3D', 'get_reverb_uniformity', 1740695150);

  double getReverbUniformity() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_reverb_uniformity, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
