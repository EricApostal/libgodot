// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class VideoStreamPlayer extends Control {
  VideoStreamPlayer(super.nativePtr);

  /// Constructs a brand-new engine-owned VideoStreamPlayer instance
  /// (via classdb_construct_object3), not an existing one.
  factory VideoStreamPlayer.create() {
    return VideoStreamPlayer(resolveClassConstructor('VideoStreamPlayer'));
  }

  static final Pointer<Void> _mb_set_stream =
      resolveMethodBind('VideoStreamPlayer', 'set_stream', 2317102564);

  void setStream(VideoStream stream) {
    final arg0 = malloc<Pointer<Void>>()..value = stream.nativePtr;
    try {
      ptrcallVoid(_mb_set_stream, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_stream =
      resolveMethodBind('VideoStreamPlayer', 'get_stream', 438621487);

  VideoStream? getStream() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_stream, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : VideoStream(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_play =
      resolveMethodBind('VideoStreamPlayer', 'play', 3218959716);

  void play() {
    try {
      ptrcallVoid(_mb_play, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_stop =
      resolveMethodBind('VideoStreamPlayer', 'stop', 3218959716);

  void stop() {
    try {
      ptrcallVoid(_mb_stop, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_is_playing =
      resolveMethodBind('VideoStreamPlayer', 'is_playing', 36873697);

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

  static final Pointer<Void> _mb_set_paused =
      resolveMethodBind('VideoStreamPlayer', 'set_paused', 2586408642);

  void setPaused(bool paused) {
    final arg0 = malloc<Uint8>()..value = paused ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_paused, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_paused =
      resolveMethodBind('VideoStreamPlayer', 'is_paused', 36873697);

  bool isPaused() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_paused, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_loop =
      resolveMethodBind('VideoStreamPlayer', 'set_loop', 2586408642);

  void setLoop(bool loop) {
    final arg0 = malloc<Uint8>()..value = loop ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_loop, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_has_loop =
      resolveMethodBind('VideoStreamPlayer', 'has_loop', 36873697);

  bool hasLoop() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_has_loop, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_volume =
      resolveMethodBind('VideoStreamPlayer', 'set_volume', 373806689);

  void setVolume(double volume) {
    final arg0 = malloc<Double>()..value = volume;
    try {
      ptrcallVoid(_mb_set_volume, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_volume =
      resolveMethodBind('VideoStreamPlayer', 'get_volume', 1740695150);

  double getVolume() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_volume, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_volume_db =
      resolveMethodBind('VideoStreamPlayer', 'set_volume_db', 373806689);

  void setVolumeDb(double db) {
    final arg0 = malloc<Double>()..value = db;
    try {
      ptrcallVoid(_mb_set_volume_db, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_volume_db =
      resolveMethodBind('VideoStreamPlayer', 'get_volume_db', 1740695150);

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

  static final Pointer<Void> _mb_set_speed_scale =
      resolveMethodBind('VideoStreamPlayer', 'set_speed_scale', 373806689);

  void setSpeedScale(double speedScale) {
    final arg0 = malloc<Double>()..value = speedScale;
    try {
      ptrcallVoid(_mb_set_speed_scale, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_speed_scale =
      resolveMethodBind('VideoStreamPlayer', 'get_speed_scale', 1740695150);

  double getSpeedScale() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_speed_scale, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_audio_track =
      resolveMethodBind('VideoStreamPlayer', 'set_audio_track', 1286410249);

  void setAudioTrack(int track) {
    final arg0 = malloc<Int64>()..value = track;
    try {
      ptrcallVoid(_mb_set_audio_track, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_audio_track =
      resolveMethodBind('VideoStreamPlayer', 'get_audio_track', 3905245786);

  int getAudioTrack() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_audio_track, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_stream_name =
      resolveMethodBind('VideoStreamPlayer', 'get_stream_name', 201670096);

  String getStreamName() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_stream_name, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_stream_length =
      resolveMethodBind('VideoStreamPlayer', 'get_stream_length', 1740695150);

  double getStreamLength() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_stream_length, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_stream_position =
      resolveMethodBind('VideoStreamPlayer', 'set_stream_position', 373806689);

  void setStreamPosition(double position) {
    final arg0 = malloc<Double>()..value = position;
    try {
      ptrcallVoid(_mb_set_stream_position, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_stream_position =
      resolveMethodBind('VideoStreamPlayer', 'get_stream_position', 1740695150);

  double getStreamPosition() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_stream_position, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_autoplay =
      resolveMethodBind('VideoStreamPlayer', 'set_autoplay', 2586408642);

  void setAutoplay(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_autoplay, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_has_autoplay =
      resolveMethodBind('VideoStreamPlayer', 'has_autoplay', 36873697);

  bool hasAutoplay() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_has_autoplay, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_expand =
      resolveMethodBind('VideoStreamPlayer', 'set_expand', 2586408642);

  void setExpand(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_expand, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_has_expand =
      resolveMethodBind('VideoStreamPlayer', 'has_expand', 36873697);

  bool hasExpand() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_has_expand, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_buffering_msec =
      resolveMethodBind('VideoStreamPlayer', 'set_buffering_msec', 1286410249);

  void setBufferingMsec(int msec) {
    final arg0 = malloc<Int64>()..value = msec;
    try {
      ptrcallVoid(_mb_set_buffering_msec, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_buffering_msec =
      resolveMethodBind('VideoStreamPlayer', 'get_buffering_msec', 3905245786);

  int getBufferingMsec() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_buffering_msec, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_bus =
      resolveMethodBind('VideoStreamPlayer', 'set_bus', 3304788590);

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
      resolveMethodBind('VideoStreamPlayer', 'get_bus', 2002593661);

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

  static final Pointer<Void> _mb_get_video_texture =
      resolveMethodBind('VideoStreamPlayer', 'get_video_texture', 3635182373);

  Texture2D? getVideoTexture() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_video_texture, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Texture2D(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
