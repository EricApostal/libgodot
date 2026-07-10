// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class InputEventPanGesture extends InputEventGesture {
  InputEventPanGesture(super.nativePtr);

  /// Constructs a brand-new engine-owned InputEventPanGesture instance
  /// (via classdb_construct_object3), not an existing one.
  factory InputEventPanGesture.create() {
    return InputEventPanGesture(resolveClassConstructor('InputEventPanGesture'));
  }

  static final Pointer<Void> _mb_set_delta =
      resolveMethodBind('InputEventPanGesture', 'set_delta', 743155724);

  void setDelta(Vector2 delta) {
    final arg0 = malloc<Uint8>(Vector2.nativeSize);
    delta.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_delta, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_delta =
      resolveMethodBind('InputEventPanGesture', 'get_delta', 3341600327);

  Vector2 getDelta() {
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_delta, nativePtr, [], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
