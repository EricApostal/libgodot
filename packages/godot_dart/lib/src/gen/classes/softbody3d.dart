// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class SoftBody3D extends MeshInstance3D {
  SoftBody3D(super.nativePtr);

  /// Constructs a brand-new engine-owned SoftBody3D instance
  /// (via classdb_construct_object3), not an existing one.
  factory SoftBody3D.create() {
    return SoftBody3D(resolveClassConstructor('SoftBody3D'));
  }

  // Skipped get_physics_rid(): unsupported return type "RID".
  static final Pointer<Void> _mb_set_collision_mask =
      resolveMethodBind('SoftBody3D', 'set_collision_mask', 1286410249);

  void setCollisionMask(int collisionMask) {
    final arg0 = malloc<Int64>()..value = collisionMask;
    try {
      ptrcallVoid(_mb_set_collision_mask, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_collision_mask =
      resolveMethodBind('SoftBody3D', 'get_collision_mask', 3905245786);

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

  static final Pointer<Void> _mb_set_collision_layer =
      resolveMethodBind('SoftBody3D', 'set_collision_layer', 1286410249);

  void setCollisionLayer(int collisionLayer) {
    final arg0 = malloc<Int64>()..value = collisionLayer;
    try {
      ptrcallVoid(_mb_set_collision_layer, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_collision_layer =
      resolveMethodBind('SoftBody3D', 'get_collision_layer', 3905245786);

  int getCollisionLayer() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_collision_layer, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_collision_mask_value =
      resolveMethodBind('SoftBody3D', 'set_collision_mask_value', 300928843);

  void setCollisionMaskValue(int layerNumber, bool value) {
    final arg0 = malloc<Int64>()..value = layerNumber;
    final arg1 = malloc<Uint8>()..value = value ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_collision_mask_value, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_collision_mask_value =
      resolveMethodBind('SoftBody3D', 'get_collision_mask_value', 1116898809);

  bool getCollisionMaskValue(int layerNumber) {
    final arg0 = malloc<Int64>()..value = layerNumber;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_collision_mask_value, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_collision_layer_value =
      resolveMethodBind('SoftBody3D', 'set_collision_layer_value', 300928843);

  void setCollisionLayerValue(int layerNumber, bool value) {
    final arg0 = malloc<Int64>()..value = layerNumber;
    final arg1 = malloc<Uint8>()..value = value ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_collision_layer_value, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_collision_layer_value =
      resolveMethodBind('SoftBody3D', 'get_collision_layer_value', 1116898809);

  bool getCollisionLayerValue(int layerNumber) {
    final arg0 = malloc<Int64>()..value = layerNumber;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_collision_layer_value, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  // Skipped set_parent_collision_ignore(): an argument type is unsupported.
  // Skipped get_parent_collision_ignore(): unsupported return type "NodePath".
  static final Pointer<Void> _mb_set_disable_mode =
      resolveMethodBind('SoftBody3D', 'set_disable_mode', 1104158384);

  void setDisableMode(int mode) {
    final arg0 = malloc<Int64>()..value = mode;
    try {
      ptrcallVoid(_mb_set_disable_mode, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_disable_mode =
      resolveMethodBind('SoftBody3D', 'get_disable_mode', 4135042476);

  int getDisableMode() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_disable_mode, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  // Skipped get_collision_exceptions(): unsupported return type "typedarray::PhysicsBody3D".
  static final Pointer<Void> _mb_add_collision_exception_with =
      resolveMethodBind('SoftBody3D', 'add_collision_exception_with', 1078189570);

  void addCollisionExceptionWith(Node body) {
    final arg0 = malloc<Pointer<Void>>()..value = body.nativePtr;
    try {
      ptrcallVoid(_mb_add_collision_exception_with, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_remove_collision_exception_with =
      resolveMethodBind('SoftBody3D', 'remove_collision_exception_with', 1078189570);

  void removeCollisionExceptionWith(Node body) {
    final arg0 = malloc<Pointer<Void>>()..value = body.nativePtr;
    try {
      ptrcallVoid(_mb_remove_collision_exception_with, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_simulation_precision =
      resolveMethodBind('SoftBody3D', 'set_simulation_precision', 1286410249);

  void setSimulationPrecision(int simulationPrecision) {
    final arg0 = malloc<Int64>()..value = simulationPrecision;
    try {
      ptrcallVoid(_mb_set_simulation_precision, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_simulation_precision =
      resolveMethodBind('SoftBody3D', 'get_simulation_precision', 2455072627);

  int getSimulationPrecision() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_simulation_precision, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_total_mass =
      resolveMethodBind('SoftBody3D', 'set_total_mass', 373806689);

  void setTotalMass(double mass) {
    final arg0 = malloc<Double>()..value = mass;
    try {
      ptrcallVoid(_mb_set_total_mass, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_total_mass =
      resolveMethodBind('SoftBody3D', 'get_total_mass', 191475506);

  double getTotalMass() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_total_mass, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_linear_stiffness =
      resolveMethodBind('SoftBody3D', 'set_linear_stiffness', 373806689);

  void setLinearStiffness(double linearStiffness) {
    final arg0 = malloc<Double>()..value = linearStiffness;
    try {
      ptrcallVoid(_mb_set_linear_stiffness, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_linear_stiffness =
      resolveMethodBind('SoftBody3D', 'get_linear_stiffness', 191475506);

  double getLinearStiffness() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_linear_stiffness, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_shrinking_factor =
      resolveMethodBind('SoftBody3D', 'set_shrinking_factor', 373806689);

  void setShrinkingFactor(double shrinkingFactor) {
    final arg0 = malloc<Double>()..value = shrinkingFactor;
    try {
      ptrcallVoid(_mb_set_shrinking_factor, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_shrinking_factor =
      resolveMethodBind('SoftBody3D', 'get_shrinking_factor', 191475506);

  double getShrinkingFactor() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_shrinking_factor, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_pressure_coefficient =
      resolveMethodBind('SoftBody3D', 'set_pressure_coefficient', 373806689);

  void setPressureCoefficient(double pressureCoefficient) {
    final arg0 = malloc<Double>()..value = pressureCoefficient;
    try {
      ptrcallVoid(_mb_set_pressure_coefficient, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_pressure_coefficient =
      resolveMethodBind('SoftBody3D', 'get_pressure_coefficient', 191475506);

  double getPressureCoefficient() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_pressure_coefficient, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_damping_coefficient =
      resolveMethodBind('SoftBody3D', 'set_damping_coefficient', 373806689);

  void setDampingCoefficient(double dampingCoefficient) {
    final arg0 = malloc<Double>()..value = dampingCoefficient;
    try {
      ptrcallVoid(_mb_set_damping_coefficient, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_damping_coefficient =
      resolveMethodBind('SoftBody3D', 'get_damping_coefficient', 191475506);

  double getDampingCoefficient() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_damping_coefficient, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_drag_coefficient =
      resolveMethodBind('SoftBody3D', 'set_drag_coefficient', 373806689);

  void setDragCoefficient(double dragCoefficient) {
    final arg0 = malloc<Double>()..value = dragCoefficient;
    try {
      ptrcallVoid(_mb_set_drag_coefficient, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_drag_coefficient =
      resolveMethodBind('SoftBody3D', 'get_drag_coefficient', 191475506);

  double getDragCoefficient() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_drag_coefficient, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_point_transform =
      resolveMethodBind('SoftBody3D', 'get_point_transform', 871989493);

  Vector3 getPointTransform(int pointIndex) {
    final arg0 = malloc<Int64>()..value = pointIndex;
    try {
      final ret = malloc<Uint8>(Vector3.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_point_transform, nativePtr, [arg0.cast<Void>()], ret.cast());
        return Vector3.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_apply_impulse =
      resolveMethodBind('SoftBody3D', 'apply_impulse', 1530502735);

  void applyImpulse(int pointIndex, Vector3 impulse) {
    final arg0 = malloc<Int64>()..value = pointIndex;
    final arg1 = malloc<Uint8>(Vector3.nativeSize);
    impulse.writeTo(arg1, 0);
    try {
      ptrcallVoid(_mb_apply_impulse, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_apply_force =
      resolveMethodBind('SoftBody3D', 'apply_force', 1530502735);

  void applyForce(int pointIndex, Vector3 force) {
    final arg0 = malloc<Int64>()..value = pointIndex;
    final arg1 = malloc<Uint8>(Vector3.nativeSize);
    force.writeTo(arg1, 0);
    try {
      ptrcallVoid(_mb_apply_force, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_apply_central_impulse =
      resolveMethodBind('SoftBody3D', 'apply_central_impulse', 3460891852);

  void applyCentralImpulse(Vector3 impulse) {
    final arg0 = malloc<Uint8>(Vector3.nativeSize);
    impulse.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_apply_central_impulse, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_apply_central_force =
      resolveMethodBind('SoftBody3D', 'apply_central_force', 3460891852);

  void applyCentralForce(Vector3 force) {
    final arg0 = malloc<Uint8>(Vector3.nativeSize);
    force.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_apply_central_force, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  // Skipped set_point_pinned(): an argument type is unsupported.
  static final Pointer<Void> _mb_is_point_pinned =
      resolveMethodBind('SoftBody3D', 'is_point_pinned', 1116898809);

  bool isPointPinned(int pointIndex) {
    final arg0 = malloc<Int64>()..value = pointIndex;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_point_pinned, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_point_count =
      resolveMethodBind('SoftBody3D', 'get_point_count', 3905245786);

  int getPointCount() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_point_count, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_ray_pickable =
      resolveMethodBind('SoftBody3D', 'set_ray_pickable', 2586408642);

  void setRayPickable(bool rayPickable) {
    final arg0 = malloc<Uint8>()..value = rayPickable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_ray_pickable, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_ray_pickable =
      resolveMethodBind('SoftBody3D', 'is_ray_pickable', 36873697);

  bool isRayPickable() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_ray_pickable, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
