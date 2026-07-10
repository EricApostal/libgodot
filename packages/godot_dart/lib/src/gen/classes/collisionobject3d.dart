// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class CollisionObject3D extends Node3D {
  CollisionObject3D(super.nativePtr);

  /// Override to hook into Godot's `_input_event` virtual.
  void inputEvent(Camera3D camera, InputEvent event, Vector3 eventPosition, Vector3 normal, int shapeIdx) {}

  /// Override to hook into Godot's `_mouse_enter` virtual.
  void mouseEnter() {}

  /// Override to hook into Godot's `_mouse_exit` virtual.
  void mouseExit() {}

  static final Pointer<Void> _mb_set_collision_layer =
      resolveMethodBind('CollisionObject3D', 'set_collision_layer', 1286410249);

  void setCollisionLayer(int layer) {
    final arg0 = malloc<Int64>()..value = layer;
    try {
      ptrcallVoid(_mb_set_collision_layer, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_collision_layer =
      resolveMethodBind('CollisionObject3D', 'get_collision_layer', 3905245786);

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

  static final Pointer<Void> _mb_set_collision_mask =
      resolveMethodBind('CollisionObject3D', 'set_collision_mask', 1286410249);

  void setCollisionMask(int mask) {
    final arg0 = malloc<Int64>()..value = mask;
    try {
      ptrcallVoid(_mb_set_collision_mask, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_collision_mask =
      resolveMethodBind('CollisionObject3D', 'get_collision_mask', 3905245786);

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

  static final Pointer<Void> _mb_set_collision_layer_value =
      resolveMethodBind('CollisionObject3D', 'set_collision_layer_value', 300928843);

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
      resolveMethodBind('CollisionObject3D', 'get_collision_layer_value', 1116898809);

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

  static final Pointer<Void> _mb_set_collision_mask_value =
      resolveMethodBind('CollisionObject3D', 'set_collision_mask_value', 300928843);

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
      resolveMethodBind('CollisionObject3D', 'get_collision_mask_value', 1116898809);

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

  static final Pointer<Void> _mb_set_collision_priority =
      resolveMethodBind('CollisionObject3D', 'set_collision_priority', 373806689);

  void setCollisionPriority(double priority) {
    final arg0 = malloc<Double>()..value = priority;
    try {
      ptrcallVoid(_mb_set_collision_priority, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_collision_priority =
      resolveMethodBind('CollisionObject3D', 'get_collision_priority', 1740695150);

  double getCollisionPriority() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_collision_priority, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_disable_mode =
      resolveMethodBind('CollisionObject3D', 'set_disable_mode', 1623620376);

  void setDisableMode(int mode) {
    final arg0 = malloc<Int64>()..value = mode;
    try {
      ptrcallVoid(_mb_set_disable_mode, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_disable_mode =
      resolveMethodBind('CollisionObject3D', 'get_disable_mode', 410164780);

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

  static final Pointer<Void> _mb_set_ray_pickable =
      resolveMethodBind('CollisionObject3D', 'set_ray_pickable', 2586408642);

  void setRayPickable(bool rayPickable) {
    final arg0 = malloc<Uint8>()..value = rayPickable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_ray_pickable, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_ray_pickable =
      resolveMethodBind('CollisionObject3D', 'is_ray_pickable', 36873697);

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

  static final Pointer<Void> _mb_set_capture_input_on_drag =
      resolveMethodBind('CollisionObject3D', 'set_capture_input_on_drag', 2586408642);

  void setCaptureInputOnDrag(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_capture_input_on_drag, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_capture_input_on_drag =
      resolveMethodBind('CollisionObject3D', 'get_capture_input_on_drag', 36873697);

  bool getCaptureInputOnDrag() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_capture_input_on_drag, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  // Skipped get_rid(): unsupported return type "RID".
  // Skipped create_shape_owner(): an argument type is unsupported.
  static final Pointer<Void> _mb_remove_shape_owner =
      resolveMethodBind('CollisionObject3D', 'remove_shape_owner', 1286410249);

  void removeShapeOwner(int ownerId) {
    final arg0 = malloc<Int64>()..value = ownerId;
    try {
      ptrcallVoid(_mb_remove_shape_owner, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  // Skipped get_shape_owners(): unsupported return type "PackedInt32Array".
  static final Pointer<Void> _mb_shape_owner_set_transform =
      resolveMethodBind('CollisionObject3D', 'shape_owner_set_transform', 3616898986);

  void shapeOwnerSetTransform(int ownerId, Transform3D transform) {
    final arg0 = malloc<Int64>()..value = ownerId;
    final arg1 = malloc<Uint8>(Transform3D.nativeSize);
    transform.writeTo(arg1, 0);
    try {
      ptrcallVoid(_mb_shape_owner_set_transform, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_shape_owner_get_transform =
      resolveMethodBind('CollisionObject3D', 'shape_owner_get_transform', 1965739696);

  Transform3D shapeOwnerGetTransform(int ownerId) {
    final arg0 = malloc<Int64>()..value = ownerId;
    try {
      final ret = malloc<Uint8>(Transform3D.nativeSize);
      try {
        ptrcallWithReturn(_mb_shape_owner_get_transform, nativePtr, [arg0.cast<Void>()], ret.cast());
        return Transform3D.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  // Skipped shape_owner_get_owner(): unsupported return type "Object".
  static final Pointer<Void> _mb_shape_owner_set_disabled =
      resolveMethodBind('CollisionObject3D', 'shape_owner_set_disabled', 300928843);

  void shapeOwnerSetDisabled(int ownerId, bool disabled) {
    final arg0 = malloc<Int64>()..value = ownerId;
    final arg1 = malloc<Uint8>()..value = disabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_shape_owner_set_disabled, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_is_shape_owner_disabled =
      resolveMethodBind('CollisionObject3D', 'is_shape_owner_disabled', 1116898809);

  bool isShapeOwnerDisabled(int ownerId) {
    final arg0 = malloc<Int64>()..value = ownerId;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_shape_owner_disabled, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_shape_owner_add_shape =
      resolveMethodBind('CollisionObject3D', 'shape_owner_add_shape', 2566676345);

  void shapeOwnerAddShape(int ownerId, Shape3D shape) {
    final arg0 = malloc<Int64>()..value = ownerId;
    final arg1 = malloc<Pointer<Void>>()..value = shape.nativePtr;
    try {
      ptrcallVoid(_mb_shape_owner_add_shape, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_shape_owner_get_shape_count =
      resolveMethodBind('CollisionObject3D', 'shape_owner_get_shape_count', 923996154);

  int shapeOwnerGetShapeCount(int ownerId) {
    final arg0 = malloc<Int64>()..value = ownerId;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_shape_owner_get_shape_count, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_shape_owner_get_shape =
      resolveMethodBind('CollisionObject3D', 'shape_owner_get_shape', 4015519174);

  Shape3D? shapeOwnerGetShape(int ownerId, int shapeId) {
    final arg0 = malloc<Int64>()..value = ownerId;
    final arg1 = malloc<Int64>()..value = shapeId;
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_shape_owner_get_shape, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Shape3D(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_shape_owner_get_shape_index =
      resolveMethodBind('CollisionObject3D', 'shape_owner_get_shape_index', 3175239445);

  int shapeOwnerGetShapeIndex(int ownerId, int shapeId) {
    final arg0 = malloc<Int64>()..value = ownerId;
    final arg1 = malloc<Int64>()..value = shapeId;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_shape_owner_get_shape_index, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_shape_owner_remove_shape =
      resolveMethodBind('CollisionObject3D', 'shape_owner_remove_shape', 3937882851);

  void shapeOwnerRemoveShape(int ownerId, int shapeId) {
    final arg0 = malloc<Int64>()..value = ownerId;
    final arg1 = malloc<Int64>()..value = shapeId;
    try {
      ptrcallVoid(_mb_shape_owner_remove_shape, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_shape_owner_clear_shapes =
      resolveMethodBind('CollisionObject3D', 'shape_owner_clear_shapes', 1286410249);

  void shapeOwnerClearShapes(int ownerId) {
    final arg0 = malloc<Int64>()..value = ownerId;
    try {
      ptrcallVoid(_mb_shape_owner_clear_shapes, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_shape_find_owner =
      resolveMethodBind('CollisionObject3D', 'shape_find_owner', 923996154);

  int shapeFindOwner(int shapeIndex) {
    final arg0 = malloc<Int64>()..value = shapeIndex;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_shape_find_owner, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

}
