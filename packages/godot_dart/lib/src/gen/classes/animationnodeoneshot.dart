// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class AnimationNodeOneShot extends AnimationNodeSync {
  AnimationNodeOneShot(super.nativePtr);

  static final Pointer<Void> _mb_set_fadein_time =
      resolveMethodBind('AnimationNodeOneShot', 'set_fadein_time', 373806689);

  void setFadeinTime(double time) {
    final arg0 = malloc<Double>()..value = time;
    try {
      ptrcallVoid(_mb_set_fadein_time, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_fadein_time =
      resolveMethodBind('AnimationNodeOneShot', 'get_fadein_time', 1740695150);

  double getFadeinTime() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_fadein_time, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_fadein_curve =
      resolveMethodBind('AnimationNodeOneShot', 'set_fadein_curve', 270443179);

  void setFadeinCurve(Curve curve) {
    final arg0 = malloc<Pointer<Void>>()..value = curve.nativePtr;
    try {
      ptrcallVoid(_mb_set_fadein_curve, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_fadein_curve =
      resolveMethodBind('AnimationNodeOneShot', 'get_fadein_curve', 2460114913);

  Curve? getFadeinCurve() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_fadein_curve, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Curve(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_fadeout_time =
      resolveMethodBind('AnimationNodeOneShot', 'set_fadeout_time', 373806689);

  void setFadeoutTime(double time) {
    final arg0 = malloc<Double>()..value = time;
    try {
      ptrcallVoid(_mb_set_fadeout_time, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_fadeout_time =
      resolveMethodBind('AnimationNodeOneShot', 'get_fadeout_time', 1740695150);

  double getFadeoutTime() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_fadeout_time, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_fadeout_curve =
      resolveMethodBind('AnimationNodeOneShot', 'set_fadeout_curve', 270443179);

  void setFadeoutCurve(Curve curve) {
    final arg0 = malloc<Pointer<Void>>()..value = curve.nativePtr;
    try {
      ptrcallVoid(_mb_set_fadeout_curve, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_fadeout_curve =
      resolveMethodBind('AnimationNodeOneShot', 'get_fadeout_curve', 2460114913);

  Curve? getFadeoutCurve() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_fadeout_curve, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Curve(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_break_loop_at_end =
      resolveMethodBind('AnimationNodeOneShot', 'set_break_loop_at_end', 2586408642);

  void setBreakLoopAtEnd(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_break_loop_at_end, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_loop_broken_at_end =
      resolveMethodBind('AnimationNodeOneShot', 'is_loop_broken_at_end', 36873697);

  bool isLoopBrokenAtEnd() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_loop_broken_at_end, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_abort_on_reset =
      resolveMethodBind('AnimationNodeOneShot', 'set_abort_on_reset', 2586408642);

  void setAbortOnReset(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_abort_on_reset, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_aborted_on_reset =
      resolveMethodBind('AnimationNodeOneShot', 'is_aborted_on_reset', 36873697);

  bool isAbortedOnReset() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_aborted_on_reset, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_autorestart =
      resolveMethodBind('AnimationNodeOneShot', 'set_autorestart', 2586408642);

  void setAutorestart(bool active) {
    final arg0 = malloc<Uint8>()..value = active ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_autorestart, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_has_autorestart =
      resolveMethodBind('AnimationNodeOneShot', 'has_autorestart', 36873697);

  bool hasAutorestart() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_has_autorestart, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_autorestart_delay =
      resolveMethodBind('AnimationNodeOneShot', 'set_autorestart_delay', 373806689);

  void setAutorestartDelay(double time) {
    final arg0 = malloc<Double>()..value = time;
    try {
      ptrcallVoid(_mb_set_autorestart_delay, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_autorestart_delay =
      resolveMethodBind('AnimationNodeOneShot', 'get_autorestart_delay', 1740695150);

  double getAutorestartDelay() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_autorestart_delay, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_autorestart_random_delay =
      resolveMethodBind('AnimationNodeOneShot', 'set_autorestart_random_delay', 373806689);

  void setAutorestartRandomDelay(double time) {
    final arg0 = malloc<Double>()..value = time;
    try {
      ptrcallVoid(_mb_set_autorestart_random_delay, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_autorestart_random_delay =
      resolveMethodBind('AnimationNodeOneShot', 'get_autorestart_random_delay', 1740695150);

  double getAutorestartRandomDelay() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_autorestart_random_delay, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_mix_mode =
      resolveMethodBind('AnimationNodeOneShot', 'set_mix_mode', 1018899799);

  void setMixMode(int mode) {
    final arg0 = malloc<Int64>()..value = mode;
    try {
      ptrcallVoid(_mb_set_mix_mode, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_mix_mode =
      resolveMethodBind('AnimationNodeOneShot', 'get_mix_mode', 3076550526);

  int getMixMode() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_mix_mode, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
