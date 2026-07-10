// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class MenuButton extends Button {
  MenuButton(super.nativePtr);

  static final Pointer<Void> _mb_get_popup =
      resolveMethodBind('MenuButton', 'get_popup', 229722558);

  PopupMenu? getPopup() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_popup, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : PopupMenu(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_show_popup =
      resolveMethodBind('MenuButton', 'show_popup', 3218959716);

  void showPopup() {
    try {
      ptrcallVoid(_mb_show_popup, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_switch_on_hover =
      resolveMethodBind('MenuButton', 'set_switch_on_hover', 2586408642);

  void setSwitchOnHover(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_switch_on_hover, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_switch_on_hover =
      resolveMethodBind('MenuButton', 'is_switch_on_hover', 2240911060);

  bool isSwitchOnHover() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_switch_on_hover, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_disable_shortcuts =
      resolveMethodBind('MenuButton', 'set_disable_shortcuts', 2586408642);

  void setDisableShortcuts(bool disabled) {
    final arg0 = malloc<Uint8>()..value = disabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_disable_shortcuts, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_item_count =
      resolveMethodBind('MenuButton', 'set_item_count', 1286410249);

  void setItemCount(int count) {
    final arg0 = malloc<Int64>()..value = count;
    try {
      ptrcallVoid(_mb_set_item_count, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_item_count =
      resolveMethodBind('MenuButton', 'get_item_count', 3905245786);

  int getItemCount() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_item_count, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
