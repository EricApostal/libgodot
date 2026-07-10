// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class AudioStreamRandomizer extends AudioStream {
  AudioStreamRandomizer(super.nativePtr);

  /// Constructs a brand-new engine-owned AudioStreamRandomizer instance
  /// (via classdb_construct_object3), not an existing one.
  factory AudioStreamRandomizer.create() {
    return AudioStreamRandomizer(resolveClassConstructor('AudioStreamRandomizer'));
  }

  static final Pointer<Void> _mb_add_stream =
      resolveMethodBind('AudioStreamRandomizer', 'add_stream', 1892018854);

  void addStream(int index, AudioStream stream, double weight) {
    final arg0 = malloc<Int64>()..value = index;
    final arg1 = malloc<Pointer<Void>>()..value = stream.nativePtr;
    final arg2 = malloc<Double>()..value = weight;
    try {
      ptrcallVoid(_mb_add_stream, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_move_stream =
      resolveMethodBind('AudioStreamRandomizer', 'move_stream', 3937882851);

  void moveStream(int indexFrom, int indexTo) {
    final arg0 = malloc<Int64>()..value = indexFrom;
    final arg1 = malloc<Int64>()..value = indexTo;
    try {
      ptrcallVoid(_mb_move_stream, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_remove_stream =
      resolveMethodBind('AudioStreamRandomizer', 'remove_stream', 1286410249);

  void removeStream(int index) {
    final arg0 = malloc<Int64>()..value = index;
    try {
      ptrcallVoid(_mb_remove_stream, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_stream =
      resolveMethodBind('AudioStreamRandomizer', 'set_stream', 111075094);

  void setStream(int index, AudioStream stream) {
    final arg0 = malloc<Int64>()..value = index;
    final arg1 = malloc<Pointer<Void>>()..value = stream.nativePtr;
    try {
      ptrcallVoid(_mb_set_stream, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_stream =
      resolveMethodBind('AudioStreamRandomizer', 'get_stream', 2739380747);

  AudioStream? getStream(int index) {
    final arg0 = malloc<Int64>()..value = index;
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_stream, nativePtr, [arg0.cast<Void>()], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : AudioStream(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_stream_probability_weight =
      resolveMethodBind('AudioStreamRandomizer', 'set_stream_probability_weight', 1602489585);

  void setStreamProbabilityWeight(int index, double weight) {
    final arg0 = malloc<Int64>()..value = index;
    final arg1 = malloc<Double>()..value = weight;
    try {
      ptrcallVoid(_mb_set_stream_probability_weight, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_stream_probability_weight =
      resolveMethodBind('AudioStreamRandomizer', 'get_stream_probability_weight', 2339986948);

  double getStreamProbabilityWeight(int index) {
    final arg0 = malloc<Int64>()..value = index;
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_stream_probability_weight, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_streams_count =
      resolveMethodBind('AudioStreamRandomizer', 'set_streams_count', 1286410249);

  void setStreamsCount(int count) {
    final arg0 = malloc<Int64>()..value = count;
    try {
      ptrcallVoid(_mb_set_streams_count, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_streams_count =
      resolveMethodBind('AudioStreamRandomizer', 'get_streams_count', 3905245786);

  int getStreamsCount() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_streams_count, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_random_pitch =
      resolveMethodBind('AudioStreamRandomizer', 'set_random_pitch', 373806689);

  void setRandomPitch(double scale) {
    final arg0 = malloc<Double>()..value = scale;
    try {
      ptrcallVoid(_mb_set_random_pitch, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_random_pitch =
      resolveMethodBind('AudioStreamRandomizer', 'get_random_pitch', 1740695150);

  double getRandomPitch() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_random_pitch, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_random_pitch_semitones =
      resolveMethodBind('AudioStreamRandomizer', 'set_random_pitch_semitones', 373806689);

  void setRandomPitchSemitones(double semitones) {
    final arg0 = malloc<Double>()..value = semitones;
    try {
      ptrcallVoid(_mb_set_random_pitch_semitones, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_random_pitch_semitones =
      resolveMethodBind('AudioStreamRandomizer', 'get_random_pitch_semitones', 1740695150);

  double getRandomPitchSemitones() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_random_pitch_semitones, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_random_volume_offset_db =
      resolveMethodBind('AudioStreamRandomizer', 'set_random_volume_offset_db', 373806689);

  void setRandomVolumeOffsetDb(double dbOffset) {
    final arg0 = malloc<Double>()..value = dbOffset;
    try {
      ptrcallVoid(_mb_set_random_volume_offset_db, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_random_volume_offset_db =
      resolveMethodBind('AudioStreamRandomizer', 'get_random_volume_offset_db', 1740695150);

  double getRandomVolumeOffsetDb() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_random_volume_offset_db, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_playback_mode =
      resolveMethodBind('AudioStreamRandomizer', 'set_playback_mode', 3950967023);

  void setPlaybackMode(int mode) {
    final arg0 = malloc<Int64>()..value = mode;
    try {
      ptrcallVoid(_mb_set_playback_mode, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_playback_mode =
      resolveMethodBind('AudioStreamRandomizer', 'get_playback_mode', 3943055077);

  int getPlaybackMode() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_playback_mode, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
