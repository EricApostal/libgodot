// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class OS extends GodotObject {
  OS(super.nativePtr);

  /// Constructs a brand-new engine-owned OS instance
  /// (via classdb_construct_object3), not an existing one.
  factory OS.create() {
    return OS(resolveClassConstructor('OS'));
  }

  // Skipped get_entropy(): unsupported return type "PackedByteArray".
  static final Pointer<Void> _mb_get_system_ca_certificates =
      resolveMethodBind('OS', 'get_system_ca_certificates', 2841200299);

  String getSystemCaCertificates() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_system_ca_certificates, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  // Skipped get_connected_midi_inputs(): unsupported return type "PackedStringArray".
  static final Pointer<Void> _mb_open_midi_inputs =
      resolveMethodBind('OS', 'open_midi_inputs', 3218959716);

  void openMidiInputs() {
    try {
      ptrcallVoid(_mb_open_midi_inputs, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_close_midi_inputs =
      resolveMethodBind('OS', 'close_midi_inputs', 3218959716);

  void closeMidiInputs() {
    try {
      ptrcallVoid(_mb_close_midi_inputs, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_alert =
      resolveMethodBind('OS', 'alert', 1783970740);

  void alert(String text, String title) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), text);
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg1.cast(), title);
    try {
      ptrcallVoid(_mb_alert, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
      BuiltinMarshal.destroyGDString(arg1.cast());
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_crash =
      resolveMethodBind('OS', 'crash', 83702148);

  void crash(String message) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), message);
    try {
      ptrcallVoid(_mb_crash, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_low_processor_usage_mode =
      resolveMethodBind('OS', 'set_low_processor_usage_mode', 2586408642);

  void setLowProcessorUsageMode(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_low_processor_usage_mode, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_in_low_processor_usage_mode =
      resolveMethodBind('OS', 'is_in_low_processor_usage_mode', 36873697);

  bool isInLowProcessorUsageMode() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_in_low_processor_usage_mode, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_low_processor_usage_mode_sleep_usec =
      resolveMethodBind('OS', 'set_low_processor_usage_mode_sleep_usec', 1286410249);

  void setLowProcessorUsageModeSleepUsec(int usec) {
    final arg0 = malloc<Int64>()..value = usec;
    try {
      ptrcallVoid(_mb_set_low_processor_usage_mode_sleep_usec, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_low_processor_usage_mode_sleep_usec =
      resolveMethodBind('OS', 'get_low_processor_usage_mode_sleep_usec', 3905245786);

  int getLowProcessorUsageModeSleepUsec() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_low_processor_usage_mode_sleep_usec, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_delta_smoothing =
      resolveMethodBind('OS', 'set_delta_smoothing', 2586408642);

  void setDeltaSmoothing(bool deltaSmoothingEnabled) {
    final arg0 = malloc<Uint8>()..value = deltaSmoothingEnabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_delta_smoothing, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_delta_smoothing_enabled =
      resolveMethodBind('OS', 'is_delta_smoothing_enabled', 36873697);

  bool isDeltaSmoothingEnabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_delta_smoothing_enabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_processor_count =
      resolveMethodBind('OS', 'get_processor_count', 3905245786);

  int getProcessorCount() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_processor_count, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_processor_name =
      resolveMethodBind('OS', 'get_processor_name', 201670096);

  String getProcessorName() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_processor_name, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  // Skipped get_system_fonts(): unsupported return type "PackedStringArray".
  static final Pointer<Void> _mb_get_system_font_path =
      resolveMethodBind('OS', 'get_system_font_path', 626580860);

  String getSystemFontPath(String fontName, int weight, int stretch, bool italic) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), fontName);
    final arg1 = malloc<Int64>()..value = weight;
    final arg2 = malloc<Int64>()..value = stretch;
    final arg3 = malloc<Uint8>()..value = italic ? 1 : 0;
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_system_font_path, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>(), arg3.cast<Void>()], ret.cast());
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
      malloc.free(arg2);
      malloc.free(arg3);
    }
  }

  // Skipped get_system_font_path_for_text(): unsupported return type "PackedStringArray".
  static final Pointer<Void> _mb_get_executable_path =
      resolveMethodBind('OS', 'get_executable_path', 201670096);

  String getExecutablePath() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_executable_path, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_read_string_from_stdin =
      resolveMethodBind('OS', 'read_string_from_stdin', 723587915);

  String readStringFromStdin(int bufferSize) {
    final arg0 = malloc<Int64>()..value = bufferSize;
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_read_string_from_stdin, nativePtr, [arg0.cast<Void>()], ret.cast());
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

  // Skipped read_buffer_from_stdin(): unsupported return type "PackedByteArray".
  static final Pointer<Void> _mb_get_stdin_type =
      resolveMethodBind('OS', 'get_stdin_type', 1704816237);

  int getStdinType() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_stdin_type, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_stdout_type =
      resolveMethodBind('OS', 'get_stdout_type', 1704816237);

  int getStdoutType() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_stdout_type, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_stderr_type =
      resolveMethodBind('OS', 'get_stderr_type', 1704816237);

  int getStderrType() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_stderr_type, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  // Skipped execute(): an argument type is unsupported.
  // Skipped execute_with_pipe(): unsupported return type "Dictionary".
  // Skipped create_process(): an argument type is unsupported.
  // Skipped create_instance(): an argument type is unsupported.
  // Skipped open_with_program(): an argument type is unsupported.
  static final Pointer<Void> _mb_kill =
      resolveMethodBind('OS', 'kill', 844576869);

  int kill(int pid) {
    final arg0 = malloc<Int64>()..value = pid;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_kill, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_shell_open =
      resolveMethodBind('OS', 'shell_open', 166001499);

  int shellOpen(String uri) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), uri);
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_shell_open, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_shell_show_in_file_manager =
      resolveMethodBind('OS', 'shell_show_in_file_manager', 3565188097);

  int shellShowInFileManager(String fileOrDirPath, bool openFolder) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), fileOrDirPath);
    final arg1 = malloc<Uint8>()..value = openFolder ? 1 : 0;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_shell_show_in_file_manager, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
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

  static final Pointer<Void> _mb_is_process_running =
      resolveMethodBind('OS', 'is_process_running', 1116898809);

  bool isProcessRunning(int pid) {
    final arg0 = malloc<Int64>()..value = pid;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_process_running, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_process_exit_code =
      resolveMethodBind('OS', 'get_process_exit_code', 923996154);

  int getProcessExitCode(int pid) {
    final arg0 = malloc<Int64>()..value = pid;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_process_exit_code, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_process_id =
      resolveMethodBind('OS', 'get_process_id', 3905245786);

  int getProcessId() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_process_id, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_has_environment =
      resolveMethodBind('OS', 'has_environment', 3927539163);

  bool hasEnvironment(String variable) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), variable);
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_has_environment, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_environment =
      resolveMethodBind('OS', 'get_environment', 3135753539);

  String getEnvironment(String variable) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), variable);
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_environment, nativePtr, [arg0.cast<Void>()], ret.cast());
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

  static final Pointer<Void> _mb_set_environment =
      resolveMethodBind('OS', 'set_environment', 3605043004);

  void setEnvironment(String variable, String value) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), variable);
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg1.cast(), value);
    try {
      ptrcallVoid(_mb_set_environment, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
      BuiltinMarshal.destroyGDString(arg1.cast());
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_unset_environment =
      resolveMethodBind('OS', 'unset_environment', 3089850668);

  void unsetEnvironment(String variable) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), variable);
    try {
      ptrcallVoid(_mb_unset_environment, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_name =
      resolveMethodBind('OS', 'get_name', 201670096);

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

  static final Pointer<Void> _mb_get_distribution_name =
      resolveMethodBind('OS', 'get_distribution_name', 201670096);

  String getDistributionName() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_distribution_name, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_version =
      resolveMethodBind('OS', 'get_version', 201670096);

  String getVersion() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_version, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_version_alias =
      resolveMethodBind('OS', 'get_version_alias', 201670096);

  String getVersionAlias() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_version_alias, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  // Skipped get_cmdline_args(): unsupported return type "PackedStringArray".
  // Skipped get_cmdline_user_args(): unsupported return type "PackedStringArray".
  // Skipped get_video_adapter_driver_info(): unsupported return type "PackedStringArray".
  // Skipped set_restart_on_exit(): an argument type is unsupported.
  static final Pointer<Void> _mb_is_restart_on_exit_set =
      resolveMethodBind('OS', 'is_restart_on_exit_set', 36873697);

  bool isRestartOnExitSet() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_restart_on_exit_set, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  // Skipped get_restart_on_exit_arguments(): unsupported return type "PackedStringArray".
  static final Pointer<Void> _mb_delay_usec =
      resolveMethodBind('OS', 'delay_usec', 998575451);

  void delayUsec(int usec) {
    final arg0 = malloc<Int64>()..value = usec;
    try {
      ptrcallVoid(_mb_delay_usec, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_delay_msec =
      resolveMethodBind('OS', 'delay_msec', 998575451);

  void delayMsec(int msec) {
    final arg0 = malloc<Int64>()..value = msec;
    try {
      ptrcallVoid(_mb_delay_msec, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_locale =
      resolveMethodBind('OS', 'get_locale', 201670096);

  String getLocale() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_locale, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  // Skipped get_preferred_locales(): unsupported return type "PackedStringArray".
  static final Pointer<Void> _mb_get_locale_language =
      resolveMethodBind('OS', 'get_locale_language', 201670096);

  String getLocaleLanguage() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_locale_language, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_model_name =
      resolveMethodBind('OS', 'get_model_name', 201670096);

  String getModelName() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_model_name, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_is_userfs_persistent =
      resolveMethodBind('OS', 'is_userfs_persistent', 36873697);

  bool isUserfsPersistent() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_userfs_persistent, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_is_stdout_verbose =
      resolveMethodBind('OS', 'is_stdout_verbose', 36873697);

  bool isStdoutVerbose() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_stdout_verbose, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_is_debug_build =
      resolveMethodBind('OS', 'is_debug_build', 36873697);

  bool isDebugBuild() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_debug_build, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_static_memory_usage =
      resolveMethodBind('OS', 'get_static_memory_usage', 3905245786);

  int getStaticMemoryUsage() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_static_memory_usage, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_static_memory_peak_usage =
      resolveMethodBind('OS', 'get_static_memory_peak_usage', 3905245786);

  int getStaticMemoryPeakUsage() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_static_memory_peak_usage, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  // Skipped get_memory_info(): unsupported return type "Dictionary".
  static final Pointer<Void> _mb_move_to_trash =
      resolveMethodBind('OS', 'move_to_trash', 2113323047);

  int moveToTrash(String path) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), path);
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_move_to_trash, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_user_data_dir =
      resolveMethodBind('OS', 'get_user_data_dir', 201670096);

  String getUserDataDir() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_user_data_dir, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_system_dir =
      resolveMethodBind('OS', 'get_system_dir', 3073895123);

  String getSystemDir(int dir, bool sharedStorage) {
    final arg0 = malloc<Int64>()..value = dir;
    final arg1 = malloc<Uint8>()..value = sharedStorage ? 1 : 0;
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_system_dir, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_config_dir =
      resolveMethodBind('OS', 'get_config_dir', 201670096);

  String getConfigDir() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_config_dir, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_data_dir =
      resolveMethodBind('OS', 'get_data_dir', 201670096);

  String getDataDir() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_data_dir, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_cache_dir =
      resolveMethodBind('OS', 'get_cache_dir', 201670096);

  String getCacheDir() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_cache_dir, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_temp_dir =
      resolveMethodBind('OS', 'get_temp_dir', 201670096);

  String getTempDir() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_temp_dir, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_unique_id =
      resolveMethodBind('OS', 'get_unique_id', 201670096);

  String getUniqueId() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_unique_id, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_keycode_string =
      resolveMethodBind('OS', 'get_keycode_string', 2261993717);

  String getKeycodeString(int code) {
    final arg0 = malloc<Int64>()..value = code;
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_keycode_string, nativePtr, [arg0.cast<Void>()], ret.cast());
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

  static final Pointer<Void> _mb_is_keycode_unicode =
      resolveMethodBind('OS', 'is_keycode_unicode', 1116898809);

  bool isKeycodeUnicode(int code) {
    final arg0 = malloc<Int64>()..value = code;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_keycode_unicode, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_find_keycode_from_string =
      resolveMethodBind('OS', 'find_keycode_from_string', 1084858572);

  int findKeycodeFromString(String string) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), string);
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_find_keycode_from_string, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_use_file_access_save_and_swap =
      resolveMethodBind('OS', 'set_use_file_access_save_and_swap', 2586408642);

  void setUseFileAccessSaveAndSwap(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_use_file_access_save_and_swap, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_thread_name =
      resolveMethodBind('OS', 'set_thread_name', 166001499);

  int setThreadName(String name) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), name);
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_set_thread_name, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_thread_caller_id =
      resolveMethodBind('OS', 'get_thread_caller_id', 3905245786);

  int getThreadCallerId() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_thread_caller_id, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_main_thread_id =
      resolveMethodBind('OS', 'get_main_thread_id', 3905245786);

  int getMainThreadId() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_main_thread_id, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_has_feature =
      resolveMethodBind('OS', 'has_feature', 3927539163);

  bool hasFeature(String tagName) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), tagName);
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_has_feature, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_sandboxed =
      resolveMethodBind('OS', 'is_sandboxed', 36873697);

  bool isSandboxed() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_sandboxed, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_request_permission =
      resolveMethodBind('OS', 'request_permission', 2323990056);

  bool requestPermission(String name) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), name);
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_request_permission, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_request_permissions =
      resolveMethodBind('OS', 'request_permissions', 2240911060);

  bool requestPermissions() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_request_permissions, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  // Skipped get_granted_permissions(): unsupported return type "PackedStringArray".
  static final Pointer<Void> _mb_revoke_granted_permissions =
      resolveMethodBind('OS', 'revoke_granted_permissions', 3218959716);

  void revokeGrantedPermissions() {
    try {
      ptrcallVoid(_mb_revoke_granted_permissions, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_add_logger =
      resolveMethodBind('OS', 'add_logger', 4261188958);

  void addLogger(Logger logger) {
    final arg0 = malloc<Pointer<Void>>()..value = logger.nativePtr;
    try {
      ptrcallVoid(_mb_add_logger, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_remove_logger =
      resolveMethodBind('OS', 'remove_logger', 4261188958);

  void removeLogger(Logger logger) {
    final arg0 = malloc<Pointer<Void>>()..value = logger.nativePtr;
    try {
      ptrcallVoid(_mb_remove_logger, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

}
