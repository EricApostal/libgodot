// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class AwaitTweener extends Tweener {
  AwaitTweener(super.nativePtr);

  static final Pointer<Void> _mb_set_timeout =
      resolveMethodBind('AwaitTweener', 'set_timeout', 3123469156);

  AwaitTweener? setTimeout(double timeout) {
    final arg0 = malloc<Double>()..value = timeout;
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_set_timeout, nativePtr, [arg0.cast<Void>()], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : AwaitTweener(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

}
