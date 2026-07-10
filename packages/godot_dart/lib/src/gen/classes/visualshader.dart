// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class VisualShader extends Shader {
  VisualShader(super.nativePtr);

  /// Constructs a brand-new engine-owned VisualShader instance
  /// (via classdb_construct_object3), not an existing one.
  factory VisualShader.create() {
    return VisualShader(resolveClassConstructor('VisualShader'));
  }

  static final Pointer<Void> _mb_set_mode =
      resolveMethodBind('VisualShader', 'set_mode', 3978014962);

  void setMode(int mode) {
    final arg0 = malloc<Int64>()..value = mode;
    try {
      ptrcallVoid(_mb_set_mode, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_add_node =
      resolveMethodBind('VisualShader', 'add_node', 1560769431);

  void addNode(int type, VisualShaderNode node, Vector2 position, int id) {
    final arg0 = malloc<Int64>()..value = type;
    final arg1 = malloc<Pointer<Void>>()..value = node.nativePtr;
    final arg2 = malloc<Uint8>(Vector2.nativeSize);
    position.writeTo(arg2, 0);
    final arg3 = malloc<Int64>()..value = id;
    try {
      ptrcallVoid(_mb_add_node, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>(), arg3.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
      malloc.free(arg3);
    }
  }

  static final Pointer<Void> _mb_get_node =
      resolveMethodBind('VisualShader', 'get_node', 3784670312);

  VisualShaderNode? getNode(int type, int id) {
    final arg0 = malloc<Int64>()..value = type;
    final arg1 = malloc<Int64>()..value = id;
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_node, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : VisualShaderNode(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_set_node_position =
      resolveMethodBind('VisualShader', 'set_node_position', 2726660721);

  void setNodePosition(int type, int id, Vector2 position) {
    final arg0 = malloc<Int64>()..value = type;
    final arg1 = malloc<Int64>()..value = id;
    final arg2 = malloc<Uint8>(Vector2.nativeSize);
    position.writeTo(arg2, 0);
    try {
      ptrcallVoid(_mb_set_node_position, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_get_node_position =
      resolveMethodBind('VisualShader', 'get_node_position', 2175036082);

  Vector2 getNodePosition(int type, int id) {
    final arg0 = malloc<Int64>()..value = type;
    final arg1 = malloc<Int64>()..value = id;
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_node_position, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  // Skipped get_node_list(): unsupported return type "PackedInt32Array".
  static final Pointer<Void> _mb_get_valid_node_id =
      resolveMethodBind('VisualShader', 'get_valid_node_id', 629467342);

  int getValidNodeId(int type) {
    final arg0 = malloc<Int64>()..value = type;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_valid_node_id, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_remove_node =
      resolveMethodBind('VisualShader', 'remove_node', 844050912);

  void removeNode(int type, int id) {
    final arg0 = malloc<Int64>()..value = type;
    final arg1 = malloc<Int64>()..value = id;
    try {
      ptrcallVoid(_mb_remove_node, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_replace_node =
      resolveMethodBind('VisualShader', 'replace_node', 3144735253);

  void replaceNode(int type, int id, String newClass) {
    final arg0 = malloc<Int64>()..value = type;
    final arg1 = malloc<Int64>()..value = id;
    final arg2 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg2.cast(), newClass);
    try {
      ptrcallVoid(_mb_replace_node, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      BuiltinMarshal.destroyStringName(arg2.cast());
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_is_node_connection =
      resolveMethodBind('VisualShader', 'is_node_connection', 3922381898);

  bool isNodeConnection(int type, int fromNode, int fromPort, int toNode, int toPort) {
    final arg0 = malloc<Int64>()..value = type;
    final arg1 = malloc<Int64>()..value = fromNode;
    final arg2 = malloc<Int64>()..value = fromPort;
    final arg3 = malloc<Int64>()..value = toNode;
    final arg4 = malloc<Int64>()..value = toPort;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_node_connection, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>(), arg3.cast<Void>(), arg4.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
      malloc.free(arg3);
      malloc.free(arg4);
    }
  }

  static final Pointer<Void> _mb_can_connect_nodes =
      resolveMethodBind('VisualShader', 'can_connect_nodes', 3922381898);

  bool canConnectNodes(int type, int fromNode, int fromPort, int toNode, int toPort) {
    final arg0 = malloc<Int64>()..value = type;
    final arg1 = malloc<Int64>()..value = fromNode;
    final arg2 = malloc<Int64>()..value = fromPort;
    final arg3 = malloc<Int64>()..value = toNode;
    final arg4 = malloc<Int64>()..value = toPort;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_can_connect_nodes, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>(), arg3.cast<Void>(), arg4.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
      malloc.free(arg3);
      malloc.free(arg4);
    }
  }

  static final Pointer<Void> _mb_connect_nodes =
      resolveMethodBind('VisualShader', 'connect_nodes', 3081049573);

  int connectNodes(int type, int fromNode, int fromPort, int toNode, int toPort) {
    final arg0 = malloc<Int64>()..value = type;
    final arg1 = malloc<Int64>()..value = fromNode;
    final arg2 = malloc<Int64>()..value = fromPort;
    final arg3 = malloc<Int64>()..value = toNode;
    final arg4 = malloc<Int64>()..value = toPort;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_connect_nodes, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>(), arg3.cast<Void>(), arg4.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
      malloc.free(arg3);
      malloc.free(arg4);
    }
  }

  static final Pointer<Void> _mb_disconnect_nodes =
      resolveMethodBind('VisualShader', 'disconnect_nodes', 2268060358);

  void disconnectNodes(int type, int fromNode, int fromPort, int toNode, int toPort) {
    final arg0 = malloc<Int64>()..value = type;
    final arg1 = malloc<Int64>()..value = fromNode;
    final arg2 = malloc<Int64>()..value = fromPort;
    final arg3 = malloc<Int64>()..value = toNode;
    final arg4 = malloc<Int64>()..value = toPort;
    try {
      ptrcallVoid(_mb_disconnect_nodes, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>(), arg3.cast<Void>(), arg4.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
      malloc.free(arg3);
      malloc.free(arg4);
    }
  }

  static final Pointer<Void> _mb_connect_nodes_forced =
      resolveMethodBind('VisualShader', 'connect_nodes_forced', 2268060358);

  void connectNodesForced(int type, int fromNode, int fromPort, int toNode, int toPort) {
    final arg0 = malloc<Int64>()..value = type;
    final arg1 = malloc<Int64>()..value = fromNode;
    final arg2 = malloc<Int64>()..value = fromPort;
    final arg3 = malloc<Int64>()..value = toNode;
    final arg4 = malloc<Int64>()..value = toPort;
    try {
      ptrcallVoid(_mb_connect_nodes_forced, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>(), arg3.cast<Void>(), arg4.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
      malloc.free(arg3);
      malloc.free(arg4);
    }
  }

  // Skipped get_node_connections(): unsupported return type "typedarray::Dictionary".
  static final Pointer<Void> _mb_attach_node_to_frame =
      resolveMethodBind('VisualShader', 'attach_node_to_frame', 2479945279);

  void attachNodeToFrame(int type, int id, int frame) {
    final arg0 = malloc<Int64>()..value = type;
    final arg1 = malloc<Int64>()..value = id;
    final arg2 = malloc<Int64>()..value = frame;
    try {
      ptrcallVoid(_mb_attach_node_to_frame, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_detach_node_from_frame =
      resolveMethodBind('VisualShader', 'detach_node_from_frame', 844050912);

  void detachNodeFromFrame(int type, int id) {
    final arg0 = malloc<Int64>()..value = type;
    final arg1 = malloc<Int64>()..value = id;
    try {
      ptrcallVoid(_mb_detach_node_from_frame, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_add_varying =
      resolveMethodBind('VisualShader', 'add_varying', 2084110726);

  void addVarying(String name, int mode, int type) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), name);
    final arg1 = malloc<Int64>()..value = mode;
    final arg2 = malloc<Int64>()..value = type;
    try {
      ptrcallVoid(_mb_add_varying, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_remove_varying =
      resolveMethodBind('VisualShader', 'remove_varying', 83702148);

  void removeVarying(String name) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), name);
    try {
      ptrcallVoid(_mb_remove_varying, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_has_varying =
      resolveMethodBind('VisualShader', 'has_varying', 3927539163);

  bool hasVarying(String name) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), name);
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_has_varying, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_graph_offset =
      resolveMethodBind('VisualShader', 'set_graph_offset', 743155724);

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
      resolveMethodBind('VisualShader', 'get_graph_offset', 3341600327);

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
