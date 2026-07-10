// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class AudioStreamPlayer3D extends Node3D {
  AudioStreamPlayer3D(super.nativePtr);

  static final Pointer<Void> _mb_set_stream =
      resolveMethodBind('AudioStreamPlayer3D', 'set_stream', 2210767741);

  void setStream(AudioStream stream) {
    final arg0 = malloc<Pointer<Void>>()..value = stream.nativePtr;
    try {
      ptrcallVoid(_mb_set_stream, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_stream =
      resolveMethodBind('AudioStreamPlayer3D', 'get_stream', 160907539);

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
      resolveMethodBind('AudioStreamPlayer3D', 'set_volume_db', 373806689);

  void setVolumeDb(double volumeDb) {
    final arg0 = malloc<Double>()..value = volumeDb;
    try {
      ptrcallVoid(_mb_set_volume_db, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_volume_db =
      resolveMethodBind('AudioStreamPlayer3D', 'get_volume_db', 1740695150);

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
      resolveMethodBind('AudioStreamPlayer3D', 'set_volume_linear', 373806689);

  void setVolumeLinear(double volumeLinear) {
    final arg0 = malloc<Double>()..value = volumeLinear;
    try {
      ptrcallVoid(_mb_set_volume_linear, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_volume_linear =
      resolveMethodBind('AudioStreamPlayer3D', 'get_volume_linear', 1740695150);

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

  static final Pointer<Void> _mb_set_unit_size =
      resolveMethodBind('AudioStreamPlayer3D', 'set_unit_size', 373806689);

  void setUnitSize(double unitSize) {
    final arg0 = malloc<Double>()..value = unitSize;
    try {
      ptrcallVoid(_mb_set_unit_size, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_unit_size =
      resolveMethodBind('AudioStreamPlayer3D', 'get_unit_size', 1740695150);

  double getUnitSize() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_unit_size, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_max_db =
      resolveMethodBind('AudioStreamPlayer3D', 'set_max_db', 373806689);

  void setMaxDb(double maxDb) {
    final arg0 = malloc<Double>()..value = maxDb;
    try {
      ptrcallVoid(_mb_set_max_db, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_max_db =
      resolveMethodBind('AudioStreamPlayer3D', 'get_max_db', 1740695150);

  double getMaxDb() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_max_db, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_pitch_scale =
      resolveMethodBind('AudioStreamPlayer3D', 'set_pitch_scale', 373806689);

  void setPitchScale(double pitchScale) {
    final arg0 = malloc<Double>()..value = pitchScale;
    try {
      ptrcallVoid(_mb_set_pitch_scale, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_pitch_scale =
      resolveMethodBind('AudioStreamPlayer3D', 'get_pitch_scale', 1740695150);

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
      resolveMethodBind('AudioStreamPlayer3D', 'play', 1958160172);

  void play(double fromPosition) {
    final arg0 = malloc<Double>()..value = fromPosition;
    try {
      ptrcallVoid(_mb_play, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_seek =
      resolveMethodBind('AudioStreamPlayer3D', 'seek', 373806689);

  void seek(double toPosition) {
    final arg0 = malloc<Double>()..value = toPosition;
    try {
      ptrcallVoid(_mb_seek, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_stop =
      resolveMethodBind('AudioStreamPlayer3D', 'stop', 3218959716);

  void stop() {
    try {
      ptrcallVoid(_mb_stop, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_is_playing =
      resolveMethodBind('AudioStreamPlayer3D', 'is_playing', 36873697);

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
      resolveMethodBind('AudioStreamPlayer3D', 'get_playback_position', 191475506);

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
      resolveMethodBind('AudioStreamPlayer3D', 'set_bus', 3304788590);

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
      resolveMethodBind('AudioStreamPlayer3D', 'get_bus', 2002593661);

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
      resolveMethodBind('AudioStreamPlayer3D', 'set_autoplay', 2586408642);

  void setAutoplay(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_autoplay, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_autoplay_enabled =
      resolveMethodBind('AudioStreamPlayer3D', 'is_autoplay_enabled', 36873697);

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

  static final Pointer<Void> _mb_set_playing =
      resolveMethodBind('AudioStreamPlayer3D', 'set_playing', 2586408642);

  void setPlaying(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_playing, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_max_distance =
      resolveMethodBind('AudioStreamPlayer3D', 'set_max_distance', 373806689);

  void setMaxDistance(double meters) {
    final arg0 = malloc<Double>()..value = meters;
    try {
      ptrcallVoid(_mb_set_max_distance, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_max_distance =
      resolveMethodBind('AudioStreamPlayer3D', 'get_max_distance', 1740695150);

  double getMaxDistance() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_max_distance, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_area_mask =
      resolveMethodBind('AudioStreamPlayer3D', 'set_area_mask', 1286410249);

  void setAreaMask(int mask) {
    final arg0 = malloc<Int64>()..value = mask;
    try {
      ptrcallVoid(_mb_set_area_mask, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_area_mask =
      resolveMethodBind('AudioStreamPlayer3D', 'get_area_mask', 3905245786);

  int getAreaMask() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_area_mask, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_emission_angle =
      resolveMethodBind('AudioStreamPlayer3D', 'set_emission_angle', 373806689);

  void setEmissionAngle(double degrees) {
    final arg0 = malloc<Double>()..value = degrees;
    try {
      ptrcallVoid(_mb_set_emission_angle, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_emission_angle =
      resolveMethodBind('AudioStreamPlayer3D', 'get_emission_angle', 1740695150);

  double getEmissionAngle() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_emission_angle, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_emission_angle_enabled =
      resolveMethodBind('AudioStreamPlayer3D', 'set_emission_angle_enabled', 2586408642);

  void setEmissionAngleEnabled(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_emission_angle_enabled, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_emission_angle_enabled =
      resolveMethodBind('AudioStreamPlayer3D', 'is_emission_angle_enabled', 36873697);

  bool isEmissionAngleEnabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_emission_angle_enabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_emission_angle_filter_attenuation_db =
      resolveMethodBind('AudioStreamPlayer3D', 'set_emission_angle_filter_attenuation_db', 373806689);

  void setEmissionAngleFilterAttenuationDb(double db) {
    final arg0 = malloc<Double>()..value = db;
    try {
      ptrcallVoid(_mb_set_emission_angle_filter_attenuation_db, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_emission_angle_filter_attenuation_db =
      resolveMethodBind('AudioStreamPlayer3D', 'get_emission_angle_filter_attenuation_db', 1740695150);

  double getEmissionAngleFilterAttenuationDb() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_emission_angle_filter_attenuation_db, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_attenuation_filter_cutoff_hz =
      resolveMethodBind('AudioStreamPlayer3D', 'set_attenuation_filter_cutoff_hz', 373806689);

  void setAttenuationFilterCutoffHz(double degrees) {
    final arg0 = malloc<Double>()..value = degrees;
    try {
      ptrcallVoid(_mb_set_attenuation_filter_cutoff_hz, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_attenuation_filter_cutoff_hz =
      resolveMethodBind('AudioStreamPlayer3D', 'get_attenuation_filter_cutoff_hz', 1740695150);

  double getAttenuationFilterCutoffHz() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_attenuation_filter_cutoff_hz, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_attenuation_filter_db =
      resolveMethodBind('AudioStreamPlayer3D', 'set_attenuation_filter_db', 373806689);

  void setAttenuationFilterDb(double db) {
    final arg0 = malloc<Double>()..value = db;
    try {
      ptrcallVoid(_mb_set_attenuation_filter_db, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_attenuation_filter_db =
      resolveMethodBind('AudioStreamPlayer3D', 'get_attenuation_filter_db', 1740695150);

  double getAttenuationFilterDb() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_attenuation_filter_db, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_attenuation_model =
      resolveMethodBind('AudioStreamPlayer3D', 'set_attenuation_model', 2988086229);

  void setAttenuationModel(int model) {
    final arg0 = malloc<Int64>()..value = model;
    try {
      ptrcallVoid(_mb_set_attenuation_model, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_attenuation_model =
      resolveMethodBind('AudioStreamPlayer3D', 'get_attenuation_model', 3035106060);

  int getAttenuationModel() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_attenuation_model, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_doppler_tracking =
      resolveMethodBind('AudioStreamPlayer3D', 'set_doppler_tracking', 3968161450);

  void setDopplerTracking(int mode) {
    final arg0 = malloc<Int64>()..value = mode;
    try {
      ptrcallVoid(_mb_set_doppler_tracking, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_doppler_tracking =
      resolveMethodBind('AudioStreamPlayer3D', 'get_doppler_tracking', 1702418664);

  int getDopplerTracking() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_doppler_tracking, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_stream_paused =
      resolveMethodBind('AudioStreamPlayer3D', 'set_stream_paused', 2586408642);

  void setStreamPaused(bool pause) {
    final arg0 = malloc<Uint8>()..value = pause ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_stream_paused, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_stream_paused =
      resolveMethodBind('AudioStreamPlayer3D', 'get_stream_paused', 36873697);

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
      resolveMethodBind('AudioStreamPlayer3D', 'set_max_polyphony', 1286410249);

  void setMaxPolyphony(int maxPolyphony) {
    final arg0 = malloc<Int64>()..value = maxPolyphony;
    try {
      ptrcallVoid(_mb_set_max_polyphony, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_max_polyphony =
      resolveMethodBind('AudioStreamPlayer3D', 'get_max_polyphony', 3905245786);

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

  static final Pointer<Void> _mb_set_panning_strength =
      resolveMethodBind('AudioStreamPlayer3D', 'set_panning_strength', 373806689);

  void setPanningStrength(double panningStrength) {
    final arg0 = malloc<Double>()..value = panningStrength;
    try {
      ptrcallVoid(_mb_set_panning_strength, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_panning_strength =
      resolveMethodBind('AudioStreamPlayer3D', 'get_panning_strength', 1740695150);

  double getPanningStrength() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_panning_strength, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_has_stream_playback =
      resolveMethodBind('AudioStreamPlayer3D', 'has_stream_playback', 2240911060);

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
      resolveMethodBind('AudioStreamPlayer3D', 'get_stream_playback', 210135309);

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
      resolveMethodBind('AudioStreamPlayer3D', 'set_playback_type', 725473817);

  void setPlaybackType(int playbackType) {
    final arg0 = malloc<Int64>()..value = playbackType;
    try {
      ptrcallVoid(_mb_set_playback_type, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_playback_type =
      resolveMethodBind('AudioStreamPlayer3D', 'get_playback_type', 4011264623);

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
