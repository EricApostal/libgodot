// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class CallbackTweener extends Tweener {
  CallbackTweener(super.nativePtr);

  /// Constructs a brand-new engine-owned CallbackTweener instance
  /// (via classdb_construct_object3), not an existing one.
  factory CallbackTweener.create() {
    return CallbackTweener(resolveClassConstructor('CallbackTweener'));
  }

  static final Pointer<Void> _mb_set_delay =
      resolveMethodBind('CallbackTweener', 'set_delay', 3008182292);

  CallbackTweener? setDelay(double delay) {
    final arg0 = malloc<Double>()..value = delay;
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_set_delay, nativePtr, [arg0.cast<Void>()], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : CallbackTweener(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

}
