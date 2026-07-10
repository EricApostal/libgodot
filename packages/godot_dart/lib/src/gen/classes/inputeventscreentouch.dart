// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class InputEventScreenTouch extends InputEventFromWindow {
  InputEventScreenTouch(super.nativePtr);

  static final Pointer<Void> _mb_set_index =
      resolveMethodBind('InputEventScreenTouch', 'set_index', 1286410249);

  void setIndex(int index) {
    final arg0 = malloc<Int64>()..value = index;
    try {
      ptrcallVoid(_mb_set_index, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_index =
      resolveMethodBind('InputEventScreenTouch', 'get_index', 3905245786);

  int getIndex() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_index, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_position =
      resolveMethodBind('InputEventScreenTouch', 'set_position', 743155724);

  void setPosition(Vector2 position) {
    final arg0 = malloc<Uint8>(Vector2.nativeSize);
    position.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_position, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_position =
      resolveMethodBind('InputEventScreenTouch', 'get_position', 3341600327);

  Vector2 getPosition() {
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_position, nativePtr, [], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_pressed =
      resolveMethodBind('InputEventScreenTouch', 'set_pressed', 2586408642);

  void setPressed(bool pressed) {
    final arg0 = malloc<Uint8>()..value = pressed ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_pressed, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_canceled =
      resolveMethodBind('InputEventScreenTouch', 'set_canceled', 2586408642);

  void setCanceled(bool canceled) {
    final arg0 = malloc<Uint8>()..value = canceled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_canceled, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_double_tap =
      resolveMethodBind('InputEventScreenTouch', 'set_double_tap', 2586408642);

  void setDoubleTap(bool doubleTap) {
    final arg0 = malloc<Uint8>()..value = doubleTap ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_double_tap, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_double_tap =
      resolveMethodBind('InputEventScreenTouch', 'is_double_tap', 36873697);

  bool isDoubleTap() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_double_tap, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
