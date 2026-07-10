// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
//
// Phase 1 scope: extends GodotObject directly (not the real Node/CanvasItem
// chain yet) and only emits methods whose args/return are float/int/bool.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/godot_object.dart';

class Node3D extends GodotObject {
  Node3D(super.nativePtr);

  // Skipped set_transform(): an argument type is unsupported (Phase 2 breadth work).
  // Skipped get_transform(): unsupported return type "Transform3D" (Phase 2 breadth work).
  // Skipped set_position(): an argument type is unsupported (Phase 2 breadth work).
  // Skipped get_position(): unsupported return type "Vector3" (Phase 2 breadth work).
  // Skipped set_rotation(): an argument type is unsupported (Phase 2 breadth work).
  // Skipped get_rotation(): unsupported return type "Vector3" (Phase 2 breadth work).
  // Skipped set_rotation_degrees(): an argument type is unsupported (Phase 2 breadth work).
  // Skipped get_rotation_degrees(): unsupported return type "Vector3" (Phase 2 breadth work).
  // Skipped set_rotation_order(): an argument type is unsupported (Phase 2 breadth work).
  // Skipped get_rotation_order(): unsupported return type "enum::EulerOrder" (Phase 2 breadth work).
  // Skipped set_rotation_edit_mode(): an argument type is unsupported (Phase 2 breadth work).
  // Skipped get_rotation_edit_mode(): unsupported return type "enum::Node3D.RotationEditMode" (Phase 2 breadth work).
  // Skipped set_scale(): an argument type is unsupported (Phase 2 breadth work).
  // Skipped get_scale(): unsupported return type "Vector3" (Phase 2 breadth work).
  // Skipped set_quaternion(): an argument type is unsupported (Phase 2 breadth work).
  // Skipped get_quaternion(): unsupported return type "Quaternion" (Phase 2 breadth work).
  // Skipped set_basis(): an argument type is unsupported (Phase 2 breadth work).
  // Skipped get_basis(): unsupported return type "Basis" (Phase 2 breadth work).
  // Skipped set_global_transform(): an argument type is unsupported (Phase 2 breadth work).
  // Skipped get_global_transform(): unsupported return type "Transform3D" (Phase 2 breadth work).
  // Skipped get_global_transform_interpolated(): unsupported return type "Transform3D" (Phase 2 breadth work).
  // Skipped set_global_position(): an argument type is unsupported (Phase 2 breadth work).
  // Skipped get_global_position(): unsupported return type "Vector3" (Phase 2 breadth work).
  // Skipped set_global_basis(): an argument type is unsupported (Phase 2 breadth work).
  // Skipped get_global_basis(): unsupported return type "Basis" (Phase 2 breadth work).
  // Skipped set_global_rotation(): an argument type is unsupported (Phase 2 breadth work).
  // Skipped get_global_rotation(): unsupported return type "Vector3" (Phase 2 breadth work).
  // Skipped set_global_rotation_degrees(): an argument type is unsupported (Phase 2 breadth work).
  // Skipped get_global_rotation_degrees(): unsupported return type "Vector3" (Phase 2 breadth work).
  // Skipped get_parent_node_3d(): unsupported return type "Node3D" (Phase 2 breadth work).
  static final Pointer<Void> _mb_set_ignore_transform_notification =
      resolveMethodBind('Node3D', 'set_ignore_transform_notification', 2586408642);

