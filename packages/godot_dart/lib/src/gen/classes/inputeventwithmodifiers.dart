// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class InputEventWithModifiers extends InputEventFromWindow {
  InputEventWithModifiers(super.nativePtr);

  static final Pointer<Void> _mb_set_command_or_control_autoremap =
      resolveMethodBind('InputEventWithModifiers', 'set_command_or_control_autoremap', 2586408642);

  void setCommandOrControlAutoremap(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_command_or_control_autoremap, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_command_or_control_autoremap =
      resolveMethodBind('InputEventWithModifiers', 'is_command_or_control_autoremap', 36873697);

  bool isCommandOrControlAutoremap() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_command_or_control_autoremap, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_is_command_or_control_pressed =
      resolveMethodBind('InputEventWithModifiers', 'is_command_or_control_pressed', 36873697);

  bool isCommandOrControlPressed() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_command_or_control_pressed, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_alt_pressed =
      resolveMethodBind('InputEventWithModifiers', 'set_alt_pressed', 2586408642);

  void setAltPressed(bool pressed) {
    final arg0 = malloc<Uint8>()..value = pressed ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_alt_pressed, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_alt_pressed =
      resolveMethodBind('InputEventWithModifiers', 'is_alt_pressed', 36873697);

  bool isAltPressed() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_alt_pressed, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_shift_pressed =
      resolveMethodBind('InputEventWithModifiers', 'set_shift_pressed', 2586408642);

  void setShiftPressed(bool pressed) {
    final arg0 = malloc<Uint8>()..value = pressed ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_shift_pressed, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_shift_pressed =
      resolveMethodBind('InputEventWithModifiers', 'is_shift_pressed', 36873697);

  bool isShiftPressed() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_shift_pressed, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_ctrl_pressed =
      resolveMethodBind('InputEventWithModifiers', 'set_ctrl_pressed', 2586408642);

  void setCtrlPressed(bool pressed) {
    final arg0 = malloc<Uint8>()..value = pressed ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_ctrl_pressed, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_ctrl_pressed =
      resolveMethodBind('InputEventWithModifiers', 'is_ctrl_pressed', 36873697);

  bool isCtrlPressed() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_ctrl_pressed, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_meta_pressed =
      resolveMethodBind('InputEventWithModifiers', 'set_meta_pressed', 2586408642);

  void setMetaPressed(bool pressed) {
    final arg0 = malloc<Uint8>()..value = pressed ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_meta_pressed, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_meta_pressed =
      resolveMethodBind('InputEventWithModifiers', 'is_meta_pressed', 36873697);

  bool isMetaPressed() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_meta_pressed, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_modifiers_mask =
      resolveMethodBind('InputEventWithModifiers', 'get_modifiers_mask', 1258259499);

  int getModifiersMask() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_modifiers_mask, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
