// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class InputEventJoypadButton extends InputEvent {
  InputEventJoypadButton(super.nativePtr);

  static final Pointer<Void> _mb_set_button_index =
      resolveMethodBind('InputEventJoypadButton', 'set_button_index', 1466368136);

  void setButtonIndex(int buttonIndex) {
    final arg0 = malloc<Int64>()..value = buttonIndex;
    try {
      ptrcallVoid(_mb_set_button_index, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_button_index =
      resolveMethodBind('InputEventJoypadButton', 'get_button_index', 595588182);

  int getButtonIndex() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_button_index, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_pressure =
      resolveMethodBind('InputEventJoypadButton', 'set_pressure', 373806689);

  void setPressure(double pressure) {
    final arg0 = malloc<Double>()..value = pressure;
    try {
      ptrcallVoid(_mb_set_pressure, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_pressure =
      resolveMethodBind('InputEventJoypadButton', 'get_pressure', 1740695150);

  double getPressure() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_pressure, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_pressed =
      resolveMethodBind('InputEventJoypadButton', 'set_pressed', 2586408642);

  void setPressed(bool pressed) {
    final arg0 = malloc<Uint8>()..value = pressed ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_pressed, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

}
