// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class MethodTweener extends Tweener {
  MethodTweener(super.nativePtr);

  static final Pointer<Void> _mb_set_delay =
      resolveMethodBind('MethodTweener', 'set_delay', 266477812);

  MethodTweener? setDelay(double delay) {
    final arg0 = malloc<Double>()..value = delay;
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_set_delay, nativePtr, [arg0.cast<Void>()], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : MethodTweener(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_trans =
      resolveMethodBind('MethodTweener', 'set_trans', 3740975367);

  MethodTweener? setTrans(int trans) {
    final arg0 = malloc<Int64>()..value = trans;
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_set_trans, nativePtr, [arg0.cast<Void>()], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : MethodTweener(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_ease =
      resolveMethodBind('MethodTweener', 'set_ease', 315540545);

  MethodTweener? setEase(int ease) {
    final arg0 = malloc<Int64>()..value = ease;
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_set_ease, nativePtr, [arg0.cast<Void>()], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : MethodTweener(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

}
