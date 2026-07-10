// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class AudioServer extends GodotObject {
  AudioServer(super.nativePtr);

  /// Constructs a brand-new engine-owned AudioServer instance
  /// (via classdb_construct_object3), not an existing one.
  factory AudioServer.create() {
    return AudioServer(resolveClassConstructor('AudioServer'));
  }

  static final Pointer<Void> _mb_set_bus_count =
      resolveMethodBind('AudioServer', 'set_bus_count', 1286410249);

  void setBusCount(int amount) {
    final arg0 = malloc<Int64>()..value = amount;
    try {
      ptrcallVoid(_mb_set_bus_count, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_bus_count =
      resolveMethodBind('AudioServer', 'get_bus_count', 3905245786);

  int getBusCount() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_bus_count, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_remove_bus =
      resolveMethodBind('AudioServer', 'remove_bus', 1286410249);

  void removeBus(int index) {
    final arg0 = malloc<Int64>()..value = index;
    try {
      ptrcallVoid(_mb_remove_bus, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_add_bus =
      resolveMethodBind('AudioServer', 'add_bus', 1025054187);

  void addBus(int atPosition) {
    final arg0 = malloc<Int64>()..value = atPosition;
    try {
      ptrcallVoid(_mb_add_bus, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_move_bus =
      resolveMethodBind('AudioServer', 'move_bus', 3937882851);

  void moveBus(int index, int toIndex) {
    final arg0 = malloc<Int64>()..value = index;
    final arg1 = malloc<Int64>()..value = toIndex;
    try {
      ptrcallVoid(_mb_move_bus, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_set_bus_name =
      resolveMethodBind('AudioServer', 'set_bus_name', 501894301);

  void setBusName(int busIdx, String name) {
    final arg0 = malloc<Int64>()..value = busIdx;
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg1.cast(), name);
    try {
      ptrcallVoid(_mb_set_bus_name, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      BuiltinMarshal.destroyGDString(arg1.cast());
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_bus_name =
      resolveMethodBind('AudioServer', 'get_bus_name', 844755477);

  String getBusName(int busIdx) {
    final arg0 = malloc<Int64>()..value = busIdx;
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_bus_name, nativePtr, [arg0.cast<Void>()], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_bus_index =
      resolveMethodBind('AudioServer', 'get_bus_index', 2458036349);

  int getBusIndex(String busName) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), busName);
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_bus_index, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_bus_channels =
      resolveMethodBind('AudioServer', 'get_bus_channels', 923996154);

  int getBusChannels(int busIdx) {
    final arg0 = malloc<Int64>()..value = busIdx;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_bus_channels, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_bus_volume_db =
      resolveMethodBind('AudioServer', 'set_bus_volume_db', 1602489585);

  void setBusVolumeDb(int busIdx, double volumeDb) {
    final arg0 = malloc<Int64>()..value = busIdx;
    final arg1 = malloc<Double>()..value = volumeDb;
    try {
      ptrcallVoid(_mb_set_bus_volume_db, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_bus_volume_db =
      resolveMethodBind('AudioServer', 'get_bus_volume_db', 2339986948);

  double getBusVolumeDb(int busIdx) {
    final arg0 = malloc<Int64>()..value = busIdx;
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_bus_volume_db, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_bus_volume_linear =
      resolveMethodBind('AudioServer', 'set_bus_volume_linear', 1602489585);

  void setBusVolumeLinear(int busIdx, double volumeLinear) {
    final arg0 = malloc<Int64>()..value = busIdx;
    final arg1 = malloc<Double>()..value = volumeLinear;
    try {
      ptrcallVoid(_mb_set_bus_volume_linear, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_bus_volume_linear =
      resolveMethodBind('AudioServer', 'get_bus_volume_linear', 2339986948);

  double getBusVolumeLinear(int busIdx) {
    final arg0 = malloc<Int64>()..value = busIdx;
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_bus_volume_linear, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_bus_send =
      resolveMethodBind('AudioServer', 'set_bus_send', 3780747571);

  void setBusSend(int busIdx, String send) {
    final arg0 = malloc<Int64>()..value = busIdx;
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg1.cast(), send);
    try {
      ptrcallVoid(_mb_set_bus_send, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      BuiltinMarshal.destroyStringName(arg1.cast());
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_bus_send =
      resolveMethodBind('AudioServer', 'get_bus_send', 659327637);

  String getBusSend(int busIdx) {
    final arg0 = malloc<Int64>()..value = busIdx;
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_bus_send, nativePtr, [arg0.cast<Void>()], ret.cast());
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

  static final Pointer<Void> _mb_set_bus_solo =
      resolveMethodBind('AudioServer', 'set_bus_solo', 300928843);

  void setBusSolo(int busIdx, bool enable) {
    final arg0 = malloc<Int64>()..value = busIdx;
    final arg1 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_bus_solo, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_is_bus_solo =
      resolveMethodBind('AudioServer', 'is_bus_solo', 1116898809);

  bool isBusSolo(int busIdx) {
    final arg0 = malloc<Int64>()..value = busIdx;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_bus_solo, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_bus_mute =
      resolveMethodBind('AudioServer', 'set_bus_mute', 300928843);

  void setBusMute(int busIdx, bool enable) {
    final arg0 = malloc<Int64>()..value = busIdx;
    final arg1 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_bus_mute, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_is_bus_mute =
      resolveMethodBind('AudioServer', 'is_bus_mute', 1116898809);

  bool isBusMute(int busIdx) {
    final arg0 = malloc<Int64>()..value = busIdx;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_bus_mute, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_bus_bypass_effects =
      resolveMethodBind('AudioServer', 'set_bus_bypass_effects', 300928843);

  void setBusBypassEffects(int busIdx, bool enable) {
    final arg0 = malloc<Int64>()..value = busIdx;
    final arg1 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_bus_bypass_effects, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_is_bus_bypassing_effects =
      resolveMethodBind('AudioServer', 'is_bus_bypassing_effects', 1116898809);

  bool isBusBypassingEffects(int busIdx) {
    final arg0 = malloc<Int64>()..value = busIdx;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_bus_bypassing_effects, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_add_bus_effect =
      resolveMethodBind('AudioServer', 'add_bus_effect', 4068819785);

  void addBusEffect(int busIdx, AudioEffect effect, int atPosition) {
    final arg0 = malloc<Int64>()..value = busIdx;
    final arg1 = malloc<Pointer<Void>>()..value = effect.nativePtr;
    final arg2 = malloc<Int64>()..value = atPosition;
    try {
      ptrcallVoid(_mb_add_bus_effect, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_remove_bus_effect =
      resolveMethodBind('AudioServer', 'remove_bus_effect', 3937882851);

  void removeBusEffect(int busIdx, int effectIdx) {
    final arg0 = malloc<Int64>()..value = busIdx;
    final arg1 = malloc<Int64>()..value = effectIdx;
    try {
      ptrcallVoid(_mb_remove_bus_effect, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_bus_effect_count =
      resolveMethodBind('AudioServer', 'get_bus_effect_count', 3744713108);

  int getBusEffectCount(int busIdx) {
    final arg0 = malloc<Int64>()..value = busIdx;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_bus_effect_count, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_bus_effect =
      resolveMethodBind('AudioServer', 'get_bus_effect', 726064442);

  AudioEffect? getBusEffect(int busIdx, int effectIdx) {
    final arg0 = malloc<Int64>()..value = busIdx;
    final arg1 = malloc<Int64>()..value = effectIdx;
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_bus_effect, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : AudioEffect(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_bus_effect_instance =
      resolveMethodBind('AudioServer', 'get_bus_effect_instance', 1829771234);

  AudioEffectInstance? getBusEffectInstance(int busIdx, int effectIdx, int channel) {
    final arg0 = malloc<Int64>()..value = busIdx;
    final arg1 = malloc<Int64>()..value = effectIdx;
    final arg2 = malloc<Int64>()..value = channel;
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_bus_effect_instance, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : AudioEffectInstance(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_swap_bus_effects =
      resolveMethodBind('AudioServer', 'swap_bus_effects', 1649997291);

  void swapBusEffects(int busIdx, int effectIdx, int byEffectIdx) {
    final arg0 = malloc<Int64>()..value = busIdx;
    final arg1 = malloc<Int64>()..value = effectIdx;
    final arg2 = malloc<Int64>()..value = byEffectIdx;
    try {
      ptrcallVoid(_mb_swap_bus_effects, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_set_bus_effect_enabled =
      resolveMethodBind('AudioServer', 'set_bus_effect_enabled', 1383440665);

  void setBusEffectEnabled(int busIdx, int effectIdx, bool enabled) {
    final arg0 = malloc<Int64>()..value = busIdx;
    final arg1 = malloc<Int64>()..value = effectIdx;
    final arg2 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_bus_effect_enabled, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_is_bus_effect_enabled =
      resolveMethodBind('AudioServer', 'is_bus_effect_enabled', 2522259332);

  bool isBusEffectEnabled(int busIdx, int effectIdx) {
    final arg0 = malloc<Int64>()..value = busIdx;
    final arg1 = malloc<Int64>()..value = effectIdx;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_bus_effect_enabled, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_bus_peak_volume_left_db =
      resolveMethodBind('AudioServer', 'get_bus_peak_volume_left_db', 3085491603);

  double getBusPeakVolumeLeftDb(int busIdx, int channel) {
    final arg0 = malloc<Int64>()..value = busIdx;
    final arg1 = malloc<Int64>()..value = channel;
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_bus_peak_volume_left_db, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_bus_peak_volume_right_db =
      resolveMethodBind('AudioServer', 'get_bus_peak_volume_right_db', 3085491603);

  double getBusPeakVolumeRightDb(int busIdx, int channel) {
    final arg0 = malloc<Int64>()..value = busIdx;
    final arg1 = malloc<Int64>()..value = channel;
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_bus_peak_volume_right_db, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_set_playback_speed_scale =
      resolveMethodBind('AudioServer', 'set_playback_speed_scale', 373806689);

  void setPlaybackSpeedScale(double scale) {
    final arg0 = malloc<Double>()..value = scale;
    try {
      ptrcallVoid(_mb_set_playback_speed_scale, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_playback_speed_scale =
      resolveMethodBind('AudioServer', 'get_playback_speed_scale', 1740695150);

  double getPlaybackSpeedScale() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_playback_speed_scale, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_lock =
      resolveMethodBind('AudioServer', 'lock', 3218959716);

  void lock() {
    try {
      ptrcallVoid(_mb_lock, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_unlock =
      resolveMethodBind('AudioServer', 'unlock', 3218959716);

  void unlock() {
    try {
      ptrcallVoid(_mb_unlock, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_speaker_mode =
      resolveMethodBind('AudioServer', 'get_speaker_mode', 2549190337);

  int getSpeakerMode() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_speaker_mode, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_mix_rate =
      resolveMethodBind('AudioServer', 'get_mix_rate', 1740695150);

  double getMixRate() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_mix_rate, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_input_mix_rate =
      resolveMethodBind('AudioServer', 'get_input_mix_rate', 1740695150);

  double getInputMixRate() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_input_mix_rate, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_driver_name =
      resolveMethodBind('AudioServer', 'get_driver_name', 201670096);

  String getDriverName() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_driver_name, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  // Skipped get_output_device_list(): unsupported return type "PackedStringArray".
  static final Pointer<Void> _mb_get_output_device =
      resolveMethodBind('AudioServer', 'get_output_device', 2841200299);

  String getOutputDevice() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_output_device, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_output_device =
      resolveMethodBind('AudioServer', 'set_output_device', 83702148);

  void setOutputDevice(String name) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), name);
    try {
      ptrcallVoid(_mb_set_output_device, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_time_to_next_mix =
      resolveMethodBind('AudioServer', 'get_time_to_next_mix', 1740695150);

  double getTimeToNextMix() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_time_to_next_mix, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_time_since_last_mix =
      resolveMethodBind('AudioServer', 'get_time_since_last_mix', 1740695150);

  double getTimeSinceLastMix() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_time_since_last_mix, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_output_latency =
      resolveMethodBind('AudioServer', 'get_output_latency', 1740695150);

  double getOutputLatency() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_output_latency, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  // Skipped get_input_device_list(): unsupported return type "PackedStringArray".
  static final Pointer<Void> _mb_get_input_device =
      resolveMethodBind('AudioServer', 'get_input_device', 2841200299);

  String getInputDevice() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_input_device, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_input_device =
      resolveMethodBind('AudioServer', 'set_input_device', 83702148);

  void setInputDevice(String name) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), name);
    try {
      ptrcallVoid(_mb_set_input_device, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_input_device_active =
      resolveMethodBind('AudioServer', 'set_input_device_active', 1413768114);

  int setInputDeviceActive(bool active) {
    final arg0 = malloc<Uint8>()..value = active ? 1 : 0;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_set_input_device_active, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_input_frames_available =
      resolveMethodBind('AudioServer', 'get_input_frames_available', 2455072627);

  int getInputFramesAvailable() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_input_frames_available, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_input_buffer_length_frames =
      resolveMethodBind('AudioServer', 'get_input_buffer_length_frames', 2455072627);

  int getInputBufferLengthFrames() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_input_buffer_length_frames, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  // Skipped get_input_frames(): unsupported return type "PackedVector2Array".
  static final Pointer<Void> _mb_set_bus_layout =
      resolveMethodBind('AudioServer', 'set_bus_layout', 3319058824);

  void setBusLayout(AudioBusLayout busLayout) {
    final arg0 = malloc<Pointer<Void>>()..value = busLayout.nativePtr;
    try {
      ptrcallVoid(_mb_set_bus_layout, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_generate_bus_layout =
      resolveMethodBind('AudioServer', 'generate_bus_layout', 3769973890);

  AudioBusLayout? generateBusLayout() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_generate_bus_layout, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : AudioBusLayout(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_enable_tagging_used_audio_streams =
      resolveMethodBind('AudioServer', 'set_enable_tagging_used_audio_streams', 2586408642);

  void setEnableTaggingUsedAudioStreams(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_enable_tagging_used_audio_streams, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_stream_registered_as_sample =
      resolveMethodBind('AudioServer', 'is_stream_registered_as_sample', 500225754);

  bool isStreamRegisteredAsSample(AudioStream stream) {
    final arg0 = malloc<Pointer<Void>>()..value = stream.nativePtr;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_stream_registered_as_sample, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_register_stream_as_sample =
      resolveMethodBind('AudioServer', 'register_stream_as_sample', 2210767741);

  void registerStreamAsSample(AudioStream stream) {
    final arg0 = malloc<Pointer<Void>>()..value = stream.nativePtr;
    try {
      ptrcallVoid(_mb_register_stream_as_sample, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

}
