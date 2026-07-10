// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class NavigationObstacle3D extends Node3D {
  NavigationObstacle3D(super.nativePtr);

  /// Constructs a brand-new engine-owned NavigationObstacle3D instance
  /// (via classdb_construct_object3), not an existing one.
  factory NavigationObstacle3D.create() {
    return NavigationObstacle3D(resolveClassConstructor('NavigationObstacle3D'));
  }

  // Skipped get_rid(): unsupported return type "RID".
  static final Pointer<Void> _mb_set_avoidance_enabled =
      resolveMethodBind('NavigationObstacle3D', 'set_avoidance_enabled', 2586408642);

  void setAvoidanceEnabled(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_avoidance_enabled, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_avoidance_enabled =
      resolveMethodBind('NavigationObstacle3D', 'get_avoidance_enabled', 36873697);

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
      resolveMethodBind('NavigationObstacle3D', 'set_radius', 373806689);

  void setRadius(double radius) {
    final arg0 = malloc<Double>()..value = radius;
    try {
      ptrcallVoid(_mb_set_radius, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_radius =
      resolveMethodBind('NavigationObstacle3D', 'get_radius', 1740695150);

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

  static final Pointer<Void> _mb_set_height =
      resolveMethodBind('NavigationObstacle3D', 'set_height', 373806689);

  void setHeight(double height) {
    final arg0 = malloc<Double>()..value = height;
    try {
      ptrcallVoid(_mb_set_height, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_height =
      resolveMethodBind('NavigationObstacle3D', 'get_height', 1740695150);

  double getHeight() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_height, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_velocity =
      resolveMethodBind('NavigationObstacle3D', 'set_velocity', 3460891852);

  void setVelocity(Vector3 velocity) {
    final arg0 = malloc<Uint8>(Vector3.nativeSize);
    velocity.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_velocity, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_velocity =
      resolveMethodBind('NavigationObstacle3D', 'get_velocity', 3360562783);

  Vector3 getVelocity() {
    try {
      final ret = malloc<Uint8>(Vector3.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_velocity, nativePtr, [], ret.cast());
        return Vector3.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  // Skipped set_vertices(): an argument type is unsupported.
  // Skipped get_vertices(): unsupported return type "PackedVector3Array".
  static final Pointer<Void> _mb_set_avoidance_layers =
      resolveMethodBind('NavigationObstacle3D', 'set_avoidance_layers', 1286410249);

  void setAvoidanceLayers(int layers) {
    final arg0 = malloc<Int64>()..value = layers;
    try {
      ptrcallVoid(_mb_set_avoidance_layers, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_avoidance_layers =
      resolveMethodBind('NavigationObstacle3D', 'get_avoidance_layers', 3905245786);

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
      resolveMethodBind('NavigationObstacle3D', 'set_avoidance_layer_value', 300928843);

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
      resolveMethodBind('NavigationObstacle3D', 'get_avoidance_layer_value', 1116898809);

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

  static final Pointer<Void> _mb_set_use_3d_avoidance =
      resolveMethodBind('NavigationObstacle3D', 'set_use_3d_avoidance', 2586408642);

  void setUse3dAvoidance(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_use_3d_avoidance, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_use_3d_avoidance =
      resolveMethodBind('NavigationObstacle3D', 'get_use_3d_avoidance', 36873697);

  bool getUse3dAvoidance() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_use_3d_avoidance, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_affect_navigation_mesh =
      resolveMethodBind('NavigationObstacle3D', 'set_affect_navigation_mesh', 2586408642);

  void setAffectNavigationMesh(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_affect_navigation_mesh, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_affect_navigation_mesh =
      resolveMethodBind('NavigationObstacle3D', 'get_affect_navigation_mesh', 36873697);

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
      resolveMethodBind('NavigationObstacle3D', 'set_carve_navigation_mesh', 2586408642);

  void setCarveNavigationMesh(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_carve_navigation_mesh, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_carve_navigation_mesh =
      resolveMethodBind('NavigationObstacle3D', 'get_carve_navigation_mesh', 36873697);

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
