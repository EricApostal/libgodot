// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class CSGTorus3D extends CSGPrimitive3D {
  CSGTorus3D(super.nativePtr);

  static final Pointer<Void> _mb_set_inner_radius =
      resolveMethodBind('CSGTorus3D', 'set_inner_radius', 373806689);

  void setInnerRadius(double radius) {
    final arg0 = malloc<Double>()..value = radius;
    try {
      ptrcallVoid(_mb_set_inner_radius, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_inner_radius =
      resolveMethodBind('CSGTorus3D', 'get_inner_radius', 1740695150);

  double getInnerRadius() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_inner_radius, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_outer_radius =
      resolveMethodBind('CSGTorus3D', 'set_outer_radius', 373806689);

  void setOuterRadius(double radius) {
    final arg0 = malloc<Double>()..value = radius;
    try {
      ptrcallVoid(_mb_set_outer_radius, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_outer_radius =
      resolveMethodBind('CSGTorus3D', 'get_outer_radius', 1740695150);

  double getOuterRadius() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_outer_radius, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_sides =
      resolveMethodBind('CSGTorus3D', 'set_sides', 1286410249);

  void setSides(int sides) {
    final arg0 = malloc<Int64>()..value = sides;
    try {
      ptrcallVoid(_mb_set_sides, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_sides =
      resolveMethodBind('CSGTorus3D', 'get_sides', 3905245786);

  int getSides() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_sides, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_ring_sides =
      resolveMethodBind('CSGTorus3D', 'set_ring_sides', 1286410249);

  void setRingSides(int sides) {
    final arg0 = malloc<Int64>()..value = sides;
    try {
      ptrcallVoid(_mb_set_ring_sides, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_ring_sides =
      resolveMethodBind('CSGTorus3D', 'get_ring_sides', 3905245786);

  int getRingSides() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_ring_sides, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_material =
      resolveMethodBind('CSGTorus3D', 'set_material', 2757459619);

  void setMaterial(Material material) {
    final arg0 = malloc<Pointer<Void>>()..value = material.nativePtr;
    try {
      ptrcallVoid(_mb_set_material, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_material =
      resolveMethodBind('CSGTorus3D', 'get_material', 5934680);

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
      resolveMethodBind('CSGTorus3D', 'set_smooth_faces', 2586408642);

  void setSmoothFaces(bool smoothFaces) {
    final arg0 = malloc<Uint8>()..value = smoothFaces ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_smooth_faces, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_smooth_faces =
      resolveMethodBind('CSGTorus3D', 'get_smooth_faces', 36873697);

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
