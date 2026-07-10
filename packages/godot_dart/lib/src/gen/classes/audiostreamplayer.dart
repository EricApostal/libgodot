// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class AudioStreamPlayer extends Node {
  AudioStreamPlayer(super.nativePtr);

  static final Pointer<Void> _mb_set_stream =
      resolveMethodBind('AudioStreamPlayer', 'set_stream', 2210767741);

  void setStream(AudioStream stream) {
    final arg0 = malloc<Pointer<Void>>()..value = stream.nativePtr;
    try {
      ptrcallVoid(_mb_set_stream, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_stream =
      resolveMethodBind('AudioStreamPlayer', 'get_stream', 160907539);

  AudioStream? getStream() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_stream, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : AudioStream(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_volume_db =
      resolveMethodBind('AudioStreamPlayer', 'set_volume_db', 373806689);

  void setVolumeDb(double volumeDb) {
    final arg0 = malloc<Double>()..value = volumeDb;
    try {
      ptrcallVoid(_mb_set_volume_db, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_volume_db =
      resolveMethodBind('AudioStreamPlayer', 'get_volume_db', 1740695150);

  double getVolumeDb() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_volume_db, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_volume_linear =
      resolveMethodBind('AudioStreamPlayer', 'set_volume_linear', 373806689);

  void setVolumeLinear(double volumeLinear) {
    final arg0 = malloc<Double>()..value = volumeLinear;
    try {
      ptrcallVoid(_mb_set_volume_linear, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_volume_linear =
      resolveMethodBind('AudioStreamPlayer', 'get_volume_linear', 1740695150);

  double getVolumeLinear() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_volume_linear, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_pitch_scale =
      resolveMethodBind('AudioStreamPlayer', 'set_pitch_scale', 373806689);

  void setPitchScale(double pitchScale) {
    final arg0 = malloc<Double>()..value = pitchScale;
    try {
      ptrcallVoid(_mb_set_pitch_scale, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_pitch_scale =
      resolveMethodBind('AudioStreamPlayer', 'get_pitch_scale', 1740695150);

  double getPitchScale() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_pitch_scale, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_play =
      resolveMethodBind('AudioStreamPlayer', 'play', 1958160172);

  void play(double fromPosition) {
    final arg0 = malloc<Double>()..value = fromPosition;
    try {
      ptrcallVoid(_mb_play, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_seek =
      resolveMethodBind('AudioStreamPlayer', 'seek', 373806689);

  void seek(double toPosition) {
    final arg0 = malloc<Double>()..value = toPosition;
    try {
      ptrcallVoid(_mb_seek, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_stop =
      resolveMethodBind('AudioStreamPlayer', 'stop', 3218959716);

  void stop() {
    try {
      ptrcallVoid(_mb_stop, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_is_playing =
      resolveMethodBind('AudioStreamPlayer', 'is_playing', 36873697);

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

  static final Pointer<Void> _mb_get_playback_position =
      resolveMethodBind('AudioStreamPlayer', 'get_playback_position', 191475506);

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

  static final Pointer<Void> _mb_set_bus =
      resolveMethodBind('AudioStreamPlayer', 'set_bus', 3304788590);

  void setBus(String bus) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), bus);
    try {
      ptrcallVoid(_mb_set_bus, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_bus =
      resolveMethodBind('AudioStreamPlayer', 'get_bus', 2002593661);

  String getBus() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_bus, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readStringName(ret.cast());
        BuiltinMarshal.destroyStringName(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_autoplay =
      resolveMethodBind('AudioStreamPlayer', 'set_autoplay', 2586408642);

  void setAutoplay(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_autoplay, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_autoplay_enabled =
      resolveMethodBind('AudioStreamPlayer', 'is_autoplay_enabled', 36873697);

  bool isAutoplayEnabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_autoplay_enabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_mix_target =
      resolveMethodBind('AudioStreamPlayer', 'set_mix_target', 2300306138);

  void setMixTarget(int mixTarget) {
    final arg0 = malloc<Int64>()..value = mixTarget;
    try {
      ptrcallVoid(_mb_set_mix_target, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_mix_target =
      resolveMethodBind('AudioStreamPlayer', 'get_mix_target', 172807476);

  int getMixTarget() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_mix_target, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_playing =
      resolveMethodBind('AudioStreamPlayer', 'set_playing', 2586408642);

  void setPlaying(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_playing, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_stream_paused =
      resolveMethodBind('AudioStreamPlayer', 'set_stream_paused', 2586408642);

  void setStreamPaused(bool pause) {
    final arg0 = malloc<Uint8>()..value = pause ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_stream_paused, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_stream_paused =
      resolveMethodBind('AudioStreamPlayer', 'get_stream_paused', 36873697);

  bool getStreamPaused() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_stream_paused, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_max_polyphony =
      resolveMethodBind('AudioStreamPlayer', 'set_max_polyphony', 1286410249);

  void setMaxPolyphony(int maxPolyphony) {
    final arg0 = malloc<Int64>()..value = maxPolyphony;
    try {
      ptrcallVoid(_mb_set_max_polyphony, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_max_polyphony =
      resolveMethodBind('AudioStreamPlayer', 'get_max_polyphony', 3905245786);

  int getMaxPolyphony() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_max_polyphony, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_has_stream_playback =
      resolveMethodBind('AudioStreamPlayer', 'has_stream_playback', 2240911060);

  bool hasStreamPlayback() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_has_stream_playback, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_stream_playback =
      resolveMethodBind('AudioStreamPlayer', 'get_stream_playback', 210135309);

  AudioStreamPlayback? getStreamPlayback() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_stream_playback, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : AudioStreamPlayback(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_playback_type =
      resolveMethodBind('AudioStreamPlayer', 'set_playback_type', 725473817);

  void setPlaybackType(int playbackType) {
    final arg0 = malloc<Int64>()..value = playbackType;
    try {
      ptrcallVoid(_mb_set_playback_type, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_playback_type =
      resolveMethodBind('AudioStreamPlayer', 'get_playback_type', 4011264623);

  int getPlaybackType() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_playback_type, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
