// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class SceneState extends RefCounted {
  SceneState(super.nativePtr);

  static final Pointer<Void> _mb_get_path =
      resolveMethodBind('SceneState', 'get_path', 201670096);

  String getPath() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_path, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_base_scene_state =
      resolveMethodBind('SceneState', 'get_base_scene_state', 3479783971);

  SceneState? getBaseSceneState() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_base_scene_state, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : SceneState(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_node_count =
      resolveMethodBind('SceneState', 'get_node_count', 3905245786);

  int getNodeCount() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_node_count, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_node_type =
      resolveMethodBind('SceneState', 'get_node_type', 659327637);

  String getNodeType(int idx) {
    final arg0 = malloc<Int64>()..value = idx;
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_node_type, nativePtr, [arg0.cast<Void>()], ret.cast());
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

  static final Pointer<Void> _mb_get_node_name =
      resolveMethodBind('SceneState', 'get_node_name', 659327637);

  String getNodeName(int idx) {
    final arg0 = malloc<Int64>()..value = idx;
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

  // Skipped get_node_path(): unsupported return type "NodePath".
  // Skipped get_node_owner_path(): unsupported return type "NodePath".
  static final Pointer<Void> _mb_is_node_instance_placeholder =
      resolveMethodBind('SceneState', 'is_node_instance_placeholder', 1116898809);

  bool isNodeInstancePlaceholder(int idx) {
    final arg0 = malloc<Int64>()..value = idx;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_node_instance_placeholder, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_node_instance_placeholder =
      resolveMethodBind('SceneState', 'get_node_instance_placeholder', 844755477);

  String getNodeInstancePlaceholder(int idx) {
    final arg0 = malloc<Int64>()..value = idx;
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_node_instance_placeholder, nativePtr, [arg0.cast<Void>()], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_node_instance =
      resolveMethodBind('SceneState', 'get_node_instance', 511017218);

  PackedScene? getNodeInstance(int idx) {
    final arg0 = malloc<Int64>()..value = idx;
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_node_instance, nativePtr, [arg0.cast<Void>()], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : PackedScene(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  // Skipped get_node_groups(): unsupported return type "PackedStringArray".
  static final Pointer<Void> _mb_get_node_index =
      resolveMethodBind('SceneState', 'get_node_index', 923996154);

  int getNodeIndex(int idx) {
    final arg0 = malloc<Int64>()..value = idx;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_node_index, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_node_property_count =
      resolveMethodBind('SceneState', 'get_node_property_count', 923996154);

  int getNodePropertyCount(int idx) {
    final arg0 = malloc<Int64>()..value = idx;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_node_property_count, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_node_property_name =
      resolveMethodBind('SceneState', 'get_node_property_name', 351665558);

  String getNodePropertyName(int idx, int propIdx) {
    final arg0 = malloc<Int64>()..value = idx;
    final arg1 = malloc<Int64>()..value = propIdx;
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_node_property_name, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        final result = BuiltinMarshal.readStringName(ret.cast());
        BuiltinMarshal.destroyStringName(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  // Skipped get_node_property_value(): unsupported return type "Variant".
  static final Pointer<Void> _mb_get_connection_count =
      resolveMethodBind('SceneState', 'get_connection_count', 3905245786);

  int getConnectionCount() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_connection_count, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  // Skipped get_connection_source(): unsupported return type "NodePath".
  static final Pointer<Void> _mb_get_connection_signal =
      resolveMethodBind('SceneState', 'get_connection_signal', 659327637);

  String getConnectionSignal(int idx) {
    final arg0 = malloc<Int64>()..value = idx;
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_connection_signal, nativePtr, [arg0.cast<Void>()], ret.cast());
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

  // Skipped get_connection_target(): unsupported return type "NodePath".
  static final Pointer<Void> _mb_get_connection_method =
      resolveMethodBind('SceneState', 'get_connection_method', 659327637);

  String getConnectionMethod(int idx) {
    final arg0 = malloc<Int64>()..value = idx;
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_connection_method, nativePtr, [arg0.cast<Void>()], ret.cast());
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

  static final Pointer<Void> _mb_get_connection_flags =
      resolveMethodBind('SceneState', 'get_connection_flags', 923996154);

  int getConnectionFlags(int idx) {
    final arg0 = malloc<Int64>()..value = idx;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_connection_flags, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  // Skipped get_connection_binds(): unsupported return type "Array".
  static final Pointer<Void> _mb_get_connection_unbinds =
      resolveMethodBind('SceneState', 'get_connection_unbinds', 923996154);

  int getConnectionUnbinds(int idx) {
    final arg0 = malloc<Int64>()..value = idx;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_connection_unbinds, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

}
