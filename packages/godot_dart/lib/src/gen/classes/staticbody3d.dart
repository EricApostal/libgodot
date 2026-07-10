// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class StaticBody3D extends PhysicsBody3D {
  StaticBody3D(super.nativePtr);

  /// Constructs a brand-new engine-owned StaticBody3D instance
  /// (via classdb_construct_object3), not an existing one.
  factory StaticBody3D.create() {
    return StaticBody3D(resolveClassConstructor('StaticBody3D'));
  }

  static final Pointer<Void> _mb_set_constant_linear_velocity =
      resolveMethodBind('StaticBody3D', 'set_constant_linear_velocity', 3460891852);

  void setConstantLinearVelocity(Vector3 vel) {
    final arg0 = malloc<Uint8>(Vector3.nativeSize);
    vel.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_constant_linear_velocity, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_constant_angular_velocity =
      resolveMethodBind('StaticBody3D', 'set_constant_angular_velocity', 3460891852);

  void setConstantAngularVelocity(Vector3 vel) {
    final arg0 = malloc<Uint8>(Vector3.nativeSize);
    vel.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_constant_angular_velocity, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_constant_linear_velocity =
      resolveMethodBind('StaticBody3D', 'get_constant_linear_velocity', 3360562783);

  Vector3 getConstantLinearVelocity() {
    try {
      final ret = malloc<Uint8>(Vector3.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_constant_linear_velocity, nativePtr, [], ret.cast());
        return Vector3.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_constant_angular_velocity =
      resolveMethodBind('StaticBody3D', 'get_constant_angular_velocity', 3360562783);

  Vector3 getConstantAngularVelocity() {
    try {
      final ret = malloc<Uint8>(Vector3.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_constant_angular_velocity, nativePtr, [], ret.cast());
        return Vector3.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_physics_material_override =
      resolveMethodBind('StaticBody3D', 'set_physics_material_override', 1784508650);

  void setPhysicsMaterialOverride(PhysicsMaterial physicsMaterialOverride) {
    final arg0 = malloc<Pointer<Void>>()..value = physicsMaterialOverride.nativePtr;
    try {
      ptrcallVoid(_mb_set_physics_material_override, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_physics_material_override =
      resolveMethodBind('StaticBody3D', 'get_physics_material_override', 2521850424);

  PhysicsMaterial? getPhysicsMaterialOverride() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_physics_material_override, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : PhysicsMaterial(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
