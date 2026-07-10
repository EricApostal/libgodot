// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class CapsuleShape3D extends Shape3D {
  CapsuleShape3D(super.nativePtr);

  /// Constructs a brand-new engine-owned CapsuleShape3D instance
  /// (via classdb_construct_object3), not an existing one.
  factory CapsuleShape3D.create() {
    return CapsuleShape3D(resolveClassConstructor('CapsuleShape3D'));
  }

  static final Pointer<Void> _mb_set_radius =
      resolveMethodBind('CapsuleShape3D', 'set_radius', 373806689);

  void setRadius(double radius) {
    final arg0 = malloc<Double>()..value = radius;
    try {
      ptrcallVoid(_mb_set_radius, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_radius =
      resolveMethodBind('CapsuleShape3D', 'get_radius', 1740695150);

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
      resolveMethodBind('CapsuleShape3D', 'set_height', 373806689);

  void setHeight(double height) {
    final arg0 = malloc<Double>()..value = height;
    try {
      ptrcallVoid(_mb_set_height, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_height =
      resolveMethodBind('CapsuleShape3D', 'get_height', 1740695150);

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

  static final Pointer<Void> _mb_set_mid_height =
      resolveMethodBind('CapsuleShape3D', 'set_mid_height', 373806689);

  void setMidHeight(double midHeight) {
    final arg0 = malloc<Double>()..value = midHeight;
    try {
      ptrcallVoid(_mb_set_mid_height, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_mid_height =
      resolveMethodBind('CapsuleShape3D', 'get_mid_height', 1740695150);

  double getMidHeight() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_mid_height, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
