// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class SpringArm3D extends Node3D {
  SpringArm3D(super.nativePtr);

  /// Constructs a brand-new engine-owned SpringArm3D instance
  /// (via classdb_construct_object3), not an existing one.
  factory SpringArm3D.create() {
    return SpringArm3D(resolveClassConstructor('SpringArm3D'));
  }

  static final Pointer<Void> _mb_get_hit_length =
      resolveMethodBind('SpringArm3D', 'get_hit_length', 191475506);

  double getHitLength() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_hit_length, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_length =
      resolveMethodBind('SpringArm3D', 'set_length', 373806689);

  void setLength(double length) {
    final arg0 = malloc<Double>()..value = length;
    try {
      ptrcallVoid(_mb_set_length, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_length =
      resolveMethodBind('SpringArm3D', 'get_length', 1740695150);

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

  static final Pointer<Void> _mb_set_shape =
      resolveMethodBind('SpringArm3D', 'set_shape', 1549710052);

  void setShape(Shape3D shape) {
    final arg0 = malloc<Pointer<Void>>()..value = shape.nativePtr;
    try {
      ptrcallVoid(_mb_set_shape, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_shape =
      resolveMethodBind('SpringArm3D', 'get_shape', 3214262478);

  Shape3D? getShape() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_shape, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Shape3D(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  // Skipped add_excluded_object(): an argument type is unsupported.
  // Skipped remove_excluded_object(): an argument type is unsupported.
  static final Pointer<Void> _mb_clear_excluded_objects =
      resolveMethodBind('SpringArm3D', 'clear_excluded_objects', 3218959716);

  void clearExcludedObjects() {
    try {
      ptrcallVoid(_mb_clear_excluded_objects, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_collision_mask =
      resolveMethodBind('SpringArm3D', 'set_collision_mask', 1286410249);

  void setCollisionMask(int mask) {
    final arg0 = malloc<Int64>()..value = mask;
    try {
      ptrcallVoid(_mb_set_collision_mask, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_collision_mask =
      resolveMethodBind('SpringArm3D', 'get_collision_mask', 2455072627);

  int getCollisionMask() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_collision_mask, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_margin =
      resolveMethodBind('SpringArm3D', 'set_margin', 373806689);

  void setMargin(double margin) {
    final arg0 = malloc<Double>()..value = margin;
    try {
      ptrcallVoid(_mb_set_margin, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_margin =
      resolveMethodBind('SpringArm3D', 'get_margin', 191475506);

  double getMargin() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_margin, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
