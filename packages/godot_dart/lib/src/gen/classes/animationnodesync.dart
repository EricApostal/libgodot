// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class AnimationNodeSync extends AnimationNode {
  AnimationNodeSync(super.nativePtr);

  /// Constructs a brand-new engine-owned AnimationNodeSync instance
  /// (via classdb_construct_object3), not an existing one.
  factory AnimationNodeSync.create() {
    return AnimationNodeSync(resolveClassConstructor('AnimationNodeSync'));
  }

  static final Pointer<Void> _mb_set_use_sync =
      resolveMethodBind('AnimationNodeSync', 'set_use_sync', 2586408642);

  void setUseSync(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_use_sync, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_using_sync =
      resolveMethodBind('AnimationNodeSync', 'is_using_sync', 36873697);

  bool isUsingSync() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_using_sync, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
