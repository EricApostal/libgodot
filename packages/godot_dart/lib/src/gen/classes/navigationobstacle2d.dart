// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class NavigationObstacle2D extends Node2D {
  NavigationObstacle2D(super.nativePtr);

  /// Constructs a brand-new engine-owned NavigationObstacle2D instance
  /// (via classdb_construct_object3), not an existing one.
  factory NavigationObstacle2D.create() {
    return NavigationObstacle2D(resolveClassConstructor('NavigationObstacle2D'));
  }

  // Skipped get_rid(): unsupported return type "RID".
  static final Pointer<Void> _mb_set_avoidance_enabled =
      resolveMethodBind('NavigationObstacle2D', 'set_avoidance_enabled', 2586408642);

  void setAvoidanceEnabled(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_avoidance_enabled, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_avoidance_enabled =
      resolveMethodBind('NavigationObstacle2D', 'get_avoidance_enabled', 36873697);

  bool getAvoidanceEnabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_avoidance_enabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  // Skipped set_navigation_map(): an argument type is unsupported.
  // Skipped get_navigation_map(): unsupported return type "RID".
  static final Pointer<Void> _mb_set_radius =
      resolveMethodBind('NavigationObstacle2D', 'set_radius', 373806689);

  void setRadius(double radius) {
    final arg0 = malloc<Double>()..value = radius;
    try {
      ptrcallVoid(_mb_set_radius, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_radius =
      resolveMethodBind('NavigationObstacle2D', 'get_radius', 1740695150);

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

  static final Pointer<Void> _mb_set_velocity =
      resolveMethodBind('NavigationObstacle2D', 'set_velocity', 743155724);

  void setVelocity(Vector2 velocity) {
    final arg0 = malloc<Uint8>(Vector2.nativeSize);
    velocity.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_velocity, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_velocity =
      resolveMethodBind('NavigationObstacle2D', 'get_velocity', 3341600327);

  Vector2 getVelocity() {
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_velocity, nativePtr, [], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  // Skipped set_vertices(): an argument type is unsupported.
  // Skipped get_vertices(): unsupported return type "PackedVector2Array".
  static final Pointer<Void> _mb_set_avoidance_layers =
      resolveMethodBind('NavigationObstacle2D', 'set_avoidance_layers', 1286410249);

  void setAvoidanceLayers(int layers) {
    final arg0 = malloc<Int64>()..value = layers;
    try {
      ptrcallVoid(_mb_set_avoidance_layers, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_avoidance_layers =
      resolveMethodBind('NavigationObstacle2D', 'get_avoidance_layers', 3905245786);

  int getAvoidanceLayers() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_avoidance_layers, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_avoidance_layer_value =
      resolveMethodBind('NavigationObstacle2D', 'set_avoidance_layer_value', 300928843);

  void setAvoidanceLayerValue(int layerNumber, bool value) {
    final arg0 = malloc<Int64>()..value = layerNumber;
    final arg1 = malloc<Uint8>()..value = value ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_avoidance_layer_value, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_avoidance_layer_value =
      resolveMethodBind('NavigationObstacle2D', 'get_avoidance_layer_value', 1116898809);

  bool getAvoidanceLayerValue(int layerNumber) {
    final arg0 = malloc<Int64>()..value = layerNumber;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_avoidance_layer_value, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_affect_navigation_mesh =
      resolveMethodBind('NavigationObstacle2D', 'set_affect_navigation_mesh', 2586408642);

  void setAffectNavigationMesh(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_affect_navigation_mesh, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_affect_navigation_mesh =
      resolveMethodBind('NavigationObstacle2D', 'get_affect_navigation_mesh', 36873697);

  bool getAffectNavigationMesh() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_affect_navigation_mesh, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_carve_navigation_mesh =
      resolveMethodBind('NavigationObstacle2D', 'set_carve_navigation_mesh', 2586408642);

  void setCarveNavigationMesh(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_carve_navigation_mesh, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_carve_navigation_mesh =
      resolveMethodBind('NavigationObstacle2D', 'get_carve_navigation_mesh', 36873697);

  bool getCarveNavigationMesh() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_carve_navigation_mesh, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
