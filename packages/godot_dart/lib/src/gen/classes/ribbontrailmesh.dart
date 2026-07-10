// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class RibbonTrailMesh extends PrimitiveMesh {
  RibbonTrailMesh(super.nativePtr);

  /// Constructs a brand-new engine-owned RibbonTrailMesh instance
  /// (via classdb_construct_object3), not an existing one.
  factory RibbonTrailMesh.create() {
    return RibbonTrailMesh(resolveClassConstructor('RibbonTrailMesh'));
  }

  static final Pointer<Void> _mb_set_size =
      resolveMethodBind('RibbonTrailMesh', 'set_size', 373806689);

  void setSize(double size) {
    final arg0 = malloc<Double>()..value = size;
    try {
      ptrcallVoid(_mb_set_size, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_size =
      resolveMethodBind('RibbonTrailMesh', 'get_size', 1740695150);

  double getSize() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_size, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_sections =
      resolveMethodBind('RibbonTrailMesh', 'set_sections', 1286410249);

  void setSections(int sections) {
    final arg0 = malloc<Int64>()..value = sections;
    try {
      ptrcallVoid(_mb_set_sections, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_sections =
      resolveMethodBind('RibbonTrailMesh', 'get_sections', 3905245786);

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
      resolveMethodBind('RibbonTrailMesh', 'set_section_length', 373806689);

  void setSectionLength(double sectionLength) {
    final arg0 = malloc<Double>()..value = sectionLength;
    try {
      ptrcallVoid(_mb_set_section_length, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_section_length =
      resolveMethodBind('RibbonTrailMesh', 'get_section_length', 1740695150);

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

  static final Pointer<Void> _mb_set_section_segments =
      resolveMethodBind('RibbonTrailMesh', 'set_section_segments', 1286410249);

  void setSectionSegments(int sectionSegments) {
    final arg0 = malloc<Int64>()..value = sectionSegments;
    try {
      ptrcallVoid(_mb_set_section_segments, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_section_segments =
      resolveMethodBind('RibbonTrailMesh', 'get_section_segments', 3905245786);

  int getSectionSegments() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_section_segments, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_curve =
      resolveMethodBind('RibbonTrailMesh', 'set_curve', 270443179);

  void setCurve(Curve curve) {
    final arg0 = malloc<Pointer<Void>>()..value = curve.nativePtr;
    try {
      ptrcallVoid(_mb_set_curve, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_curve =
      resolveMethodBind('RibbonTrailMesh', 'get_curve', 2460114913);

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

  static final Pointer<Void> _mb_set_shape =
      resolveMethodBind('RibbonTrailMesh', 'set_shape', 1684440262);

  void setShape(int shape) {
    final arg0 = malloc<Int64>()..value = shape;
    try {
      ptrcallVoid(_mb_set_shape, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_shape =
      resolveMethodBind('RibbonTrailMesh', 'get_shape', 1317484155);

  int getShape() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_shape, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
