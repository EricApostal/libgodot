// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class AnimationNodeTimeSeek extends AnimationNode {
  AnimationNodeTimeSeek(super.nativePtr);

  static final Pointer<Void> _mb_set_explicit_elapse =
      resolveMethodBind('AnimationNodeTimeSeek', 'set_explicit_elapse', 2586408642);

  void setExplicitElapse(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_explicit_elapse, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_explicit_elapse =
      resolveMethodBind('AnimationNodeTimeSeek', 'is_explicit_elapse', 36873697);

  bool isExplicitElapse() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_explicit_elapse, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
