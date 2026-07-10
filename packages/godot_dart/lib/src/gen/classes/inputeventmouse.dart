// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class InputEventMouse extends InputEventWithModifiers {
  InputEventMouse(super.nativePtr);

  static final Pointer<Void> _mb_set_button_mask =
      resolveMethodBind('InputEventMouse', 'set_button_mask', 3950145251);

  void setButtonMask(int buttonMask) {
    final arg0 = malloc<Int64>()..value = buttonMask;
    try {
      ptrcallVoid(_mb_set_button_mask, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_button_mask =
      resolveMethodBind('InputEventMouse', 'get_button_mask', 2512161324);

  int getButtonMask() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_button_mask, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_position =
      resolveMethodBind('InputEventMouse', 'set_position', 743155724);

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
      resolveMethodBind('InputEventMouse', 'get_position', 3341600327);

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

  static final Pointer<Void> _mb_set_global_position =
      resolveMethodBind('InputEventMouse', 'set_global_position', 743155724);

  void setGlobalPosition(Vector2 globalPosition) {
    final arg0 = malloc<Uint8>(Vector2.nativeSize);
    globalPosition.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_global_position, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_global_position =
      resolveMethodBind('InputEventMouse', 'get_global_position', 3341600327);

  Vector2 getGlobalPosition() {
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_global_position, nativePtr, [], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
