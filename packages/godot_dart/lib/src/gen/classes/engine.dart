// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class Engine extends GodotObject {
  Engine(super.nativePtr);

  static Engine? _singleton;
  static Engine get singleton {
    return _singleton ??= Engine(resolveSingleton('Engine'));
  }

  /// Constructs a brand-new engine-owned Engine instance
  /// (via classdb_construct_object3), not an existing one.
  factory Engine.create() {
    return Engine(resolveClassConstructor('Engine'));
  }

  static final Pointer<Void> _mb_set_physics_ticks_per_second =
      resolveMethodBind('Engine', 'set_physics_ticks_per_second', 1286410249);

  void setPhysicsTicksPerSecond(int physicsTicksPerSecond) {
    final arg0 = malloc<Int64>()..value = physicsTicksPerSecond;
    try {
      ptrcallVoid(_mb_set_physics_ticks_per_second, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_physics_ticks_per_second =
      resolveMethodBind('Engine', 'get_physics_ticks_per_second', 3905245786);

  int getPhysicsTicksPerSecond() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_physics_ticks_per_second, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_max_physics_steps_per_frame =
      resolveMethodBind('Engine', 'set_max_physics_steps_per_frame', 1286410249);

  void setMaxPhysicsStepsPerFrame(int maxPhysicsSteps) {
    final arg0 = malloc<Int64>()..value = maxPhysicsSteps;
    try {
      ptrcallVoid(_mb_set_max_physics_steps_per_frame, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_max_physics_steps_per_frame =
      resolveMethodBind('Engine', 'get_max_physics_steps_per_frame', 3905245786);

  int getMaxPhysicsStepsPerFrame() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_max_physics_steps_per_frame, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_physics_jitter_fix =
      resolveMethodBind('Engine', 'set_physics_jitter_fix', 373806689);

  void setPhysicsJitterFix(double physicsJitterFix) {
    final arg0 = malloc<Double>()..value = physicsJitterFix;
    try {
      ptrcallVoid(_mb_set_physics_jitter_fix, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_physics_jitter_fix =
      resolveMethodBind('Engine', 'get_physics_jitter_fix', 1740695150);

  double getPhysicsJitterFix() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_physics_jitter_fix, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_physics_interpolation_fraction =
      resolveMethodBind('Engine', 'get_physics_interpolation_fraction', 1740695150);

  double getPhysicsInterpolationFraction() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_physics_interpolation_fraction, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_max_fps =
      resolveMethodBind('Engine', 'set_max_fps', 1286410249);

  void setMaxFps(int maxFps) {
    final arg0 = malloc<Int64>()..value = maxFps;
    try {
      ptrcallVoid(_mb_set_max_fps, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_max_fps =
      resolveMethodBind('Engine', 'get_max_fps', 3905245786);

  int getMaxFps() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_max_fps, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_time_scale =
      resolveMethodBind('Engine', 'set_time_scale', 373806689);

  void setTimeScale(double timeScale) {
    final arg0 = malloc<Double>()..value = timeScale;
    try {
      ptrcallVoid(_mb_set_time_scale, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_time_scale =
      resolveMethodBind('Engine', 'get_time_scale', 191475506);

  double getTimeScale() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_time_scale, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_frames_drawn =
      resolveMethodBind('Engine', 'get_frames_drawn', 2455072627);

  int getFramesDrawn() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_frames_drawn, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_frames_per_second =
      resolveMethodBind('Engine', 'get_frames_per_second', 1740695150);

  double getFramesPerSecond() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_frames_per_second, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_physics_frames =
      resolveMethodBind('Engine', 'get_physics_frames', 3905245786);

  int getPhysicsFrames() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_physics_frames, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_process_frames =
      resolveMethodBind('Engine', 'get_process_frames', 3905245786);

  int getProcessFrames() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_process_frames, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_main_loop =
      resolveMethodBind('Engine', 'get_main_loop', 1016888095);

  MainLoop? getMainLoop() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_main_loop, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : MainLoop(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  // Skipped get_version_info(): unsupported return type "Dictionary".
  // Skipped get_author_info(): unsupported return type "Dictionary".
  // Skipped get_copyright_info(): unsupported return type "typedarray::Dictionary".
  // Skipped get_donor_info(): unsupported return type "Dictionary".
  // Skipped get_license_info(): unsupported return type "Dictionary".
  static final Pointer<Void> _mb_get_license_text =
      resolveMethodBind('Engine', 'get_license_text', 201670096);

  String getLicenseText() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_license_text, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_architecture_name =
      resolveMethodBind('Engine', 'get_architecture_name', 201670096);

  String getArchitectureName() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_architecture_name, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_is_in_physics_frame =
      resolveMethodBind('Engine', 'is_in_physics_frame', 36873697);

  bool isInPhysicsFrame() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_in_physics_frame, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_has_singleton =
      resolveMethodBind('Engine', 'has_singleton', 2619796661);

  bool hasSingleton(String name) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), name);
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_has_singleton, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
    }
  }

  // Skipped get_singleton(): unsupported return type "Object".
  // Skipped register_singleton(): an argument type is unsupported.
  static final Pointer<Void> _mb_unregister_singleton =
      resolveMethodBind('Engine', 'unregister_singleton', 3304788590);

  void unregisterSingleton(String name) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), name);
    try {
      ptrcallVoid(_mb_unregister_singleton, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
    }
  }

  // Skipped get_singleton_list(): unsupported return type "PackedStringArray".
  static final Pointer<Void> _mb_register_script_language =
      resolveMethodBind('Engine', 'register_script_language', 1850254898);

  int registerScriptLanguage(ScriptLanguage language) {
    final arg0 = malloc<Pointer<Void>>()..value = language.nativePtr;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_register_script_language, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_unregister_script_language =
      resolveMethodBind('Engine', 'unregister_script_language', 1850254898);

  int unregisterScriptLanguage(ScriptLanguage language) {
    final arg0 = malloc<Pointer<Void>>()..value = language.nativePtr;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_unregister_script_language, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_script_language_count =
      resolveMethodBind('Engine', 'get_script_language_count', 2455072627);

  int getScriptLanguageCount() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_script_language_count, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_script_language =
      resolveMethodBind('Engine', 'get_script_language', 2151255799);

  ScriptLanguage? getScriptLanguage(int index) {
    final arg0 = malloc<Int64>()..value = index;
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_script_language, nativePtr, [arg0.cast<Void>()], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : ScriptLanguage(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  // Skipped capture_script_backtraces(): unsupported return type "typedarray::ScriptBacktrace".
  static final Pointer<Void> _mb_is_editor_hint =
      resolveMethodBind('Engine', 'is_editor_hint', 36873697);

  bool isEditorHint() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_editor_hint, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_is_embedded_in_editor =
      resolveMethodBind('Engine', 'is_embedded_in_editor', 36873697);

  bool isEmbeddedInEditor() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_embedded_in_editor, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_write_movie_path =
      resolveMethodBind('Engine', 'get_write_movie_path', 201670096);

  String getWriteMoviePath() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_write_movie_path, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_print_to_stdout =
      resolveMethodBind('Engine', 'set_print_to_stdout', 2586408642);

  void setPrintToStdout(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_print_to_stdout, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_printing_to_stdout =
      resolveMethodBind('Engine', 'is_printing_to_stdout', 36873697);

  bool isPrintingToStdout() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_printing_to_stdout, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_print_error_messages =
      resolveMethodBind('Engine', 'set_print_error_messages', 2586408642);

  void setPrintErrorMessages(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_print_error_messages, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_printing_error_messages =
      resolveMethodBind('Engine', 'is_printing_error_messages', 36873697);

  bool isPrintingErrorMessages() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_printing_error_messages, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
