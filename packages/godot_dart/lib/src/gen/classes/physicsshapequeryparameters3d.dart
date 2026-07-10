// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class PhysicsShapeQueryParameters3D extends RefCounted {
  PhysicsShapeQueryParameters3D(super.nativePtr);

  /// Constructs a brand-new engine-owned PhysicsShapeQueryParameters3D instance
  /// (via classdb_construct_object3), not an existing one.
  factory PhysicsShapeQueryParameters3D.create() {
    return PhysicsShapeQueryParameters3D(resolveClassConstructor('PhysicsShapeQueryParameters3D'));
  }

  static final Pointer<Void> _mb_set_shape =
      resolveMethodBind('PhysicsShapeQueryParameters3D', 'set_shape', 968641751);

  void setShape(Resource shape) {
    final arg0 = malloc<Pointer<Void>>()..value = shape.nativePtr;
    try {
      ptrcallVoid(_mb_set_shape, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_shape =
      resolveMethodBind('PhysicsShapeQueryParameters3D', 'get_shape', 121922552);

  Resource? getShape() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_shape, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Resource(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  // Skipped set_shape_rid(): an argument type is unsupported.
  // Skipped get_shape_rid(): unsupported return type "RID".
  static final Pointer<Void> _mb_set_transform =
      resolveMethodBind('PhysicsShapeQueryParameters3D', 'set_transform', 2952846383);

  void setTransform(Transform3D transform) {
    final arg0 = malloc<Uint8>(Transform3D.nativeSize);
    transform.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_transform, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_transform =
      resolveMethodBind('PhysicsShapeQueryParameters3D', 'get_transform', 3229777777);

  Transform3D getTransform() {
    try {
      final ret = malloc<Uint8>(Transform3D.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_transform, nativePtr, [], ret.cast());
        return Transform3D.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_motion =
      resolveMethodBind('PhysicsShapeQueryParameters3D', 'set_motion', 3460891852);

  void setMotion(Vector3 motion) {
    final arg0 = malloc<Uint8>(Vector3.nativeSize);
    motion.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_motion, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_motion =
      resolveMethodBind('PhysicsShapeQueryParameters3D', 'get_motion', 3360562783);

  Vector3 getMotion() {
    try {
      final ret = malloc<Uint8>(Vector3.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_motion, nativePtr, [], ret.cast());
        return Vector3.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_margin =
      resolveMethodBind('PhysicsShapeQueryParameters3D', 'set_margin', 373806689);

  void setMargin(double margin) {
    final arg0 = malloc<Double>()..value = margin;
    try {
      ptrcallVoid(_mb_set_margin, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_margin =
      resolveMethodBind('PhysicsShapeQueryParameters3D', 'get_margin', 1740695150);

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

  static final Pointer<Void> _mb_set_collision_mask =
      resolveMethodBind('PhysicsShapeQueryParameters3D', 'set_collision_mask', 1286410249);

  void setCollisionMask(int collisionMask) {
    final arg0 = malloc<Int64>()..value = collisionMask;
    try {
      ptrcallVoid(_mb_set_collision_mask, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_collision_mask =
      resolveMethodBind('PhysicsShapeQueryParameters3D', 'get_collision_mask', 3905245786);

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

  // Skipped set_exclude(): an argument type is unsupported.
  // Skipped get_exclude(): unsupported return type "typedarray::RID".
  static final Pointer<Void> _mb_set_collide_with_bodies =
      resolveMethodBind('PhysicsShapeQueryParameters3D', 'set_collide_with_bodies', 2586408642);

  void setCollideWithBodies(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_collide_with_bodies, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_collide_with_bodies_enabled =
      resolveMethodBind('PhysicsShapeQueryParameters3D', 'is_collide_with_bodies_enabled', 36873697);

  bool isCollideWithBodiesEnabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_collide_with_bodies_enabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_collide_with_areas =
      resolveMethodBind('PhysicsShapeQueryParameters3D', 'set_collide_with_areas', 2586408642);

  void setCollideWithAreas(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_collide_with_areas, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_collide_with_areas_enabled =
      resolveMethodBind('PhysicsShapeQueryParameters3D', 'is_collide_with_areas_enabled', 36873697);

  bool isCollideWithAreasEnabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_collide_with_areas_enabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
