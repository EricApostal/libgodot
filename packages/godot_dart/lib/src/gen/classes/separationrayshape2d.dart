// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class SeparationRayShape2D extends Shape2D {
  SeparationRayShape2D(super.nativePtr);

  /// Constructs a brand-new engine-owned SeparationRayShape2D instance
  /// (via classdb_construct_object3), not an existing one.
  factory SeparationRayShape2D.create() {
    return SeparationRayShape2D(resolveClassConstructor('SeparationRayShape2D'));
  }

  static final Pointer<Void> _mb_set_length =
      resolveMethodBind('SeparationRayShape2D', 'set_length', 373806689);

  void setLength(double length) {
    final arg0 = malloc<Double>()..value = length;
    try {
      ptrcallVoid(_mb_set_length, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_length =
      resolveMethodBind('SeparationRayShape2D', 'get_length', 1740695150);

  double getLength() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_length, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_slide_on_slope =
      resolveMethodBind('SeparationRayShape2D', 'set_slide_on_slope', 2586408642);

  void setSlideOnSlope(bool active) {
    final arg0 = malloc<Uint8>()..value = active ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_slide_on_slope, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_slide_on_slope =
      resolveMethodBind('SeparationRayShape2D', 'get_slide_on_slope', 36873697);

  bool getSlideOnSlope() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_slide_on_slope, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
