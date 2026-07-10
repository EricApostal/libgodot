// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class OpenXRCompositionLayerCylinder extends OpenXRCompositionLayer {
  OpenXRCompositionLayerCylinder(super.nativePtr);

  static final Pointer<Void> _mb_set_radius =
      resolveMethodBind('OpenXRCompositionLayerCylinder', 'set_radius', 373806689);

  void setRadius(double radius) {
    final arg0 = malloc<Double>()..value = radius;
    try {
      ptrcallVoid(_mb_set_radius, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_radius =
      resolveMethodBind('OpenXRCompositionLayerCylinder', 'get_radius', 1740695150);

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

  static final Pointer<Void> _mb_set_aspect_ratio =
      resolveMethodBind('OpenXRCompositionLayerCylinder', 'set_aspect_ratio', 373806689);

  void setAspectRatio(double aspectRatio) {
    final arg0 = malloc<Double>()..value = aspectRatio;
    try {
      ptrcallVoid(_mb_set_aspect_ratio, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_aspect_ratio =
      resolveMethodBind('OpenXRCompositionLayerCylinder', 'get_aspect_ratio', 1740695150);

  double getAspectRatio() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_aspect_ratio, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_central_angle =
      resolveMethodBind('OpenXRCompositionLayerCylinder', 'set_central_angle', 373806689);

  void setCentralAngle(double angle) {
    final arg0 = malloc<Double>()..value = angle;
    try {
      ptrcallVoid(_mb_set_central_angle, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_central_angle =
      resolveMethodBind('OpenXRCompositionLayerCylinder', 'get_central_angle', 1740695150);

  double getCentralAngle() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_central_angle, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_fallback_segments =
      resolveMethodBind('OpenXRCompositionLayerCylinder', 'set_fallback_segments', 1286410249);

  void setFallbackSegments(int segments) {
    final arg0 = malloc<Int64>()..value = segments;
    try {
      ptrcallVoid(_mb_set_fallback_segments, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_fallback_segments =
      resolveMethodBind('OpenXRCompositionLayerCylinder', 'get_fallback_segments', 3905245786);

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
