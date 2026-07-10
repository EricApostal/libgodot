// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class InputEventMouseButton extends InputEventMouse {
  InputEventMouseButton(super.nativePtr);

  /// Constructs a brand-new engine-owned InputEventMouseButton instance
  /// (via classdb_construct_object3), not an existing one.
  factory InputEventMouseButton.create() {
    return InputEventMouseButton(resolveClassConstructor('InputEventMouseButton'));
  }

  static final Pointer<Void> _mb_set_factor =
      resolveMethodBind('InputEventMouseButton', 'set_factor', 373806689);

  void setFactor(double factor) {
    final arg0 = malloc<Double>()..value = factor;
    try {
      ptrcallVoid(_mb_set_factor, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_factor =
      resolveMethodBind('InputEventMouseButton', 'get_factor', 1740695150);

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

  static final Pointer<Void> _mb_set_button_index =
      resolveMethodBind('InputEventMouseButton', 'set_button_index', 3624991109);

  void setButtonIndex(int buttonIndex) {
    final arg0 = malloc<Int64>()..value = buttonIndex;
    try {
      ptrcallVoid(_mb_set_button_index, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_button_index =
      resolveMethodBind('InputEventMouseButton', 'get_button_index', 1132662608);

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

  static final Pointer<Void> _mb_set_pressed =
      resolveMethodBind('InputEventMouseButton', 'set_pressed', 2586408642);

  void setPressed(bool pressed) {
    final arg0 = malloc<Uint8>()..value = pressed ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_pressed, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_canceled =
      resolveMethodBind('InputEventMouseButton', 'set_canceled', 2586408642);

  void setCanceled(bool canceled) {
    final arg0 = malloc<Uint8>()..value = canceled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_canceled, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_double_click =
      resolveMethodBind('InputEventMouseButton', 'set_double_click', 2586408642);

  void setDoubleClick(bool doubleClick) {
    final arg0 = malloc<Uint8>()..value = doubleClick ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_double_click, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_double_click =
      resolveMethodBind('InputEventMouseButton', 'is_double_click', 36873697);

  bool isDoubleClick() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_double_click, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
