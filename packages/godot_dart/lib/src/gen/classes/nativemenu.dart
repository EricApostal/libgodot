// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class NativeMenu extends GodotObject {
  NativeMenu(super.nativePtr);

  /// Constructs a brand-new engine-owned NativeMenu instance
  /// (via classdb_construct_object3), not an existing one.
  factory NativeMenu.create() {
    return NativeMenu(resolveClassConstructor('NativeMenu'));
  }

  static final Pointer<Void> _mb_has_feature =
      resolveMethodBind('NativeMenu', 'has_feature', 1708975490);

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

  static final Pointer<Void> _mb_has_system_menu =
      resolveMethodBind('NativeMenu', 'has_system_menu', 718213027);

  bool hasSystemMenu(int menuId) {
    final arg0 = malloc<Int64>()..value = menuId;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_has_system_menu, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  // Skipped get_system_menu(): unsupported return type "RID".
  static final Pointer<Void> _mb_get_system_menu_name =
      resolveMethodBind('NativeMenu', 'get_system_menu_name', 1281499290);

  String getSystemMenuName(int menuId) {
    final arg0 = malloc<Int64>()..value = menuId;
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_system_menu_name, nativePtr, [arg0.cast<Void>()], ret.cast());
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

  static final Pointer<Void> _mb_get_system_menu_text =
      resolveMethodBind('NativeMenu', 'get_system_menu_text', 1281499290);

  String getSystemMenuText(int menuId) {
    final arg0 = malloc<Int64>()..value = menuId;
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_system_menu_text, nativePtr, [arg0.cast<Void>()], ret.cast());
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

  static final Pointer<Void> _mb_set_system_menu_text =
      resolveMethodBind('NativeMenu', 'set_system_menu_text', 3925225603);

  void setSystemMenuText(int menuId, String name) {
    final arg0 = malloc<Int64>()..value = menuId;
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg1.cast(), name);
    try {
      ptrcallVoid(_mb_set_system_menu_text, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      BuiltinMarshal.destroyGDString(arg1.cast());
      malloc.free(arg1);
    }
  }

  // Skipped create_menu(): unsupported return type "RID".
  // Skipped has_menu(): an argument type is unsupported.
  // Skipped free_menu(): an argument type is unsupported.
  // Skipped get_size(): an argument type is unsupported.
  // Skipped popup(): an argument type is unsupported.
  // Skipped set_interface_direction(): an argument type is unsupported.
  // Skipped set_popup_open_callback(): an argument type is unsupported.
  // Skipped get_popup_open_callback(): unsupported return type "Callable".
  // Skipped set_popup_close_callback(): an argument type is unsupported.
  // Skipped get_popup_close_callback(): unsupported return type "Callable".
  // Skipped set_minimum_width(): an argument type is unsupported.
  // Skipped get_minimum_width(): an argument type is unsupported.
  // Skipped is_opened(): an argument type is unsupported.
  // Skipped add_submenu_item(): an argument type is unsupported.
  // Skipped add_item(): an argument type is unsupported.
  // Skipped add_check_item(): an argument type is unsupported.
  // Skipped add_icon_item(): an argument type is unsupported.
  // Skipped add_icon_check_item(): an argument type is unsupported.
  // Skipped add_radio_check_item(): an argument type is unsupported.
  // Skipped add_icon_radio_check_item(): an argument type is unsupported.
  // Skipped add_multistate_item(): an argument type is unsupported.
  // Skipped add_separator(): an argument type is unsupported.
  // Skipped find_item_index_with_text(): an argument type is unsupported.
  // Skipped find_item_index_with_tag(): an argument type is unsupported.
  // Skipped find_item_index_with_submenu(): an argument type is unsupported.
  // Skipped is_item_checked(): an argument type is unsupported.
  // Skipped is_item_indeterminate(): an argument type is unsupported.
  // Skipped is_item_checkable(): an argument type is unsupported.
  // Skipped is_item_radio_checkable(): an argument type is unsupported.
  // Skipped get_item_callback(): unsupported return type "Callable".
  // Skipped get_item_key_callback(): unsupported return type "Callable".
  // Skipped get_item_tag(): unsupported return type "Variant".
  // Skipped get_item_text(): an argument type is unsupported.
  // Skipped get_item_submenu(): unsupported return type "RID".
  // Skipped get_item_accelerator(): an argument type is unsupported.
  // Skipped is_item_disabled(): an argument type is unsupported.
  // Skipped is_item_hidden(): an argument type is unsupported.
  // Skipped get_item_tooltip(): an argument type is unsupported.
  // Skipped get_item_state(): an argument type is unsupported.
  // Skipped get_item_max_states(): an argument type is unsupported.
  // Skipped get_item_icon(): an argument type is unsupported.
  // Skipped get_item_indentation_level(): an argument type is unsupported.
  // Skipped set_item_checked(): an argument type is unsupported.
  // Skipped set_item_indeterminate(): an argument type is unsupported.
  // Skipped set_item_checkable(): an argument type is unsupported.
  // Skipped set_item_radio_checkable(): an argument type is unsupported.
  // Skipped set_item_callback(): an argument type is unsupported.
  // Skipped set_item_hover_callbacks(): an argument type is unsupported.
  // Skipped set_item_key_callback(): an argument type is unsupported.
  // Skipped set_item_tag(): an argument type is unsupported.
  // Skipped set_item_text(): an argument type is unsupported.
  // Skipped set_item_submenu(): an argument type is unsupported.
  // Skipped set_item_accelerator(): an argument type is unsupported.
  // Skipped set_item_disabled(): an argument type is unsupported.
  // Skipped set_item_hidden(): an argument type is unsupported.
  // Skipped set_item_tooltip(): an argument type is unsupported.
  // Skipped set_item_state(): an argument type is unsupported.
  // Skipped set_item_max_states(): an argument type is unsupported.
  // Skipped set_item_icon(): an argument type is unsupported.
  // Skipped set_item_indentation_level(): an argument type is unsupported.
  // Skipped set_item_index(): an argument type is unsupported.
  // Skipped get_item_count(): an argument type is unsupported.
  // Skipped is_system_menu(): an argument type is unsupported.
  // Skipped remove_item(): an argument type is unsupported.
  // Skipped clear(): an argument type is unsupported.
}
