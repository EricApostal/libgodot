// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class AnimationNodeTransition extends AnimationNodeSync {
  AnimationNodeTransition(super.nativePtr);

  static final Pointer<Void> _mb_set_input_count =
      resolveMethodBind('AnimationNodeTransition', 'set_input_count', 1286410249);

  void setInputCount(int inputCount) {
    final arg0 = malloc<Int64>()..value = inputCount;
    try {
      ptrcallVoid(_mb_set_input_count, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_input_as_auto_advance =
      resolveMethodBind('AnimationNodeTransition', 'set_input_as_auto_advance', 300928843);

  void setInputAsAutoAdvance(int input, bool enable) {
    final arg0 = malloc<Int64>()..value = input;
    final arg1 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_input_as_auto_advance, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_is_input_set_as_auto_advance =
      resolveMethodBind('AnimationNodeTransition', 'is_input_set_as_auto_advance', 1116898809);

  bool isInputSetAsAutoAdvance(int input) {
    final arg0 = malloc<Int64>()..value = input;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_input_set_as_auto_advance, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_input_break_loop_at_end =
      resolveMethodBind('AnimationNodeTransition', 'set_input_break_loop_at_end', 300928843);

  void setInputBreakLoopAtEnd(int input, bool enable) {
    final arg0 = malloc<Int64>()..value = input;
    final arg1 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_input_break_loop_at_end, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_is_input_loop_broken_at_end =
      resolveMethodBind('AnimationNodeTransition', 'is_input_loop_broken_at_end', 1116898809);

  bool isInputLoopBrokenAtEnd(int input) {
    final arg0 = malloc<Int64>()..value = input;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_input_loop_broken_at_end, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_input_reset =
      resolveMethodBind('AnimationNodeTransition', 'set_input_reset', 300928843);

  void setInputReset(int input, bool enable) {
    final arg0 = malloc<Int64>()..value = input;
    final arg1 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_input_reset, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_is_input_reset =
      resolveMethodBind('AnimationNodeTransition', 'is_input_reset', 1116898809);

  bool isInputReset(int input) {
    final arg0 = malloc<Int64>()..value = input;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_input_reset, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_xfade_time =
      resolveMethodBind('AnimationNodeTransition', 'set_xfade_time', 373806689);

  void setXfadeTime(double time) {
    final arg0 = malloc<Double>()..value = time;
    try {
      ptrcallVoid(_mb_set_xfade_time, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_xfade_time =
      resolveMethodBind('AnimationNodeTransition', 'get_xfade_time', 1740695150);

  double getXfadeTime() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_xfade_time, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_xfade_curve =
      resolveMethodBind('AnimationNodeTransition', 'set_xfade_curve', 270443179);

  void setXfadeCurve(Curve curve) {
    final arg0 = malloc<Pointer<Void>>()..value = curve.nativePtr;
    try {
      ptrcallVoid(_mb_set_xfade_curve, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_xfade_curve =
      resolveMethodBind('AnimationNodeTransition', 'get_xfade_curve', 2460114913);

  Curve? getXfadeCurve() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_xfade_curve, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Curve(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_allow_transition_to_self =
      resolveMethodBind('AnimationNodeTransition', 'set_allow_transition_to_self', 2586408642);

  void setAllowTransitionToSelf(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_allow_transition_to_self, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_allow_transition_to_self =
      resolveMethodBind('AnimationNodeTransition', 'is_allow_transition_to_self', 36873697);

  bool isAllowTransitionToSelf() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_allow_transition_to_self, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
