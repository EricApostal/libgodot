// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class AudioStreamPlaybackPolyphonic extends AudioStreamPlayback {
  AudioStreamPlaybackPolyphonic(super.nativePtr);

  static final Pointer<Void> _mb_play_stream =
      resolveMethodBind('AudioStreamPlaybackPolyphonic', 'play_stream', 1846744803);

  int playStream(AudioStream stream, double fromOffset, double volumeDb, double pitchScale, int playbackType, String bus) {
    final arg0 = malloc<Pointer<Void>>()..value = stream.nativePtr;
    final arg1 = malloc<Double>()..value = fromOffset;
    final arg2 = malloc<Double>()..value = volumeDb;
    final arg3 = malloc<Double>()..value = pitchScale;
    final arg4 = malloc<Int64>()..value = playbackType;
    final arg5 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg5.cast(), bus);
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_play_stream, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>(), arg3.cast<Void>(), arg4.cast<Void>(), arg5.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
      malloc.free(arg3);
      malloc.free(arg4);
      BuiltinMarshal.destroyStringName(arg5.cast());
      malloc.free(arg5);
    }
  }

  static final Pointer<Void> _mb_set_stream_volume =
      resolveMethodBind('AudioStreamPlaybackPolyphonic', 'set_stream_volume', 1602489585);

  void setStreamVolume(int stream, double volumeDb) {
    final arg0 = malloc<Int64>()..value = stream;
    final arg1 = malloc<Double>()..value = volumeDb;
    try {
      ptrcallVoid(_mb_set_stream_volume, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_set_stream_pitch_scale =
      resolveMethodBind('AudioStreamPlaybackPolyphonic', 'set_stream_pitch_scale', 1602489585);

  void setStreamPitchScale(int stream, double pitchScale) {
    final arg0 = malloc<Int64>()..value = stream;
    final arg1 = malloc<Double>()..value = pitchScale;
    try {
      ptrcallVoid(_mb_set_stream_pitch_scale, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_is_stream_playing =
      resolveMethodBind('AudioStreamPlaybackPolyphonic', 'is_stream_playing', 1116898809);

  bool isStreamPlaying(int stream) {
    final arg0 = malloc<Int64>()..value = stream;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_stream_playing, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_stop_stream =
      resolveMethodBind('AudioStreamPlaybackPolyphonic', 'stop_stream', 1286410249);

  void stopStream(int stream) {
    final arg0 = malloc<Int64>()..value = stream;
    try {
      ptrcallVoid(_mb_stop_stream, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

}
