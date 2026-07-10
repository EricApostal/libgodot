// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class MenuBar extends Control {
  MenuBar(super.nativePtr);

  static final Pointer<Void> _mb_set_switch_on_hover =
      resolveMethodBind('MenuBar', 'set_switch_on_hover', 2586408642);

  void setSwitchOnHover(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_switch_on_hover, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_switch_on_hover =
      resolveMethodBind('MenuBar', 'is_switch_on_hover', 2240911060);

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
      resolveMethodBind('MenuBar', 'set_disable_shortcuts', 2586408642);

  void setDisableShortcuts(bool disabled) {
    final arg0 = malloc<Uint8>()..value = disabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_disable_shortcuts, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_prefer_global_menu =
      resolveMethodBind('MenuBar', 'set_prefer_global_menu', 2586408642);

  void setPreferGlobalMenu(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_prefer_global_menu, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_prefer_global_menu =
      resolveMethodBind('MenuBar', 'is_prefer_global_menu', 36873697);

  bool isPreferGlobalMenu() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_prefer_global_menu, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_is_native_menu =
      resolveMethodBind('MenuBar', 'is_native_menu', 36873697);

  bool isNativeMenu() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_native_menu, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_menu_count =
      resolveMethodBind('MenuBar', 'get_menu_count', 3905245786);

  int getMenuCount() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_menu_count, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_text_direction =
      resolveMethodBind('MenuBar', 'set_text_direction', 119160795);

  void setTextDirection(int direction) {
    final arg0 = malloc<Int64>()..value = direction;
    try {
      ptrcallVoid(_mb_set_text_direction, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_text_direction =
      resolveMethodBind('MenuBar', 'get_text_direction', 797257663);

  int getTextDirection() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_text_direction, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_language =
      resolveMethodBind('MenuBar', 'set_language', 83702148);

  void setLanguage(String language) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), language);
    try {
      ptrcallVoid(_mb_set_language, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_language =
      resolveMethodBind('MenuBar', 'get_language', 201670096);

  String getLanguage() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_language, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_flat =
      resolveMethodBind('MenuBar', 'set_flat', 2586408642);

  void setFlat(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_flat, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_flat =
      resolveMethodBind('MenuBar', 'is_flat', 36873697);

  bool isFlat() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_flat, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_start_index =
      resolveMethodBind('MenuBar', 'set_start_index', 1286410249);

  void setStartIndex(int enabled) {
    final arg0 = malloc<Int64>()..value = enabled;
    try {
      ptrcallVoid(_mb_set_start_index, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_start_index =
      resolveMethodBind('MenuBar', 'get_start_index', 3905245786);

  int getStartIndex() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_start_index, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_menu_title =
      resolveMethodBind('MenuBar', 'set_menu_title', 501894301);

  void setMenuTitle(int menu, String title) {
    final arg0 = malloc<Int64>()..value = menu;
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg1.cast(), title);
    try {
      ptrcallVoid(_mb_set_menu_title, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      BuiltinMarshal.destroyGDString(arg1.cast());
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_menu_title =
      resolveMethodBind('MenuBar', 'get_menu_title', 844755477);

  String getMenuTitle(int menu) {
    final arg0 = malloc<Int64>()..value = menu;
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_menu_title, nativePtr, [arg0.cast<Void>()], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_menu_tooltip =
      resolveMethodBind('MenuBar', 'set_menu_tooltip', 501894301);

  void setMenuTooltip(int menu, String tooltip) {
    final arg0 = malloc<Int64>()..value = menu;
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg1.cast(), tooltip);
    try {
      ptrcallVoid(_mb_set_menu_tooltip, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      BuiltinMarshal.destroyGDString(arg1.cast());
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_menu_tooltip =
      resolveMethodBind('MenuBar', 'get_menu_tooltip', 844755477);

  String getMenuTooltip(int menu) {
    final arg0 = malloc<Int64>()..value = menu;
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_menu_tooltip, nativePtr, [arg0.cast<Void>()], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_menu_disabled =
      resolveMethodBind('MenuBar', 'set_menu_disabled', 300928843);

  void setMenuDisabled(int menu, bool disabled) {
    final arg0 = malloc<Int64>()..value = menu;
    final arg1 = malloc<Uint8>()..value = disabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_menu_disabled, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_is_menu_disabled =
      resolveMethodBind('MenuBar', 'is_menu_disabled', 1116898809);

  bool isMenuDisabled(int menu) {
    final arg0 = malloc<Int64>()..value = menu;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_menu_disabled, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_menu_hidden =
      resolveMethodBind('MenuBar', 'set_menu_hidden', 300928843);

  void setMenuHidden(int menu, bool hidden) {
    final arg0 = malloc<Int64>()..value = menu;
    final arg1 = malloc<Uint8>()..value = hidden ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_menu_hidden, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_is_menu_hidden =
      resolveMethodBind('MenuBar', 'is_menu_hidden', 1116898809);

  bool isMenuHidden(int menu) {
    final arg0 = malloc<Int64>()..value = menu;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_menu_hidden, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_menu_popup =
      resolveMethodBind('MenuBar', 'get_menu_popup', 2100501353);

  PopupMenu? getMenuPopup(int menu) {
    final arg0 = malloc<Int64>()..value = menu;
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_menu_popup, nativePtr, [arg0.cast<Void>()], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : PopupMenu(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

}
