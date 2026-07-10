// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class CylinderMesh extends PrimitiveMesh {
  CylinderMesh(super.nativePtr);

  /// Constructs a brand-new engine-owned CylinderMesh instance
  /// (via classdb_construct_object3), not an existing one.
  factory CylinderMesh.create() {
    return CylinderMesh(resolveClassConstructor('CylinderMesh'));
  }

  static final Pointer<Void> _mb_set_top_radius =
      resolveMethodBind('CylinderMesh', 'set_top_radius', 373806689);

  void setTopRadius(double radius) {
    final arg0 = malloc<Double>()..value = radius;
    try {
      ptrcallVoid(_mb_set_top_radius, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_top_radius =
      resolveMethodBind('CylinderMesh', 'get_top_radius', 1740695150);

  double getTopRadius() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_top_radius, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_bottom_radius =
      resolveMethodBind('CylinderMesh', 'set_bottom_radius', 373806689);

  void setBottomRadius(double radius) {
    final arg0 = malloc<Double>()..value = radius;
    try {
      ptrcallVoid(_mb_set_bottom_radius, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_bottom_radius =
      resolveMethodBind('CylinderMesh', 'get_bottom_radius', 1740695150);

  double getBottomRadius() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_bottom_radius, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_height =
      resolveMethodBind('CylinderMesh', 'set_height', 373806689);

  void setHeight(double height) {
    final arg0 = malloc<Double>()..value = height;
    try {
      ptrcallVoid(_mb_set_height, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_height =
      resolveMethodBind('CylinderMesh', 'get_height', 1740695150);

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

  static final Pointer<Void> _mb_set_radial_segments =
      resolveMethodBind('CylinderMesh', 'set_radial_segments', 1286410249);

  void setRadialSegments(int segments) {
    final arg0 = malloc<Int64>()..value = segments;
    try {
      ptrcallVoid(_mb_set_radial_segments, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_radial_segments =
      resolveMethodBind('CylinderMesh', 'get_radial_segments', 3905245786);

  int getRadialSegments() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_radial_segments, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_rings =
      resolveMethodBind('CylinderMesh', 'set_rings', 1286410249);

  void setRings(int rings) {
    final arg0 = malloc<Int64>()..value = rings;
    try {
      ptrcallVoid(_mb_set_rings, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_rings =
      resolveMethodBind('CylinderMesh', 'get_rings', 3905245786);

  int getRings() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_rings, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_cap_top =
      resolveMethodBind('CylinderMesh', 'set_cap_top', 2586408642);

  void setCapTop(bool capTop) {
    final arg0 = malloc<Uint8>()..value = capTop ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_cap_top, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_cap_top =
      resolveMethodBind('CylinderMesh', 'is_cap_top', 36873697);

  bool isCapTop() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_cap_top, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_cap_bottom =
      resolveMethodBind('CylinderMesh', 'set_cap_bottom', 2586408642);

  void setCapBottom(bool capBottom) {
    final arg0 = malloc<Uint8>()..value = capBottom ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_cap_bottom, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_cap_bottom =
      resolveMethodBind('CylinderMesh', 'is_cap_bottom', 36873697);

  bool isCapBottom() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_cap_bottom, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
