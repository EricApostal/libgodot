// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class ButtonGroup extends Resource {
  ButtonGroup(super.nativePtr);

  static final Pointer<Void> _mb_get_pressed_button =
      resolveMethodBind('ButtonGroup', 'get_pressed_button', 3886434893);

  BaseButton? getPressedButton() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_pressed_button, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : BaseButton(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  // Skipped get_buttons(): unsupported return type "typedarray::BaseButton".
  static final Pointer<Void> _mb_set_allow_unpress =
      resolveMethodBind('ButtonGroup', 'set_allow_unpress', 2586408642);

  void setAllowUnpress(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_allow_unpress, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_allow_unpress =
      resolveMethodBind('ButtonGroup', 'is_allow_unpress', 2240911060);

  bool isAllowUnpress() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_allow_unpress, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
