// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class AudioStreamPlaylist extends AudioStream {
  AudioStreamPlaylist(super.nativePtr);

  static final Pointer<Void> _mb_set_stream_count =
      resolveMethodBind('AudioStreamPlaylist', 'set_stream_count', 1286410249);

  void setStreamCount(int streamCount) {
    final arg0 = malloc<Int64>()..value = streamCount;
    try {
      ptrcallVoid(_mb_set_stream_count, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_stream_count =
      resolveMethodBind('AudioStreamPlaylist', 'get_stream_count', 3905245786);

  int getStreamCount() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_stream_count, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_bpm =
      resolveMethodBind('AudioStreamPlaylist', 'get_bpm', 1740695150);

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

  static final Pointer<Void> _mb_set_list_stream =
      resolveMethodBind('AudioStreamPlaylist', 'set_list_stream', 111075094);

  void setListStream(int streamIndex, AudioStream audioStream) {
    final arg0 = malloc<Int64>()..value = streamIndex;
    final arg1 = malloc<Pointer<Void>>()..value = audioStream.nativePtr;
    try {
      ptrcallVoid(_mb_set_list_stream, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_list_stream =
      resolveMethodBind('AudioStreamPlaylist', 'get_list_stream', 2739380747);

  AudioStream? getListStream(int streamIndex) {
    final arg0 = malloc<Int64>()..value = streamIndex;
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_list_stream, nativePtr, [arg0.cast<Void>()], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : AudioStream(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_shuffle =
      resolveMethodBind('AudioStreamPlaylist', 'set_shuffle', 2586408642);

  void setShuffle(bool shuffle) {
    final arg0 = malloc<Uint8>()..value = shuffle ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_shuffle, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_shuffle =
      resolveMethodBind('AudioStreamPlaylist', 'get_shuffle', 36873697);

  bool getShuffle() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_shuffle, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_fade_time =
      resolveMethodBind('AudioStreamPlaylist', 'set_fade_time', 373806689);

  void setFadeTime(double dec) {
    final arg0 = malloc<Double>()..value = dec;
    try {
      ptrcallVoid(_mb_set_fade_time, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_fade_time =
      resolveMethodBind('AudioStreamPlaylist', 'get_fade_time', 1740695150);

  double getFadeTime() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_fade_time, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_loop =
      resolveMethodBind('AudioStreamPlaylist', 'set_loop', 2586408642);

  void setLoop(bool loop) {
    final arg0 = malloc<Uint8>()..value = loop ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_loop, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_has_loop =
      resolveMethodBind('AudioStreamPlaylist', 'has_loop', 36873697);

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

}
