// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class ProjectSettings extends GodotObject {
  ProjectSettings(super.nativePtr);

  static final Pointer<Void> _mb_has_setting =
      resolveMethodBind('ProjectSettings', 'has_setting', 3927539163);

  bool hasSetting(String name) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), name);
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_has_setting, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  // Skipped set_setting(): an argument type is unsupported.
  // Skipped get_setting(): unsupported return type "Variant".
  // Skipped get_setting_with_override(): unsupported return type "Variant".
  // Skipped get_global_class_list(): unsupported return type "typedarray::Dictionary".
  // Skipped get_setting_with_override_and_custom_features(): unsupported return type "Variant".
  static final Pointer<Void> _mb_set_order =
      resolveMethodBind('ProjectSettings', 'set_order', 2956805083);

  void setOrder(String name, int position) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), name);
    final arg1 = malloc<Int64>()..value = position;
    try {
      ptrcallVoid(_mb_set_order, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_order =
      resolveMethodBind('ProjectSettings', 'get_order', 1321353865);

  int getOrder(String name) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), name);
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_order, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  // Skipped set_initial_value(): an argument type is unsupported.
  static final Pointer<Void> _mb_set_as_basic =
      resolveMethodBind('ProjectSettings', 'set_as_basic', 2678287736);

  void setAsBasic(String name, bool basic) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), name);
    final arg1 = malloc<Uint8>()..value = basic ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_as_basic, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_set_as_internal =
      resolveMethodBind('ProjectSettings', 'set_as_internal', 2678287736);

  void setAsInternal(String name, bool internal) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), name);
    final arg1 = malloc<Uint8>()..value = internal ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_as_internal, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  // Skipped add_property_info(): an argument type is unsupported.
  static final Pointer<Void> _mb_set_restart_if_changed =
      resolveMethodBind('ProjectSettings', 'set_restart_if_changed', 2678287736);

  void setRestartIfChanged(String name, bool restart) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), name);
    final arg1 = malloc<Uint8>()..value = restart ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_restart_if_changed, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_clear =
      resolveMethodBind('ProjectSettings', 'clear', 83702148);

  void clear(String name) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), name);
    try {
      ptrcallVoid(_mb_clear, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_localize_path =
      resolveMethodBind('ProjectSettings', 'localize_path', 3135753539);

  String localizePath(String path) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), path);
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_localize_path, nativePtr, [arg0.cast<Void>()], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_globalize_path =
      resolveMethodBind('ProjectSettings', 'globalize_path', 3135753539);

  String globalizePath(String path) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), path);
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_globalize_path, nativePtr, [arg0.cast<Void>()], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_save =
      resolveMethodBind('ProjectSettings', 'save', 166280745);

  int save() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_save, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_load_resource_pack =
      resolveMethodBind('ProjectSettings', 'load_resource_pack', 708980503);

  bool loadResourcePack(String pack, bool replaceFiles, int offset) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), pack);
    final arg1 = malloc<Uint8>()..value = replaceFiles ? 1 : 0;
    final arg2 = malloc<Int64>()..value = offset;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_load_resource_pack, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_save_custom =
      resolveMethodBind('ProjectSettings', 'save_custom', 166001499);

  int saveCustom(String file) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), file);
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_save_custom, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  // Skipped get_changed_settings(): unsupported return type "PackedStringArray".
  static final Pointer<Void> _mb_check_changed_settings_in_group =
      resolveMethodBind('ProjectSettings', 'check_changed_settings_in_group', 3927539163);

  bool checkChangedSettingsInGroup(String settingPrefix) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), settingPrefix);
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_check_changed_settings_in_group, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

}
