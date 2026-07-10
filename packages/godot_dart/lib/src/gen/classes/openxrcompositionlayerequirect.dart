// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class OpenXRCompositionLayerEquirect extends OpenXRCompositionLayer {
  OpenXRCompositionLayerEquirect(super.nativePtr);

  /// Constructs a brand-new engine-owned OpenXRCompositionLayerEquirect instance
  /// (via classdb_construct_object3), not an existing one.
  factory OpenXRCompositionLayerEquirect.create() {
    return OpenXRCompositionLayerEquirect(resolveClassConstructor('OpenXRCompositionLayerEquirect'));
  }

  static final Pointer<Void> _mb_set_radius =
      resolveMethodBind('OpenXRCompositionLayerEquirect', 'set_radius', 373806689);

  void setRadius(double radius) {
    final arg0 = malloc<Double>()..value = radius;
    try {
      ptrcallVoid(_mb_set_radius, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_radius =
      resolveMethodBind('OpenXRCompositionLayerEquirect', 'get_radius', 1740695150);

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

  static final Pointer<Void> _mb_set_central_horizontal_angle =
      resolveMethodBind('OpenXRCompositionLayerEquirect', 'set_central_horizontal_angle', 373806689);

  void setCentralHorizontalAngle(double angle) {
    final arg0 = malloc<Double>()..value = angle;
    try {
      ptrcallVoid(_mb_set_central_horizontal_angle, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_central_horizontal_angle =
      resolveMethodBind('OpenXRCompositionLayerEquirect', 'get_central_horizontal_angle', 1740695150);

  double getCentralHorizontalAngle() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_central_horizontal_angle, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_upper_vertical_angle =
      resolveMethodBind('OpenXRCompositionLayerEquirect', 'set_upper_vertical_angle', 373806689);

  void setUpperVerticalAngle(double angle) {
    final arg0 = malloc<Double>()..value = angle;
    try {
      ptrcallVoid(_mb_set_upper_vertical_angle, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_upper_vertical_angle =
      resolveMethodBind('OpenXRCompositionLayerEquirect', 'get_upper_vertical_angle', 1740695150);

  double getUpperVerticalAngle() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_upper_vertical_angle, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_lower_vertical_angle =
      resolveMethodBind('OpenXRCompositionLayerEquirect', 'set_lower_vertical_angle', 373806689);

  void setLowerVerticalAngle(double angle) {
    final arg0 = malloc<Double>()..value = angle;
    try {
      ptrcallVoid(_mb_set_lower_vertical_angle, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_lower_vertical_angle =
      resolveMethodBind('OpenXRCompositionLayerEquirect', 'get_lower_vertical_angle', 1740695150);

  double getLowerVerticalAngle() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_lower_vertical_angle, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_fallback_segments =
      resolveMethodBind('OpenXRCompositionLayerEquirect', 'set_fallback_segments', 1286410249);

  void setFallbackSegments(int segments) {
    final arg0 = malloc<Int64>()..value = segments;
    try {
      ptrcallVoid(_mb_set_fallback_segments, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_fallback_segments =
      resolveMethodBind('OpenXRCompositionLayerEquirect', 'get_fallback_segments', 3905245786);

  int getFallbackSegments() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_fallback_segments, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
