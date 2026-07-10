// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class PropertyTweener extends Tweener {
  PropertyTweener(super.nativePtr);

  // Skipped from(): an argument type is unsupported.
  static final Pointer<Void> _mb_from_current =
      resolveMethodBind('PropertyTweener', 'from_current', 4279177709);

  PropertyTweener? fromCurrent() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_from_current, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : PropertyTweener(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_as_relative =
      resolveMethodBind('PropertyTweener', 'as_relative', 4279177709);

  PropertyTweener? asRelative() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_as_relative, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : PropertyTweener(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_trans =
      resolveMethodBind('PropertyTweener', 'set_trans', 1899107404);

  PropertyTweener? setTrans(int trans) {
    final arg0 = malloc<Int64>()..value = trans;
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_set_trans, nativePtr, [arg0.cast<Void>()], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : PropertyTweener(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_ease =
      resolveMethodBind('PropertyTweener', 'set_ease', 1080455622);

  PropertyTweener? setEase(int ease) {
    final arg0 = malloc<Int64>()..value = ease;
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_set_ease, nativePtr, [arg0.cast<Void>()], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : PropertyTweener(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  // Skipped set_custom_interpolator(): an argument type is unsupported.
  static final Pointer<Void> _mb_set_delay =
      resolveMethodBind('PropertyTweener', 'set_delay', 2171559331);

  PropertyTweener? setDelay(double delay) {
    final arg0 = malloc<Double>()..value = delay;
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_set_delay, nativePtr, [arg0.cast<Void>()], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : PropertyTweener(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

}
