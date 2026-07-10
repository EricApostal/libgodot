// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class AnimationNodeAnimation extends AnimationRootNode {
  AnimationNodeAnimation(super.nativePtr);

  static final Pointer<Void> _mb_set_animation =
      resolveMethodBind('AnimationNodeAnimation', 'set_animation', 3304788590);

  void setAnimation(String name) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), name);
    try {
      ptrcallVoid(_mb_set_animation, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_animation =
      resolveMethodBind('AnimationNodeAnimation', 'get_animation', 2002593661);

  String getAnimation() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_animation, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readStringName(ret.cast());
        BuiltinMarshal.destroyStringName(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_play_mode =
      resolveMethodBind('AnimationNodeAnimation', 'set_play_mode', 3347718873);

  void setPlayMode(int mode) {
    final arg0 = malloc<Int64>()..value = mode;
    try {
      ptrcallVoid(_mb_set_play_mode, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_play_mode =
      resolveMethodBind('AnimationNodeAnimation', 'get_play_mode', 2061244637);

  int getPlayMode() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_play_mode, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_advance_on_start =
      resolveMethodBind('AnimationNodeAnimation', 'set_advance_on_start', 2586408642);

  void setAdvanceOnStart(bool advanceOnStart) {
    final arg0 = malloc<Uint8>()..value = advanceOnStart ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_advance_on_start, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_advance_on_start =
      resolveMethodBind('AnimationNodeAnimation', 'is_advance_on_start', 36873697);

  bool isAdvanceOnStart() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_advance_on_start, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_use_custom_timeline =
      resolveMethodBind('AnimationNodeAnimation', 'set_use_custom_timeline', 2586408642);

  void setUseCustomTimeline(bool useCustomTimeline) {
    final arg0 = malloc<Uint8>()..value = useCustomTimeline ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_use_custom_timeline, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_using_custom_timeline =
      resolveMethodBind('AnimationNodeAnimation', 'is_using_custom_timeline', 36873697);

  bool isUsingCustomTimeline() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_using_custom_timeline, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_timeline_length =
      resolveMethodBind('AnimationNodeAnimation', 'set_timeline_length', 373806689);

  void setTimelineLength(double timelineLength) {
    final arg0 = malloc<Double>()..value = timelineLength;
    try {
      ptrcallVoid(_mb_set_timeline_length, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_timeline_length =
      resolveMethodBind('AnimationNodeAnimation', 'get_timeline_length', 1740695150);

  double getTimelineLength() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_timeline_length, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_stretch_time_scale =
      resolveMethodBind('AnimationNodeAnimation', 'set_stretch_time_scale', 2586408642);

  void setStretchTimeScale(bool stretchTimeScale) {
    final arg0 = malloc<Uint8>()..value = stretchTimeScale ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_stretch_time_scale, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_stretching_time_scale =
      resolveMethodBind('AnimationNodeAnimation', 'is_stretching_time_scale', 36873697);

  bool isStretchingTimeScale() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_stretching_time_scale, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_start_offset =
      resolveMethodBind('AnimationNodeAnimation', 'set_start_offset', 373806689);

  void setStartOffset(double startOffset) {
    final arg0 = malloc<Double>()..value = startOffset;
    try {
      ptrcallVoid(_mb_set_start_offset, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_start_offset =
      resolveMethodBind('AnimationNodeAnimation', 'get_start_offset', 1740695150);

  double getStartOffset() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_start_offset, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_loop_mode =
      resolveMethodBind('AnimationNodeAnimation', 'set_loop_mode', 3155355575);

  void setLoopMode(int loopMode) {
    final arg0 = malloc<Int64>()..value = loopMode;
    try {
      ptrcallVoid(_mb_set_loop_mode, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_loop_mode =
      resolveMethodBind('AnimationNodeAnimation', 'get_loop_mode', 1988889481);

  int getLoopMode() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_loop_mode, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
