// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class EngineDebugger extends GodotObject {
  EngineDebugger(super.nativePtr);

  static EngineDebugger? _singleton;
  static EngineDebugger get singleton {
    return _singleton ??= EngineDebugger(resolveSingleton('EngineDebugger'));
  }

  /// Constructs a brand-new engine-owned EngineDebugger instance
  /// (via classdb_construct_object3), not an existing one.
  factory EngineDebugger.create() {
    return EngineDebugger(resolveClassConstructor('EngineDebugger'));
  }

  static final Pointer<Void> _mb_is_active =
      resolveMethodBind('EngineDebugger', 'is_active', 2240911060);

  bool isActive() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_active, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_register_profiler =
      resolveMethodBind('EngineDebugger', 'register_profiler', 3651669560);

  void registerProfiler(String name, EngineProfiler profiler) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), name);
    final arg1 = malloc<Pointer<Void>>()..value = profiler.nativePtr;
    try {
      ptrcallVoid(_mb_register_profiler, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_unregister_profiler =
      resolveMethodBind('EngineDebugger', 'unregister_profiler', 3304788590);

  void unregisterProfiler(String name) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), name);
    try {
      ptrcallVoid(_mb_unregister_profiler, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_profiling =
      resolveMethodBind('EngineDebugger', 'is_profiling', 2041966384);

  bool isProfiling(String name) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), name);
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_profiling, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_has_profiler =
      resolveMethodBind('EngineDebugger', 'has_profiler', 2041966384);

  bool hasProfiler(String name) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), name);
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_has_profiler, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
    }
  }

  // Skipped profiler_add_frame_data(): an argument type is unsupported.
  // Skipped profiler_enable(): an argument type is unsupported.
  // Skipped register_message_capture(): an argument type is unsupported.
  static final Pointer<Void> _mb_unregister_message_capture =
      resolveMethodBind('EngineDebugger', 'unregister_message_capture', 3304788590);

  void unregisterMessageCapture(String name) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), name);
    try {
      ptrcallVoid(_mb_unregister_message_capture, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_has_capture =
      resolveMethodBind('EngineDebugger', 'has_capture', 2041966384);

  bool hasCapture(String name) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), name);
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_has_capture, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_line_poll =
      resolveMethodBind('EngineDebugger', 'line_poll', 3218959716);

  void linePoll() {
    try {
      ptrcallVoid(_mb_line_poll, nativePtr, []);
    } finally {
    }
  }

  // Skipped send_message(): an argument type is unsupported.
  static final Pointer<Void> _mb_debug =
      resolveMethodBind('EngineDebugger', 'debug', 2751962654);

  void debug(bool canContinue, bool isErrorBreakpoint) {
    final arg0 = malloc<Uint8>()..value = canContinue ? 1 : 0;
    final arg1 = malloc<Uint8>()..value = isErrorBreakpoint ? 1 : 0;
    try {
      ptrcallVoid(_mb_debug, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_script_debug =
      resolveMethodBind('EngineDebugger', 'script_debug', 2442343672);

  void scriptDebug(ScriptLanguage language, bool canContinue, bool isErrorBreakpoint) {
    final arg0 = malloc<Pointer<Void>>()..value = language.nativePtr;
    final arg1 = malloc<Uint8>()..value = canContinue ? 1 : 0;
    final arg2 = malloc<Uint8>()..value = isErrorBreakpoint ? 1 : 0;
    try {
      ptrcallVoid(_mb_script_debug, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_set_lines_left =
      resolveMethodBind('EngineDebugger', 'set_lines_left', 1286410249);

  void setLinesLeft(int lines) {
    final arg0 = malloc<Int64>()..value = lines;
    try {
      ptrcallVoid(_mb_set_lines_left, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_lines_left =
      resolveMethodBind('EngineDebugger', 'get_lines_left', 3905245786);

  int getLinesLeft() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_lines_left, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_depth =
      resolveMethodBind('EngineDebugger', 'set_depth', 1286410249);

  void setDepth(int depth) {
    final arg0 = malloc<Int64>()..value = depth;
    try {
      ptrcallVoid(_mb_set_depth, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_depth =
      resolveMethodBind('EngineDebugger', 'get_depth', 3905245786);

  int getDepth() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_depth, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_is_breakpoint =
      resolveMethodBind('EngineDebugger', 'is_breakpoint', 921227809);

  bool isBreakpoint(int line, String source) {
    final arg0 = malloc<Int64>()..value = line;
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg1.cast(), source);
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_breakpoint, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      BuiltinMarshal.destroyStringName(arg1.cast());
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_is_skipping_breakpoints =
      resolveMethodBind('EngineDebugger', 'is_skipping_breakpoints', 36873697);

  bool isSkippingBreakpoints() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_skipping_breakpoints, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_insert_breakpoint =
      resolveMethodBind('EngineDebugger', 'insert_breakpoint', 3780747571);

  void insertBreakpoint(int line, String source) {
    final arg0 = malloc<Int64>()..value = line;
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg1.cast(), source);
    try {
      ptrcallVoid(_mb_insert_breakpoint, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      BuiltinMarshal.destroyStringName(arg1.cast());
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_remove_breakpoint =
      resolveMethodBind('EngineDebugger', 'remove_breakpoint', 3780747571);

  void removeBreakpoint(int line, String source) {
    final arg0 = malloc<Int64>()..value = line;
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg1.cast(), source);
    try {
      ptrcallVoid(_mb_remove_breakpoint, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      BuiltinMarshal.destroyStringName(arg1.cast());
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_clear_breakpoints =
      resolveMethodBind('EngineDebugger', 'clear_breakpoints', 3218959716);

  void clearBreakpoints() {
    try {
      ptrcallVoid(_mb_clear_breakpoints, nativePtr, []);
    } finally {
    }
  }

}
