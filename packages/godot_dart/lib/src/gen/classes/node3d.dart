// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class Node3D extends Node {
  Node3D(super.nativePtr);

  /// Constructs a brand-new engine-owned Node3D instance
  /// (via classdb_construct_object3), not an existing one.
  factory Node3D.create() {
    return Node3D(resolveClassConstructor('Node3D'));
  }

  static final Pointer<Void> _mb_set_transform =
      resolveMethodBind('Node3D', 'set_transform', 2952846383);

  void setTransform(Transform3D local) {
    final arg0 = malloc<Uint8>(Transform3D.nativeSize);
    local.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_transform, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_transform =
      resolveMethodBind('Node3D', 'get_transform', 3229777777);

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

  static final Pointer<Void> _mb_set_position =
      resolveMethodBind('Node3D', 'set_position', 3460891852);

  void setPosition(Vector3 position) {
    final arg0 = malloc<Uint8>(Vector3.nativeSize);
    position.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_position, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_position =
      resolveMethodBind('Node3D', 'get_position', 3360562783);

  Vector3 getPosition() {
    try {
      final ret = malloc<Uint8>(Vector3.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_position, nativePtr, [], ret.cast());
        return Vector3.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_rotation =
      resolveMethodBind('Node3D', 'set_rotation', 3460891852);

  void setRotation(Vector3 eulerRadians) {
    final arg0 = malloc<Uint8>(Vector3.nativeSize);
    eulerRadians.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_rotation, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_rotation =
      resolveMethodBind('Node3D', 'get_rotation', 3360562783);

  Vector3 getRotation() {
    try {
      final ret = malloc<Uint8>(Vector3.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_rotation, nativePtr, [], ret.cast());
        return Vector3.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_rotation_degrees =
      resolveMethodBind('Node3D', 'set_rotation_degrees', 3460891852);

  void setRotationDegrees(Vector3 eulerDegrees) {
    final arg0 = malloc<Uint8>(Vector3.nativeSize);
    eulerDegrees.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_rotation_degrees, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_rotation_degrees =
      resolveMethodBind('Node3D', 'get_rotation_degrees', 3360562783);

  Vector3 getRotationDegrees() {
    try {
      final ret = malloc<Uint8>(Vector3.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_rotation_degrees, nativePtr, [], ret.cast());
        return Vector3.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_rotation_order =
      resolveMethodBind('Node3D', 'set_rotation_order', 1820889989);

  void setRotationOrder(int order) {
    final arg0 = malloc<Int64>()..value = order;
    try {
      ptrcallVoid(_mb_set_rotation_order, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_rotation_order =
      resolveMethodBind('Node3D', 'get_rotation_order', 916939469);

  int getRotationOrder() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_rotation_order, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_rotation_edit_mode =
      resolveMethodBind('Node3D', 'set_rotation_edit_mode', 141483330);

  void setRotationEditMode(int editMode) {
    final arg0 = malloc<Int64>()..value = editMode;
    try {
      ptrcallVoid(_mb_set_rotation_edit_mode, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_rotation_edit_mode =
      resolveMethodBind('Node3D', 'get_rotation_edit_mode', 1572188370);

  int getRotationEditMode() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_rotation_edit_mode, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_scale =
      resolveMethodBind('Node3D', 'set_scale', 3460891852);

  void setScale(Vector3 scale) {
    final arg0 = malloc<Uint8>(Vector3.nativeSize);
    scale.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_scale, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_scale =
      resolveMethodBind('Node3D', 'get_scale', 3360562783);

  Vector3 getScale() {
    try {
      final ret = malloc<Uint8>(Vector3.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_scale, nativePtr, [], ret.cast());
        return Vector3.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_quaternion =
      resolveMethodBind('Node3D', 'set_quaternion', 1727505552);

  void setQuaternion(Quaternion quaternion) {
    final arg0 = malloc<Uint8>(Quaternion.nativeSize);
    quaternion.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_quaternion, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_quaternion =
      resolveMethodBind('Node3D', 'get_quaternion', 1222331677);

  Quaternion getQuaternion() {
    try {
      final ret = malloc<Uint8>(Quaternion.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_quaternion, nativePtr, [], ret.cast());
        return Quaternion.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_basis =
      resolveMethodBind('Node3D', 'set_basis', 1055510324);

  void setBasis(Basis basis) {
    final arg0 = malloc<Uint8>(Basis.nativeSize);
    basis.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_basis, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_basis =
      resolveMethodBind('Node3D', 'get_basis', 2716978435);

  Basis getBasis() {
    try {
      final ret = malloc<Uint8>(Basis.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_basis, nativePtr, [], ret.cast());
        return Basis.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_global_transform =
      resolveMethodBind('Node3D', 'set_global_transform', 2952846383);

  void setGlobalTransform(Transform3D global) {
    final arg0 = malloc<Uint8>(Transform3D.nativeSize);
    global.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_global_transform, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_global_transform =
      resolveMethodBind('Node3D', 'get_global_transform', 3229777777);

  Transform3D getGlobalTransform() {
    try {
      final ret = malloc<Uint8>(Transform3D.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_global_transform, nativePtr, [], ret.cast());
        return Transform3D.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_global_transform_interpolated =
      resolveMethodBind('Node3D', 'get_global_transform_interpolated', 4183770049);

  Transform3D getGlobalTransformInterpolated() {
    try {
      final ret = malloc<Uint8>(Transform3D.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_global_transform_interpolated, nativePtr, [], ret.cast());
        return Transform3D.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_global_position =
      resolveMethodBind('Node3D', 'set_global_position', 3460891852);

  void setGlobalPosition(Vector3 position) {
    final arg0 = malloc<Uint8>(Vector3.nativeSize);
    position.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_global_position, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_global_position =
      resolveMethodBind('Node3D', 'get_global_position', 3360562783);

  Vector3 getGlobalPosition() {
    try {
      final ret = malloc<Uint8>(Vector3.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_global_position, nativePtr, [], ret.cast());
        return Vector3.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_global_basis =
      resolveMethodBind('Node3D', 'set_global_basis', 1055510324);

  void setGlobalBasis(Basis basis) {
    final arg0 = malloc<Uint8>(Basis.nativeSize);
    basis.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_global_basis, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_global_basis =
      resolveMethodBind('Node3D', 'get_global_basis', 2716978435);

  Basis getGlobalBasis() {
    try {
      final ret = malloc<Uint8>(Basis.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_global_basis, nativePtr, [], ret.cast());
        return Basis.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_global_rotation =
      resolveMethodBind('Node3D', 'set_global_rotation', 3460891852);

  void setGlobalRotation(Vector3 eulerRadians) {
    final arg0 = malloc<Uint8>(Vector3.nativeSize);
    eulerRadians.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_global_rotation, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_global_rotation =
      resolveMethodBind('Node3D', 'get_global_rotation', 3360562783);

  Vector3 getGlobalRotation() {
    try {
      final ret = malloc<Uint8>(Vector3.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_global_rotation, nativePtr, [], ret.cast());
        return Vector3.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_global_rotation_degrees =
      resolveMethodBind('Node3D', 'set_global_rotation_degrees', 3460891852);

  void setGlobalRotationDegrees(Vector3 eulerDegrees) {
    final arg0 = malloc<Uint8>(Vector3.nativeSize);
    eulerDegrees.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_global_rotation_degrees, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_global_rotation_degrees =
      resolveMethodBind('Node3D', 'get_global_rotation_degrees', 3360562783);

  Vector3 getGlobalRotationDegrees() {
    try {
      final ret = malloc<Uint8>(Vector3.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_global_rotation_degrees, nativePtr, [], ret.cast());
        return Vector3.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_parent_node_3d =
      resolveMethodBind('Node3D', 'get_parent_node_3d', 151077316);

  Node3D? getParentNode3d() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_parent_node_3d, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Node3D(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_ignore_transform_notification =
      resolveMethodBind('Node3D', 'set_ignore_transform_notification', 2586408642);

  void setIgnoreTransformNotification(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_ignore_transform_notification, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_as_top_level =
      resolveMethodBind('Node3D', 'set_as_top_level', 2586408642);

  void setAsTopLevel(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_as_top_level, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_set_as_top_level =
      resolveMethodBind('Node3D', 'is_set_as_top_level', 36873697);

  bool isSetAsTopLevel() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_set_as_top_level, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_disable_scale =
      resolveMethodBind('Node3D', 'set_disable_scale', 2586408642);

  void setDisableScale(bool disable) {
    final arg0 = malloc<Uint8>()..value = disable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_disable_scale, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_scale_disabled =
      resolveMethodBind('Node3D', 'is_scale_disabled', 36873697);

  bool isScaleDisabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_scale_disabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_world_3d =
      resolveMethodBind('Node3D', 'get_world_3d', 317588385);

  World3D? getWorld3d() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_world_3d, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : World3D(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_force_update_transform =
      resolveMethodBind('Node3D', 'force_update_transform', 3218959716);

  void forceUpdateTransform() {
    try {
      ptrcallVoid(_mb_force_update_transform, nativePtr, []);
    } finally {
    }
  }

  // Skipped set_visibility_parent(): an argument type is unsupported.
  // Skipped get_visibility_parent(): unsupported return type "NodePath".
  static final Pointer<Void> _mb_update_gizmos =
      resolveMethodBind('Node3D', 'update_gizmos', 3218959716);

  void updateGizmos() {
    try {
      ptrcallVoid(_mb_update_gizmos, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_add_gizmo =
      resolveMethodBind('Node3D', 'add_gizmo', 1544533845);

  void addGizmo(Node3DGizmo gizmo) {
    final arg0 = malloc<Pointer<Void>>()..value = gizmo.nativePtr;
    try {
      ptrcallVoid(_mb_add_gizmo, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  // Skipped get_gizmos(): unsupported return type "typedarray::Node3DGizmo".
  static final Pointer<Void> _mb_clear_gizmos =
      resolveMethodBind('Node3D', 'clear_gizmos', 3218959716);

  void clearGizmos() {
    try {
      ptrcallVoid(_mb_clear_gizmos, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_subgizmo_selection =
      resolveMethodBind('Node3D', 'set_subgizmo_selection', 3317607635);

  void setSubgizmoSelection(Node3DGizmo gizmo, int id, Transform3D transform) {
    final arg0 = malloc<Pointer<Void>>()..value = gizmo.nativePtr;
    final arg1 = malloc<Int64>()..value = id;
    final arg2 = malloc<Uint8>(Transform3D.nativeSize);
    transform.writeTo(arg2, 0);
    try {
      ptrcallVoid(_mb_set_subgizmo_selection, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_clear_subgizmo_selection =
      resolveMethodBind('Node3D', 'clear_subgizmo_selection', 3218959716);

  void clearSubgizmoSelection() {
    try {
      ptrcallVoid(_mb_clear_subgizmo_selection, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_visible =
      resolveMethodBind('Node3D', 'set_visible', 2586408642);

  void setVisible(bool visible) {
    final arg0 = malloc<Uint8>()..value = visible ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_visible, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_visible =
      resolveMethodBind('Node3D', 'is_visible', 36873697);

  bool isVisible() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_visible, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_is_visible_in_tree =
      resolveMethodBind('Node3D', 'is_visible_in_tree', 36873697);

  bool isVisibleInTree() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_visible_in_tree, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_show =
      resolveMethodBind('Node3D', 'show', 3218959716);

  void show_() {
    try {
      ptrcallVoid(_mb_show, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_hide =
      resolveMethodBind('Node3D', 'hide', 3218959716);

  void hide_() {
    try {
      ptrcallVoid(_mb_hide, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_notify_local_transform =
      resolveMethodBind('Node3D', 'set_notify_local_transform', 2586408642);

  void setNotifyLocalTransform(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_notify_local_transform, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_local_transform_notification_enabled =
      resolveMethodBind('Node3D', 'is_local_transform_notification_enabled', 36873697);

  bool isLocalTransformNotificationEnabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_local_transform_notification_enabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_notify_transform =
      resolveMethodBind('Node3D', 'set_notify_transform', 2586408642);

  void setNotifyTransform(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_notify_transform, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_transform_notification_enabled =
      resolveMethodBind('Node3D', 'is_transform_notification_enabled', 36873697);

  bool isTransformNotificationEnabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_transform_notification_enabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_rotate =
      resolveMethodBind('Node3D', 'rotate', 3436291937);

  void rotate(Vector3 axis, double angle) {
    final arg0 = malloc<Uint8>(Vector3.nativeSize);
    axis.writeTo(arg0, 0);
    final arg1 = malloc<Double>()..value = angle;
    try {
      ptrcallVoid(_mb_rotate, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_global_rotate =
      resolveMethodBind('Node3D', 'global_rotate', 3436291937);

  void globalRotate(Vector3 axis, double angle) {
    final arg0 = malloc<Uint8>(Vector3.nativeSize);
    axis.writeTo(arg0, 0);
    final arg1 = malloc<Double>()..value = angle;
    try {
      ptrcallVoid(_mb_global_rotate, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_global_scale =
      resolveMethodBind('Node3D', 'global_scale', 3460891852);

  void globalScale(Vector3 scale) {
    final arg0 = malloc<Uint8>(Vector3.nativeSize);
    scale.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_global_scale, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_global_translate =
      resolveMethodBind('Node3D', 'global_translate', 3460891852);

  void globalTranslate(Vector3 offset) {
    final arg0 = malloc<Uint8>(Vector3.nativeSize);
    offset.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_global_translate, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_rotate_object_local =
      resolveMethodBind('Node3D', 'rotate_object_local', 3436291937);

  void rotateObjectLocal(Vector3 axis, double angle) {
    final arg0 = malloc<Uint8>(Vector3.nativeSize);
    axis.writeTo(arg0, 0);
    final arg1 = malloc<Double>()..value = angle;
    try {
      ptrcallVoid(_mb_rotate_object_local, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_scale_object_local =
      resolveMethodBind('Node3D', 'scale_object_local', 3460891852);

  void scaleObjectLocal(Vector3 scale) {
    final arg0 = malloc<Uint8>(Vector3.nativeSize);
    scale.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_scale_object_local, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_translate_object_local =
      resolveMethodBind('Node3D', 'translate_object_local', 3460891852);

  void translateObjectLocal(Vector3 offset) {
    final arg0 = malloc<Uint8>(Vector3.nativeSize);
    offset.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_translate_object_local, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_rotate_x =
      resolveMethodBind('Node3D', 'rotate_x', 373806689);

  void rotateX(double angle) {
    final arg0 = malloc<Double>()..value = angle;
    try {
      ptrcallVoid(_mb_rotate_x, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_rotate_y =
      resolveMethodBind('Node3D', 'rotate_y', 373806689);

  void rotateY(double angle) {
    final arg0 = malloc<Double>()..value = angle;
    try {
      ptrcallVoid(_mb_rotate_y, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_rotate_z =
      resolveMethodBind('Node3D', 'rotate_z', 373806689);

  void rotateZ(double angle) {
    final arg0 = malloc<Double>()..value = angle;
    try {
      ptrcallVoid(_mb_rotate_z, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_translate =
      resolveMethodBind('Node3D', 'translate', 3460891852);

  void translate(Vector3 offset) {
    final arg0 = malloc<Uint8>(Vector3.nativeSize);
    offset.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_translate, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_orthonormalize =
      resolveMethodBind('Node3D', 'orthonormalize', 3218959716);

  void orthonormalize() {
    try {
      ptrcallVoid(_mb_orthonormalize, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_identity =
      resolveMethodBind('Node3D', 'set_identity', 3218959716);

  void setIdentity() {
    try {
      ptrcallVoid(_mb_set_identity, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_look_at =
      resolveMethodBind('Node3D', 'look_at', 2882425029);

  void lookAt(Vector3 target, Vector3 up, bool useModelFront) {
    final arg0 = malloc<Uint8>(Vector3.nativeSize);
    target.writeTo(arg0, 0);
    final arg1 = malloc<Uint8>(Vector3.nativeSize);
    up.writeTo(arg1, 0);
    final arg2 = malloc<Uint8>()..value = useModelFront ? 1 : 0;
    try {
      ptrcallVoid(_mb_look_at, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_look_at_from_position =
      resolveMethodBind('Node3D', 'look_at_from_position', 2086826090);

  void lookAtFromPosition(Vector3 position, Vector3 target, Vector3 up, bool useModelFront) {
    final arg0 = malloc<Uint8>(Vector3.nativeSize);
    position.writeTo(arg0, 0);
    final arg1 = malloc<Uint8>(Vector3.nativeSize);
    target.writeTo(arg1, 0);
    final arg2 = malloc<Uint8>(Vector3.nativeSize);
    up.writeTo(arg2, 0);
    final arg3 = malloc<Uint8>()..value = useModelFront ? 1 : 0;
    try {
      ptrcallVoid(_mb_look_at_from_position, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>(), arg3.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
      malloc.free(arg3);
    }
  }

  static final Pointer<Void> _mb_to_local =
      resolveMethodBind('Node3D', 'to_local', 192990374);

  Vector3 toLocal(Vector3 globalPoint) {
    final arg0 = malloc<Uint8>(Vector3.nativeSize);
    globalPoint.writeTo(arg0, 0);
    try {
      final ret = malloc<Uint8>(Vector3.nativeSize);
      try {
        ptrcallWithReturn(_mb_to_local, nativePtr, [arg0.cast<Void>()], ret.cast());
        return Vector3.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_to_global =
      resolveMethodBind('Node3D', 'to_global', 192990374);

  Vector3 toGlobal(Vector3 localPoint) {
    final arg0 = malloc<Uint8>(Vector3.nativeSize);
    localPoint.writeTo(arg0, 0);
    try {
      final ret = malloc<Uint8>(Vector3.nativeSize);
      try {
        ptrcallWithReturn(_mb_to_global, nativePtr, [arg0.cast<Void>()], ret.cast());
        return Vector3.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

}
