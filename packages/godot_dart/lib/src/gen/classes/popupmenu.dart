// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class PopupMenu extends Popup {
  PopupMenu(super.nativePtr);

  static final Pointer<Void> _mb_activate_item_by_event =
      resolveMethodBind('PopupMenu', 'activate_item_by_event', 3716412023);

  bool activateItemByEvent(InputEvent event, bool forGlobalOnly) {
    final arg0 = malloc<Pointer<Void>>()..value = event.nativePtr;
    final arg1 = malloc<Uint8>()..value = forGlobalOnly ? 1 : 0;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_activate_item_by_event, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_set_prefer_native_menu =
      resolveMethodBind('PopupMenu', 'set_prefer_native_menu', 2586408642);

  void setPreferNativeMenu(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_prefer_native_menu, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_prefer_native_menu =
      resolveMethodBind('PopupMenu', 'is_prefer_native_menu', 36873697);

  bool isPreferNativeMenu() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_prefer_native_menu, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_is_native_menu =
      resolveMethodBind('PopupMenu', 'is_native_menu', 36873697);

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

  static final Pointer<Void> _mb_add_item =
      resolveMethodBind('PopupMenu', 'add_item', 3674230041);

  void addItem(String label, int id, int accel) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), label);
    final arg1 = malloc<Int64>()..value = id;
    final arg2 = malloc<Int64>()..value = accel;
    try {
      ptrcallVoid(_mb_add_item, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_add_icon_item =
      resolveMethodBind('PopupMenu', 'add_icon_item', 1086190128);

  void addIconItem(Texture2D texture, String label, int id, int accel) {
    final arg0 = malloc<Pointer<Void>>()..value = texture.nativePtr;
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg1.cast(), label);
    final arg2 = malloc<Int64>()..value = id;
    final arg3 = malloc<Int64>()..value = accel;
    try {
      ptrcallVoid(_mb_add_icon_item, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>(), arg3.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      BuiltinMarshal.destroyGDString(arg1.cast());
      malloc.free(arg1);
      malloc.free(arg2);
      malloc.free(arg3);
    }
  }

  static final Pointer<Void> _mb_add_check_item =
      resolveMethodBind('PopupMenu', 'add_check_item', 3674230041);

  void addCheckItem(String label, int id, int accel) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), label);
    final arg1 = malloc<Int64>()..value = id;
    final arg2 = malloc<Int64>()..value = accel;
    try {
      ptrcallVoid(_mb_add_check_item, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_add_icon_check_item =
      resolveMethodBind('PopupMenu', 'add_icon_check_item', 1086190128);

  void addIconCheckItem(Texture2D texture, String label, int id, int accel) {
    final arg0 = malloc<Pointer<Void>>()..value = texture.nativePtr;
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg1.cast(), label);
    final arg2 = malloc<Int64>()..value = id;
    final arg3 = malloc<Int64>()..value = accel;
    try {
      ptrcallVoid(_mb_add_icon_check_item, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>(), arg3.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      BuiltinMarshal.destroyGDString(arg1.cast());
      malloc.free(arg1);
      malloc.free(arg2);
      malloc.free(arg3);
    }
  }

  static final Pointer<Void> _mb_add_radio_check_item =
      resolveMethodBind('PopupMenu', 'add_radio_check_item', 3674230041);

  void addRadioCheckItem(String label, int id, int accel) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), label);
    final arg1 = malloc<Int64>()..value = id;
    final arg2 = malloc<Int64>()..value = accel;
    try {
      ptrcallVoid(_mb_add_radio_check_item, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_add_icon_radio_check_item =
      resolveMethodBind('PopupMenu', 'add_icon_radio_check_item', 1086190128);

  void addIconRadioCheckItem(Texture2D texture, String label, int id, int accel) {
    final arg0 = malloc<Pointer<Void>>()..value = texture.nativePtr;
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg1.cast(), label);
    final arg2 = malloc<Int64>()..value = id;
    final arg3 = malloc<Int64>()..value = accel;
    try {
      ptrcallVoid(_mb_add_icon_radio_check_item, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>(), arg3.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      BuiltinMarshal.destroyGDString(arg1.cast());
      malloc.free(arg1);
      malloc.free(arg2);
      malloc.free(arg3);
    }
  }

  static final Pointer<Void> _mb_add_multistate_item =
      resolveMethodBind('PopupMenu', 'add_multistate_item', 150780458);

  void addMultistateItem(String label, int maxStates, int defaultState, int id, int accel) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), label);
    final arg1 = malloc<Int64>()..value = maxStates;
    final arg2 = malloc<Int64>()..value = defaultState;
    final arg3 = malloc<Int64>()..value = id;
    final arg4 = malloc<Int64>()..value = accel;
    try {
      ptrcallVoid(_mb_add_multistate_item, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>(), arg3.cast<Void>(), arg4.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
      malloc.free(arg3);
      malloc.free(arg4);
    }
  }

  static final Pointer<Void> _mb_add_shortcut =
      resolveMethodBind('PopupMenu', 'add_shortcut', 3451850107);

  void addShortcut(Shortcut shortcut, int id, bool global, bool allowEcho) {
    final arg0 = malloc<Pointer<Void>>()..value = shortcut.nativePtr;
    final arg1 = malloc<Int64>()..value = id;
    final arg2 = malloc<Uint8>()..value = global ? 1 : 0;
    final arg3 = malloc<Uint8>()..value = allowEcho ? 1 : 0;
    try {
      ptrcallVoid(_mb_add_shortcut, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>(), arg3.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
      malloc.free(arg3);
    }
  }

  static final Pointer<Void> _mb_add_icon_shortcut =
      resolveMethodBind('PopupMenu', 'add_icon_shortcut', 2997871092);

  void addIconShortcut(Texture2D texture, Shortcut shortcut, int id, bool global, bool allowEcho) {
    final arg0 = malloc<Pointer<Void>>()..value = texture.nativePtr;
    final arg1 = malloc<Pointer<Void>>()..value = shortcut.nativePtr;
    final arg2 = malloc<Int64>()..value = id;
    final arg3 = malloc<Uint8>()..value = global ? 1 : 0;
    final arg4 = malloc<Uint8>()..value = allowEcho ? 1 : 0;
    try {
      ptrcallVoid(_mb_add_icon_shortcut, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>(), arg3.cast<Void>(), arg4.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
      malloc.free(arg3);
      malloc.free(arg4);
    }
  }

  static final Pointer<Void> _mb_add_check_shortcut =
      resolveMethodBind('PopupMenu', 'add_check_shortcut', 1642193386);

  void addCheckShortcut(Shortcut shortcut, int id, bool global) {
    final arg0 = malloc<Pointer<Void>>()..value = shortcut.nativePtr;
    final arg1 = malloc<Int64>()..value = id;
    final arg2 = malloc<Uint8>()..value = global ? 1 : 0;
    try {
      ptrcallVoid(_mb_add_check_shortcut, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_add_icon_check_shortcut =
      resolveMethodBind('PopupMenu', 'add_icon_check_shortcut', 3856247530);

  void addIconCheckShortcut(Texture2D texture, Shortcut shortcut, int id, bool global) {
    final arg0 = malloc<Pointer<Void>>()..value = texture.nativePtr;
    final arg1 = malloc<Pointer<Void>>()..value = shortcut.nativePtr;
    final arg2 = malloc<Int64>()..value = id;
    final arg3 = malloc<Uint8>()..value = global ? 1 : 0;
    try {
      ptrcallVoid(_mb_add_icon_check_shortcut, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>(), arg3.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
      malloc.free(arg3);
    }
  }

  static final Pointer<Void> _mb_add_radio_check_shortcut =
      resolveMethodBind('PopupMenu', 'add_radio_check_shortcut', 1642193386);

  void addRadioCheckShortcut(Shortcut shortcut, int id, bool global) {
    final arg0 = malloc<Pointer<Void>>()..value = shortcut.nativePtr;
    final arg1 = malloc<Int64>()..value = id;
    final arg2 = malloc<Uint8>()..value = global ? 1 : 0;
    try {
      ptrcallVoid(_mb_add_radio_check_shortcut, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_add_icon_radio_check_shortcut =
      resolveMethodBind('PopupMenu', 'add_icon_radio_check_shortcut', 3856247530);

  void addIconRadioCheckShortcut(Texture2D texture, Shortcut shortcut, int id, bool global) {
    final arg0 = malloc<Pointer<Void>>()..value = texture.nativePtr;
    final arg1 = malloc<Pointer<Void>>()..value = shortcut.nativePtr;
    final arg2 = malloc<Int64>()..value = id;
    final arg3 = malloc<Uint8>()..value = global ? 1 : 0;
    try {
      ptrcallVoid(_mb_add_icon_radio_check_shortcut, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>(), arg3.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
      malloc.free(arg3);
    }
  }

  static final Pointer<Void> _mb_add_submenu_item =
      resolveMethodBind('PopupMenu', 'add_submenu_item', 2979222410);

  void addSubmenuItem(String label, String submenu, int id) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), label);
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg1.cast(), submenu);
    final arg2 = malloc<Int64>()..value = id;
    try {
      ptrcallVoid(_mb_add_submenu_item, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
      BuiltinMarshal.destroyGDString(arg1.cast());
      malloc.free(arg1);
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_add_submenu_node_item =
      resolveMethodBind('PopupMenu', 'add_submenu_node_item', 1325455216);

  void addSubmenuNodeItem(String label, PopupMenu submenu, int id) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), label);
    final arg1 = malloc<Pointer<Void>>()..value = submenu.nativePtr;
    final arg2 = malloc<Int64>()..value = id;
    try {
      ptrcallVoid(_mb_add_submenu_node_item, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_set_item_text =
      resolveMethodBind('PopupMenu', 'set_item_text', 501894301);

  void setItemText(int index, String text) {
    final arg0 = malloc<Int64>()..value = index;
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg1.cast(), text);
    try {
      ptrcallVoid(_mb_set_item_text, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      BuiltinMarshal.destroyGDString(arg1.cast());
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_set_item_text_direction =
      resolveMethodBind('PopupMenu', 'set_item_text_direction', 1707680378);

  void setItemTextDirection(int index, int direction) {
    final arg0 = malloc<Int64>()..value = index;
    final arg1 = malloc<Int64>()..value = direction;
    try {
      ptrcallVoid(_mb_set_item_text_direction, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_set_item_language =
      resolveMethodBind('PopupMenu', 'set_item_language', 501894301);

  void setItemLanguage(int index, String language) {
    final arg0 = malloc<Int64>()..value = index;
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg1.cast(), language);
    try {
      ptrcallVoid(_mb_set_item_language, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      BuiltinMarshal.destroyGDString(arg1.cast());
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_set_item_auto_translate_mode =
      resolveMethodBind('PopupMenu', 'set_item_auto_translate_mode', 287402019);

  void setItemAutoTranslateMode(int index, int mode) {
    final arg0 = malloc<Int64>()..value = index;
    final arg1 = malloc<Int64>()..value = mode;
    try {
      ptrcallVoid(_mb_set_item_auto_translate_mode, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_set_item_icon =
      resolveMethodBind('PopupMenu', 'set_item_icon', 666127730);

  void setItemIcon(int index, Texture2D icon) {
    final arg0 = malloc<Int64>()..value = index;
    final arg1 = malloc<Pointer<Void>>()..value = icon.nativePtr;
    try {
      ptrcallVoid(_mb_set_item_icon, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_set_item_icon_max_width =
      resolveMethodBind('PopupMenu', 'set_item_icon_max_width', 3937882851);

  void setItemIconMaxWidth(int index, int width) {
    final arg0 = malloc<Int64>()..value = index;
    final arg1 = malloc<Int64>()..value = width;
    try {
      ptrcallVoid(_mb_set_item_icon_max_width, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_set_item_icon_modulate =
      resolveMethodBind('PopupMenu', 'set_item_icon_modulate', 2878471219);

  void setItemIconModulate(int index, Color modulate) {
    final arg0 = malloc<Int64>()..value = index;
    final arg1 = malloc<Uint8>(Color.nativeSize);
    modulate.writeTo(arg1, 0);
    try {
      ptrcallVoid(_mb_set_item_icon_modulate, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_set_item_checked =
      resolveMethodBind('PopupMenu', 'set_item_checked', 300928843);

  void setItemChecked(int index, bool checked) {
    final arg0 = malloc<Int64>()..value = index;
    final arg1 = malloc<Uint8>()..value = checked ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_item_checked, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_set_item_indeterminate =
      resolveMethodBind('PopupMenu', 'set_item_indeterminate', 300928843);

  void setItemIndeterminate(int index, bool indeterminate) {
    final arg0 = malloc<Int64>()..value = index;
    final arg1 = malloc<Uint8>()..value = indeterminate ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_item_indeterminate, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_set_item_id =
      resolveMethodBind('PopupMenu', 'set_item_id', 3937882851);

  void setItemId(int index, int id) {
    final arg0 = malloc<Int64>()..value = index;
    final arg1 = malloc<Int64>()..value = id;
    try {
      ptrcallVoid(_mb_set_item_id, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_set_item_accelerator =
      resolveMethodBind('PopupMenu', 'set_item_accelerator', 2992817551);

  void setItemAccelerator(int index, int accel) {
    final arg0 = malloc<Int64>()..value = index;
    final arg1 = malloc<Int64>()..value = accel;
    try {
      ptrcallVoid(_mb_set_item_accelerator, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  // Skipped set_item_metadata(): an argument type is unsupported.
  static final Pointer<Void> _mb_set_item_disabled =
      resolveMethodBind('PopupMenu', 'set_item_disabled', 300928843);

  void setItemDisabled(int index, bool disabled) {
    final arg0 = malloc<Int64>()..value = index;
    final arg1 = malloc<Uint8>()..value = disabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_item_disabled, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_set_item_submenu =
      resolveMethodBind('PopupMenu', 'set_item_submenu', 501894301);

  void setItemSubmenu(int index, String submenu) {
    final arg0 = malloc<Int64>()..value = index;
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg1.cast(), submenu);
    try {
      ptrcallVoid(_mb_set_item_submenu, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      BuiltinMarshal.destroyGDString(arg1.cast());
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_set_item_submenu_node =
      resolveMethodBind('PopupMenu', 'set_item_submenu_node', 1068370740);

  void setItemSubmenuNode(int index, PopupMenu submenu) {
    final arg0 = malloc<Int64>()..value = index;
    final arg1 = malloc<Pointer<Void>>()..value = submenu.nativePtr;
    try {
      ptrcallVoid(_mb_set_item_submenu_node, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_set_item_as_separator =
      resolveMethodBind('PopupMenu', 'set_item_as_separator', 300928843);

  void setItemAsSeparator(int index, bool enable) {
    final arg0 = malloc<Int64>()..value = index;
    final arg1 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_item_as_separator, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_set_item_as_checkable =
      resolveMethodBind('PopupMenu', 'set_item_as_checkable', 300928843);

  void setItemAsCheckable(int index, bool enable) {
    final arg0 = malloc<Int64>()..value = index;
    final arg1 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_item_as_checkable, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_set_item_as_radio_checkable =
      resolveMethodBind('PopupMenu', 'set_item_as_radio_checkable', 300928843);

  void setItemAsRadioCheckable(int index, bool enable) {
    final arg0 = malloc<Int64>()..value = index;
    final arg1 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_item_as_radio_checkable, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_set_item_tooltip =
      resolveMethodBind('PopupMenu', 'set_item_tooltip', 501894301);

  void setItemTooltip(int index, String tooltip) {
    final arg0 = malloc<Int64>()..value = index;
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg1.cast(), tooltip);
    try {
      ptrcallVoid(_mb_set_item_tooltip, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      BuiltinMarshal.destroyGDString(arg1.cast());
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_set_item_shortcut =
      resolveMethodBind('PopupMenu', 'set_item_shortcut', 825127832);

  void setItemShortcut(int index, Shortcut shortcut, bool global) {
    final arg0 = malloc<Int64>()..value = index;
    final arg1 = malloc<Pointer<Void>>()..value = shortcut.nativePtr;
    final arg2 = malloc<Uint8>()..value = global ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_item_shortcut, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_set_item_indent =
      resolveMethodBind('PopupMenu', 'set_item_indent', 3937882851);

  void setItemIndent(int index, int indent) {
    final arg0 = malloc<Int64>()..value = index;
    final arg1 = malloc<Int64>()..value = indent;
    try {
      ptrcallVoid(_mb_set_item_indent, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_set_item_multistate =
      resolveMethodBind('PopupMenu', 'set_item_multistate', 3937882851);

  void setItemMultistate(int index, int state) {
    final arg0 = malloc<Int64>()..value = index;
    final arg1 = malloc<Int64>()..value = state;
    try {
      ptrcallVoid(_mb_set_item_multistate, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_set_item_multistate_max =
      resolveMethodBind('PopupMenu', 'set_item_multistate_max', 3937882851);

  void setItemMultistateMax(int index, int maxStates) {
    final arg0 = malloc<Int64>()..value = index;
    final arg1 = malloc<Int64>()..value = maxStates;
    try {
      ptrcallVoid(_mb_set_item_multistate_max, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_set_item_shortcut_disabled =
      resolveMethodBind('PopupMenu', 'set_item_shortcut_disabled', 300928843);

  void setItemShortcutDisabled(int index, bool disabled) {
    final arg0 = malloc<Int64>()..value = index;
    final arg1 = malloc<Uint8>()..value = disabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_item_shortcut_disabled, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_set_item_index =
      resolveMethodBind('PopupMenu', 'set_item_index', 3937882851);

  void setItemIndex(int index, int targetIndex) {
    final arg0 = malloc<Int64>()..value = index;
    final arg1 = malloc<Int64>()..value = targetIndex;
    try {
      ptrcallVoid(_mb_set_item_index, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_toggle_item_checked =
      resolveMethodBind('PopupMenu', 'toggle_item_checked', 1286410249);

  void toggleItemChecked(int index) {
    final arg0 = malloc<Int64>()..value = index;
    try {
      ptrcallVoid(_mb_toggle_item_checked, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_toggle_item_multistate =
      resolveMethodBind('PopupMenu', 'toggle_item_multistate', 1286410249);

  void toggleItemMultistate(int index) {
    final arg0 = malloc<Int64>()..value = index;
    try {
      ptrcallVoid(_mb_toggle_item_multistate, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_item_text =
      resolveMethodBind('PopupMenu', 'get_item_text', 844755477);

  String getItemText(int index) {
    final arg0 = malloc<Int64>()..value = index;
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_item_text, nativePtr, [arg0.cast<Void>()], ret.cast());
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

  static final Pointer<Void> _mb_get_item_text_direction =
      resolveMethodBind('PopupMenu', 'get_item_text_direction', 4235602388);

  int getItemTextDirection(int index) {
    final arg0 = malloc<Int64>()..value = index;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_item_text_direction, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_item_language =
      resolveMethodBind('PopupMenu', 'get_item_language', 844755477);

  String getItemLanguage(int index) {
    final arg0 = malloc<Int64>()..value = index;
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_item_language, nativePtr, [arg0.cast<Void>()], ret.cast());
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

  static final Pointer<Void> _mb_get_item_auto_translate_mode =
      resolveMethodBind('PopupMenu', 'get_item_auto_translate_mode', 906302372);

  int getItemAutoTranslateMode(int index) {
    final arg0 = malloc<Int64>()..value = index;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_item_auto_translate_mode, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_item_icon =
      resolveMethodBind('PopupMenu', 'get_item_icon', 3536238170);

  Texture2D? getItemIcon(int index) {
    final arg0 = malloc<Int64>()..value = index;
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_item_icon, nativePtr, [arg0.cast<Void>()], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Texture2D(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_item_icon_max_width =
      resolveMethodBind('PopupMenu', 'get_item_icon_max_width', 923996154);

  int getItemIconMaxWidth(int index) {
    final arg0 = malloc<Int64>()..value = index;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_item_icon_max_width, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_item_icon_modulate =
      resolveMethodBind('PopupMenu', 'get_item_icon_modulate', 3457211756);

  Color getItemIconModulate(int index) {
    final arg0 = malloc<Int64>()..value = index;
    try {
      final ret = malloc<Uint8>(Color.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_item_icon_modulate, nativePtr, [arg0.cast<Void>()], ret.cast());
        return Color.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_item_checked =
      resolveMethodBind('PopupMenu', 'is_item_checked', 1116898809);

  bool isItemChecked(int index) {
    final arg0 = malloc<Int64>()..value = index;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_item_checked, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_item_indeterminate =
      resolveMethodBind('PopupMenu', 'is_item_indeterminate', 1116898809);

  bool isItemIndeterminate(int index) {
    final arg0 = malloc<Int64>()..value = index;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_item_indeterminate, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_item_id =
      resolveMethodBind('PopupMenu', 'get_item_id', 923996154);

  int getItemId(int index) {
    final arg0 = malloc<Int64>()..value = index;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_item_id, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_item_index =
      resolveMethodBind('PopupMenu', 'get_item_index', 923996154);

  int getItemIndex(int id) {
    final arg0 = malloc<Int64>()..value = id;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_item_index, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_item_accelerator =
      resolveMethodBind('PopupMenu', 'get_item_accelerator', 253789942);

  int getItemAccelerator(int index) {
    final arg0 = malloc<Int64>()..value = index;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_item_accelerator, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  // Skipped get_item_metadata(): unsupported return type "Variant".
  static final Pointer<Void> _mb_is_item_disabled =
      resolveMethodBind('PopupMenu', 'is_item_disabled', 1116898809);

  bool isItemDisabled(int index) {
    final arg0 = malloc<Int64>()..value = index;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_item_disabled, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_item_submenu =
      resolveMethodBind('PopupMenu', 'get_item_submenu', 844755477);

  String getItemSubmenu(int index) {
    final arg0 = malloc<Int64>()..value = index;
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_item_submenu, nativePtr, [arg0.cast<Void>()], ret.cast());
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

  static final Pointer<Void> _mb_get_item_submenu_node =
      resolveMethodBind('PopupMenu', 'get_item_submenu_node', 2100501353);

  PopupMenu? getItemSubmenuNode(int index) {
    final arg0 = malloc<Int64>()..value = index;
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_item_submenu_node, nativePtr, [arg0.cast<Void>()], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : PopupMenu(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_item_separator =
      resolveMethodBind('PopupMenu', 'is_item_separator', 1116898809);

  bool isItemSeparator(int index) {
    final arg0 = malloc<Int64>()..value = index;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_item_separator, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_item_checkable =
      resolveMethodBind('PopupMenu', 'is_item_checkable', 1116898809);

  bool isItemCheckable(int index) {
    final arg0 = malloc<Int64>()..value = index;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_item_checkable, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_item_radio_checkable =
      resolveMethodBind('PopupMenu', 'is_item_radio_checkable', 1116898809);

  bool isItemRadioCheckable(int index) {
    final arg0 = malloc<Int64>()..value = index;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_item_radio_checkable, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_item_shortcut_disabled =
      resolveMethodBind('PopupMenu', 'is_item_shortcut_disabled', 1116898809);

  bool isItemShortcutDisabled(int index) {
    final arg0 = malloc<Int64>()..value = index;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_item_shortcut_disabled, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_item_tooltip =
      resolveMethodBind('PopupMenu', 'get_item_tooltip', 844755477);

  String getItemTooltip(int index) {
    final arg0 = malloc<Int64>()..value = index;
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_item_tooltip, nativePtr, [arg0.cast<Void>()], ret.cast());
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

  static final Pointer<Void> _mb_get_item_shortcut =
      resolveMethodBind('PopupMenu', 'get_item_shortcut', 1449483325);

  Shortcut? getItemShortcut(int index) {
    final arg0 = malloc<Int64>()..value = index;
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_item_shortcut, nativePtr, [arg0.cast<Void>()], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Shortcut(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_item_indent =
      resolveMethodBind('PopupMenu', 'get_item_indent', 923996154);

  int getItemIndent(int index) {
    final arg0 = malloc<Int64>()..value = index;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_item_indent, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_item_multistate_max =
      resolveMethodBind('PopupMenu', 'get_item_multistate_max', 923996154);

  int getItemMultistateMax(int index) {
    final arg0 = malloc<Int64>()..value = index;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_item_multistate_max, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_item_multistate =
      resolveMethodBind('PopupMenu', 'get_item_multistate', 923996154);

  int getItemMultistate(int index) {
    final arg0 = malloc<Int64>()..value = index;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_item_multistate, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_focused_item =
      resolveMethodBind('PopupMenu', 'set_focused_item', 1286410249);

  void setFocusedItem(int index) {
    final arg0 = malloc<Int64>()..value = index;
    try {
      ptrcallVoid(_mb_set_focused_item, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_focused_item =
      resolveMethodBind('PopupMenu', 'get_focused_item', 3905245786);

  int getFocusedItem() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_focused_item, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_item_count =
      resolveMethodBind('PopupMenu', 'set_item_count', 1286410249);

  void setItemCount(int count) {
    final arg0 = malloc<Int64>()..value = count;
    try {
      ptrcallVoid(_mb_set_item_count, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_item_count =
      resolveMethodBind('PopupMenu', 'get_item_count', 3905245786);

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

  static final Pointer<Void> _mb_scroll_to_item =
      resolveMethodBind('PopupMenu', 'scroll_to_item', 1286410249);

  void scrollToItem(int index) {
    final arg0 = malloc<Int64>()..value = index;
    try {
      ptrcallVoid(_mb_scroll_to_item, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_remove_item =
      resolveMethodBind('PopupMenu', 'remove_item', 1286410249);

  void removeItem(int index) {
    final arg0 = malloc<Int64>()..value = index;
    try {
      ptrcallVoid(_mb_remove_item, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_add_separator =
      resolveMethodBind('PopupMenu', 'add_separator', 2266703459);

  void addSeparator(String label, int id) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), label);
    final arg1 = malloc<Int64>()..value = id;
    try {
      ptrcallVoid(_mb_add_separator, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_clear =
      resolveMethodBind('PopupMenu', 'clear', 107499316);

  void clear(bool freeSubmenus) {
    final arg0 = malloc<Uint8>()..value = freeSubmenus ? 1 : 0;
    try {
      ptrcallVoid(_mb_clear, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_hide_on_item_selection =
      resolveMethodBind('PopupMenu', 'set_hide_on_item_selection', 2586408642);

  void setHideOnItemSelection(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_hide_on_item_selection, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_hide_on_item_selection =
      resolveMethodBind('PopupMenu', 'is_hide_on_item_selection', 36873697);

  bool isHideOnItemSelection() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_hide_on_item_selection, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_hide_on_checkable_item_selection =
      resolveMethodBind('PopupMenu', 'set_hide_on_checkable_item_selection', 2586408642);

  void setHideOnCheckableItemSelection(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_hide_on_checkable_item_selection, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_hide_on_checkable_item_selection =
      resolveMethodBind('PopupMenu', 'is_hide_on_checkable_item_selection', 36873697);

  bool isHideOnCheckableItemSelection() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_hide_on_checkable_item_selection, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_hide_on_state_item_selection =
      resolveMethodBind('PopupMenu', 'set_hide_on_state_item_selection', 2586408642);

  void setHideOnStateItemSelection(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_hide_on_state_item_selection, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_hide_on_state_item_selection =
      resolveMethodBind('PopupMenu', 'is_hide_on_state_item_selection', 36873697);

  bool isHideOnStateItemSelection() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_hide_on_state_item_selection, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_submenu_popup_delay =
      resolveMethodBind('PopupMenu', 'set_submenu_popup_delay', 373806689);

  void setSubmenuPopupDelay(double seconds) {
    final arg0 = malloc<Double>()..value = seconds;
    try {
      ptrcallVoid(_mb_set_submenu_popup_delay, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_submenu_popup_delay =
      resolveMethodBind('PopupMenu', 'get_submenu_popup_delay', 1740695150);

  double getSubmenuPopupDelay() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_submenu_popup_delay, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_allow_search =
      resolveMethodBind('PopupMenu', 'set_allow_search', 2586408642);

  void setAllowSearch(bool allow) {
    final arg0 = malloc<Uint8>()..value = allow ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_allow_search, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_allow_search =
      resolveMethodBind('PopupMenu', 'get_allow_search', 36873697);

  bool getAllowSearch() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_allow_search, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_is_system_menu =
      resolveMethodBind('PopupMenu', 'is_system_menu', 36873697);

  bool isSystemMenu() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_system_menu, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_system_menu =
      resolveMethodBind('PopupMenu', 'set_system_menu', 600639674);

  void setSystemMenu(int systemMenuId) {
    final arg0 = malloc<Int64>()..value = systemMenuId;
    try {
      ptrcallVoid(_mb_set_system_menu, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_system_menu =
      resolveMethodBind('PopupMenu', 'get_system_menu', 1222557358);

  int getSystemMenu() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_system_menu, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_search_bar_enabled =
      resolveMethodBind('PopupMenu', 'set_search_bar_enabled', 2586408642);

  void setSearchBarEnabled(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_search_bar_enabled, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_search_bar_enabled =
      resolveMethodBind('PopupMenu', 'is_search_bar_enabled', 36873697);

  bool isSearchBarEnabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_search_bar_enabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_search_bar_min_item_count =
      resolveMethodBind('PopupMenu', 'set_search_bar_min_item_count', 1286410249);

  void setSearchBarMinItemCount(int count) {
    final arg0 = malloc<Int64>()..value = count;
    try {
      ptrcallVoid(_mb_set_search_bar_min_item_count, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_search_bar_min_item_count =
      resolveMethodBind('PopupMenu', 'get_search_bar_min_item_count', 3905245786);

  int getSearchBarMinItemCount() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_search_bar_min_item_count, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_search_bar_fuzzy_search_enabled =
      resolveMethodBind('PopupMenu', 'set_search_bar_fuzzy_search_enabled', 2586408642);

  void setSearchBarFuzzySearchEnabled(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_search_bar_fuzzy_search_enabled, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_search_bar_fuzzy_search_enabled =
      resolveMethodBind('PopupMenu', 'is_search_bar_fuzzy_search_enabled', 36873697);

  bool isSearchBarFuzzySearchEnabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_search_bar_fuzzy_search_enabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_search_bar_fuzzy_search_max_misses =
      resolveMethodBind('PopupMenu', 'set_search_bar_fuzzy_search_max_misses', 1286410249);

  void setSearchBarFuzzySearchMaxMisses(int maxMisses) {
    final arg0 = malloc<Int64>()..value = maxMisses;
    try {
      ptrcallVoid(_mb_set_search_bar_fuzzy_search_max_misses, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_search_bar_fuzzy_search_max_misses =
      resolveMethodBind('PopupMenu', 'get_search_bar_fuzzy_search_max_misses', 3905245786);

  int getSearchBarFuzzySearchMaxMisses() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_search_bar_fuzzy_search_max_misses, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_shrink_height =
      resolveMethodBind('PopupMenu', 'set_shrink_height', 2586408642);

  void setShrinkHeight(bool shrink) {
    final arg0 = malloc<Uint8>()..value = shrink ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_shrink_height, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_shrink_height =
      resolveMethodBind('PopupMenu', 'get_shrink_height', 36873697);

  bool getShrinkHeight() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_shrink_height, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_shrink_width =
      resolveMethodBind('PopupMenu', 'set_shrink_width', 2586408642);

  void setShrinkWidth(bool shrink) {
    final arg0 = malloc<Uint8>()..value = shrink ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_shrink_width, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_shrink_width =
      resolveMethodBind('PopupMenu', 'get_shrink_width', 36873697);

  bool getShrinkWidth() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_shrink_width, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
