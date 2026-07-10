// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class FileDialog extends ConfirmationDialog {
  FileDialog(super.nativePtr);

  static final Pointer<Void> _mb_clear_filters =
      resolveMethodBind('FileDialog', 'clear_filters', 3218959716);

  void clearFilters() {
    try {
      ptrcallVoid(_mb_clear_filters, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_add_filter =
      resolveMethodBind('FileDialog', 'add_filter', 914921954);

  void addFilter(String filter, String description, String mimeType) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), filter);
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg1.cast(), description);
    final arg2 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg2.cast(), mimeType);
    try {
      ptrcallVoid(_mb_add_filter, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
      BuiltinMarshal.destroyGDString(arg1.cast());
      malloc.free(arg1);
      BuiltinMarshal.destroyGDString(arg2.cast());
      malloc.free(arg2);
    }
  }

  // Skipped set_filters(): an argument type is unsupported.
  // Skipped get_filters(): unsupported return type "PackedStringArray".
  static final Pointer<Void> _mb_clear_filename_filter =
      resolveMethodBind('FileDialog', 'clear_filename_filter', 3218959716);

  void clearFilenameFilter() {
    try {
      ptrcallVoid(_mb_clear_filename_filter, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_filename_filter =
      resolveMethodBind('FileDialog', 'set_filename_filter', 83702148);

  void setFilenameFilter(String filter) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), filter);
    try {
      ptrcallVoid(_mb_set_filename_filter, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_filename_filter =
      resolveMethodBind('FileDialog', 'get_filename_filter', 201670096);

  String getFilenameFilter() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_filename_filter, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_option_name =
      resolveMethodBind('FileDialog', 'get_option_name', 844755477);

  String getOptionName(int option) {
    final arg0 = malloc<Int64>()..value = option;
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_option_name, nativePtr, [arg0.cast<Void>()], ret.cast());
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

  // Skipped get_option_values(): unsupported return type "PackedStringArray".
  static final Pointer<Void> _mb_get_option_default =
      resolveMethodBind('FileDialog', 'get_option_default', 923996154);

  int getOptionDefault(int option) {
    final arg0 = malloc<Int64>()..value = option;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_option_default, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_option_name =
      resolveMethodBind('FileDialog', 'set_option_name', 501894301);

  void setOptionName(int option, String name) {
    final arg0 = malloc<Int64>()..value = option;
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg1.cast(), name);
    try {
      ptrcallVoid(_mb_set_option_name, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      BuiltinMarshal.destroyGDString(arg1.cast());
      malloc.free(arg1);
    }
  }

  // Skipped set_option_values(): an argument type is unsupported.
  static final Pointer<Void> _mb_set_option_default =
      resolveMethodBind('FileDialog', 'set_option_default', 3937882851);

  void setOptionDefault(int option, int defaultValueIndex) {
    final arg0 = malloc<Int64>()..value = option;
    final arg1 = malloc<Int64>()..value = defaultValueIndex;
    try {
      ptrcallVoid(_mb_set_option_default, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_set_option_count =
      resolveMethodBind('FileDialog', 'set_option_count', 1286410249);

  void setOptionCount(int count) {
    final arg0 = malloc<Int64>()..value = count;
    try {
      ptrcallVoid(_mb_set_option_count, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_option_count =
      resolveMethodBind('FileDialog', 'get_option_count', 3905245786);

  int getOptionCount() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_option_count, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  // Skipped add_option(): an argument type is unsupported.
  // Skipped get_selected_options(): unsupported return type "Dictionary".
  static final Pointer<Void> _mb_get_current_dir =
      resolveMethodBind('FileDialog', 'get_current_dir', 201670096);

  String getCurrentDir() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_current_dir, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_current_file =
      resolveMethodBind('FileDialog', 'get_current_file', 201670096);

  String getCurrentFile() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_current_file, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_current_path =
      resolveMethodBind('FileDialog', 'get_current_path', 201670096);

  String getCurrentPath() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_current_path, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_current_dir =
      resolveMethodBind('FileDialog', 'set_current_dir', 83702148);

  void setCurrentDir(String dir) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), dir);
    try {
      ptrcallVoid(_mb_set_current_dir, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_current_file =
      resolveMethodBind('FileDialog', 'set_current_file', 83702148);

  void setCurrentFile(String file) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), file);
    try {
      ptrcallVoid(_mb_set_current_file, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_current_path =
      resolveMethodBind('FileDialog', 'set_current_path', 83702148);

  void setCurrentPath(String path) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), path);
    try {
      ptrcallVoid(_mb_set_current_path, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_mode_overrides_title =
      resolveMethodBind('FileDialog', 'set_mode_overrides_title', 2586408642);

  void setModeOverridesTitle(bool override) {
    final arg0 = malloc<Uint8>()..value = override ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_mode_overrides_title, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_mode_overriding_title =
      resolveMethodBind('FileDialog', 'is_mode_overriding_title', 36873697);

  bool isModeOverridingTitle() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_mode_overriding_title, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_file_mode =
      resolveMethodBind('FileDialog', 'set_file_mode', 3654936397);

  void setFileMode(int mode) {
    final arg0 = malloc<Int64>()..value = mode;
    try {
      ptrcallVoid(_mb_set_file_mode, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_file_mode =
      resolveMethodBind('FileDialog', 'get_file_mode', 4074825319);

  int getFileMode() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_file_mode, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_display_mode =
      resolveMethodBind('FileDialog', 'set_display_mode', 2692197101);

  void setDisplayMode(int mode) {
    final arg0 = malloc<Int64>()..value = mode;
    try {
      ptrcallVoid(_mb_set_display_mode, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_display_mode =
      resolveMethodBind('FileDialog', 'get_display_mode', 1092104624);

  int getDisplayMode() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_display_mode, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_vbox =
      resolveMethodBind('FileDialog', 'get_vbox', 915758477);

  VBoxContainer? getVbox() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_vbox, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : VBoxContainer(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_line_edit =
      resolveMethodBind('FileDialog', 'get_line_edit', 4071694264);

  LineEdit? getLineEdit() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_line_edit, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : LineEdit(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_access =
      resolveMethodBind('FileDialog', 'set_access', 4104413466);

  void setAccess(int access) {
    final arg0 = malloc<Int64>()..value = access;
    try {
      ptrcallVoid(_mb_set_access, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_access =
      resolveMethodBind('FileDialog', 'get_access', 3344081076);

  int getAccess() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_access, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_root_subfolder =
      resolveMethodBind('FileDialog', 'set_root_subfolder', 83702148);

  void setRootSubfolder(String dir) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), dir);
    try {
      ptrcallVoid(_mb_set_root_subfolder, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_root_subfolder =
      resolveMethodBind('FileDialog', 'get_root_subfolder', 201670096);

  String getRootSubfolder() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_root_subfolder, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_show_hidden_files =
      resolveMethodBind('FileDialog', 'set_show_hidden_files', 2586408642);

  void setShowHiddenFiles(bool show_) {
    final arg0 = malloc<Uint8>()..value = show_ ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_show_hidden_files, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_showing_hidden_files =
      resolveMethodBind('FileDialog', 'is_showing_hidden_files', 36873697);

  bool isShowingHiddenFiles() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_showing_hidden_files, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_use_native_dialog =
      resolveMethodBind('FileDialog', 'set_use_native_dialog', 2586408642);

  void setUseNativeDialog(bool native) {
    final arg0 = malloc<Uint8>()..value = native ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_use_native_dialog, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_use_native_dialog =
      resolveMethodBind('FileDialog', 'get_use_native_dialog', 36873697);

  bool getUseNativeDialog() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_use_native_dialog, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_customization_flag_enabled =
      resolveMethodBind('FileDialog', 'set_customization_flag_enabled', 3849177100);

  void setCustomizationFlagEnabled(int flag, bool enabled) {
    final arg0 = malloc<Int64>()..value = flag;
    final arg1 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_customization_flag_enabled, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_is_customization_flag_enabled =
      resolveMethodBind('FileDialog', 'is_customization_flag_enabled', 3722277863);

  bool isCustomizationFlagEnabled(int flag) {
    final arg0 = malloc<Int64>()..value = flag;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_customization_flag_enabled, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_deselect_all =
      resolveMethodBind('FileDialog', 'deselect_all', 3218959716);

  void deselectAll() {
    try {
      ptrcallVoid(_mb_deselect_all, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_popup_file_dialog =
      resolveMethodBind('FileDialog', 'popup_file_dialog', 3218959716);

  void popupFileDialog() {
    try {
      ptrcallVoid(_mb_popup_file_dialog, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_invalidate =
      resolveMethodBind('FileDialog', 'invalidate', 3218959716);

  void invalidate() {
    try {
      ptrcallVoid(_mb_invalidate, nativePtr, []);
    } finally {
    }
  }

}
