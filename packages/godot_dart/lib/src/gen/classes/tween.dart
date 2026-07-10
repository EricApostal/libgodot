// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class Tween extends RefCounted {
  Tween(super.nativePtr);

  // Skipped tween_property(): an argument type is unsupported.
  static final Pointer<Void> _mb_tween_interval =
      resolveMethodBind('Tween', 'tween_interval', 413360199);

  IntervalTweener? tweenInterval(double time) {
    final arg0 = malloc<Double>()..value = time;
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_tween_interval, nativePtr, [arg0.cast<Void>()], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : IntervalTweener(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  // Skipped tween_callback(): an argument type is unsupported.
  // Skipped tween_method(): an argument type is unsupported.
  static final Pointer<Void> _mb_tween_subtween =
      resolveMethodBind('Tween', 'tween_subtween', 1567358477);

  SubtweenTweener? tweenSubtween(Tween subtween) {
    final arg0 = malloc<Pointer<Void>>()..value = subtween.nativePtr;
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_tween_subtween, nativePtr, [arg0.cast<Void>()], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : SubtweenTweener(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  // Skipped tween_await(): an argument type is unsupported.
  static final Pointer<Void> _mb_custom_step =
      resolveMethodBind('Tween', 'custom_step', 330693286);

  bool customStep(double delta) {
    final arg0 = malloc<Double>()..value = delta;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_custom_step, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_stop =
      resolveMethodBind('Tween', 'stop', 3218959716);

  void stop() {
    try {
      ptrcallVoid(_mb_stop, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_pause =
      resolveMethodBind('Tween', 'pause', 3218959716);

  void pause() {
    try {
      ptrcallVoid(_mb_pause, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_play =
      resolveMethodBind('Tween', 'play', 3218959716);

  void play() {
    try {
      ptrcallVoid(_mb_play, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_kill =
      resolveMethodBind('Tween', 'kill', 3218959716);

  void kill() {
    try {
      ptrcallVoid(_mb_kill, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_total_elapsed_time =
      resolveMethodBind('Tween', 'get_total_elapsed_time', 1740695150);

  double getTotalElapsedTime() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_total_elapsed_time, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_has_tweeners =
      resolveMethodBind('Tween', 'has_tweeners', 36873697);

  bool hasTweeners() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_has_tweeners, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_is_running =
      resolveMethodBind('Tween', 'is_running', 2240911060);

  bool isRunning() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_running, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_is_valid =
      resolveMethodBind('Tween', 'is_valid', 2240911060);

  bool isValid() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_valid, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_bind_node =
      resolveMethodBind('Tween', 'bind_node', 2946786331);

  Tween? bindNode(Node node) {
    final arg0 = malloc<Pointer<Void>>()..value = node.nativePtr;
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_bind_node, nativePtr, [arg0.cast<Void>()], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Tween(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_process_mode =
      resolveMethodBind('Tween', 'set_process_mode', 855258840);

  Tween? setProcessMode(int mode) {
    final arg0 = malloc<Int64>()..value = mode;
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_set_process_mode, nativePtr, [arg0.cast<Void>()], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Tween(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_pause_mode =
      resolveMethodBind('Tween', 'set_pause_mode', 3363368837);

  Tween? setPauseMode(int mode) {
    final arg0 = malloc<Int64>()..value = mode;
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_set_pause_mode, nativePtr, [arg0.cast<Void>()], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Tween(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_ignore_time_scale =
      resolveMethodBind('Tween', 'set_ignore_time_scale', 1942052223);

  Tween? setIgnoreTimeScale(bool ignore) {
    final arg0 = malloc<Uint8>()..value = ignore ? 1 : 0;
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_set_ignore_time_scale, nativePtr, [arg0.cast<Void>()], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Tween(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_parallel =
      resolveMethodBind('Tween', 'set_parallel', 1942052223);

  Tween? setParallel(bool parallel) {
    final arg0 = malloc<Uint8>()..value = parallel ? 1 : 0;
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_set_parallel, nativePtr, [arg0.cast<Void>()], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Tween(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_loops =
      resolveMethodBind('Tween', 'set_loops', 2670836414);

  Tween? setLoops(int loops) {
    final arg0 = malloc<Int64>()..value = loops;
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_set_loops, nativePtr, [arg0.cast<Void>()], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Tween(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_loops_left =
      resolveMethodBind('Tween', 'get_loops_left', 3905245786);

  int getLoopsLeft() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_loops_left, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_speed_scale =
      resolveMethodBind('Tween', 'set_speed_scale', 3961971106);

  Tween? setSpeedScale(double speed) {
    final arg0 = malloc<Double>()..value = speed;
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_set_speed_scale, nativePtr, [arg0.cast<Void>()], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Tween(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_trans =
      resolveMethodBind('Tween', 'set_trans', 3965963875);

  Tween? setTrans(int trans) {
    final arg0 = malloc<Int64>()..value = trans;
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_set_trans, nativePtr, [arg0.cast<Void>()], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Tween(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_ease =
      resolveMethodBind('Tween', 'set_ease', 1208117252);

  Tween? setEase(int ease) {
    final arg0 = malloc<Int64>()..value = ease;
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_set_ease, nativePtr, [arg0.cast<Void>()], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Tween(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_parallel =
      resolveMethodBind('Tween', 'parallel', 3426978995);

  Tween? parallel() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_parallel, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Tween(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_chain =
      resolveMethodBind('Tween', 'chain', 3426978995);

  Tween? chain() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_chain, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Tween(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
