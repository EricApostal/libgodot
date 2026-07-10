// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class AudioStreamPlayback extends RefCounted {
  AudioStreamPlayback(super.nativePtr);

  /// Constructs a brand-new engine-owned AudioStreamPlayback instance
  /// (via classdb_construct_object3), not an existing one.
  factory AudioStreamPlayback.create() {
    return AudioStreamPlayback(resolveClassConstructor('AudioStreamPlayback'));
  }

  static final Pointer<Void> _mb_set_sample_playback =
      resolveMethodBind('AudioStreamPlayback', 'set_sample_playback', 3195455091);

  void setSamplePlayback(AudioSamplePlayback playbackSample) {
    final arg0 = malloc<Pointer<Void>>()..value = playbackSample.nativePtr;
    try {
      ptrcallVoid(_mb_set_sample_playback, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_sample_playback =
      resolveMethodBind('AudioStreamPlayback', 'get_sample_playback', 3482738536);

  AudioSamplePlayback? getSamplePlayback() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_sample_playback, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : AudioSamplePlayback(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  // Skipped mix_audio(): unsupported return type "PackedVector2Array".
  static final Pointer<Void> _mb_start =
      resolveMethodBind('AudioStreamPlayback', 'start', 1958160172);

  void start(double fromPos) {
    final arg0 = malloc<Double>()..value = fromPos;
    try {
      ptrcallVoid(_mb_start, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_seek =
      resolveMethodBind('AudioStreamPlayback', 'seek', 1958160172);

  void seek(double time) {
    final arg0 = malloc<Double>()..value = time;
    try {
      ptrcallVoid(_mb_seek, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_stop =
      resolveMethodBind('AudioStreamPlayback', 'stop', 3218959716);

  void stop() {
    try {
      ptrcallVoid(_mb_stop, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_loop_count =
      resolveMethodBind('AudioStreamPlayback', 'get_loop_count', 3905245786);

  int getLoopCount() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_loop_count, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_playback_position =
      resolveMethodBind('AudioStreamPlayback', 'get_playback_position', 1740695150);

  double getPlaybackPosition() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_playback_position, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_is_playing =
      resolveMethodBind('AudioStreamPlayback', 'is_playing', 36873697);

  bool isPlaying() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_playing, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
