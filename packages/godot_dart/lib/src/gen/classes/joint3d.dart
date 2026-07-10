// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class Joint3D extends Node3D {
  Joint3D(super.nativePtr);

  // Skipped set_node_a(): an argument type is unsupported.
  // Skipped get_node_a(): unsupported return type "NodePath".
  // Skipped set_node_b(): an argument type is unsupported.
  // Skipped get_node_b(): unsupported return type "NodePath".
  static final Pointer<Void> _mb_set_solver_priority =
      resolveMethodBind('Joint3D', 'set_solver_priority', 1286410249);

  void setSolverPriority(int priority) {
    final arg0 = malloc<Int64>()..value = priority;
    try {
      ptrcallVoid(_mb_set_solver_priority, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_solver_priority =
      resolveMethodBind('Joint3D', 'get_solver_priority', 3905245786);

  int getSolverPriority() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_solver_priority, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_exclude_nodes_from_collision =
      resolveMethodBind('Joint3D', 'set_exclude_nodes_from_collision', 2586408642);

  void setExcludeNodesFromCollision(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_exclude_nodes_from_collision, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_exclude_nodes_from_collision =
      resolveMethodBind('Joint3D', 'get_exclude_nodes_from_collision', 36873697);

  bool getExcludeNodesFromCollision() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_exclude_nodes_from_collision, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  // Skipped get_rid(): unsupported return type "RID".
}
