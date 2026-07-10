// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class SkeletonModification2DPhysicalBones extends SkeletonModification2D {
  SkeletonModification2DPhysicalBones(super.nativePtr);

  static final Pointer<Void> _mb_set_physical_bone_chain_length =
      resolveMethodBind('SkeletonModification2DPhysicalBones', 'set_physical_bone_chain_length', 1286410249);

  void setPhysicalBoneChainLength(int length) {
    final arg0 = malloc<Int64>()..value = length;
    try {
      ptrcallVoid(_mb_set_physical_bone_chain_length, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_physical_bone_chain_length =
      resolveMethodBind('SkeletonModification2DPhysicalBones', 'get_physical_bone_chain_length', 2455072627);

  int getPhysicalBoneChainLength() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_physical_bone_chain_length, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  // Skipped set_physical_bone_node(): an argument type is unsupported.
  // Skipped get_physical_bone_node(): unsupported return type "NodePath".
  static final Pointer<Void> _mb_fetch_physical_bones =
      resolveMethodBind('SkeletonModification2DPhysicalBones', 'fetch_physical_bones', 3218959716);

  void fetchPhysicalBones() {
    try {
      ptrcallVoid(_mb_fetch_physical_bones, nativePtr, []);
    } finally {
    }
  }

  // Skipped start_simulation(): an argument type is unsupported.
  // Skipped stop_simulation(): an argument type is unsupported.
}
