// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class AnimationNodeBlendTree extends AnimationRootNode {
  AnimationNodeBlendTree(super.nativePtr);

  /// Constructs a brand-new engine-owned AnimationNodeBlendTree instance
  /// (via classdb_construct_object3), not an existing one.
  factory AnimationNodeBlendTree.create() {
    return AnimationNodeBlendTree(resolveClassConstructor('AnimationNodeBlendTree'));
  }

  static final Pointer<Void> _mb_add_node =
      resolveMethodBind('AnimationNodeBlendTree', 'add_node', 1980270704);

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

  static final Pointer<Void> _mb_get_node =
      resolveMethodBind('AnimationNodeBlendTree', 'get_node', 625644256);

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
      resolveMethodBind('AnimationNodeBlendTree', 'remove_node', 3304788590);

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
      resolveMethodBind('AnimationNodeBlendTree', 'rename_node', 3740211285);

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
      resolveMethodBind('AnimationNodeBlendTree', 'has_node', 2619796661);

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

  static final Pointer<Void> _mb_connect_node =
      resolveMethodBind('AnimationNodeBlendTree', 'connect_node', 2168001410);

  void connectNode(String inputNode, int inputIndex, String outputNode) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), inputNode);
    final arg1 = malloc<Int64>()..value = inputIndex;
    final arg2 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg2.cast(), outputNode);
    try {
      ptrcallVoid(_mb_connect_node, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
      malloc.free(arg1);
      BuiltinMarshal.destroyStringName(arg2.cast());
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_disconnect_node =
      resolveMethodBind('AnimationNodeBlendTree', 'disconnect_node', 2415702435);

  void disconnectNode(String inputNode, int inputIndex) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), inputNode);
    final arg1 = malloc<Int64>()..value = inputIndex;
    try {
      ptrcallVoid(_mb_disconnect_node, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  // Skipped get_node_list(): unsupported return type "typedarray::StringName".
  static final Pointer<Void> _mb_set_node_position =
      resolveMethodBind('AnimationNodeBlendTree', 'set_node_position', 1999414630);

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
      resolveMethodBind('AnimationNodeBlendTree', 'get_node_position', 3100822709);

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

  static final Pointer<Void> _mb_set_graph_offset =
      resolveMethodBind('AnimationNodeBlendTree', 'set_graph_offset', 743155724);

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
      resolveMethodBind('AnimationNodeBlendTree', 'get_graph_offset', 3341600327);

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

}
