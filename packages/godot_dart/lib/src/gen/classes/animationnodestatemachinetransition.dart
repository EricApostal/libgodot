// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class AnimationNodeStateMachineTransition extends Resource {
  AnimationNodeStateMachineTransition(super.nativePtr);

  /// Constructs a brand-new engine-owned AnimationNodeStateMachineTransition instance
  /// (via classdb_construct_object3), not an existing one.
  factory AnimationNodeStateMachineTransition.create() {
    return AnimationNodeStateMachineTransition(resolveClassConstructor('AnimationNodeStateMachineTransition'));
  }

  static final Pointer<Void> _mb_set_switch_mode =
      resolveMethodBind('AnimationNodeStateMachineTransition', 'set_switch_mode', 2074906633);

  void setSwitchMode(int mode) {
    final arg0 = malloc<Int64>()..value = mode;
    try {
      ptrcallVoid(_mb_set_switch_mode, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_switch_mode =
      resolveMethodBind('AnimationNodeStateMachineTransition', 'get_switch_mode', 2138562085);

  int getSwitchMode() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_switch_mode, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_advance_mode =
      resolveMethodBind('AnimationNodeStateMachineTransition', 'set_advance_mode', 1210869868);

  void setAdvanceMode(int mode) {
    final arg0 = malloc<Int64>()..value = mode;
    try {
      ptrcallVoid(_mb_set_advance_mode, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_advance_mode =
      resolveMethodBind('AnimationNodeStateMachineTransition', 'get_advance_mode', 61101689);

  int getAdvanceMode() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_advance_mode, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_advance_condition =
      resolveMethodBind('AnimationNodeStateMachineTransition', 'set_advance_condition', 3304788590);

  void setAdvanceCondition(String name) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), name);
    try {
      ptrcallVoid(_mb_set_advance_condition, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_advance_condition =
      resolveMethodBind('AnimationNodeStateMachineTransition', 'get_advance_condition', 2002593661);

  String getAdvanceCondition() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_advance_condition, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readStringName(ret.cast());
        BuiltinMarshal.destroyStringName(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_xfade_time =
      resolveMethodBind('AnimationNodeStateMachineTransition', 'set_xfade_time', 373806689);

  void setXfadeTime(double secs) {
    final arg0 = malloc<Double>()..value = secs;
    try {
      ptrcallVoid(_mb_set_xfade_time, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_xfade_time =
      resolveMethodBind('AnimationNodeStateMachineTransition', 'get_xfade_time', 1740695150);

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
      resolveMethodBind('AnimationNodeStateMachineTransition', 'set_xfade_curve', 270443179);

  void setXfadeCurve(Curve curve) {
    final arg0 = malloc<Pointer<Void>>()..value = curve.nativePtr;
    try {
      ptrcallVoid(_mb_set_xfade_curve, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_xfade_curve =
      resolveMethodBind('AnimationNodeStateMachineTransition', 'get_xfade_curve', 2460114913);

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

  static final Pointer<Void> _mb_set_break_loop_at_end =
      resolveMethodBind('AnimationNodeStateMachineTransition', 'set_break_loop_at_end', 2586408642);

  void setBreakLoopAtEnd(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_break_loop_at_end, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_loop_broken_at_end =
      resolveMethodBind('AnimationNodeStateMachineTransition', 'is_loop_broken_at_end', 36873697);

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

  static final Pointer<Void> _mb_set_reset =
      resolveMethodBind('AnimationNodeStateMachineTransition', 'set_reset', 2586408642);

  void setReset(bool reset) {
    final arg0 = malloc<Uint8>()..value = reset ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_reset, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_reset =
      resolveMethodBind('AnimationNodeStateMachineTransition', 'is_reset', 36873697);

  bool isReset() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_reset, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_priority =
      resolveMethodBind('AnimationNodeStateMachineTransition', 'set_priority', 1286410249);

  void setPriority(int priority) {
    final arg0 = malloc<Int64>()..value = priority;
    try {
      ptrcallVoid(_mb_set_priority, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_priority =
      resolveMethodBind('AnimationNodeStateMachineTransition', 'get_priority', 3905245786);

  int getPriority() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_priority, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_advance_expression =
      resolveMethodBind('AnimationNodeStateMachineTransition', 'set_advance_expression', 83702148);

  void setAdvanceExpression(String text) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), text);
    try {
      ptrcallVoid(_mb_set_advance_expression, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_advance_expression =
      resolveMethodBind('AnimationNodeStateMachineTransition', 'get_advance_expression', 201670096);

  String getAdvanceExpression() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_advance_expression, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
