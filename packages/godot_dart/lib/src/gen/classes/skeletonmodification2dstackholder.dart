// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class SkeletonModification2DStackHolder extends SkeletonModification2D {
  SkeletonModification2DStackHolder(super.nativePtr);

  /// Constructs a brand-new engine-owned SkeletonModification2DStackHolder instance
  /// (via classdb_construct_object3), not an existing one.
  factory SkeletonModification2DStackHolder.create() {
    return SkeletonModification2DStackHolder(resolveClassConstructor('SkeletonModification2DStackHolder'));
  }

  static final Pointer<Void> _mb_set_held_modification_stack =
      resolveMethodBind('SkeletonModification2DStackHolder', 'set_held_modification_stack', 3907307132);

  void setHeldModificationStack(SkeletonModificationStack2D heldModificationStack) {
    final arg0 = malloc<Pointer<Void>>()..value = heldModificationStack.nativePtr;
    try {
      ptrcallVoid(_mb_set_held_modification_stack, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_held_modification_stack =
      resolveMethodBind('SkeletonModification2DStackHolder', 'get_held_modification_stack', 2107508396);

  SkeletonModificationStack2D? getHeldModificationStack() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_held_modification_stack, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : SkeletonModificationStack2D(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
