// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class Area2D extends CollisionObject2D {
  Area2D(super.nativePtr);

  static final Pointer<Void> _mb_set_gravity_space_override_mode =
      resolveMethodBind('Area2D', 'set_gravity_space_override_mode', 2879900038);

  void setGravitySpaceOverrideMode(int spaceOverrideMode) {
    final arg0 = malloc<Int64>()..value = spaceOverrideMode;
    try {
      ptrcallVoid(_mb_set_gravity_space_override_mode, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_gravity_space_override_mode =
      resolveMethodBind('Area2D', 'get_gravity_space_override_mode', 3990256304);

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
      resolveMethodBind('Area2D', 'set_gravity_is_point', 2586408642);

  void setGravityIsPoint(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_gravity_is_point, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_gravity_a_point =
      resolveMethodBind('Area2D', 'is_gravity_a_point', 36873697);

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
      resolveMethodBind('Area2D', 'set_gravity_point_unit_distance', 373806689);

  void setGravityPointUnitDistance(double distanceScale) {
    final arg0 = malloc<Double>()..value = distanceScale;
    try {
      ptrcallVoid(_mb_set_gravity_point_unit_distance, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_gravity_point_unit_distance =
      resolveMethodBind('Area2D', 'get_gravity_point_unit_distance', 1740695150);

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
      resolveMethodBind('Area2D', 'set_gravity_point_center', 743155724);

  void setGravityPointCenter(Vector2 center) {
    final arg0 = malloc<Uint8>(Vector2.nativeSize);
    center.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_gravity_point_center, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_gravity_point_center =
      resolveMethodBind('Area2D', 'get_gravity_point_center', 3341600327);

  Vector2 getGravityPointCenter() {
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_gravity_point_center, nativePtr, [], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_gravity_direction =
      resolveMethodBind('Area2D', 'set_gravity_direction', 743155724);

  void setGravityDirection(Vector2 direction) {
    final arg0 = malloc<Uint8>(Vector2.nativeSize);
    direction.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_gravity_direction, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_gravity_direction =
      resolveMethodBind('Area2D', 'get_gravity_direction', 3341600327);

  Vector2 getGravityDirection() {
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_gravity_direction, nativePtr, [], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_gravity =
      resolveMethodBind('Area2D', 'set_gravity', 373806689);

  void setGravity(double gravity) {
    final arg0 = malloc<Double>()..value = gravity;
    try {
      ptrcallVoid(_mb_set_gravity, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_gravity =
      resolveMethodBind('Area2D', 'get_gravity', 1740695150);

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
      resolveMethodBind('Area2D', 'set_linear_damp_space_override_mode', 2879900038);

  void setLinearDampSpaceOverrideMode(int spaceOverrideMode) {
    final arg0 = malloc<Int64>()..value = spaceOverrideMode;
    try {
      ptrcallVoid(_mb_set_linear_damp_space_override_mode, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_linear_damp_space_override_mode =
      resolveMethodBind('Area2D', 'get_linear_damp_space_override_mode', 3990256304);

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
      resolveMethodBind('Area2D', 'set_angular_damp_space_override_mode', 2879900038);

  void setAngularDampSpaceOverrideMode(int spaceOverrideMode) {
    final arg0 = malloc<Int64>()..value = spaceOverrideMode;
    try {
      ptrcallVoid(_mb_set_angular_damp_space_override_mode, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_angular_damp_space_override_mode =
      resolveMethodBind('Area2D', 'get_angular_damp_space_override_mode', 3990256304);

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

  static final Pointer<Void> _mb_set_linear_damp =
      resolveMethodBind('Area2D', 'set_linear_damp', 373806689);

  void setLinearDamp(double linearDamp) {
    final arg0 = malloc<Double>()..value = linearDamp;
    try {
      ptrcallVoid(_mb_set_linear_damp, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_linear_damp =
      resolveMethodBind('Area2D', 'get_linear_damp', 1740695150);

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

  static final Pointer<Void> _mb_set_angular_damp =
      resolveMethodBind('Area2D', 'set_angular_damp', 373806689);

  void setAngularDamp(double angularDamp) {
    final arg0 = malloc<Double>()..value = angularDamp;
    try {
      ptrcallVoid(_mb_set_angular_damp, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_angular_damp =
      resolveMethodBind('Area2D', 'get_angular_damp', 1740695150);

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

  static final Pointer<Void> _mb_set_priority =
      resolveMethodBind('Area2D', 'set_priority', 1286410249);

  void setPriority(int priority) {
    final arg0 = malloc<Int64>()..value = priority;
    try {
      ptrcallVoid(_mb_set_priority, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_priority =
      resolveMethodBind('Area2D', 'get_priority', 3905245786);

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

  static final Pointer<Void> _mb_set_monitoring =
      resolveMethodBind('Area2D', 'set_monitoring', 2586408642);

  void setMonitoring(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_monitoring, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_monitoring =
      resolveMethodBind('Area2D', 'is_monitoring', 36873697);

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

  static final Pointer<Void> _mb_set_monitorable =
      resolveMethodBind('Area2D', 'set_monitorable', 2586408642);

  void setMonitorable(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_monitorable, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_monitorable =
      resolveMethodBind('Area2D', 'is_monitorable', 36873697);

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

  // Skipped get_overlapping_bodies(): unsupported return type "typedarray::Node2D".
  // Skipped get_overlapping_areas(): unsupported return type "typedarray::Area2D".
  static final Pointer<Void> _mb_has_overlapping_bodies =
      resolveMethodBind('Area2D', 'has_overlapping_bodies', 36873697);

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
      resolveMethodBind('Area2D', 'has_overlapping_areas', 36873697);

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
      resolveMethodBind('Area2D', 'overlaps_body', 3093956946);

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
      resolveMethodBind('Area2D', 'overlaps_area', 3093956946);

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

  static final Pointer<Void> _mb_set_audio_bus_name =
      resolveMethodBind('Area2D', 'set_audio_bus_name', 3304788590);

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
      resolveMethodBind('Area2D', 'get_audio_bus_name', 2002593661);

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

  static final Pointer<Void> _mb_set_audio_bus_override =
      resolveMethodBind('Area2D', 'set_audio_bus_override', 2586408642);

  void setAudioBusOverride(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_audio_bus_override, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_overriding_audio_bus =
      resolveMethodBind('Area2D', 'is_overriding_audio_bus', 36873697);

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

}
