// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class Timer extends Node {
  Timer(super.nativePtr);

  static final Pointer<Void> _mb_set_wait_time =
      resolveMethodBind('Timer', 'set_wait_time', 373806689);

  void setWaitTime(double timeSec) {
    final arg0 = malloc<Double>()..value = timeSec;
    try {
      ptrcallVoid(_mb_set_wait_time, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_wait_time =
      resolveMethodBind('Timer', 'get_wait_time', 1740695150);

  double getWaitTime() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_wait_time, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_one_shot =
      resolveMethodBind('Timer', 'set_one_shot', 2586408642);

  void setOneShot(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_one_shot, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_one_shot =
      resolveMethodBind('Timer', 'is_one_shot', 36873697);

  bool isOneShot() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_one_shot, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_autostart =
      resolveMethodBind('Timer', 'set_autostart', 2586408642);

  void setAutostart(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_autostart, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_has_autostart =
      resolveMethodBind('Timer', 'has_autostart', 36873697);

  bool hasAutostart() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_has_autostart, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_start =
      resolveMethodBind('Timer', 'start', 1392008558);

  void start(double timeSec) {
    final arg0 = malloc<Double>()..value = timeSec;
    try {
      ptrcallVoid(_mb_start, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_stop =
      resolveMethodBind('Timer', 'stop', 3218959716);

  void stop() {
    try {
      ptrcallVoid(_mb_stop, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_paused =
      resolveMethodBind('Timer', 'set_paused', 2586408642);

  void setPaused(bool paused) {
    final arg0 = malloc<Uint8>()..value = paused ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_paused, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_paused =
      resolveMethodBind('Timer', 'is_paused', 36873697);

  bool isPaused() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_paused, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_ignore_time_scale =
      resolveMethodBind('Timer', 'set_ignore_time_scale', 2586408642);

  void setIgnoreTimeScale(bool ignore) {
    final arg0 = malloc<Uint8>()..value = ignore ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_ignore_time_scale, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_ignoring_time_scale =
      resolveMethodBind('Timer', 'is_ignoring_time_scale', 2240911060);

  bool isIgnoringTimeScale() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_ignoring_time_scale, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_is_stopped =
      resolveMethodBind('Timer', 'is_stopped', 36873697);

  bool isStopped() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_stopped, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_time_left =
      resolveMethodBind('Timer', 'get_time_left', 1740695150);

  double getTimeLeft() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_time_left, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_timer_process_callback =
      resolveMethodBind('Timer', 'set_timer_process_callback', 3469495063);

  void setTimerProcessCallback(int callback) {
    final arg0 = malloc<Int64>()..value = callback;
    try {
      ptrcallVoid(_mb_set_timer_process_callback, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_timer_process_callback =
      resolveMethodBind('Timer', 'get_timer_process_callback', 2672570227);

  int getTimerProcessCallback() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_timer_process_callback, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
