// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class DampedSpringJoint2D extends Joint2D {
  DampedSpringJoint2D(super.nativePtr);

  /// Constructs a brand-new engine-owned DampedSpringJoint2D instance
  /// (via classdb_construct_object3), not an existing one.
  factory DampedSpringJoint2D.create() {
    return DampedSpringJoint2D(resolveClassConstructor('DampedSpringJoint2D'));
  }

  static final Pointer<Void> _mb_set_length =
      resolveMethodBind('DampedSpringJoint2D', 'set_length', 373806689);

  void setLength(double length) {
    final arg0 = malloc<Double>()..value = length;
    try {
      ptrcallVoid(_mb_set_length, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_length =
      resolveMethodBind('DampedSpringJoint2D', 'get_length', 1740695150);

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

  static final Pointer<Void> _mb_set_rest_length =
      resolveMethodBind('DampedSpringJoint2D', 'set_rest_length', 373806689);

  void setRestLength(double restLength) {
    final arg0 = malloc<Double>()..value = restLength;
    try {
      ptrcallVoid(_mb_set_rest_length, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_rest_length =
      resolveMethodBind('DampedSpringJoint2D', 'get_rest_length', 1740695150);

  double getRestLength() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_rest_length, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_stiffness =
      resolveMethodBind('DampedSpringJoint2D', 'set_stiffness', 373806689);

  void setStiffness(double stiffness) {
    final arg0 = malloc<Double>()..value = stiffness;
    try {
      ptrcallVoid(_mb_set_stiffness, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_stiffness =
      resolveMethodBind('DampedSpringJoint2D', 'get_stiffness', 1740695150);

  double getStiffness() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_stiffness, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_damping =
      resolveMethodBind('DampedSpringJoint2D', 'set_damping', 373806689);

  void setDamping(double damping) {
    final arg0 = malloc<Double>()..value = damping;
    try {
      ptrcallVoid(_mb_set_damping, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_damping =
      resolveMethodBind('DampedSpringJoint2D', 'get_damping', 1740695150);

  double getDamping() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_damping, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
