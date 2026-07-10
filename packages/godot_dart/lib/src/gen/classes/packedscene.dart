// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class PackedScene extends Resource {
  PackedScene(super.nativePtr);

  static final Pointer<Void> _mb_pack =
      resolveMethodBind('PackedScene', 'pack', 2584678054);

  int pack(Node path) {
    final arg0 = malloc<Pointer<Void>>()..value = path.nativePtr;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_pack, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_instantiate =
      resolveMethodBind('PackedScene', 'instantiate', 2628778455);

  Node? instantiate(int editState) {
    final arg0 = malloc<Int64>()..value = editState;
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_instantiate, nativePtr, [arg0.cast<Void>()], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Node(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_can_instantiate =
      resolveMethodBind('PackedScene', 'can_instantiate', 36873697);

  bool canInstantiate() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_can_instantiate, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_state =
      resolveMethodBind('PackedScene', 'get_state', 3479783971);

  SceneState? getState() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_state, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : SceneState(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
