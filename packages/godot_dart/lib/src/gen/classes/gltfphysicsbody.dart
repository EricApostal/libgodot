// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class GLTFPhysicsBody extends Resource {
  GLTFPhysicsBody(super.nativePtr);

  static final Pointer<Void> _mb_to_node =
      resolveMethodBind('GLTFPhysicsBody', 'to_node', 3224013656);

  CollisionObject3D? toNode() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_to_node, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : CollisionObject3D(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  // Skipped to_dictionary(): unsupported return type "Dictionary".
  static final Pointer<Void> _mb_get_body_type =
      resolveMethodBind('GLTFPhysicsBody', 'get_body_type', 201670096);

  String getBodyType() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_body_type, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_body_type =
      resolveMethodBind('GLTFPhysicsBody', 'set_body_type', 83702148);

  void setBodyType(String bodyType) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), bodyType);
    try {
      ptrcallVoid(_mb_set_body_type, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_mass =
      resolveMethodBind('GLTFPhysicsBody', 'get_mass', 1740695150);

  double getMass() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_mass, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_mass =
      resolveMethodBind('GLTFPhysicsBody', 'set_mass', 373806689);

  void setMass(double mass) {
    final arg0 = malloc<Double>()..value = mass;
    try {
      ptrcallVoid(_mb_set_mass, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_linear_velocity =
      resolveMethodBind('GLTFPhysicsBody', 'get_linear_velocity', 3360562783);

  Vector3 getLinearVelocity() {
    try {
      final ret = malloc<Uint8>(Vector3.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_linear_velocity, nativePtr, [], ret.cast());
        return Vector3.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_linear_velocity =
      resolveMethodBind('GLTFPhysicsBody', 'set_linear_velocity', 3460891852);

  void setLinearVelocity(Vector3 linearVelocity) {
    final arg0 = malloc<Uint8>(Vector3.nativeSize);
    linearVelocity.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_linear_velocity, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_angular_velocity =
      resolveMethodBind('GLTFPhysicsBody', 'get_angular_velocity', 3360562783);

  Vector3 getAngularVelocity() {
    try {
      final ret = malloc<Uint8>(Vector3.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_angular_velocity, nativePtr, [], ret.cast());
        return Vector3.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_angular_velocity =
      resolveMethodBind('GLTFPhysicsBody', 'set_angular_velocity', 3460891852);

  void setAngularVelocity(Vector3 angularVelocity) {
    final arg0 = malloc<Uint8>(Vector3.nativeSize);
    angularVelocity.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_angular_velocity, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_center_of_mass =
      resolveMethodBind('GLTFPhysicsBody', 'get_center_of_mass', 3360562783);

  Vector3 getCenterOfMass() {
    try {
      final ret = malloc<Uint8>(Vector3.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_center_of_mass, nativePtr, [], ret.cast());
        return Vector3.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_center_of_mass =
      resolveMethodBind('GLTFPhysicsBody', 'set_center_of_mass', 3460891852);

  void setCenterOfMass(Vector3 centerOfMass) {
    final arg0 = malloc<Uint8>(Vector3.nativeSize);
    centerOfMass.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_center_of_mass, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_inertia_diagonal =
      resolveMethodBind('GLTFPhysicsBody', 'get_inertia_diagonal', 3360562783);

  Vector3 getInertiaDiagonal() {
    try {
      final ret = malloc<Uint8>(Vector3.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_inertia_diagonal, nativePtr, [], ret.cast());
        return Vector3.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_inertia_diagonal =
      resolveMethodBind('GLTFPhysicsBody', 'set_inertia_diagonal', 3460891852);

  void setInertiaDiagonal(Vector3 inertiaDiagonal) {
    final arg0 = malloc<Uint8>(Vector3.nativeSize);
    inertiaDiagonal.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_inertia_diagonal, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_inertia_orientation =
      resolveMethodBind('GLTFPhysicsBody', 'get_inertia_orientation', 1222331677);

  Quaternion getInertiaOrientation() {
    try {
      final ret = malloc<Uint8>(Quaternion.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_inertia_orientation, nativePtr, [], ret.cast());
        return Quaternion.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_inertia_orientation =
      resolveMethodBind('GLTFPhysicsBody', 'set_inertia_orientation', 1727505552);

  void setInertiaOrientation(Quaternion inertiaOrientation) {
    final arg0 = malloc<Uint8>(Quaternion.nativeSize);
    inertiaOrientation.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_inertia_orientation, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_inertia_tensor =
      resolveMethodBind('GLTFPhysicsBody', 'get_inertia_tensor', 2716978435);

  Basis getInertiaTensor() {
    try {
      final ret = malloc<Uint8>(Basis.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_inertia_tensor, nativePtr, [], ret.cast());
        return Basis.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_inertia_tensor =
      resolveMethodBind('GLTFPhysicsBody', 'set_inertia_tensor', 1055510324);

  void setInertiaTensor(Basis inertiaTensor) {
    final arg0 = malloc<Uint8>(Basis.nativeSize);
    inertiaTensor.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_inertia_tensor, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

}
