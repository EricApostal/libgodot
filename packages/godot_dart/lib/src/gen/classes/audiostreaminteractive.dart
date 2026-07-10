// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class AudioStreamInteractive extends AudioStream {
  AudioStreamInteractive(super.nativePtr);

  /// Constructs a brand-new engine-owned AudioStreamInteractive instance
  /// (via classdb_construct_object3), not an existing one.
  factory AudioStreamInteractive.create() {
    return AudioStreamInteractive(resolveClassConstructor('AudioStreamInteractive'));
  }

  static final Pointer<Void> _mb_set_clip_count =
      resolveMethodBind('AudioStreamInteractive', 'set_clip_count', 1286410249);

  void setClipCount(int clipCount) {
    final arg0 = malloc<Int64>()..value = clipCount;
    try {
      ptrcallVoid(_mb_set_clip_count, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_clip_count =
      resolveMethodBind('AudioStreamInteractive', 'get_clip_count', 3905245786);

  int getClipCount() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_clip_count, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_initial_clip =
      resolveMethodBind('AudioStreamInteractive', 'set_initial_clip', 1286410249);

  void setInitialClip(int clipIndex) {
    final arg0 = malloc<Int64>()..value = clipIndex;
    try {
      ptrcallVoid(_mb_set_initial_clip, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_initial_clip =
      resolveMethodBind('AudioStreamInteractive', 'get_initial_clip', 3905245786);

  int getInitialClip() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_initial_clip, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_clip_name =
      resolveMethodBind('AudioStreamInteractive', 'set_clip_name', 3780747571);

  void setClipName(int clipIndex, String name) {
    final arg0 = malloc<Int64>()..value = clipIndex;
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg1.cast(), name);
    try {
      ptrcallVoid(_mb_set_clip_name, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      BuiltinMarshal.destroyStringName(arg1.cast());
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_clip_name =
      resolveMethodBind('AudioStreamInteractive', 'get_clip_name', 659327637);

  String getClipName(int clipIndex) {
    final arg0 = malloc<Int64>()..value = clipIndex;
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_clip_name, nativePtr, [arg0.cast<Void>()], ret.cast());
        final result = BuiltinMarshal.readStringName(ret.cast());
        BuiltinMarshal.destroyStringName(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_clip_stream =
      resolveMethodBind('AudioStreamInteractive', 'set_clip_stream', 111075094);

  void setClipStream(int clipIndex, AudioStream stream) {
    final arg0 = malloc<Int64>()..value = clipIndex;
    final arg1 = malloc<Pointer<Void>>()..value = stream.nativePtr;
    try {
      ptrcallVoid(_mb_set_clip_stream, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_clip_stream =
      resolveMethodBind('AudioStreamInteractive', 'get_clip_stream', 2739380747);

  AudioStream? getClipStream(int clipIndex) {
    final arg0 = malloc<Int64>()..value = clipIndex;
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_clip_stream, nativePtr, [arg0.cast<Void>()], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : AudioStream(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_clip_auto_advance =
      resolveMethodBind('AudioStreamInteractive', 'set_clip_auto_advance', 57217598);

  void setClipAutoAdvance(int clipIndex, int mode) {
    final arg0 = malloc<Int64>()..value = clipIndex;
    final arg1 = malloc<Int64>()..value = mode;
    try {
      ptrcallVoid(_mb_set_clip_auto_advance, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_clip_auto_advance =
      resolveMethodBind('AudioStreamInteractive', 'get_clip_auto_advance', 1778634807);

  int getClipAutoAdvance(int clipIndex) {
    final arg0 = malloc<Int64>()..value = clipIndex;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_clip_auto_advance, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_clip_auto_advance_next_clip =
      resolveMethodBind('AudioStreamInteractive', 'set_clip_auto_advance_next_clip', 3937882851);

  void setClipAutoAdvanceNextClip(int clipIndex, int autoAdvanceNextClip) {
    final arg0 = malloc<Int64>()..value = clipIndex;
    final arg1 = malloc<Int64>()..value = autoAdvanceNextClip;
    try {
      ptrcallVoid(_mb_set_clip_auto_advance_next_clip, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_clip_auto_advance_next_clip =
      resolveMethodBind('AudioStreamInteractive', 'get_clip_auto_advance_next_clip', 923996154);

  int getClipAutoAdvanceNextClip(int clipIndex) {
    final arg0 = malloc<Int64>()..value = clipIndex;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_clip_auto_advance_next_clip, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_add_transition =
      resolveMethodBind('AudioStreamInteractive', 'add_transition', 1630280552);

  void addTransition(int fromClip, int toClip, int fromTime, int toTime, int fadeMode, double fadeBeats, bool useFillerClip, int fillerClip, bool holdPrevious) {
    final arg0 = malloc<Int64>()..value = fromClip;
    final arg1 = malloc<Int64>()..value = toClip;
    final arg2 = malloc<Int64>()..value = fromTime;
    final arg3 = malloc<Int64>()..value = toTime;
    final arg4 = malloc<Int64>()..value = fadeMode;
    final arg5 = malloc<Double>()..value = fadeBeats;
    final arg6 = malloc<Uint8>()..value = useFillerClip ? 1 : 0;
    final arg7 = malloc<Int64>()..value = fillerClip;
    final arg8 = malloc<Uint8>()..value = holdPrevious ? 1 : 0;
    try {
      ptrcallVoid(_mb_add_transition, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>(), arg3.cast<Void>(), arg4.cast<Void>(), arg5.cast<Void>(), arg6.cast<Void>(), arg7.cast<Void>(), arg8.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
      malloc.free(arg3);
      malloc.free(arg4);
      malloc.free(arg5);
      malloc.free(arg6);
      malloc.free(arg7);
      malloc.free(arg8);
    }
  }

  static final Pointer<Void> _mb_has_transition =
      resolveMethodBind('AudioStreamInteractive', 'has_transition', 2522259332);

  bool hasTransition(int fromClip, int toClip) {
    final arg0 = malloc<Int64>()..value = fromClip;
    final arg1 = malloc<Int64>()..value = toClip;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_has_transition, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_erase_transition =
      resolveMethodBind('AudioStreamInteractive', 'erase_transition', 3937882851);

  void eraseTransition(int fromClip, int toClip) {
    final arg0 = malloc<Int64>()..value = fromClip;
    final arg1 = malloc<Int64>()..value = toClip;
    try {
      ptrcallVoid(_mb_erase_transition, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  // Skipped get_transition_list(): unsupported return type "PackedInt32Array".
  static final Pointer<Void> _mb_get_transition_from_time =
      resolveMethodBind('AudioStreamInteractive', 'get_transition_from_time', 3453338158);

  int getTransitionFromTime(int fromClip, int toClip) {
    final arg0 = malloc<Int64>()..value = fromClip;
    final arg1 = malloc<Int64>()..value = toClip;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_transition_from_time, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_transition_to_time =
      resolveMethodBind('AudioStreamInteractive', 'get_transition_to_time', 1369651373);

  int getTransitionToTime(int fromClip, int toClip) {
    final arg0 = malloc<Int64>()..value = fromClip;
    final arg1 = malloc<Int64>()..value = toClip;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_transition_to_time, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_transition_fade_mode =
      resolveMethodBind('AudioStreamInteractive', 'get_transition_fade_mode', 4065396087);

  int getTransitionFadeMode(int fromClip, int toClip) {
    final arg0 = malloc<Int64>()..value = fromClip;
    final arg1 = malloc<Int64>()..value = toClip;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_transition_fade_mode, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_transition_fade_beats =
      resolveMethodBind('AudioStreamInteractive', 'get_transition_fade_beats', 3085491603);

  double getTransitionFadeBeats(int fromClip, int toClip) {
    final arg0 = malloc<Int64>()..value = fromClip;
    final arg1 = malloc<Int64>()..value = toClip;
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_transition_fade_beats, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_is_transition_using_filler_clip =
      resolveMethodBind('AudioStreamInteractive', 'is_transition_using_filler_clip', 2522259332);

  bool isTransitionUsingFillerClip(int fromClip, int toClip) {
    final arg0 = malloc<Int64>()..value = fromClip;
    final arg1 = malloc<Int64>()..value = toClip;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_transition_using_filler_clip, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_transition_filler_clip =
      resolveMethodBind('AudioStreamInteractive', 'get_transition_filler_clip', 3175239445);

  int getTransitionFillerClip(int fromClip, int toClip) {
    final arg0 = malloc<Int64>()..value = fromClip;
    final arg1 = malloc<Int64>()..value = toClip;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_transition_filler_clip, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_is_transition_holding_previous =
      resolveMethodBind('AudioStreamInteractive', 'is_transition_holding_previous', 2522259332);

  bool isTransitionHoldingPrevious(int fromClip, int toClip) {
    final arg0 = malloc<Int64>()..value = fromClip;
    final arg1 = malloc<Int64>()..value = toClip;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_transition_holding_previous, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

}
