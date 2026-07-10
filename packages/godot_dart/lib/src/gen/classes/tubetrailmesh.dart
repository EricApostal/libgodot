// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class TubeTrailMesh extends PrimitiveMesh {
  TubeTrailMesh(super.nativePtr);

  /// Constructs a brand-new engine-owned TubeTrailMesh instance
  /// (via classdb_construct_object3), not an existing one.
  factory TubeTrailMesh.create() {
    return TubeTrailMesh(resolveClassConstructor('TubeTrailMesh'));
  }

  static final Pointer<Void> _mb_set_radius =
      resolveMethodBind('TubeTrailMesh', 'set_radius', 373806689);

  void setRadius(double radius) {
    final arg0 = malloc<Double>()..value = radius;
    try {
      ptrcallVoid(_mb_set_radius, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_radius =
      resolveMethodBind('TubeTrailMesh', 'get_radius', 1740695150);

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

  static final Pointer<Void> _mb_set_radial_steps =
      resolveMethodBind('TubeTrailMesh', 'set_radial_steps', 1286410249);

  void setRadialSteps(int radialSteps) {
    final arg0 = malloc<Int64>()..value = radialSteps;
    try {
      ptrcallVoid(_mb_set_radial_steps, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_radial_steps =
      resolveMethodBind('TubeTrailMesh', 'get_radial_steps', 3905245786);

  int getRadialSteps() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_radial_steps, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_sections =
      resolveMethodBind('TubeTrailMesh', 'set_sections', 1286410249);

  void setSections(int sections) {
    final arg0 = malloc<Int64>()..value = sections;
    try {
      ptrcallVoid(_mb_set_sections, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_sections =
      resolveMethodBind('TubeTrailMesh', 'get_sections', 3905245786);

  int getSections() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_sections, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_section_length =
      resolveMethodBind('TubeTrailMesh', 'set_section_length', 373806689);

  void setSectionLength(double sectionLength) {
    final arg0 = malloc<Double>()..value = sectionLength;
    try {
      ptrcallVoid(_mb_set_section_length, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_section_length =
      resolveMethodBind('TubeTrailMesh', 'get_section_length', 1740695150);

  double getSectionLength() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_section_length, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_section_rings =
      resolveMethodBind('TubeTrailMesh', 'set_section_rings', 1286410249);

  void setSectionRings(int sectionRings) {
    final arg0 = malloc<Int64>()..value = sectionRings;
    try {
      ptrcallVoid(_mb_set_section_rings, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_section_rings =
      resolveMethodBind('TubeTrailMesh', 'get_section_rings', 3905245786);

  int getSectionRings() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_section_rings, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_cap_top =
      resolveMethodBind('TubeTrailMesh', 'set_cap_top', 2586408642);

  void setCapTop(bool capTop) {
    final arg0 = malloc<Uint8>()..value = capTop ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_cap_top, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_cap_top =
      resolveMethodBind('TubeTrailMesh', 'is_cap_top', 36873697);

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
      resolveMethodBind('TubeTrailMesh', 'set_cap_bottom', 2586408642);

  void setCapBottom(bool capBottom) {
    final arg0 = malloc<Uint8>()..value = capBottom ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_cap_bottom, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_cap_bottom =
      resolveMethodBind('TubeTrailMesh', 'is_cap_bottom', 36873697);

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

  static final Pointer<Void> _mb_set_curve =
      resolveMethodBind('TubeTrailMesh', 'set_curve', 270443179);

  void setCurve(Curve curve) {
    final arg0 = malloc<Pointer<Void>>()..value = curve.nativePtr;
    try {
      ptrcallVoid(_mb_set_curve, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_curve =
      resolveMethodBind('TubeTrailMesh', 'get_curve', 2460114913);

  Curve? getCurve() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_curve, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Curve(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