  void setIgnoreTransformNotification(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_ignore_transform_notification, nativePtr, [arg0.cast()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_as_top_level =
      resolveMethodBind('Node3D', 'set_as_top_level', 2586408642);

  void setAsTopLevel(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_as_top_level, nativePtr, [arg0.cast()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_set_as_top_level =
      resolveMethodBind('Node3D', 'is_set_as_top_level', 36873697);

  bool isSetAsTopLevel() {
    final ret = malloc<Uint8>();
    try {
      ptrcallWithReturn(_mb_is_set_as_top_level, nativePtr, [], ret.cast());
      return ret.value != 0;
    } finally {
      malloc.free(ret);
    }
  }

  static final Pointer<Void> _mb_set_disable_scale =
      resolveMethodBind('Node3D', 'set_disable_scale', 2586408642);

  void setDisableScale(bool disable) {
    final arg0 = malloc<Uint8>()..value = disable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_disable_scale, nativePtr, [arg0.cast()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_scale_disabled =
      resolveMethodBind('Node3D', 'is_scale_disabled', 36873697);

  bool isScaleDisabled() {
    final ret = malloc<Uint8>();
    try {
      ptrcallWithReturn(_mb_is_scale_disabled, nativePtr, [], ret.cast());
      return ret.value != 0;
    } finally {
      malloc.free(ret);
    }
  }

  // Skipped get_world_3d(): unsupported return type "World3D" (Phase 2 breadth work).
  static final Pointer<Void> _mb_force_update_transform =
      resolveMethodBind('Node3D', 'force_update_transform', 3218959716);

  void forceUpdateTransform() {
    try {
      ptrcallVoid(_mb_force_update_transform, nativePtr, []);
    } finally {
    }
  }

  // Skipped set_visibility_parent(): an argument type is unsupported (Phase 2 breadth work).
  // Skipped get_visibility_parent(): unsupported return type "NodePath" (Phase 2 breadth work).
  static final Pointer<Void> _mb_update_gizmos =
      resolveMethodBind('Node3D', 'update_gizmos', 3218959716);

  void updateGizmos() {
    try {
      ptrcallVoid(_mb_update_gizmos, nativePtr, []);
    } finally {
    }
  }

  // Skipped add_gizmo(): an argument type is unsupported (Phase 2 breadth work).
  // Skipped get_gizmos(): unsupported return type "typedarray::Node3DGizmo" (Phase 2 breadth work).
  static final Pointer<Void> _mb_clear_gizmos =
      resolveMethodBind('Node3D', 'clear_gizmos', 3218959716);

  void clearGizmos() {
    try {
      ptrcallVoid(_mb_clear_gizmos, nativePtr, []);
    } finally {
    }
  }

  // Skipped set_subgizmo_selection(): an argument type is unsupported (Phase 2 breadth work).
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
      ptrcallVoid(_mb_set_visible, nativePtr, [arg0.cast()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_visible =
      resolveMethodBind('Node3D', 'is_visible', 36873697);

  bool isVisible() {
    final ret = malloc<Uint8>();
    try {
      ptrcallWithReturn(_mb_is_visible, nativePtr, [], ret.cast());
      return ret.value != 0;
    } finally {
      malloc.free(ret);
    }
  }

  static final Pointer<Void> _mb_is_visible_in_tree =
      resolveMethodBind('Node3D', 'is_visible_in_tree', 36873697);

  bool isVisibleInTree() {
    final ret = malloc<Uint8>();
    try {
      ptrcallWithReturn(_mb_is_visible_in_tree, nativePtr, [], ret.cast());
      return ret.value != 0;
    } finally {
      malloc.free(ret);
    }
  }

  static final Pointer<Void> _mb_show =
      resolveMethodBind('Node3D', 'show', 3218959716);

  void show() {
    try {
      ptrcallVoid(_mb_show, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_hide =
      resolveMethodBind('Node3D', 'hide', 3218959716);

  void hide() {
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
      ptrcallVoid(_mb_set_notify_local_transform, nativePtr, [arg0.cast()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_local_transform_notification_enabled =
      resolveMethodBind('Node3D', 'is_local_transform_notification_enabled', 36873697);

  bool isLocalTransformNotificationEnabled() {
    final ret = malloc<Uint8>();
    try {
      ptrcallWithReturn(_mb_is_local_transform_notification_enabled, nativePtr, [], ret.cast());
      return ret.value != 0;
    } finally {
      malloc.free(ret);
    }
  }

  static final Pointer<Void> _mb_set_notify_transform =
      resolveMethodBind('Node3D', 'set_notify_transform', 2586408642);

  void setNotifyTransform(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_notify_transform, nativePtr, [arg0.cast()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_transform_notification_enabled =
      resolveMethodBind('Node3D', 'is_transform_notification_enabled', 36873697);

  bool isTransformNotificationEnabled() {
    final ret = malloc<Uint8>();
    try {
      ptrcallWithReturn(_mb_is_transform_notification_enabled, nativePtr, [], ret.cast());
      return ret.value != 0;
    } finally {
      malloc.free(ret);
    }
  }

  // Skipped rotate(): an argument type is unsupported (Phase 2 breadth work).
  // Skipped global_rotate(): an argument type is unsupported (Phase 2 breadth work).
  // Skipped global_scale(): an argument type is unsupported (Phase 2 breadth work).
  // Skipped global_translate(): an argument type is unsupported (Phase 2 breadth work).
  // Skipped rotate_object_local(): an argument type is unsupported (Phase 2 breadth work).
  // Skipped scale_object_local(): an argument type is unsupported (Phase 2 breadth work).
  // Skipped translate_object_local(): an argument type is unsupported (Phase 2 breadth work).
  static final Pointer<Void> _mb_rotate_x =
      resolveMethodBind('Node3D', 'rotate_x', 373806689);

  void rotateX(double angle) {
    final arg0 = malloc<Double>()..value = angle;
    try {
      ptrcallVoid(_mb_rotate_x, nativePtr, [arg0.cast()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_rotate_y =
      resolveMethodBind('Node3D', 'rotate_y', 373806689);

  void rotateY(double angle) {
    final arg0 = malloc<Double>()..value = angle;
    try {
      ptrcallVoid(_mb_rotate_y, nativePtr, [arg0.cast()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_rotate_z =
      resolveMethodBind('Node3D', 'rotate_z', 373806689);

  void rotateZ(double angle) {
    final arg0 = malloc<Double>()..value = angle;
    try {
      ptrcallVoid(_mb_rotate_z, nativePtr, [arg0.cast()]);
    } finally {
      malloc.free(arg0);
    }
  }

  // Skipped translate(): an argument type is unsupported (Phase 2 breadth work).
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

  // Skipped look_at(): an argument type is unsupported (Phase 2 breadth work).
  // Skipped look_at_from_position(): an argument type is unsupported (Phase 2 breadth work).
  // Skipped to_local(): unsupported return type "Vector3" (Phase 2 breadth work).
  // Skipped to_global(): unsupported return type "Vector3" (Phase 2 breadth work).
}
