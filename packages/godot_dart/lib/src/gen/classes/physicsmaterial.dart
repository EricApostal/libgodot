// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class PhysicsMaterial extends Resource {
  PhysicsMaterial(super.nativePtr);

  static final Pointer<Void> _mb_set_friction =
      resolveMethodBind('PhysicsMaterial', 'set_friction', 373806689);

  void setFriction(double friction) {
    final arg0 = malloc<Double>()..value = friction;
    try {
      ptrcallVoid(_mb_set_friction, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_friction =
      resolveMethodBind('PhysicsMaterial', 'get_friction', 1740695150);

  double getFriction() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_friction, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_rough =
      resolveMethodBind('PhysicsMaterial', 'set_rough', 2586408642);

  void setRough(bool rough) {
    final arg0 = malloc<Uint8>()..value = rough ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_rough, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_rough =
      resolveMethodBind('PhysicsMaterial', 'is_rough', 36873697);

  bool isRough() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_rough, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_bounce =
      resolveMethodBind('PhysicsMaterial', 'set_bounce', 373806689);

  void setBounce(double bounce) {
    final arg0 = malloc<Double>()..value = bounce;
    try {
      ptrcallVoid(_mb_set_bounce, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_bounce =
      resolveMethodBind('PhysicsMaterial', 'get_bounce', 1740695150);

  double getBounce() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_bounce, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_absorbent =
      resolveMethodBind('PhysicsMaterial', 'set_absorbent', 2586408642);

  void setAbsorbent(bool absorbent) {
    final arg0 = malloc<Uint8>()..value = absorbent ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_absorbent, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_absorbent =
      resolveMethodBind('PhysicsMaterial', 'is_absorbent', 36873697);

  bool isAbsorbent() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_absorbent, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
