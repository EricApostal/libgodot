// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class AudioStreamOggVorbis extends AudioStream {
  AudioStreamOggVorbis(super.nativePtr);

  static final Pointer<Void> _mb_set_packet_sequence =
      resolveMethodBind('AudioStreamOggVorbis', 'set_packet_sequence', 438882457);

  void setPacketSequence(OggPacketSequence packetSequence) {
    final arg0 = malloc<Pointer<Void>>()..value = packetSequence.nativePtr;
    try {
      ptrcallVoid(_mb_set_packet_sequence, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_packet_sequence =
      resolveMethodBind('AudioStreamOggVorbis', 'get_packet_sequence', 2801636033);

  OggPacketSequence? getPacketSequence() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_packet_sequence, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : OggPacketSequence(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_loop =
      resolveMethodBind('AudioStreamOggVorbis', 'set_loop', 2586408642);

  void setLoop(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_loop, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_has_loop =
      resolveMethodBind('AudioStreamOggVorbis', 'has_loop', 36873697);

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

  static final Pointer<Void> _mb_set_loop_offset =
      resolveMethodBind('AudioStreamOggVorbis', 'set_loop_offset', 373806689);

  void setLoopOffset(double seconds) {
    final arg0 = malloc<Double>()..value = seconds;
    try {
      ptrcallVoid(_mb_set_loop_offset, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_loop_offset =
      resolveMethodBind('AudioStreamOggVorbis', 'get_loop_offset', 1740695150);

  double getLoopOffset() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_loop_offset, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_bpm =
      resolveMethodBind('AudioStreamOggVorbis', 'set_bpm', 373806689);

  void setBpm(double bpm) {
    final arg0 = malloc<Double>()..value = bpm;
    try {
      ptrcallVoid(_mb_set_bpm, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_bpm =
      resolveMethodBind('AudioStreamOggVorbis', 'get_bpm', 1740695150);

  double getBpm() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_bpm, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_beat_count =
      resolveMethodBind('AudioStreamOggVorbis', 'set_beat_count', 1286410249);

  void setBeatCount(int count) {
    final arg0 = malloc<Int64>()..value = count;
    try {
      ptrcallVoid(_mb_set_beat_count, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_beat_count =
      resolveMethodBind('AudioStreamOggVorbis', 'get_beat_count', 3905245786);

  int getBeatCount() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_beat_count, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_bar_beats =
      resolveMethodBind('AudioStreamOggVorbis', 'set_bar_beats', 1286410249);

  void setBarBeats(int count) {
    final arg0 = malloc<Int64>()..value = count;
    try {
      ptrcallVoid(_mb_set_bar_beats, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_bar_beats =
      resolveMethodBind('AudioStreamOggVorbis', 'get_bar_beats', 3905245786);

  int getBarBeats() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_bar_beats, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  // Skipped set_tags(): an argument type is unsupported.
  // Skipped get_tags(): unsupported return type "Dictionary".
}
