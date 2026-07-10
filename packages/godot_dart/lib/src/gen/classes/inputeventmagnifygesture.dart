// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class InputEventMagnifyGesture extends InputEventGesture {
  InputEventMagnifyGesture(super.nativePtr);

  /// Constructs a brand-new engine-owned InputEventMagnifyGesture instance
  /// (via classdb_construct_object3), not an existing one.
  factory InputEventMagnifyGesture.create() {
    return InputEventMagnifyGesture(resolveClassConstructor('InputEventMagnifyGesture'));
  }

  static final Pointer<Void> _mb_set_factor =
      resolveMethodBind('InputEventMagnifyGesture', 'set_factor', 373806689);

  void setFactor(double factor) {
    final arg0 = malloc<Double>()..value = factor;
    try {
      ptrcallVoid(_mb_set_factor, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_factor =
      resolveMethodBind('InputEventMagnifyGesture', 'get_factor', 1740695150);

  double getFactor() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_factor, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
