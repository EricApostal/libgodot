// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class DisplayServer extends GodotObject {
  DisplayServer(super.nativePtr);

  static final Pointer<Void> _mb_has_feature =
      resolveMethodBind('DisplayServer', 'has_feature', 334065950);

  bool hasFeature(int feature) {
    final arg0 = malloc<Int64>()..value = feature;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_has_feature, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_name =
      resolveMethodBind('DisplayServer', 'get_name', 201670096);

  String getName() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_name, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  // Skipped help_set_search_callbacks(): an argument type is unsupported.
  // Skipped global_menu_set_popup_callbacks(): an argument type is unsupported.
  static final Pointer<Void> _mb_global_menu_add_submenu_item =
      resolveMethodBind('DisplayServer', 'global_menu_add_submenu_item', 2828985934);

  int globalMenuAddSubmenuItem(String menuRoot, String label, String submenu, int index) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), menuRoot);
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg1.cast(), label);
    final arg2 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg2.cast(), submenu);
    final arg3 = malloc<Int64>()..value = index;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_global_menu_add_submenu_item, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>(), arg3.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
      BuiltinMarshal.destroyGDString(arg1.cast());
      malloc.free(arg1);
      BuiltinMarshal.destroyGDString(arg2.cast());
      malloc.free(arg2);
      malloc.free(arg3);
    }
  }

  // Skipped global_menu_add_item(): an argument type is unsupported.
  // Skipped global_menu_add_check_item(): an argument type is unsupported.
  // Skipped global_menu_add_icon_item(): an argument type is unsupported.
  // Skipped global_menu_add_icon_check_item(): an argument type is unsupported.
  // Skipped global_menu_add_radio_check_item(): an argument type is unsupported.
  // Skipped global_menu_add_icon_radio_check_item(): an argument type is unsupported.
  // Skipped global_menu_add_multistate_item(): an argument type is unsupported.
  static final Pointer<Void> _mb_global_menu_add_separator =
      resolveMethodBind('DisplayServer', 'global_menu_add_separator', 3214812433);

  int globalMenuAddSeparator(String menuRoot, int index) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), menuRoot);
    final arg1 = malloc<Int64>()..value = index;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_global_menu_add_separator, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_global_menu_get_item_index_from_text =
      resolveMethodBind('DisplayServer', 'global_menu_get_item_index_from_text', 2878152881);

  int globalMenuGetItemIndexFromText(String menuRoot, String text) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), menuRoot);
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg1.cast(), text);
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_global_menu_get_item_index_from_text, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
      BuiltinMarshal.destroyGDString(arg1.cast());
      malloc.free(arg1);
    }
  }

  // Skipped global_menu_get_item_index_from_tag(): an argument type is unsupported.
  static final Pointer<Void> _mb_global_menu_is_item_checked =
      resolveMethodBind('DisplayServer', 'global_menu_is_item_checked', 3511468594);

  bool globalMenuIsItemChecked(String menuRoot, int idx) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), menuRoot);
    final arg1 = malloc<Int64>()..value = idx;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_global_menu_is_item_checked, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_global_menu_is_item_checkable =
      resolveMethodBind('DisplayServer', 'global_menu_is_item_checkable', 3511468594);

  bool globalMenuIsItemCheckable(String menuRoot, int idx) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), menuRoot);
    final arg1 = malloc<Int64>()..value = idx;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_global_menu_is_item_checkable, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_global_menu_is_item_radio_checkable =
      resolveMethodBind('DisplayServer', 'global_menu_is_item_radio_checkable', 3511468594);

  bool globalMenuIsItemRadioCheckable(String menuRoot, int idx) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), menuRoot);
    final arg1 = malloc<Int64>()..value = idx;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_global_menu_is_item_radio_checkable, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  // Skipped global_menu_get_item_callback(): unsupported return type "Callable".
  // Skipped global_menu_get_item_key_callback(): unsupported return type "Callable".
  // Skipped global_menu_get_item_tag(): unsupported return type "Variant".
  static final Pointer<Void> _mb_global_menu_get_item_text =
      resolveMethodBind('DisplayServer', 'global_menu_get_item_text', 591067909);

  String globalMenuGetItemText(String menuRoot, int idx) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), menuRoot);
    final arg1 = malloc<Int64>()..value = idx;
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_global_menu_get_item_text, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_global_menu_get_item_submenu =
      resolveMethodBind('DisplayServer', 'global_menu_get_item_submenu', 591067909);

  String globalMenuGetItemSubmenu(String menuRoot, int idx) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), menuRoot);
    final arg1 = malloc<Int64>()..value = idx;
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_global_menu_get_item_submenu, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_global_menu_get_item_accelerator =
      resolveMethodBind('DisplayServer', 'global_menu_get_item_accelerator', 936065394);

  int globalMenuGetItemAccelerator(String menuRoot, int idx) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), menuRoot);
    final arg1 = malloc<Int64>()..value = idx;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_global_menu_get_item_accelerator, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_global_menu_is_item_disabled =
      resolveMethodBind('DisplayServer', 'global_menu_is_item_disabled', 3511468594);

  bool globalMenuIsItemDisabled(String menuRoot, int idx) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), menuRoot);
    final arg1 = malloc<Int64>()..value = idx;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_global_menu_is_item_disabled, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_global_menu_is_item_hidden =
      resolveMethodBind('DisplayServer', 'global_menu_is_item_hidden', 3511468594);

  bool globalMenuIsItemHidden(String menuRoot, int idx) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), menuRoot);
    final arg1 = malloc<Int64>()..value = idx;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_global_menu_is_item_hidden, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_global_menu_get_item_tooltip =
      resolveMethodBind('DisplayServer', 'global_menu_get_item_tooltip', 591067909);

  String globalMenuGetItemTooltip(String menuRoot, int idx) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), menuRoot);
    final arg1 = malloc<Int64>()..value = idx;
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_global_menu_get_item_tooltip, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_global_menu_get_item_state =
      resolveMethodBind('DisplayServer', 'global_menu_get_item_state', 3422818498);

  int globalMenuGetItemState(String menuRoot, int idx) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), menuRoot);
    final arg1 = malloc<Int64>()..value = idx;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_global_menu_get_item_state, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_global_menu_get_item_max_states =
      resolveMethodBind('DisplayServer', 'global_menu_get_item_max_states', 3422818498);

  int globalMenuGetItemMaxStates(String menuRoot, int idx) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), menuRoot);
    final arg1 = malloc<Int64>()..value = idx;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_global_menu_get_item_max_states, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_global_menu_get_item_icon =
      resolveMethodBind('DisplayServer', 'global_menu_get_item_icon', 3591713183);

  Texture2D? globalMenuGetItemIcon(String menuRoot, int idx) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), menuRoot);
    final arg1 = malloc<Int64>()..value = idx;
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_global_menu_get_item_icon, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Texture2D(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_global_menu_get_item_indentation_level =
      resolveMethodBind('DisplayServer', 'global_menu_get_item_indentation_level', 3422818498);

  int globalMenuGetItemIndentationLevel(String menuRoot, int idx) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), menuRoot);
    final arg1 = malloc<Int64>()..value = idx;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_global_menu_get_item_indentation_level, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_global_menu_set_item_checked =
      resolveMethodBind('DisplayServer', 'global_menu_set_item_checked', 4108344793);

  void globalMenuSetItemChecked(String menuRoot, int idx, bool checked) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), menuRoot);
    final arg1 = malloc<Int64>()..value = idx;
    final arg2 = malloc<Uint8>()..value = checked ? 1 : 0;
    try {
      ptrcallVoid(_mb_global_menu_set_item_checked, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_global_menu_set_item_checkable =
      resolveMethodBind('DisplayServer', 'global_menu_set_item_checkable', 4108344793);

  void globalMenuSetItemCheckable(String menuRoot, int idx, bool checkable) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), menuRoot);
    final arg1 = malloc<Int64>()..value = idx;
    final arg2 = malloc<Uint8>()..value = checkable ? 1 : 0;
    try {
      ptrcallVoid(_mb_global_menu_set_item_checkable, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_global_menu_set_item_radio_checkable =
      resolveMethodBind('DisplayServer', 'global_menu_set_item_radio_checkable', 4108344793);

  void globalMenuSetItemRadioCheckable(String menuRoot, int idx, bool checkable) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), menuRoot);
    final arg1 = malloc<Int64>()..value = idx;
    final arg2 = malloc<Uint8>()..value = checkable ? 1 : 0;
    try {
      ptrcallVoid(_mb_global_menu_set_item_radio_checkable, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
    }
  }

  // Skipped global_menu_set_item_callback(): an argument type is unsupported.
  // Skipped global_menu_set_item_hover_callbacks(): an argument type is unsupported.
  // Skipped global_menu_set_item_key_callback(): an argument type is unsupported.
  // Skipped global_menu_set_item_tag(): an argument type is unsupported.
  static final Pointer<Void> _mb_global_menu_set_item_text =
      resolveMethodBind('DisplayServer', 'global_menu_set_item_text', 965966136);

  void globalMenuSetItemText(String menuRoot, int idx, String text) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), menuRoot);
    final arg1 = malloc<Int64>()..value = idx;
    final arg2 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg2.cast(), text);
    try {
      ptrcallVoid(_mb_global_menu_set_item_text, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
      malloc.free(arg1);
      BuiltinMarshal.destroyGDString(arg2.cast());
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_global_menu_set_item_submenu =
      resolveMethodBind('DisplayServer', 'global_menu_set_item_submenu', 965966136);

  void globalMenuSetItemSubmenu(String menuRoot, int idx, String submenu) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), menuRoot);
    final arg1 = malloc<Int64>()..value = idx;
    final arg2 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg2.cast(), submenu);
    try {
      ptrcallVoid(_mb_global_menu_set_item_submenu, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
      malloc.free(arg1);
      BuiltinMarshal.destroyGDString(arg2.cast());
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_global_menu_set_item_accelerator =
      resolveMethodBind('DisplayServer', 'global_menu_set_item_accelerator', 566943293);

  void globalMenuSetItemAccelerator(String menuRoot, int idx, int keycode) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), menuRoot);
    final arg1 = malloc<Int64>()..value = idx;
    final arg2 = malloc<Int64>()..value = keycode;
    try {
      ptrcallVoid(_mb_global_menu_set_item_accelerator, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_global_menu_set_item_disabled =
      resolveMethodBind('DisplayServer', 'global_menu_set_item_disabled', 4108344793);

  void globalMenuSetItemDisabled(String menuRoot, int idx, bool disabled) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), menuRoot);
    final arg1 = malloc<Int64>()..value = idx;
    final arg2 = malloc<Uint8>()..value = disabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_global_menu_set_item_disabled, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_global_menu_set_item_hidden =
      resolveMethodBind('DisplayServer', 'global_menu_set_item_hidden', 4108344793);

  void globalMenuSetItemHidden(String menuRoot, int idx, bool hidden) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), menuRoot);
    final arg1 = malloc<Int64>()..value = idx;
    final arg2 = malloc<Uint8>()..value = hidden ? 1 : 0;
    try {
      ptrcallVoid(_mb_global_menu_set_item_hidden, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_global_menu_set_item_tooltip =
      resolveMethodBind('DisplayServer', 'global_menu_set_item_tooltip', 965966136);

  void globalMenuSetItemTooltip(String menuRoot, int idx, String tooltip) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), menuRoot);
    final arg1 = malloc<Int64>()..value = idx;
    final arg2 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg2.cast(), tooltip);
    try {
      ptrcallVoid(_mb_global_menu_set_item_tooltip, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
      malloc.free(arg1);
      BuiltinMarshal.destroyGDString(arg2.cast());
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_global_menu_set_item_state =
      resolveMethodBind('DisplayServer', 'global_menu_set_item_state', 3474840532);

  void globalMenuSetItemState(String menuRoot, int idx, int state) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), menuRoot);
    final arg1 = malloc<Int64>()..value = idx;
    final arg2 = malloc<Int64>()..value = state;
    try {
      ptrcallVoid(_mb_global_menu_set_item_state, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_global_menu_set_item_max_states =
      resolveMethodBind('DisplayServer', 'global_menu_set_item_max_states', 3474840532);

  void globalMenuSetItemMaxStates(String menuRoot, int idx, int maxStates) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), menuRoot);
    final arg1 = malloc<Int64>()..value = idx;
    final arg2 = malloc<Int64>()..value = maxStates;
    try {
      ptrcallVoid(_mb_global_menu_set_item_max_states, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_global_menu_set_item_icon =
      resolveMethodBind('DisplayServer', 'global_menu_set_item_icon', 3201338066);

  void globalMenuSetItemIcon(String menuRoot, int idx, Texture2D icon) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), menuRoot);
    final arg1 = malloc<Int64>()..value = idx;
    final arg2 = malloc<Pointer<Void>>()..value = icon.nativePtr;
    try {
      ptrcallVoid(_mb_global_menu_set_item_icon, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_global_menu_set_item_indentation_level =
      resolveMethodBind('DisplayServer', 'global_menu_set_item_indentation_level', 3474840532);

  void globalMenuSetItemIndentationLevel(String menuRoot, int idx, int level) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), menuRoot);
    final arg1 = malloc<Int64>()..value = idx;
    final arg2 = malloc<Int64>()..value = level;
    try {
      ptrcallVoid(_mb_global_menu_set_item_indentation_level, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_global_menu_get_item_count =
      resolveMethodBind('DisplayServer', 'global_menu_get_item_count', 1321353865);

  int globalMenuGetItemCount(String menuRoot) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), menuRoot);
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_global_menu_get_item_count, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_global_menu_remove_item =
      resolveMethodBind('DisplayServer', 'global_menu_remove_item', 2956805083);

  void globalMenuRemoveItem(String menuRoot, int idx) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), menuRoot);
    final arg1 = malloc<Int64>()..value = idx;
    try {
      ptrcallVoid(_mb_global_menu_remove_item, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_global_menu_clear =
      resolveMethodBind('DisplayServer', 'global_menu_clear', 83702148);

  void globalMenuClear(String menuRoot) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), menuRoot);
    try {
      ptrcallVoid(_mb_global_menu_clear, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  // Skipped global_menu_get_system_menu_roots(): unsupported return type "Dictionary".
  static final Pointer<Void> _mb_tts_is_speaking =
      resolveMethodBind('DisplayServer', 'tts_is_speaking', 36873697);

  bool ttsIsSpeaking() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_tts_is_speaking, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_tts_is_paused =
      resolveMethodBind('DisplayServer', 'tts_is_paused', 36873697);

  bool ttsIsPaused() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_tts_is_paused, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  // Skipped tts_get_voices(): unsupported return type "typedarray::Dictionary".
  // Skipped tts_get_voices_for_language(): unsupported return type "PackedStringArray".
  static final Pointer<Void> _mb_tts_speak =
      resolveMethodBind('DisplayServer', 'tts_speak', 903992738);

  void ttsSpeak(String text, String voice, int volume, double pitch, double rate, int utteranceId, bool interrupt) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), text);
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg1.cast(), voice);
    final arg2 = malloc<Int64>()..value = volume;
    final arg3 = malloc<Double>()..value = pitch;
    final arg4 = malloc<Double>()..value = rate;
    final arg5 = malloc<Int64>()..value = utteranceId;
    final arg6 = malloc<Uint8>()..value = interrupt ? 1 : 0;
    try {
      ptrcallVoid(_mb_tts_speak, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>(), arg3.cast<Void>(), arg4.cast<Void>(), arg5.cast<Void>(), arg6.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
      BuiltinMarshal.destroyGDString(arg1.cast());
      malloc.free(arg1);
      malloc.free(arg2);
      malloc.free(arg3);
      malloc.free(arg4);
      malloc.free(arg5);
      malloc.free(arg6);
    }
  }

  static final Pointer<Void> _mb_tts_pause =
      resolveMethodBind('DisplayServer', 'tts_pause', 3218959716);

  void ttsPause() {
    try {
      ptrcallVoid(_mb_tts_pause, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_tts_resume =
      resolveMethodBind('DisplayServer', 'tts_resume', 3218959716);

  void ttsResume() {
    try {
      ptrcallVoid(_mb_tts_resume, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_tts_stop =
      resolveMethodBind('DisplayServer', 'tts_stop', 3218959716);

  void ttsStop() {
    try {
      ptrcallVoid(_mb_tts_stop, nativePtr, []);
    } finally {
    }
  }

  // Skipped tts_set_utterance_callback(): an argument type is unsupported.
  static final Pointer<Void> _mb_is_dark_mode_supported =
      resolveMethodBind('DisplayServer', 'is_dark_mode_supported', 36873697);

  bool isDarkModeSupported() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_dark_mode_supported, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_is_dark_mode =
      resolveMethodBind('DisplayServer', 'is_dark_mode', 36873697);

  bool isDarkMode() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_dark_mode, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_accent_color =
      resolveMethodBind('DisplayServer', 'get_accent_color', 3444240500);

  Color getAccentColor() {
    try {
      final ret = malloc<Uint8>(Color.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_accent_color, nativePtr, [], ret.cast());
        return Color.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_base_color =
      resolveMethodBind('DisplayServer', 'get_base_color', 3444240500);

  Color getBaseColor() {
    try {
      final ret = malloc<Uint8>(Color.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_base_color, nativePtr, [], ret.cast());
        return Color.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  // Skipped set_system_theme_change_callback(): an argument type is unsupported.
  static final Pointer<Void> _mb_mouse_set_mode =
      resolveMethodBind('DisplayServer', 'mouse_set_mode', 348288463);

  void mouseSetMode(int mouseMode) {
    final arg0 = malloc<Int64>()..value = mouseMode;
    try {
      ptrcallVoid(_mb_mouse_set_mode, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_mouse_get_mode =
      resolveMethodBind('DisplayServer', 'mouse_get_mode', 1353961651);

  int mouseGetMode() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_mouse_get_mode, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_warp_mouse =
      resolveMethodBind('DisplayServer', 'warp_mouse', 1130785943);

  void warpMouse(Vector2i position) {
    final arg0 = malloc<Uint8>(Vector2i.nativeSize);
    position.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_warp_mouse, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_mouse_get_position =
      resolveMethodBind('DisplayServer', 'mouse_get_position', 3690982128);

  Vector2i mouseGetPosition() {
    try {
      final ret = malloc<Uint8>(Vector2i.nativeSize);
      try {
        ptrcallWithReturn(_mb_mouse_get_position, nativePtr, [], ret.cast());
        return Vector2i.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_mouse_get_button_state =
      resolveMethodBind('DisplayServer', 'mouse_get_button_state', 2512161324);

  int mouseGetButtonState() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_mouse_get_button_state, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_clipboard_set =
      resolveMethodBind('DisplayServer', 'clipboard_set', 83702148);

  void clipboardSet(String clipboard) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), clipboard);
    try {
      ptrcallVoid(_mb_clipboard_set, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_clipboard_get =
      resolveMethodBind('DisplayServer', 'clipboard_get', 201670096);

  String clipboardGet() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_clipboard_get, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_clipboard_get_image =
      resolveMethodBind('DisplayServer', 'clipboard_get_image', 4190603485);

  Image? clipboardGetImage() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_clipboard_get_image, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Image(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_clipboard_has =
      resolveMethodBind('DisplayServer', 'clipboard_has', 36873697);

  bool clipboardHas() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_clipboard_has, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_clipboard_has_image =
      resolveMethodBind('DisplayServer', 'clipboard_has_image', 36873697);

  bool clipboardHasImage() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_clipboard_has_image, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_clipboard_set_primary =
      resolveMethodBind('DisplayServer', 'clipboard_set_primary', 83702148);

  void clipboardSetPrimary(String clipboardPrimary) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), clipboardPrimary);
    try {
      ptrcallVoid(_mb_clipboard_set_primary, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_clipboard_get_primary =
      resolveMethodBind('DisplayServer', 'clipboard_get_primary', 201670096);

  String clipboardGetPrimary() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_clipboard_get_primary, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  // Skipped get_display_cutouts(): unsupported return type "typedarray::Rect2".
  static final Pointer<Void> _mb_get_display_safe_area =
      resolveMethodBind('DisplayServer', 'get_display_safe_area', 2439012528);

  Rect2i getDisplaySafeArea(int screen) {
    final arg0 = malloc<Int64>()..value = screen;
    try {
      final ret = malloc<Uint8>(Rect2i.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_display_safe_area, nativePtr, [arg0.cast<Void>()], ret.cast());
        return Rect2i.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_screen_count =
      resolveMethodBind('DisplayServer', 'get_screen_count', 3905245786);

  int getScreenCount() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_screen_count, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_primary_screen =
      resolveMethodBind('DisplayServer', 'get_primary_screen', 3905245786);

  int getPrimaryScreen() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_primary_screen, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_keyboard_focus_screen =
      resolveMethodBind('DisplayServer', 'get_keyboard_focus_screen', 3905245786);

  int getKeyboardFocusScreen() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_keyboard_focus_screen, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_screen_from_rect =
      resolveMethodBind('DisplayServer', 'get_screen_from_rect', 741354659);

  int getScreenFromRect(Rect2 rect) {
    final arg0 = malloc<Uint8>(Rect2.nativeSize);
    rect.writeTo(arg0, 0);
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_screen_from_rect, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_screen_get_position =
      resolveMethodBind('DisplayServer', 'screen_get_position', 1725937825);

  Vector2i screenGetPosition(int screen) {
    final arg0 = malloc<Int64>()..value = screen;
    try {
      final ret = malloc<Uint8>(Vector2i.nativeSize);
      try {
        ptrcallWithReturn(_mb_screen_get_position, nativePtr, [arg0.cast<Void>()], ret.cast());
        return Vector2i.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_screen_get_size =
      resolveMethodBind('DisplayServer', 'screen_get_size', 1725937825);

  Vector2i screenGetSize(int screen) {
    final arg0 = malloc<Int64>()..value = screen;
    try {
      final ret = malloc<Uint8>(Vector2i.nativeSize);
      try {
        ptrcallWithReturn(_mb_screen_get_size, nativePtr, [arg0.cast<Void>()], ret.cast());
        return Vector2i.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_screen_get_usable_rect =
      resolveMethodBind('DisplayServer', 'screen_get_usable_rect', 2439012528);

  Rect2i screenGetUsableRect(int screen) {
    final arg0 = malloc<Int64>()..value = screen;
    try {
      final ret = malloc<Uint8>(Rect2i.nativeSize);
      try {
        ptrcallWithReturn(_mb_screen_get_usable_rect, nativePtr, [arg0.cast<Void>()], ret.cast());
        return Rect2i.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_screen_get_dpi =
      resolveMethodBind('DisplayServer', 'screen_get_dpi', 181039630);

  int screenGetDpi(int screen) {
    final arg0 = malloc<Int64>()..value = screen;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_screen_get_dpi, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_screen_get_scale =
      resolveMethodBind('DisplayServer', 'screen_get_scale', 909105437);

  double screenGetScale(int screen) {
    final arg0 = malloc<Int64>()..value = screen;
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_screen_get_scale, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_touchscreen_available =
      resolveMethodBind('DisplayServer', 'is_touchscreen_available', 36873697);

  bool isTouchscreenAvailable() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_touchscreen_available, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_screen_get_max_scale =
      resolveMethodBind('DisplayServer', 'screen_get_max_scale', 1740695150);

  double screenGetMaxScale() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_screen_get_max_scale, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_screen_get_refresh_rate =
      resolveMethodBind('DisplayServer', 'screen_get_refresh_rate', 909105437);

  double screenGetRefreshRate(int screen) {
    final arg0 = malloc<Int64>()..value = screen;
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_screen_get_refresh_rate, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_screen_get_pixel =
      resolveMethodBind('DisplayServer', 'screen_get_pixel', 1532707496);

  Color screenGetPixel(Vector2i position) {
    final arg0 = malloc<Uint8>(Vector2i.nativeSize);
    position.writeTo(arg0, 0);
    try {
      final ret = malloc<Uint8>(Color.nativeSize);
      try {
        ptrcallWithReturn(_mb_screen_get_pixel, nativePtr, [arg0.cast<Void>()], ret.cast());
        return Color.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_screen_get_image =
      resolveMethodBind('DisplayServer', 'screen_get_image', 3813388802);

  Image? screenGetImage(int screen) {
    final arg0 = malloc<Int64>()..value = screen;
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_screen_get_image, nativePtr, [arg0.cast<Void>()], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Image(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_screen_get_image_rect =
      resolveMethodBind('DisplayServer', 'screen_get_image_rect', 2601441065);

  Image? screenGetImageRect(Rect2i rect) {
    final arg0 = malloc<Uint8>(Rect2i.nativeSize);
    rect.writeTo(arg0, 0);
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_screen_get_image_rect, nativePtr, [arg0.cast<Void>()], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Image(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_screen_set_orientation =
      resolveMethodBind('DisplayServer', 'screen_set_orientation', 2211511631);

  void screenSetOrientation(int orientation, int screen) {
    final arg0 = malloc<Int64>()..value = orientation;
    final arg1 = malloc<Int64>()..value = screen;
    try {
      ptrcallVoid(_mb_screen_set_orientation, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_screen_get_orientation =
      resolveMethodBind('DisplayServer', 'screen_get_orientation', 133818562);

  int screenGetOrientation(int screen) {
    final arg0 = malloc<Int64>()..value = screen;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_screen_get_orientation, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_screen_set_keep_on =
      resolveMethodBind('DisplayServer', 'screen_set_keep_on', 2586408642);

  void screenSetKeepOn(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_screen_set_keep_on, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_screen_is_kept_on =
      resolveMethodBind('DisplayServer', 'screen_is_kept_on', 36873697);

  bool screenIsKeptOn() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_screen_is_kept_on, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  // Skipped get_window_list(): unsupported return type "PackedInt32Array".
  static final Pointer<Void> _mb_get_window_at_screen_position =
      resolveMethodBind('DisplayServer', 'get_window_at_screen_position', 2485466453);

  int getWindowAtScreenPosition(Vector2i position) {
    final arg0 = malloc<Uint8>(Vector2i.nativeSize);
    position.writeTo(arg0, 0);
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_window_at_screen_position, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_window_get_native_handle =
      resolveMethodBind('DisplayServer', 'window_get_native_handle', 1096425680);

  int windowGetNativeHandle(int handleType, int windowId) {
    final arg0 = malloc<Int64>()..value = handleType;
    final arg1 = malloc<Int64>()..value = windowId;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_window_get_native_handle, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_window_get_active_popup =
      resolveMethodBind('DisplayServer', 'window_get_active_popup', 3905245786);

  int windowGetActivePopup() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_window_get_active_popup, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_window_set_popup_safe_rect =
      resolveMethodBind('DisplayServer', 'window_set_popup_safe_rect', 3317281434);

  void windowSetPopupSafeRect(int window, Rect2i rect) {
    final arg0 = malloc<Int64>()..value = window;
    final arg1 = malloc<Uint8>(Rect2i.nativeSize);
    rect.writeTo(arg1, 0);
    try {
      ptrcallVoid(_mb_window_set_popup_safe_rect, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_window_get_popup_safe_rect =
      resolveMethodBind('DisplayServer', 'window_get_popup_safe_rect', 2161169500);

  Rect2i windowGetPopupSafeRect(int window) {
    final arg0 = malloc<Int64>()..value = window;
    try {
      final ret = malloc<Uint8>(Rect2i.nativeSize);
      try {
        ptrcallWithReturn(_mb_window_get_popup_safe_rect, nativePtr, [arg0.cast<Void>()], ret.cast());
        return Rect2i.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_window_set_title =
      resolveMethodBind('DisplayServer', 'window_set_title', 441246282);

  void windowSetTitle(String title, int windowId) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), title);
    final arg1 = malloc<Int64>()..value = windowId;
    try {
      ptrcallVoid(_mb_window_set_title, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_window_get_title_size =
      resolveMethodBind('DisplayServer', 'window_get_title_size', 2925301799);

  Vector2i windowGetTitleSize(String title, int windowId) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), title);
    final arg1 = malloc<Int64>()..value = windowId;
    try {
      final ret = malloc<Uint8>(Vector2i.nativeSize);
      try {
        ptrcallWithReturn(_mb_window_get_title_size, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return Vector2i.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  // Skipped window_set_mouse_passthrough(): an argument type is unsupported.
  static final Pointer<Void> _mb_window_get_current_screen =
      resolveMethodBind('DisplayServer', 'window_get_current_screen', 1591665591);

  int windowGetCurrentScreen(int windowId) {
    final arg0 = malloc<Int64>()..value = windowId;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_window_get_current_screen, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_window_set_current_screen =
      resolveMethodBind('DisplayServer', 'window_set_current_screen', 2230941749);

  void windowSetCurrentScreen(int screen, int windowId) {
    final arg0 = malloc<Int64>()..value = screen;
    final arg1 = malloc<Int64>()..value = windowId;
    try {
      ptrcallVoid(_mb_window_set_current_screen, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_window_get_position =
      resolveMethodBind('DisplayServer', 'window_get_position', 763922886);

  Vector2i windowGetPosition(int windowId) {
    final arg0 = malloc<Int64>()..value = windowId;
    try {
      final ret = malloc<Uint8>(Vector2i.nativeSize);
      try {
        ptrcallWithReturn(_mb_window_get_position, nativePtr, [arg0.cast<Void>()], ret.cast());
        return Vector2i.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_window_get_position_with_decorations =
      resolveMethodBind('DisplayServer', 'window_get_position_with_decorations', 763922886);

  Vector2i windowGetPositionWithDecorations(int windowId) {
    final arg0 = malloc<Int64>()..value = windowId;
    try {
      final ret = malloc<Uint8>(Vector2i.nativeSize);
      try {
        ptrcallWithReturn(_mb_window_get_position_with_decorations, nativePtr, [arg0.cast<Void>()], ret.cast());
        return Vector2i.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_window_set_position =
      resolveMethodBind('DisplayServer', 'window_set_position', 2019273902);

  void windowSetPosition(Vector2i position, int windowId) {
    final arg0 = malloc<Uint8>(Vector2i.nativeSize);
    position.writeTo(arg0, 0);
    final arg1 = malloc<Int64>()..value = windowId;
    try {
      ptrcallVoid(_mb_window_set_position, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_window_get_size =
      resolveMethodBind('DisplayServer', 'window_get_size', 763922886);

  Vector2i windowGetSize(int windowId) {
    final arg0 = malloc<Int64>()..value = windowId;
    try {
      final ret = malloc<Uint8>(Vector2i.nativeSize);
      try {
        ptrcallWithReturn(_mb_window_get_size, nativePtr, [arg0.cast<Void>()], ret.cast());
        return Vector2i.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_window_set_size =
      resolveMethodBind('DisplayServer', 'window_set_size', 2019273902);

  void windowSetSize(Vector2i size, int windowId) {
    final arg0 = malloc<Uint8>(Vector2i.nativeSize);
    size.writeTo(arg0, 0);
    final arg1 = malloc<Int64>()..value = windowId;
    try {
      ptrcallVoid(_mb_window_set_size, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  // Skipped window_set_rect_changed_callback(): an argument type is unsupported.
  // Skipped window_set_window_event_callback(): an argument type is unsupported.
  // Skipped window_set_input_event_callback(): an argument type is unsupported.
  // Skipped window_set_input_text_callback(): an argument type is unsupported.
  // Skipped window_set_drop_files_callback(): an argument type is unsupported.
  static final Pointer<Void> _mb_window_get_attached_instance_id =
      resolveMethodBind('DisplayServer', 'window_get_attached_instance_id', 1591665591);

  int windowGetAttachedInstanceId(int windowId) {
    final arg0 = malloc<Int64>()..value = windowId;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_window_get_attached_instance_id, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_window_get_max_size =
      resolveMethodBind('DisplayServer', 'window_get_max_size', 763922886);

  Vector2i windowGetMaxSize(int windowId) {
    final arg0 = malloc<Int64>()..value = windowId;
    try {
      final ret = malloc<Uint8>(Vector2i.nativeSize);
      try {
        ptrcallWithReturn(_mb_window_get_max_size, nativePtr, [arg0.cast<Void>()], ret.cast());
        return Vector2i.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_window_set_max_size =
      resolveMethodBind('DisplayServer', 'window_set_max_size', 2019273902);

  void windowSetMaxSize(Vector2i maxSize, int windowId) {
    final arg0 = malloc<Uint8>(Vector2i.nativeSize);
    maxSize.writeTo(arg0, 0);
    final arg1 = malloc<Int64>()..value = windowId;
    try {
      ptrcallVoid(_mb_window_set_max_size, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_window_get_min_size =
      resolveMethodBind('DisplayServer', 'window_get_min_size', 763922886);

  Vector2i windowGetMinSize(int windowId) {
    final arg0 = malloc<Int64>()..value = windowId;
    try {
      final ret = malloc<Uint8>(Vector2i.nativeSize);
      try {
        ptrcallWithReturn(_mb_window_get_min_size, nativePtr, [arg0.cast<Void>()], ret.cast());
        return Vector2i.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_window_set_min_size =
      resolveMethodBind('DisplayServer', 'window_set_min_size', 2019273902);

  void windowSetMinSize(Vector2i minSize, int windowId) {
    final arg0 = malloc<Uint8>(Vector2i.nativeSize);
    minSize.writeTo(arg0, 0);
    final arg1 = malloc<Int64>()..value = windowId;
    try {
      ptrcallVoid(_mb_window_set_min_size, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_window_get_size_with_decorations =
      resolveMethodBind('DisplayServer', 'window_get_size_with_decorations', 763922886);

  Vector2i windowGetSizeWithDecorations(int windowId) {
    final arg0 = malloc<Int64>()..value = windowId;
    try {
      final ret = malloc<Uint8>(Vector2i.nativeSize);
      try {
        ptrcallWithReturn(_mb_window_get_size_with_decorations, nativePtr, [arg0.cast<Void>()], ret.cast());
        return Vector2i.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_window_get_mode =
      resolveMethodBind('DisplayServer', 'window_get_mode', 2185728461);

  int windowGetMode(int windowId) {
    final arg0 = malloc<Int64>()..value = windowId;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_window_get_mode, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_window_set_mode =
      resolveMethodBind('DisplayServer', 'window_set_mode', 1319965401);

  void windowSetMode(int mode, int windowId) {
    final arg0 = malloc<Int64>()..value = mode;
    final arg1 = malloc<Int64>()..value = windowId;
    try {
      ptrcallVoid(_mb_window_set_mode, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_window_set_flag =
      resolveMethodBind('DisplayServer', 'window_set_flag', 254894155);

  void windowSetFlag(int flag, bool enabled, int windowId) {
    final arg0 = malloc<Int64>()..value = flag;
    final arg1 = malloc<Uint8>()..value = enabled ? 1 : 0;
    final arg2 = malloc<Int64>()..value = windowId;
    try {
      ptrcallVoid(_mb_window_set_flag, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_window_get_flag =
      resolveMethodBind('DisplayServer', 'window_get_flag', 802816991);

  bool windowGetFlag(int flag, int windowId) {
    final arg0 = malloc<Int64>()..value = flag;
    final arg1 = malloc<Int64>()..value = windowId;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_window_get_flag, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_window_set_icon =
      resolveMethodBind('DisplayServer', 'window_set_icon', 2457502155);

  void windowSetIcon(Image icon, int windowId) {
    final arg0 = malloc<Pointer<Void>>()..value = icon.nativePtr;
    final arg1 = malloc<Int64>()..value = windowId;
    try {
      ptrcallVoid(_mb_window_set_icon, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_window_set_window_buttons_offset =
      resolveMethodBind('DisplayServer', 'window_set_window_buttons_offset', 2019273902);

  void windowSetWindowButtonsOffset(Vector2i offset, int windowId) {
    final arg0 = malloc<Uint8>(Vector2i.nativeSize);
    offset.writeTo(arg0, 0);
    final arg1 = malloc<Int64>()..value = windowId;
    try {
      ptrcallVoid(_mb_window_set_window_buttons_offset, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_window_get_safe_title_margins =
      resolveMethodBind('DisplayServer', 'window_get_safe_title_margins', 2295066620);

  Vector3i windowGetSafeTitleMargins(int windowId) {
    final arg0 = malloc<Int64>()..value = windowId;
    try {
      final ret = malloc<Uint8>(Vector3i.nativeSize);
      try {
        ptrcallWithReturn(_mb_window_get_safe_title_margins, nativePtr, [arg0.cast<Void>()], ret.cast());
        return Vector3i.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_window_request_attention =
      resolveMethodBind('DisplayServer', 'window_request_attention', 1995695955);

  void windowRequestAttention(int windowId) {
    final arg0 = malloc<Int64>()..value = windowId;
    try {
      ptrcallVoid(_mb_window_request_attention, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_window_set_taskbar_progress_value =
      resolveMethodBind('DisplayServer', 'window_set_taskbar_progress_value', 3506631519);

  void windowSetTaskbarProgressValue(double value, int windowId) {
    final arg0 = malloc<Double>()..value = value;
    final arg1 = malloc<Int64>()..value = windowId;
    try {
      ptrcallVoid(_mb_window_set_taskbar_progress_value, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_window_set_taskbar_progress_state =
      resolveMethodBind('DisplayServer', 'window_set_taskbar_progress_state', 4119882768);

  void windowSetTaskbarProgressState(int state, int windowId) {
    final arg0 = malloc<Int64>()..value = state;
    final arg1 = malloc<Int64>()..value = windowId;
    try {
      ptrcallVoid(_mb_window_set_taskbar_progress_state, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_window_move_to_foreground =
      resolveMethodBind('DisplayServer', 'window_move_to_foreground', 1995695955);

  void windowMoveToForeground(int windowId) {
    final arg0 = malloc<Int64>()..value = windowId;
    try {
      ptrcallVoid(_mb_window_move_to_foreground, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_window_is_focused =
      resolveMethodBind('DisplayServer', 'window_is_focused', 1051549951);

  bool windowIsFocused(int windowId) {
    final arg0 = malloc<Int64>()..value = windowId;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_window_is_focused, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_window_can_draw =
      resolveMethodBind('DisplayServer', 'window_can_draw', 1051549951);

  bool windowCanDraw(int windowId) {
    final arg0 = malloc<Int64>()..value = windowId;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_window_can_draw, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_window_set_transient =
      resolveMethodBind('DisplayServer', 'window_set_transient', 3937882851);

  void windowSetTransient(int windowId, int parentWindowId) {
    final arg0 = malloc<Int64>()..value = windowId;
    final arg1 = malloc<Int64>()..value = parentWindowId;
    try {
      ptrcallVoid(_mb_window_set_transient, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_window_set_exclusive =
      resolveMethodBind('DisplayServer', 'window_set_exclusive', 300928843);

  void windowSetExclusive(int windowId, bool exclusive) {
    final arg0 = malloc<Int64>()..value = windowId;
    final arg1 = malloc<Uint8>()..value = exclusive ? 1 : 0;
    try {
      ptrcallVoid(_mb_window_set_exclusive, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_window_set_ime_active =
      resolveMethodBind('DisplayServer', 'window_set_ime_active', 1661950165);

  void windowSetImeActive(bool active, int windowId) {
    final arg0 = malloc<Uint8>()..value = active ? 1 : 0;
    final arg1 = malloc<Int64>()..value = windowId;
    try {
      ptrcallVoid(_mb_window_set_ime_active, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_window_set_ime_position =
      resolveMethodBind('DisplayServer', 'window_set_ime_position', 2019273902);

  void windowSetImePosition(Vector2i position, int windowId) {
    final arg0 = malloc<Uint8>(Vector2i.nativeSize);
    position.writeTo(arg0, 0);
    final arg1 = malloc<Int64>()..value = windowId;
    try {
      ptrcallVoid(_mb_window_set_ime_position, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_window_set_vsync_mode =
      resolveMethodBind('DisplayServer', 'window_set_vsync_mode', 2179333492);

  void windowSetVsyncMode(int vsyncMode, int windowId) {
    final arg0 = malloc<Int64>()..value = vsyncMode;
    final arg1 = malloc<Int64>()..value = windowId;
    try {
      ptrcallVoid(_mb_window_set_vsync_mode, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_window_get_vsync_mode =
      resolveMethodBind('DisplayServer', 'window_get_vsync_mode', 578873795);

  int windowGetVsyncMode(int windowId) {
    final arg0 = malloc<Int64>()..value = windowId;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_window_get_vsync_mode, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_window_is_hdr_output_supported =
      resolveMethodBind('DisplayServer', 'window_is_hdr_output_supported', 1051549951);

  bool windowIsHdrOutputSupported(int windowId) {
    final arg0 = malloc<Int64>()..value = windowId;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_window_is_hdr_output_supported, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_window_request_hdr_output =
      resolveMethodBind('DisplayServer', 'window_request_hdr_output', 1661950165);

  void windowRequestHdrOutput(bool enable, int windowId) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    final arg1 = malloc<Int64>()..value = windowId;
    try {
      ptrcallVoid(_mb_window_request_hdr_output, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_window_is_hdr_output_requested =
      resolveMethodBind('DisplayServer', 'window_is_hdr_output_requested', 1051549951);

  bool windowIsHdrOutputRequested(int windowId) {
    final arg0 = malloc<Int64>()..value = windowId;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_window_is_hdr_output_requested, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_window_is_hdr_output_enabled =
      resolveMethodBind('DisplayServer', 'window_is_hdr_output_enabled', 1051549951);

  bool windowIsHdrOutputEnabled(int windowId) {
    final arg0 = malloc<Int64>()..value = windowId;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_window_is_hdr_output_enabled, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_window_set_hdr_output_reference_luminance =
      resolveMethodBind('DisplayServer', 'window_set_hdr_output_reference_luminance', 3506631519);

  void windowSetHdrOutputReferenceLuminance(double referenceLuminance, int windowId) {
    final arg0 = malloc<Double>()..value = referenceLuminance;
    final arg1 = malloc<Int64>()..value = windowId;
    try {
      ptrcallVoid(_mb_window_set_hdr_output_reference_luminance, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_window_get_hdr_output_reference_luminance =
      resolveMethodBind('DisplayServer', 'window_get_hdr_output_reference_luminance', 218038398);

  double windowGetHdrOutputReferenceLuminance(int windowId) {
    final arg0 = malloc<Int64>()..value = windowId;
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_window_get_hdr_output_reference_luminance, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_window_get_hdr_output_current_reference_luminance =
      resolveMethodBind('DisplayServer', 'window_get_hdr_output_current_reference_luminance', 218038398);

  double windowGetHdrOutputCurrentReferenceLuminance(int windowId) {
    final arg0 = malloc<Int64>()..value = windowId;
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_window_get_hdr_output_current_reference_luminance, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_window_set_hdr_output_max_luminance =
      resolveMethodBind('DisplayServer', 'window_set_hdr_output_max_luminance', 3506631519);

  void windowSetHdrOutputMaxLuminance(double maxLuminance, int windowId) {
    final arg0 = malloc<Double>()..value = maxLuminance;
    final arg1 = malloc<Int64>()..value = windowId;
    try {
      ptrcallVoid(_mb_window_set_hdr_output_max_luminance, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_window_get_hdr_output_max_luminance =
      resolveMethodBind('DisplayServer', 'window_get_hdr_output_max_luminance', 218038398);

  double windowGetHdrOutputMaxLuminance(int windowId) {
    final arg0 = malloc<Int64>()..value = windowId;
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_window_get_hdr_output_max_luminance, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_window_get_hdr_output_current_max_luminance =
      resolveMethodBind('DisplayServer', 'window_get_hdr_output_current_max_luminance', 218038398);

  double windowGetHdrOutputCurrentMaxLuminance(int windowId) {
    final arg0 = malloc<Int64>()..value = windowId;
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_window_get_hdr_output_current_max_luminance, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_window_get_output_max_linear_value =
      resolveMethodBind('DisplayServer', 'window_get_output_max_linear_value', 218038398);

  double windowGetOutputMaxLinearValue(int windowId) {
    final arg0 = malloc<Int64>()..value = windowId;
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_window_get_output_max_linear_value, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_window_is_maximize_allowed =
      resolveMethodBind('DisplayServer', 'window_is_maximize_allowed', 1051549951);

  bool windowIsMaximizeAllowed(int windowId) {
    final arg0 = malloc<Int64>()..value = windowId;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_window_is_maximize_allowed, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_window_maximize_on_title_dbl_click =
      resolveMethodBind('DisplayServer', 'window_maximize_on_title_dbl_click', 36873697);

  bool windowMaximizeOnTitleDblClick() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_window_maximize_on_title_dbl_click, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_window_minimize_on_title_dbl_click =
      resolveMethodBind('DisplayServer', 'window_minimize_on_title_dbl_click', 36873697);

  bool windowMinimizeOnTitleDblClick() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_window_minimize_on_title_dbl_click, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_window_start_drag =
      resolveMethodBind('DisplayServer', 'window_start_drag', 1995695955);

  void windowStartDrag(int windowId) {
    final arg0 = malloc<Int64>()..value = windowId;
    try {
      ptrcallVoid(_mb_window_start_drag, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_window_start_resize =
      resolveMethodBind('DisplayServer', 'window_start_resize', 4009722312);

  void windowStartResize(int edge, int windowId) {
    final arg0 = malloc<Int64>()..value = edge;
    final arg1 = malloc<Int64>()..value = windowId;
    try {
      ptrcallVoid(_mb_window_start_resize, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_window_set_color =
      resolveMethodBind('DisplayServer', 'window_set_color', 2920490490);

  void windowSetColor(Color color) {
    final arg0 = malloc<Uint8>(Color.nativeSize);
    color.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_window_set_color, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_accessibility_should_increase_contrast =
      resolveMethodBind('DisplayServer', 'accessibility_should_increase_contrast', 3905245786);

  int accessibilityShouldIncreaseContrast() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_accessibility_should_increase_contrast, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_accessibility_should_reduce_animation =
      resolveMethodBind('DisplayServer', 'accessibility_should_reduce_animation', 3905245786);

  int accessibilityShouldReduceAnimation() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_accessibility_should_reduce_animation, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_accessibility_should_reduce_transparency =
      resolveMethodBind('DisplayServer', 'accessibility_should_reduce_transparency', 3905245786);

  int accessibilityShouldReduceTransparency() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_accessibility_should_reduce_transparency, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_accessibility_screen_reader_active =
      resolveMethodBind('DisplayServer', 'accessibility_screen_reader_active', 3905245786);

  int accessibilityScreenReaderActive() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_accessibility_screen_reader_active, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  // Skipped accessibility_create_element(): unsupported return type "RID".
  // Skipped accessibility_create_sub_element(): unsupported return type "RID".
  // Skipped accessibility_create_sub_text_edit_elements(): unsupported return type "RID".
  // Skipped accessibility_has_element(): an argument type is unsupported.
  // Skipped accessibility_free_element(): an argument type is unsupported.
  // Skipped accessibility_element_set_meta(): an argument type is unsupported.
  // Skipped accessibility_element_get_meta(): unsupported return type "Variant".
  static final Pointer<Void> _mb_accessibility_set_window_rect =
      resolveMethodBind('DisplayServer', 'accessibility_set_window_rect', 2386961724);

  void accessibilitySetWindowRect(int windowId, Rect2 rectOut, Rect2 rectIn) {
    final arg0 = malloc<Int64>()..value = windowId;
    final arg1 = malloc<Uint8>(Rect2.nativeSize);
    rectOut.writeTo(arg1, 0);
    final arg2 = malloc<Uint8>(Rect2.nativeSize);
    rectIn.writeTo(arg2, 0);
    try {
      ptrcallVoid(_mb_accessibility_set_window_rect, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_accessibility_set_window_focused =
      resolveMethodBind('DisplayServer', 'accessibility_set_window_focused', 300928843);

  void accessibilitySetWindowFocused(int windowId, bool focused) {
    final arg0 = malloc<Int64>()..value = windowId;
    final arg1 = malloc<Uint8>()..value = focused ? 1 : 0;
    try {
      ptrcallVoid(_mb_accessibility_set_window_focused, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  // Skipped accessibility_update_set_focus(): an argument type is unsupported.
  // Skipped accessibility_get_window_root(): unsupported return type "RID".
  // Skipped accessibility_update_set_role(): an argument type is unsupported.
  // Skipped accessibility_update_set_name(): an argument type is unsupported.
  // Skipped accessibility_update_set_extra_info(): an argument type is unsupported.
  // Skipped accessibility_update_set_description(): an argument type is unsupported.
  // Skipped accessibility_update_set_value(): an argument type is unsupported.
  // Skipped accessibility_update_set_tooltip(): an argument type is unsupported.
  // Skipped accessibility_update_set_bounds(): an argument type is unsupported.
  // Skipped accessibility_update_set_transform(): an argument type is unsupported.
  // Skipped accessibility_update_add_child(): an argument type is unsupported.
  // Skipped accessibility_update_add_related_controls(): an argument type is unsupported.
  // Skipped accessibility_update_add_related_details(): an argument type is unsupported.
  // Skipped accessibility_update_add_related_described_by(): an argument type is unsupported.
  // Skipped accessibility_update_add_related_flow_to(): an argument type is unsupported.
  // Skipped accessibility_update_add_related_labeled_by(): an argument type is unsupported.
  // Skipped accessibility_update_add_related_radio_group(): an argument type is unsupported.
  // Skipped accessibility_update_set_active_descendant(): an argument type is unsupported.
  // Skipped accessibility_update_set_next_on_line(): an argument type is unsupported.
  // Skipped accessibility_update_set_previous_on_line(): an argument type is unsupported.
  // Skipped accessibility_update_set_member_of(): an argument type is unsupported.
  // Skipped accessibility_update_set_in_page_link_target(): an argument type is unsupported.
  // Skipped accessibility_update_set_error_message(): an argument type is unsupported.
  // Skipped accessibility_update_set_live(): an argument type is unsupported.
  // Skipped accessibility_update_add_action(): an argument type is unsupported.
  // Skipped accessibility_update_add_custom_action(): an argument type is unsupported.
  // Skipped accessibility_update_set_table_row_count(): an argument type is unsupported.
  // Skipped accessibility_update_set_table_column_count(): an argument type is unsupported.
  // Skipped accessibility_update_set_table_row_index(): an argument type is unsupported.
  // Skipped accessibility_update_set_table_column_index(): an argument type is unsupported.
  // Skipped accessibility_update_set_table_cell_position(): an argument type is unsupported.
  // Skipped accessibility_update_set_table_cell_span(): an argument type is unsupported.
  // Skipped accessibility_update_set_list_item_count(): an argument type is unsupported.
  // Skipped accessibility_update_set_list_item_index(): an argument type is unsupported.
  // Skipped accessibility_update_set_list_item_level(): an argument type is unsupported.
  // Skipped accessibility_update_set_list_item_selected(): an argument type is unsupported.
  // Skipped accessibility_update_set_list_item_expanded(): an argument type is unsupported.
  // Skipped accessibility_update_set_popup_type(): an argument type is unsupported.
  // Skipped accessibility_update_set_checked(): an argument type is unsupported.
  // Skipped accessibility_update_set_num_value(): an argument type is unsupported.
  // Skipped accessibility_update_set_num_range(): an argument type is unsupported.
  // Skipped accessibility_update_set_num_step(): an argument type is unsupported.
  // Skipped accessibility_update_set_num_jump(): an argument type is unsupported.
  // Skipped accessibility_update_set_scroll_x(): an argument type is unsupported.
  // Skipped accessibility_update_set_scroll_x_range(): an argument type is unsupported.
  // Skipped accessibility_update_set_scroll_y(): an argument type is unsupported.
  // Skipped accessibility_update_set_scroll_y_range(): an argument type is unsupported.
  // Skipped accessibility_update_set_text_decorations(): an argument type is unsupported.
  // Skipped accessibility_update_set_text_align(): an argument type is unsupported.
  // Skipped accessibility_update_set_text_selection(): an argument type is unsupported.
  // Skipped accessibility_update_set_flag(): an argument type is unsupported.
  // Skipped accessibility_update_set_classname(): an argument type is unsupported.
  // Skipped accessibility_update_set_placeholder(): an argument type is unsupported.
  // Skipped accessibility_update_set_language(): an argument type is unsupported.
  // Skipped accessibility_update_set_text_orientation(): an argument type is unsupported.
  // Skipped accessibility_update_set_list_orientation(): an argument type is unsupported.
  // Skipped accessibility_update_set_shortcut(): an argument type is unsupported.
  // Skipped accessibility_update_set_url(): an argument type is unsupported.
  // Skipped accessibility_update_set_role_description(): an argument type is unsupported.
  // Skipped accessibility_update_set_state_description(): an argument type is unsupported.
  // Skipped accessibility_update_set_color_value(): an argument type is unsupported.
  // Skipped accessibility_update_set_background_color(): an argument type is unsupported.
  // Skipped accessibility_update_set_foreground_color(): an argument type is unsupported.
  static final Pointer<Void> _mb_ime_get_selection =
      resolveMethodBind('DisplayServer', 'ime_get_selection', 3690982128);

  Vector2i imeGetSelection() {
    try {
      final ret = malloc<Uint8>(Vector2i.nativeSize);
      try {
        ptrcallWithReturn(_mb_ime_get_selection, nativePtr, [], ret.cast());
        return Vector2i.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_ime_get_text =
      resolveMethodBind('DisplayServer', 'ime_get_text', 201670096);

  String imeGetText() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_ime_get_text, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_virtual_keyboard_show =
      resolveMethodBind('DisplayServer', 'virtual_keyboard_show', 3042891259);

  void virtualKeyboardShow(String existingText, Rect2 position, int type, int maxLength, int cursorStart, int cursorEnd) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), existingText);
    final arg1 = malloc<Uint8>(Rect2.nativeSize);
    position.writeTo(arg1, 0);
    final arg2 = malloc<Int64>()..value = type;
    final arg3 = malloc<Int64>()..value = maxLength;
    final arg4 = malloc<Int64>()..value = cursorStart;
    final arg5 = malloc<Int64>()..value = cursorEnd;
    try {
      ptrcallVoid(_mb_virtual_keyboard_show, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>(), arg3.cast<Void>(), arg4.cast<Void>(), arg5.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
      malloc.free(arg3);
      malloc.free(arg4);
      malloc.free(arg5);
    }
  }

  static final Pointer<Void> _mb_virtual_keyboard_hide =
      resolveMethodBind('DisplayServer', 'virtual_keyboard_hide', 3218959716);

  void virtualKeyboardHide() {
    try {
      ptrcallVoid(_mb_virtual_keyboard_hide, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_virtual_keyboard_get_height =
      resolveMethodBind('DisplayServer', 'virtual_keyboard_get_height', 3905245786);

  int virtualKeyboardGetHeight() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_virtual_keyboard_get_height, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_has_hardware_keyboard =
      resolveMethodBind('DisplayServer', 'has_hardware_keyboard', 36873697);

  bool hasHardwareKeyboard() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_has_hardware_keyboard, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  // Skipped set_hardware_keyboard_connection_change_callback(): an argument type is unsupported.
  static final Pointer<Void> _mb_cursor_set_shape =
      resolveMethodBind('DisplayServer', 'cursor_set_shape', 2026291549);

  void cursorSetShape(int shape) {
    final arg0 = malloc<Int64>()..value = shape;
    try {
      ptrcallVoid(_mb_cursor_set_shape, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_cursor_get_shape =
      resolveMethodBind('DisplayServer', 'cursor_get_shape', 1087724927);

  int cursorGetShape() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_cursor_get_shape, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_cursor_set_custom_image =
      resolveMethodBind('DisplayServer', 'cursor_set_custom_image', 1816663697);

  void cursorSetCustomImage(Resource cursor, int shape, Vector2 hotspot) {
    final arg0 = malloc<Pointer<Void>>()..value = cursor.nativePtr;
    final arg1 = malloc<Int64>()..value = shape;
    final arg2 = malloc<Uint8>(Vector2.nativeSize);
    hotspot.writeTo(arg2, 0);
    try {
      ptrcallVoid(_mb_cursor_set_custom_image, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_get_swap_cancel_ok =
      resolveMethodBind('DisplayServer', 'get_swap_cancel_ok', 2240911060);

  bool getSwapCancelOk() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_swap_cancel_ok, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_enable_for_stealing_focus =
      resolveMethodBind('DisplayServer', 'enable_for_stealing_focus', 1286410249);

  void enableForStealingFocus(int processId) {
    final arg0 = malloc<Int64>()..value = processId;
    try {
      ptrcallVoid(_mb_enable_for_stealing_focus, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  // Skipped dialog_show(): an argument type is unsupported.
  // Skipped dialog_input_text(): an argument type is unsupported.
  // Skipped file_dialog_show(): an argument type is unsupported.
  // Skipped file_dialog_with_options_show(): an argument type is unsupported.
  static final Pointer<Void> _mb_beep =
      resolveMethodBind('DisplayServer', 'beep', 4051624405);

  void beep() {
    try {
      ptrcallVoid(_mb_beep, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_keyboard_get_layout_count =
      resolveMethodBind('DisplayServer', 'keyboard_get_layout_count', 3905245786);

  int keyboardGetLayoutCount() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_keyboard_get_layout_count, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_keyboard_get_current_layout =
      resolveMethodBind('DisplayServer', 'keyboard_get_current_layout', 3905245786);

  int keyboardGetCurrentLayout() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_keyboard_get_current_layout, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_keyboard_set_current_layout =
      resolveMethodBind('DisplayServer', 'keyboard_set_current_layout', 1286410249);

  void keyboardSetCurrentLayout(int index) {
    final arg0 = malloc<Int64>()..value = index;
    try {
      ptrcallVoid(_mb_keyboard_set_current_layout, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_keyboard_get_layout_language =
      resolveMethodBind('DisplayServer', 'keyboard_get_layout_language', 844755477);

  String keyboardGetLayoutLanguage(int index) {
    final arg0 = malloc<Int64>()..value = index;
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_keyboard_get_layout_language, nativePtr, [arg0.cast<Void>()], ret.cast());
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

  static final Pointer<Void> _mb_keyboard_get_layout_name =
      resolveMethodBind('DisplayServer', 'keyboard_get_layout_name', 844755477);

  String keyboardGetLayoutName(int index) {
    final arg0 = malloc<Int64>()..value = index;
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_keyboard_get_layout_name, nativePtr, [arg0.cast<Void>()], ret.cast());
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

  static final Pointer<Void> _mb_keyboard_get_keycode_from_physical =
      resolveMethodBind('DisplayServer', 'keyboard_get_keycode_from_physical', 3447613187);

  int keyboardGetKeycodeFromPhysical(int keycode) {
    final arg0 = malloc<Int64>()..value = keycode;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_keyboard_get_keycode_from_physical, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_keyboard_get_label_from_physical =
      resolveMethodBind('DisplayServer', 'keyboard_get_label_from_physical', 3447613187);

  int keyboardGetLabelFromPhysical(int keycode) {
    final arg0 = malloc<Int64>()..value = keycode;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_keyboard_get_label_from_physical, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_show_emoji_and_symbol_picker =
      resolveMethodBind('DisplayServer', 'show_emoji_and_symbol_picker', 4051624405);

  void showEmojiAndSymbolPicker() {
    try {
      ptrcallVoid(_mb_show_emoji_and_symbol_picker, nativePtr, []);
    } finally {
    }
  }

  // Skipped color_picker(): an argument type is unsupported.
  static final Pointer<Void> _mb_process_events =
      resolveMethodBind('DisplayServer', 'process_events', 3218959716);

  void processEvents() {
    try {
      ptrcallVoid(_mb_process_events, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_force_process_and_drop_events =
      resolveMethodBind('DisplayServer', 'force_process_and_drop_events', 3218959716);

  void forceProcessAndDropEvents() {
    try {
      ptrcallVoid(_mb_force_process_and_drop_events, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_native_icon =
      resolveMethodBind('DisplayServer', 'set_native_icon', 83702148);

  void setNativeIcon(String filename) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), filename);
    try {
      ptrcallVoid(_mb_set_native_icon, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_icon =
      resolveMethodBind('DisplayServer', 'set_icon', 532598488);

  void setIcon(Image image) {
    final arg0 = malloc<Pointer<Void>>()..value = image.nativePtr;
    try {
      ptrcallVoid(_mb_set_icon, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  // Skipped create_status_indicator(): an argument type is unsupported.
  static final Pointer<Void> _mb_status_indicator_set_icon =
      resolveMethodBind('DisplayServer', 'status_indicator_set_icon', 666127730);

  void statusIndicatorSetIcon(int id, Texture2D icon) {
    final arg0 = malloc<Int64>()..value = id;
    final arg1 = malloc<Pointer<Void>>()..value = icon.nativePtr;
    try {
      ptrcallVoid(_mb_status_indicator_set_icon, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_status_indicator_set_tooltip =
      resolveMethodBind('DisplayServer', 'status_indicator_set_tooltip', 501894301);

  void statusIndicatorSetTooltip(int id, String tooltip) {
    final arg0 = malloc<Int64>()..value = id;
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg1.cast(), tooltip);
    try {
      ptrcallVoid(_mb_status_indicator_set_tooltip, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      BuiltinMarshal.destroyGDString(arg1.cast());
      malloc.free(arg1);
    }
  }

  // Skipped status_indicator_set_menu(): an argument type is unsupported.
  // Skipped status_indicator_set_callback(): an argument type is unsupported.
  static final Pointer<Void> _mb_status_indicator_get_rect =
      resolveMethodBind('DisplayServer', 'status_indicator_get_rect', 3327874267);

  Rect2 statusIndicatorGetRect(int id) {
    final arg0 = malloc<Int64>()..value = id;
    try {
      final ret = malloc<Uint8>(Rect2.nativeSize);
      try {
        ptrcallWithReturn(_mb_status_indicator_get_rect, nativePtr, [arg0.cast<Void>()], ret.cast());
        return Rect2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_delete_status_indicator =
      resolveMethodBind('DisplayServer', 'delete_status_indicator', 1286410249);

  void deleteStatusIndicator(int id) {
    final arg0 = malloc<Int64>()..value = id;
    try {
      ptrcallVoid(_mb_delete_status_indicator, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_tablet_get_driver_count =
      resolveMethodBind('DisplayServer', 'tablet_get_driver_count', 3905245786);

  int tabletGetDriverCount() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_tablet_get_driver_count, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_tablet_get_driver_name =
      resolveMethodBind('DisplayServer', 'tablet_get_driver_name', 844755477);

  String tabletGetDriverName(int idx) {
    final arg0 = malloc<Int64>()..value = idx;
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_tablet_get_driver_name, nativePtr, [arg0.cast<Void>()], ret.cast());
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

  static final Pointer<Void> _mb_tablet_get_current_driver =
      resolveMethodBind('DisplayServer', 'tablet_get_current_driver', 201670096);

  String tabletGetCurrentDriver() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_tablet_get_current_driver, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_tablet_set_current_driver =
      resolveMethodBind('DisplayServer', 'tablet_set_current_driver', 83702148);

  void tabletSetCurrentDriver(String name) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), name);
    try {
      ptrcallVoid(_mb_tablet_set_current_driver, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_window_transparency_available =
      resolveMethodBind('DisplayServer', 'is_window_transparency_available', 36873697);

  bool isWindowTransparencyAvailable() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_window_transparency_available, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  // Skipped register_additional_output(): an argument type is unsupported.
  // Skipped unregister_additional_output(): an argument type is unsupported.
  static final Pointer<Void> _mb_has_additional_outputs =
      resolveMethodBind('DisplayServer', 'has_additional_outputs', 36873697);

  bool hasAdditionalOutputs() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_has_additional_outputs, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_is_in_pip_mode =
      resolveMethodBind('DisplayServer', 'is_in_pip_mode', 1885608816);

  bool isInPipMode(int windowId) {
    final arg0 = malloc<Int64>()..value = windowId;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_in_pip_mode, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_pip_mode_enter =
      resolveMethodBind('DisplayServer', 'pip_mode_enter', 1995695955);

  void pipModeEnter(int windowId) {
    final arg0 = malloc<Int64>()..value = windowId;
    try {
      ptrcallVoid(_mb_pip_mode_enter, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_pip_mode_set_aspect_ratio =
      resolveMethodBind('DisplayServer', 'pip_mode_set_aspect_ratio', 3471927553);

  void pipModeSetAspectRatio(int numerator, int denominator, int windowId) {
    final arg0 = malloc<Int64>()..value = numerator;
    final arg1 = malloc<Int64>()..value = denominator;
    final arg2 = malloc<Int64>()..value = windowId;
    try {
      ptrcallVoid(_mb_pip_mode_set_aspect_ratio, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_pip_mode_set_auto_enter_on_background =
      resolveMethodBind('DisplayServer', 'pip_mode_set_auto_enter_on_background', 1661950165);

  void pipModeSetAutoEnterOnBackground(bool autoEnterOnBackground, int windowId) {
    final arg0 = malloc<Uint8>()..value = autoEnterOnBackground ? 1 : 0;
    final arg1 = malloc<Int64>()..value = windowId;
    try {
      ptrcallVoid(_mb_pip_mode_set_auto_enter_on_background, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

}
