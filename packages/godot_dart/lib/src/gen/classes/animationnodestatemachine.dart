// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class AnimationNodeStateMachine extends AnimationRootNode {
  AnimationNodeStateMachine(super.nativePtr);

  /// Constructs a brand-new engine-owned AnimationNodeStateMachine instance
  /// (via classdb_construct_object3), not an existing one.
  factory AnimationNodeStateMachine.create() {
    return AnimationNodeStateMachine(resolveClassConstructor('AnimationNodeStateMachine'));
  }

  static final Pointer<Void> _mb_add_node =
      resolveMethodBind('AnimationNodeStateMachine', 'add_node', 1980270704);

  void addNode(String name, AnimationNode node, Vector2 position) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), name);
    final arg1 = malloc<Pointer<Void>>()..value = node.nativePtr;
    final arg2 = malloc<Uint8>(Vector2.nativeSize);
    position.writeTo(arg2, 0);
    try {
      ptrcallVoid(_mb_add_node, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_replace_node =
      resolveMethodBind('AnimationNodeStateMachine', 'replace_node', 2559412862);

  void replaceNode(String name, AnimationNode node) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), name);
    final arg1 = malloc<Pointer<Void>>()..value = node.nativePtr;
    try {
      ptrcallVoid(_mb_replace_node, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_node =
      resolveMethodBind('AnimationNodeStateMachine', 'get_node', 625644256);

  AnimationNode? getNode(String name) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), name);
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_node, nativePtr, [arg0.cast<Void>()], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : AnimationNode(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_remove_node =
      resolveMethodBind('AnimationNodeStateMachine', 'remove_node', 3304788590);

  void removeNode(String name) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), name);
    try {
      ptrcallVoid(_mb_remove_node, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_rename_node =
      resolveMethodBind('AnimationNodeStateMachine', 'rename_node', 3740211285);

  void renameNode(String name, String newName) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), name);
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg1.cast(), newName);
    try {
      ptrcallVoid(_mb_rename_node, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
      BuiltinMarshal.destroyStringName(arg1.cast());
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_has_node =
      resolveMethodBind('AnimationNodeStateMachine', 'has_node', 2619796661);

  bool hasNode(String name) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), name);
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_has_node, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_node_name =
      resolveMethodBind('AnimationNodeStateMachine', 'get_node_name', 739213945);

  String getNodeName(AnimationNode node) {
    final arg0 = malloc<Pointer<Void>>()..value = node.nativePtr;
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_node_name, nativePtr, [arg0.cast<Void>()], ret.cast());
        final result = BuiltinMarshal.readStringName(ret.cast());
        BuiltinMarshal.destroyStringName(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  // Skipped get_node_list(): unsupported return type "typedarray::StringName".
  static final Pointer<Void> _mb_set_node_position =
      resolveMethodBind('AnimationNodeStateMachine', 'set_node_position', 1999414630);

  void setNodePosition(String name, Vector2 position) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), name);
    final arg1 = malloc<Uint8>(Vector2.nativeSize);
    position.writeTo(arg1, 0);
    try {
      ptrcallVoid(_mb_set_node_position, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_node_position =
      resolveMethodBind('AnimationNodeStateMachine', 'get_node_position', 3100822709);

  Vector2 getNodePosition(String name) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), name);
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_node_position, nativePtr, [arg0.cast<Void>()], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_has_transition =
      resolveMethodBind('AnimationNodeStateMachine', 'has_transition', 471820014);

  bool hasTransition(String from, String to) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), from);
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg1.cast(), to);
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_has_transition, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
      BuiltinMarshal.destroyStringName(arg1.cast());
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_add_transition =
      resolveMethodBind('AnimationNodeStateMachine', 'add_transition', 795486887);

  void addTransition(String from, String to, AnimationNodeStateMachineTransition transition) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), from);
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg1.cast(), to);
    final arg2 = malloc<Pointer<Void>>()..value = transition.nativePtr;
    try {
      ptrcallVoid(_mb_add_transition, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
      BuiltinMarshal.destroyStringName(arg1.cast());
      malloc.free(arg1);
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_get_transition =
      resolveMethodBind('AnimationNodeStateMachine', 'get_transition', 4192381260);

  AnimationNodeStateMachineTransition? getTransition(int idx) {
    final arg0 = malloc<Int64>()..value = idx;
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_transition, nativePtr, [arg0.cast<Void>()], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : AnimationNodeStateMachineTransition(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_transition_from =
      resolveMethodBind('AnimationNodeStateMachine', 'get_transition_from', 659327637);

  String getTransitionFrom(int idx) {
    final arg0 = malloc<Int64>()..value = idx;
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_transition_from, nativePtr, [arg0.cast<Void>()], ret.cast());
        final result = BuiltinMarshal.readStringName(ret.cast());
        BuiltinMarshal.destroyStringName(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_transition_to =
      resolveMethodBind('AnimationNodeStateMachine', 'get_transition_to', 659327637);

  String getTransitionTo(int idx) {
    final arg0 = malloc<Int64>()..value = idx;
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_transition_to, nativePtr, [arg0.cast<Void>()], ret.cast());
        final result = BuiltinMarshal.readStringName(ret.cast());
        BuiltinMarshal.destroyStringName(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_transition_count =
      resolveMethodBind('AnimationNodeStateMachine', 'get_transition_count', 3905245786);

  int getTransitionCount() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_transition_count, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_remove_transition_by_index =
      resolveMethodBind('AnimationNodeStateMachine', 'remove_transition_by_index', 1286410249);

  void removeTransitionByIndex(int idx) {
    final arg0 = malloc<Int64>()..value = idx;
    try {
      ptrcallVoid(_mb_remove_transition_by_index, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_remove_transition =
      resolveMethodBind('AnimationNodeStateMachine', 'remove_transition', 3740211285);

  void removeTransition(String from, String to) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), from);
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg1.cast(), to);
    try {
      ptrcallVoid(_mb_remove_transition, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
      BuiltinMarshal.destroyStringName(arg1.cast());
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_set_graph_offset =
      resolveMethodBind('AnimationNodeStateMachine', 'set_graph_offset', 743155724);

  void setGraphOffset(Vector2 offset) {
    final arg0 = malloc<Uint8>(Vector2.nativeSize);
    offset.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_graph_offset, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_graph_offset =
      resolveMethodBind('AnimationNodeStateMachine', 'get_graph_offset', 3341600327);

  Vector2 getGraphOffset() {
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_graph_offset, nativePtr, [], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_state_machine_type =
      resolveMethodBind('AnimationNodeStateMachine', 'set_state_machine_type', 2584759088);

  void setStateMachineType(int stateMachineType) {
    final arg0 = malloc<Int64>()..value = stateMachineType;
    try {
      ptrcallVoid(_mb_set_state_machine_type, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_state_machine_type =
      resolveMethodBind('AnimationNodeStateMachine', 'get_state_machine_type', 1140726469);

  int getStateMachineType() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_state_machine_type, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_allow_transition_to_self =
      resolveMethodBind('AnimationNodeStateMachine', 'set_allow_transition_to_self', 2586408642);

  void setAllowTransitionToSelf(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_allow_transition_to_self, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_allow_transition_to_self =
      resolveMethodBind('AnimationNodeStateMachine', 'is_allow_transition_to_self', 36873697);

  bool isAllowTransitionToSelf() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_allow_transition_to_self, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_reset_ends =
      resolveMethodBind('AnimationNodeStateMachine', 'set_reset_ends', 2586408642);

  void setResetEnds(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_reset_ends, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_are_ends_reset =
      resolveMethodBind('AnimationNodeStateMachine', 'are_ends_reset', 36873697);

  bool areEndsReset() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_are_ends_reset, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
