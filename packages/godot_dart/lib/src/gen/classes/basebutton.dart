// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class BaseButton extends Control {
  BaseButton(super.nativePtr);

  static final Pointer<Void> _mb_set_pressed =
      resolveMethodBind('BaseButton', 'set_pressed', 2586408642);

  void setPressed(bool pressed) {
    final arg0 = malloc<Uint8>()..value = pressed ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_pressed, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_pressed =
      resolveMethodBind('BaseButton', 'is_pressed', 36873697);

  bool isPressed() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_pressed, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_pressed_no_signal =
      resolveMethodBind('BaseButton', 'set_pressed_no_signal', 2586408642);

  void setPressedNoSignal(bool pressed) {
    final arg0 = malloc<Uint8>()..value = pressed ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_pressed_no_signal, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_hovered =
      resolveMethodBind('BaseButton', 'is_hovered', 36873697);

  bool isHovered() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_hovered, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_toggle_mode =
      resolveMethodBind('BaseButton', 'set_toggle_mode', 2586408642);

  void setToggleMode(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_toggle_mode, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_toggle_mode =
      resolveMethodBind('BaseButton', 'is_toggle_mode', 36873697);

  bool isToggleMode() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_toggle_mode, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_shortcut_in_tooltip =
      resolveMethodBind('BaseButton', 'set_shortcut_in_tooltip', 2586408642);

  void setShortcutInTooltip(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_shortcut_in_tooltip, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_shortcut_in_tooltip_enabled =
      resolveMethodBind('BaseButton', 'is_shortcut_in_tooltip_enabled', 36873697);

  bool isShortcutInTooltipEnabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_shortcut_in_tooltip_enabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_disabled =
      resolveMethodBind('BaseButton', 'set_disabled', 2586408642);

  void setDisabled(bool disabled) {
    final arg0 = malloc<Uint8>()..value = disabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_disabled, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_disabled =
      resolveMethodBind('BaseButton', 'is_disabled', 36873697);

  bool isDisabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_disabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_action_mode =
      resolveMethodBind('BaseButton', 'set_action_mode', 1985162088);

  void setActionMode(int mode) {
    final arg0 = malloc<Int64>()..value = mode;
    try {
      ptrcallVoid(_mb_set_action_mode, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_action_mode =
      resolveMethodBind('BaseButton', 'get_action_mode', 2589712189);

  int getActionMode() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_action_mode, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_button_mask =
      resolveMethodBind('BaseButton', 'set_button_mask', 3950145251);

  void setButtonMask(int mask) {
    final arg0 = malloc<Int64>()..value = mask;
    try {
      ptrcallVoid(_mb_set_button_mask, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_button_mask =
      resolveMethodBind('BaseButton', 'get_button_mask', 2512161324);

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

  static final Pointer<Void> _mb_get_draw_mode =
      resolveMethodBind('BaseButton', 'get_draw_mode', 2492721305);

  int getDrawMode() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_draw_mode, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_keep_pressed_outside =
      resolveMethodBind('BaseButton', 'set_keep_pressed_outside', 2586408642);

  void setKeepPressedOutside(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_keep_pressed_outside, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_keep_pressed_outside =
      resolveMethodBind('BaseButton', 'is_keep_pressed_outside', 36873697);

  bool isKeepPressedOutside() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_keep_pressed_outside, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_shortcut_feedback =
      resolveMethodBind('BaseButton', 'set_shortcut_feedback', 2586408642);

  void setShortcutFeedback(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_shortcut_feedback, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_shortcut_feedback =
      resolveMethodBind('BaseButton', 'is_shortcut_feedback', 36873697);

  bool isShortcutFeedback() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_shortcut_feedback, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_shortcut =
      resolveMethodBind('BaseButton', 'set_shortcut', 857163497);

  void setShortcut(Shortcut shortcut) {
    final arg0 = malloc<Pointer<Void>>()..value = shortcut.nativePtr;
    try {
      ptrcallVoid(_mb_set_shortcut, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_shortcut =
      resolveMethodBind('BaseButton', 'get_shortcut', 3415666916);

  Shortcut? getShortcut() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_shortcut, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Shortcut(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_button_group =
      resolveMethodBind('BaseButton', 'set_button_group', 1794463739);

  void setButtonGroup(ButtonGroup buttonGroup) {
    final arg0 = malloc<Pointer<Void>>()..value = buttonGroup.nativePtr;
    try {
      ptrcallVoid(_mb_set_button_group, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_button_group =
      resolveMethodBind('BaseButton', 'get_button_group', 281644053);

  ButtonGroup? getButtonGroup() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_button_group, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : ButtonGroup(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
