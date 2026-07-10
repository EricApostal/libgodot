// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class CSGPolygon3D extends CSGPrimitive3D {
  CSGPolygon3D(super.nativePtr);

  // Skipped set_polygon(): an argument type is unsupported.
  // Skipped get_polygon(): unsupported return type "PackedVector2Array".
  static final Pointer<Void> _mb_set_mode =
      resolveMethodBind('CSGPolygon3D', 'set_mode', 3158377035);

  void setMode(int mode) {
    final arg0 = malloc<Int64>()..value = mode;
    try {
      ptrcallVoid(_mb_set_mode, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_mode =
      resolveMethodBind('CSGPolygon3D', 'get_mode', 1201612222);

  int getMode() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_mode, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_depth =
      resolveMethodBind('CSGPolygon3D', 'set_depth', 373806689);

  void setDepth(double depth) {
    final arg0 = malloc<Double>()..value = depth;
    try {
      ptrcallVoid(_mb_set_depth, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_depth =
      resolveMethodBind('CSGPolygon3D', 'get_depth', 1740695150);

  double getDepth() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_depth, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_spin_degrees =
      resolveMethodBind('CSGPolygon3D', 'set_spin_degrees', 373806689);

  void setSpinDegrees(double degrees) {
    final arg0 = malloc<Double>()..value = degrees;
    try {
      ptrcallVoid(_mb_set_spin_degrees, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_spin_degrees =
      resolveMethodBind('CSGPolygon3D', 'get_spin_degrees', 1740695150);

  double getSpinDegrees() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_spin_degrees, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_spin_sides =
      resolveMethodBind('CSGPolygon3D', 'set_spin_sides', 1286410249);

  void setSpinSides(int spinSides) {
    final arg0 = malloc<Int64>()..value = spinSides;
    try {
      ptrcallVoid(_mb_set_spin_sides, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_spin_sides =
      resolveMethodBind('CSGPolygon3D', 'get_spin_sides', 3905245786);

  int getSpinSides() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_spin_sides, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  // Skipped set_path_node(): an argument type is unsupported.
  // Skipped get_path_node(): unsupported return type "NodePath".
  static final Pointer<Void> _mb_set_path_interval_type =
      resolveMethodBind('CSGPolygon3D', 'set_path_interval_type', 3744240707);

  void setPathIntervalType(int intervalType) {
    final arg0 = malloc<Int64>()..value = intervalType;
    try {
      ptrcallVoid(_mb_set_path_interval_type, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_path_interval_type =
      resolveMethodBind('CSGPolygon3D', 'get_path_interval_type', 3434618397);

  int getPathIntervalType() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_path_interval_type, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_path_interval =
      resolveMethodBind('CSGPolygon3D', 'set_path_interval', 373806689);

  void setPathInterval(double interval) {
    final arg0 = malloc<Double>()..value = interval;
    try {
      ptrcallVoid(_mb_set_path_interval, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_path_interval =
      resolveMethodBind('CSGPolygon3D', 'get_path_interval', 1740695150);

  double getPathInterval() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_path_interval, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_path_simplify_angle =
      resolveMethodBind('CSGPolygon3D', 'set_path_simplify_angle', 373806689);

  void setPathSimplifyAngle(double degrees) {
    final arg0 = malloc<Double>()..value = degrees;
    try {
      ptrcallVoid(_mb_set_path_simplify_angle, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_path_simplify_angle =
      resolveMethodBind('CSGPolygon3D', 'get_path_simplify_angle', 1740695150);

  double getPathSimplifyAngle() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_path_simplify_angle, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_path_rotation =
      resolveMethodBind('CSGPolygon3D', 'set_path_rotation', 1412947288);

  void setPathRotation(int pathRotation) {
    final arg0 = malloc<Int64>()..value = pathRotation;
    try {
      ptrcallVoid(_mb_set_path_rotation, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_path_rotation =
      resolveMethodBind('CSGPolygon3D', 'get_path_rotation', 647219346);

  int getPathRotation() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_path_rotation, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_path_rotation_accurate =
      resolveMethodBind('CSGPolygon3D', 'set_path_rotation_accurate', 2586408642);

  void setPathRotationAccurate(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_path_rotation_accurate, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_path_rotation_accurate =
      resolveMethodBind('CSGPolygon3D', 'get_path_rotation_accurate', 36873697);

  bool getPathRotationAccurate() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_path_rotation_accurate, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_path_local =
      resolveMethodBind('CSGPolygon3D', 'set_path_local', 2586408642);

  void setPathLocal(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_path_local, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_path_local =
      resolveMethodBind('CSGPolygon3D', 'is_path_local', 36873697);

  bool isPathLocal() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_path_local, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_path_continuous_u =
      resolveMethodBind('CSGPolygon3D', 'set_path_continuous_u', 2586408642);

  void setPathContinuousU(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_path_continuous_u, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_path_continuous_u =
      resolveMethodBind('CSGPolygon3D', 'is_path_continuous_u', 36873697);

  bool isPathContinuousU() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_path_continuous_u, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_path_u_distance =
      resolveMethodBind('CSGPolygon3D', 'set_path_u_distance', 373806689);

  void setPathUDistance(double distance) {
    final arg0 = malloc<Double>()..value = distance;
    try {
      ptrcallVoid(_mb_set_path_u_distance, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_path_u_distance =
      resolveMethodBind('CSGPolygon3D', 'get_path_u_distance', 1740695150);

  double getPathUDistance() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_path_u_distance, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_path_joined =
      resolveMethodBind('CSGPolygon3D', 'set_path_joined', 2586408642);

  void setPathJoined(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_path_joined, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_path_joined =
      resolveMethodBind('CSGPolygon3D', 'is_path_joined', 36873697);

  bool isPathJoined() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_path_joined, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_material =
      resolveMethodBind('CSGPolygon3D', 'set_material', 2757459619);

  void setMaterial(Material material) {
    final arg0 = malloc<Pointer<Void>>()..value = material.nativePtr;
    try {
      ptrcallVoid(_mb_set_material, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_material =
      resolveMethodBind('CSGPolygon3D', 'get_material', 5934680);

  Material? getMaterial() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_material, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Material(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_smooth_faces =
      resolveMethodBind('CSGPolygon3D', 'set_smooth_faces', 2586408642);

  void setSmoothFaces(bool smoothFaces) {
    final arg0 = malloc<Uint8>()..value = smoothFaces ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_smooth_faces, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_smooth_faces =
      resolveMethodBind('CSGPolygon3D', 'get_smooth_faces', 36873697);

  bool getSmoothFaces() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_smooth_faces, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
