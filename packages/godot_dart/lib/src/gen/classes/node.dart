// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class Node extends GodotObject {
  Node(super.nativePtr);

  static final Pointer<Void> _mb_add_sibling =
      resolveMethodBind('Node', 'add_sibling', 2570952461);

  void addSibling(Node sibling, bool forceReadableName) {
    final arg0 = malloc<Pointer<Void>>()..value = sibling.nativePtr;
    final arg1 = malloc<Uint8>()..value = forceReadableName ? 1 : 0;
    try {
      ptrcallVoid(_mb_add_sibling, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_set_name =
      resolveMethodBind('Node', 'set_name', 3304788590);

  void setName(String name) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), name);
    try {
      ptrcallVoid(_mb_set_name, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_name =
      resolveMethodBind('Node', 'get_name', 2002593661);

  String getName() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_name, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readStringName(ret.cast());
        BuiltinMarshal.destroyStringName(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_add_child =
      resolveMethodBind('Node', 'add_child', 3863233950);

  void addChild(Node node, bool forceReadableName, int internal) {
    final arg0 = malloc<Pointer<Void>>()..value = node.nativePtr;
    final arg1 = malloc<Uint8>()..value = forceReadableName ? 1 : 0;
    final arg2 = malloc<Int64>()..value = internal;
    try {
      ptrcallVoid(_mb_add_child, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_remove_child =
      resolveMethodBind('Node', 'remove_child', 1078189570);

  void removeChild(Node node) {
    final arg0 = malloc<Pointer<Void>>()..value = node.nativePtr;
    try {
      ptrcallVoid(_mb_remove_child, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_reparent =
      resolveMethodBind('Node', 'reparent', 3685795103);

  void reparent(Node newParent, bool keepGlobalTransform) {
    final arg0 = malloc<Pointer<Void>>()..value = newParent.nativePtr;
    final arg1 = malloc<Uint8>()..value = keepGlobalTransform ? 1 : 0;
    try {
      ptrcallVoid(_mb_reparent, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_child_count =
      resolveMethodBind('Node', 'get_child_count', 894402480);

  int getChildCount(bool includeInternal) {
    final arg0 = malloc<Uint8>()..value = includeInternal ? 1 : 0;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_child_count, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  // Skipped get_children(): unsupported return type "typedarray::Node".
  static final Pointer<Void> _mb_get_child =
      resolveMethodBind('Node', 'get_child', 541253412);

  Node? getChild(int idx, bool includeInternal) {
    final arg0 = malloc<Int64>()..value = idx;
    final arg1 = malloc<Uint8>()..value = includeInternal ? 1 : 0;
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_child, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Node(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  // Skipped has_node(): an argument type is unsupported.
  // Skipped get_node(): an argument type is unsupported.
  // Skipped get_node_or_null(): an argument type is unsupported.
  static final Pointer<Void> _mb_get_parent =
      resolveMethodBind('Node', 'get_parent', 3160264692);

  Node? getParent() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_parent, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Node(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_find_child =
      resolveMethodBind('Node', 'find_child', 2008217037);

  Node? findChild(String pattern, bool recursive, bool owned) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), pattern);
    final arg1 = malloc<Uint8>()..value = recursive ? 1 : 0;
    final arg2 = malloc<Uint8>()..value = owned ? 1 : 0;
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_find_child, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Node(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
    }
  }

  // Skipped find_children(): unsupported return type "typedarray::Node".
  static final Pointer<Void> _mb_find_parent =
      resolveMethodBind('Node', 'find_parent', 1140089439);

  Node? findParent(String pattern) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), pattern);
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_find_parent, nativePtr, [arg0.cast<Void>()], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Node(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  // Skipped has_node_and_resource(): an argument type is unsupported.
  // Skipped get_node_and_resource(): unsupported return type "Array".
  static final Pointer<Void> _mb_is_inside_tree =
      resolveMethodBind('Node', 'is_inside_tree', 36873697);

  bool isInsideTree() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_inside_tree, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_is_part_of_edited_scene =
      resolveMethodBind('Node', 'is_part_of_edited_scene', 36873697);

  bool isPartOfEditedScene() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_part_of_edited_scene, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_is_ancestor_of =
      resolveMethodBind('Node', 'is_ancestor_of', 3093956946);

  bool isAncestorOf(Node node) {
    final arg0 = malloc<Pointer<Void>>()..value = node.nativePtr;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_ancestor_of, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_greater_than =
      resolveMethodBind('Node', 'is_greater_than', 3093956946);

  bool isGreaterThan(Node node) {
    final arg0 = malloc<Pointer<Void>>()..value = node.nativePtr;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_greater_than, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  // Skipped get_path(): unsupported return type "NodePath".
  // Skipped get_path_to(): unsupported return type "NodePath".
  static final Pointer<Void> _mb_add_to_group =
      resolveMethodBind('Node', 'add_to_group', 3683006648);

  void addToGroup(String group, bool persistent) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), group);
    final arg1 = malloc<Uint8>()..value = persistent ? 1 : 0;
    try {
      ptrcallVoid(_mb_add_to_group, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_remove_from_group =
      resolveMethodBind('Node', 'remove_from_group', 3304788590);

  void removeFromGroup(String group) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), group);
    try {
      ptrcallVoid(_mb_remove_from_group, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_in_group =
      resolveMethodBind('Node', 'is_in_group', 2619796661);

  bool isInGroup(String group) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), group);
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_in_group, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_move_child =
      resolveMethodBind('Node', 'move_child', 3315886247);

  void moveChild(Node childNode, int toIndex) {
    final arg0 = malloc<Pointer<Void>>()..value = childNode.nativePtr;
    final arg1 = malloc<Int64>()..value = toIndex;
    try {
      ptrcallVoid(_mb_move_child, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  // Skipped get_groups(): unsupported return type "typedarray::StringName".
  static final Pointer<Void> _mb_set_owner =
      resolveMethodBind('Node', 'set_owner', 1078189570);

  void setOwner(Node owner) {
    final arg0 = malloc<Pointer<Void>>()..value = owner.nativePtr;
    try {
      ptrcallVoid(_mb_set_owner, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_owner =
      resolveMethodBind('Node', 'get_owner', 3160264692);

  Node? getOwner() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_owner, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Node(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_index =
      resolveMethodBind('Node', 'get_index', 894402480);

  int getIndex(bool includeInternal) {
    final arg0 = malloc<Uint8>()..value = includeInternal ? 1 : 0;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_index, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_print_tree =
      resolveMethodBind('Node', 'print_tree', 3218959716);

  void printTree() {
    try {
      ptrcallVoid(_mb_print_tree, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_print_tree_pretty =
      resolveMethodBind('Node', 'print_tree_pretty', 3218959716);

  void printTreePretty() {
    try {
      ptrcallVoid(_mb_print_tree_pretty, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_tree_string =
      resolveMethodBind('Node', 'get_tree_string', 2841200299);

  String getTreeString() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_tree_string, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_tree_string_pretty =
      resolveMethodBind('Node', 'get_tree_string_pretty', 2841200299);

  String getTreeStringPretty() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_tree_string_pretty, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_scene_file_path =
      resolveMethodBind('Node', 'set_scene_file_path', 83702148);

  void setSceneFilePath(String sceneFilePath) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), sceneFilePath);
    try {
      ptrcallVoid(_mb_set_scene_file_path, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_scene_file_path =
      resolveMethodBind('Node', 'get_scene_file_path', 201670096);

  String getSceneFilePath() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_scene_file_path, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_propagate_notification =
      resolveMethodBind('Node', 'propagate_notification', 1286410249);

  void propagateNotification(int what) {
    final arg0 = malloc<Int64>()..value = what;
    try {
      ptrcallVoid(_mb_propagate_notification, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  // Skipped propagate_call(): an argument type is unsupported.
  static final Pointer<Void> _mb_set_physics_process =
      resolveMethodBind('Node', 'set_physics_process', 2586408642);

  void setPhysicsProcess(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_physics_process, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_physics_process_delta_time =
      resolveMethodBind('Node', 'get_physics_process_delta_time', 1740695150);

  double getPhysicsProcessDeltaTime() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_physics_process_delta_time, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_is_physics_processing =
      resolveMethodBind('Node', 'is_physics_processing', 36873697);

  bool isPhysicsProcessing() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_physics_processing, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_process_delta_time =
      resolveMethodBind('Node', 'get_process_delta_time', 1740695150);

  double getProcessDeltaTime() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_process_delta_time, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_process =
      resolveMethodBind('Node', 'set_process', 2586408642);

  void setProcess(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_process, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_process_priority =
      resolveMethodBind('Node', 'set_process_priority', 1286410249);

  void setProcessPriority(int priority) {
    final arg0 = malloc<Int64>()..value = priority;
    try {
      ptrcallVoid(_mb_set_process_priority, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_process_priority =
      resolveMethodBind('Node', 'get_process_priority', 3905245786);

  int getProcessPriority() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_process_priority, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_physics_process_priority =
      resolveMethodBind('Node', 'set_physics_process_priority', 1286410249);

  void setPhysicsProcessPriority(int priority) {
    final arg0 = malloc<Int64>()..value = priority;
    try {
      ptrcallVoid(_mb_set_physics_process_priority, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_physics_process_priority =
      resolveMethodBind('Node', 'get_physics_process_priority', 3905245786);

  int getPhysicsProcessPriority() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_physics_process_priority, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_is_processing =
      resolveMethodBind('Node', 'is_processing', 36873697);

  bool isProcessing() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_processing, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_process_input =
      resolveMethodBind('Node', 'set_process_input', 2586408642);

  void setProcessInput(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_process_input, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_processing_input =
      resolveMethodBind('Node', 'is_processing_input', 36873697);

  bool isProcessingInput() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_processing_input, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_process_shortcut_input =
      resolveMethodBind('Node', 'set_process_shortcut_input', 2586408642);

  void setProcessShortcutInput(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_process_shortcut_input, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_processing_shortcut_input =
      resolveMethodBind('Node', 'is_processing_shortcut_input', 36873697);

  bool isProcessingShortcutInput() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_processing_shortcut_input, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_process_unhandled_input =
      resolveMethodBind('Node', 'set_process_unhandled_input', 2586408642);

  void setProcessUnhandledInput(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_process_unhandled_input, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_processing_unhandled_input =
      resolveMethodBind('Node', 'is_processing_unhandled_input', 36873697);

  bool isProcessingUnhandledInput() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_processing_unhandled_input, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_process_unhandled_key_input =
      resolveMethodBind('Node', 'set_process_unhandled_key_input', 2586408642);

  void setProcessUnhandledKeyInput(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_process_unhandled_key_input, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_processing_unhandled_key_input =
      resolveMethodBind('Node', 'is_processing_unhandled_key_input', 36873697);

  bool isProcessingUnhandledKeyInput() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_processing_unhandled_key_input, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_process_mode =
      resolveMethodBind('Node', 'set_process_mode', 1841290486);

  void setProcessMode(int mode) {
    final arg0 = malloc<Int64>()..value = mode;
    try {
      ptrcallVoid(_mb_set_process_mode, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_process_mode =
      resolveMethodBind('Node', 'get_process_mode', 739966102);

  int getProcessMode() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_process_mode, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_can_process =
      resolveMethodBind('Node', 'can_process', 36873697);

  bool canProcess() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_can_process, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_process_thread_group =
      resolveMethodBind('Node', 'set_process_thread_group', 2275442745);

  void setProcessThreadGroup(int mode) {
    final arg0 = malloc<Int64>()..value = mode;
    try {
      ptrcallVoid(_mb_set_process_thread_group, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_process_thread_group =
      resolveMethodBind('Node', 'get_process_thread_group', 1866404740);

  int getProcessThreadGroup() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_process_thread_group, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_process_thread_messages =
      resolveMethodBind('Node', 'set_process_thread_messages', 1357280998);

  void setProcessThreadMessages(int flags) {
    final arg0 = malloc<Int64>()..value = flags;
    try {
      ptrcallVoid(_mb_set_process_thread_messages, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_process_thread_messages =
      resolveMethodBind('Node', 'get_process_thread_messages', 4228993612);

  int getProcessThreadMessages() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_process_thread_messages, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_process_thread_group_order =
      resolveMethodBind('Node', 'set_process_thread_group_order', 1286410249);

  void setProcessThreadGroupOrder(int order) {
    final arg0 = malloc<Int64>()..value = order;
    try {
      ptrcallVoid(_mb_set_process_thread_group_order, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_process_thread_group_order =
      resolveMethodBind('Node', 'get_process_thread_group_order', 3905245786);

  int getProcessThreadGroupOrder() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_process_thread_group_order, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_queue_accessibility_update =
      resolveMethodBind('Node', 'queue_accessibility_update', 3218959716);

  void queueAccessibilityUpdate() {
    try {
      ptrcallVoid(_mb_queue_accessibility_update, nativePtr, []);
    } finally {
    }
  }

  // Skipped get_accessibility_element(): unsupported return type "RID".
  static final Pointer<Void> _mb_set_display_folded =
      resolveMethodBind('Node', 'set_display_folded', 2586408642);

  void setDisplayFolded(bool fold) {
    final arg0 = malloc<Uint8>()..value = fold ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_display_folded, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_displayed_folded =
      resolveMethodBind('Node', 'is_displayed_folded', 36873697);

  bool isDisplayedFolded() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_displayed_folded, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_process_internal =
      resolveMethodBind('Node', 'set_process_internal', 2586408642);

  void setProcessInternal(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_process_internal, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_processing_internal =
      resolveMethodBind('Node', 'is_processing_internal', 36873697);

  bool isProcessingInternal() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_processing_internal, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_physics_process_internal =
      resolveMethodBind('Node', 'set_physics_process_internal', 2586408642);

  void setPhysicsProcessInternal(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_physics_process_internal, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_physics_processing_internal =
      resolveMethodBind('Node', 'is_physics_processing_internal', 36873697);

  bool isPhysicsProcessingInternal() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_physics_processing_internal, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_physics_interpolation_mode =
      resolveMethodBind('Node', 'set_physics_interpolation_mode', 3202404928);

  void setPhysicsInterpolationMode(int mode) {
    final arg0 = malloc<Int64>()..value = mode;
    try {
      ptrcallVoid(_mb_set_physics_interpolation_mode, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_physics_interpolation_mode =
      resolveMethodBind('Node', 'get_physics_interpolation_mode', 2920385216);

  int getPhysicsInterpolationMode() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_physics_interpolation_mode, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_is_physics_interpolated =
      resolveMethodBind('Node', 'is_physics_interpolated', 36873697);

  bool isPhysicsInterpolated() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_physics_interpolated, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_is_physics_interpolated_and_enabled =
      resolveMethodBind('Node', 'is_physics_interpolated_and_enabled', 36873697);

  bool isPhysicsInterpolatedAndEnabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_physics_interpolated_and_enabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_reset_physics_interpolation =
      resolveMethodBind('Node', 'reset_physics_interpolation', 3218959716);

  void resetPhysicsInterpolation() {
    try {
      ptrcallVoid(_mb_reset_physics_interpolation, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_auto_translate_mode =
      resolveMethodBind('Node', 'set_auto_translate_mode', 776149714);

  void setAutoTranslateMode(int mode) {
    final arg0 = malloc<Int64>()..value = mode;
    try {
      ptrcallVoid(_mb_set_auto_translate_mode, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_auto_translate_mode =
      resolveMethodBind('Node', 'get_auto_translate_mode', 2498906432);

  int getAutoTranslateMode() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_auto_translate_mode, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_can_auto_translate =
      resolveMethodBind('Node', 'can_auto_translate', 36873697);

  bool canAutoTranslate() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_can_auto_translate, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_translation_domain_inherited =
      resolveMethodBind('Node', 'set_translation_domain_inherited', 3218959716);

  void setTranslationDomainInherited() {
    try {
      ptrcallVoid(_mb_set_translation_domain_inherited, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_window =
      resolveMethodBind('Node', 'get_window', 1757182445);

  Window? getWindow() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_window, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Window(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_last_exclusive_window =
      resolveMethodBind('Node', 'get_last_exclusive_window', 1757182445);

  Window? getLastExclusiveWindow() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_last_exclusive_window, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Window(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_tree =
      resolveMethodBind('Node', 'get_tree', 2958820483);

  SceneTree? getTree() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_tree, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : SceneTree(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_create_tween =
      resolveMethodBind('Node', 'create_tween', 3426978995);

  Tween? createTween() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_create_tween, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Tween(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_duplicate =
      resolveMethodBind('Node', 'duplicate', 3511555459);

  Node? duplicate(int flags) {
    final arg0 = malloc<Int64>()..value = flags;
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_duplicate, nativePtr, [arg0.cast<Void>()], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Node(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_replace_by =
      resolveMethodBind('Node', 'replace_by', 2570952461);

  void replaceBy(Node node, bool keepGroups) {
    final arg0 = malloc<Pointer<Void>>()..value = node.nativePtr;
    final arg1 = malloc<Uint8>()..value = keepGroups ? 1 : 0;
    try {
      ptrcallVoid(_mb_replace_by, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_set_scene_instance_load_placeholder =
      resolveMethodBind('Node', 'set_scene_instance_load_placeholder', 2586408642);

  void setSceneInstanceLoadPlaceholder(bool loadPlaceholder) {
    final arg0 = malloc<Uint8>()..value = loadPlaceholder ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_scene_instance_load_placeholder, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_scene_instance_load_placeholder =
      resolveMethodBind('Node', 'get_scene_instance_load_placeholder', 36873697);

  bool getSceneInstanceLoadPlaceholder() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_scene_instance_load_placeholder, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_editable_instance =
      resolveMethodBind('Node', 'set_editable_instance', 2731852923);

  void setEditableInstance(Node node, bool isEditable) {
    final arg0 = malloc<Pointer<Void>>()..value = node.nativePtr;
    final arg1 = malloc<Uint8>()..value = isEditable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_editable_instance, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_is_editable_instance =
      resolveMethodBind('Node', 'is_editable_instance', 3093956946);

  bool isEditableInstance(Node node) {
    final arg0 = malloc<Pointer<Void>>()..value = node.nativePtr;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_editable_instance, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_viewport =
      resolveMethodBind('Node', 'get_viewport', 3596683776);

  Viewport? getViewport() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_viewport, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Viewport(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_queue_free =
      resolveMethodBind('Node', 'queue_free', 3218959716);

  void queueFree() {
    try {
      ptrcallVoid(_mb_queue_free, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_request_ready =
      resolveMethodBind('Node', 'request_ready', 3218959716);

  void requestReady() {
    try {
      ptrcallVoid(_mb_request_ready, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_is_node_ready =
      resolveMethodBind('Node', 'is_node_ready', 36873697);

  bool isNodeReady() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_node_ready, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_multiplayer_authority =
      resolveMethodBind('Node', 'set_multiplayer_authority', 972357352);

  void setMultiplayerAuthority(int id, bool recursive) {
    final arg0 = malloc<Int64>()..value = id;
    final arg1 = malloc<Uint8>()..value = recursive ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_multiplayer_authority, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_multiplayer_authority =
      resolveMethodBind('Node', 'get_multiplayer_authority', 3905245786);

  int getMultiplayerAuthority() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_multiplayer_authority, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_is_multiplayer_authority =
      resolveMethodBind('Node', 'is_multiplayer_authority', 36873697);

  bool isMultiplayerAuthority() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_multiplayer_authority, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_multiplayer =
      resolveMethodBind('Node', 'get_multiplayer', 406750475);

  MultiplayerAPI? getMultiplayer() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_multiplayer, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : MultiplayerAPI(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  // Skipped rpc_config(): an argument type is unsupported.
  // Skipped get_node_rpc_config(): unsupported return type "Variant".
  static final Pointer<Void> _mb_set_editor_description =
      resolveMethodBind('Node', 'set_editor_description', 83702148);

  void setEditorDescription(String editorDescription) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), editorDescription);
    try {
      ptrcallVoid(_mb_set_editor_description, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_editor_description =
      resolveMethodBind('Node', 'get_editor_description', 201670096);

  String getEditorDescription() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_editor_description, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_unique_name_in_owner =
      resolveMethodBind('Node', 'set_unique_name_in_owner', 2586408642);

  void setUniqueNameInOwner(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_unique_name_in_owner, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_unique_name_in_owner =
      resolveMethodBind('Node', 'is_unique_name_in_owner', 36873697);

  bool isUniqueNameInOwner() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_unique_name_in_owner, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_atr =
      resolveMethodBind('Node', 'atr', 3344478075);

  String atr(String message, String context) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), message);
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg1.cast(), context);
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_atr, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
      BuiltinMarshal.destroyStringName(arg1.cast());
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_atr_n =
      resolveMethodBind('Node', 'atr_n', 259354841);

  String atrN(String message, String pluralMessage, int n, String context) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), message);
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg1.cast(), pluralMessage);
    final arg2 = malloc<Int64>()..value = n;
    final arg3 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg3.cast(), context);
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_atr_n, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>(), arg3.cast<Void>()], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
      BuiltinMarshal.destroyStringName(arg1.cast());
      malloc.free(arg1);
      malloc.free(arg2);
      BuiltinMarshal.destroyStringName(arg3.cast());
      malloc.free(arg3);
    }
  }

  static final Pointer<Void> _mb_update_configuration_warnings =
      resolveMethodBind('Node', 'update_configuration_warnings', 3218959716);

  void updateConfigurationWarnings() {
    try {
      ptrcallVoid(_mb_update_configuration_warnings, nativePtr, []);
    } finally {
    }
  }

  // Skipped set_deferred_thread_group(): an argument type is unsupported.
  static final Pointer<Void> _mb_notify_deferred_thread_group =
      resolveMethodBind('Node', 'notify_deferred_thread_group', 1286410249);

  void notifyDeferredThreadGroup(int what) {
    final arg0 = malloc<Int64>()..value = what;
    try {
      ptrcallVoid(_mb_notify_deferred_thread_group, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  // Skipped set_thread_safe(): an argument type is unsupported.
  static final Pointer<Void> _mb_notify_thread_safe =
      resolveMethodBind('Node', 'notify_thread_safe', 1286410249);

  void notifyThreadSafe(int what) {
    final arg0 = malloc<Int64>()..value = what;
    try {
      ptrcallVoid(_mb_notify_thread_safe, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

}
