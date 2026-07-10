// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class AnimationTree extends AnimationMixer {
  AnimationTree(super.nativePtr);

  static final Pointer<Void> _mb_set_tree_root =
      resolveMethodBind('AnimationTree', 'set_tree_root', 2581683800);

  void setTreeRoot(AnimationRootNode animationNode) {
    final arg0 = malloc<Pointer<Void>>()..value = animationNode.nativePtr;
    try {
      ptrcallVoid(_mb_set_tree_root, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_tree_root =
      resolveMethodBind('AnimationTree', 'get_tree_root', 4110384712);

  AnimationRootNode? getTreeRoot() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_tree_root, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : AnimationRootNode(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  // Skipped set_advance_expression_base_node(): an argument type is unsupported.
  // Skipped get_advance_expression_base_node(): unsupported return type "NodePath".
  // Skipped set_animation_player(): an argument type is unsupported.
  // Skipped get_animation_player(): unsupported return type "NodePath".
  static final Pointer<Void> _mb_set_process_callback =
      resolveMethodBind('AnimationTree', 'set_process_callback', 1723352826);

  void setProcessCallback(int mode) {
    final arg0 = malloc<Int64>()..value = mode;
    try {
      ptrcallVoid(_mb_set_process_callback, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_process_callback =
      resolveMethodBind('AnimationTree', 'get_process_callback', 891317132);

  int getProcessCallback() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_process_callback, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
