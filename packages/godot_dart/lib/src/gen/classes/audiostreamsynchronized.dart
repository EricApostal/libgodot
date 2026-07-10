// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class AudioStreamSynchronized extends AudioStream {
  AudioStreamSynchronized(super.nativePtr);

  static final Pointer<Void> _mb_set_stream_count =
      resolveMethodBind('AudioStreamSynchronized', 'set_stream_count', 1286410249);

  void setStreamCount(int streamCount) {
    final arg0 = malloc<Int64>()..value = streamCount;
    try {
      ptrcallVoid(_mb_set_stream_count, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_stream_count =
      resolveMethodBind('AudioStreamSynchronized', 'get_stream_count', 3905245786);

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

  static final Pointer<Void> _mb_set_sync_stream =
      resolveMethodBind('AudioStreamSynchronized', 'set_sync_stream', 111075094);

  void setSyncStream(int streamIndex, AudioStream audioStream) {
    final arg0 = malloc<Int64>()..value = streamIndex;
    final arg1 = malloc<Pointer<Void>>()..value = audioStream.nativePtr;
    try {
      ptrcallVoid(_mb_set_sync_stream, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_sync_stream =
      resolveMethodBind('AudioStreamSynchronized', 'get_sync_stream', 2739380747);

  AudioStream? getSyncStream(int streamIndex) {
    final arg0 = malloc<Int64>()..value = streamIndex;
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_sync_stream, nativePtr, [arg0.cast<Void>()], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : AudioStream(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_sync_stream_volume =
      resolveMethodBind('AudioStreamSynchronized', 'set_sync_stream_volume', 1602489585);

  void setSyncStreamVolume(int streamIndex, double volumeDb) {
    final arg0 = malloc<Int64>()..value = streamIndex;
    final arg1 = malloc<Double>()..value = volumeDb;
    try {
      ptrcallVoid(_mb_set_sync_stream_volume, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_sync_stream_volume =
      resolveMethodBind('AudioStreamSynchronized', 'get_sync_stream_volume', 2339986948);

  double getSyncStreamVolume(int streamIndex) {
    final arg0 = malloc<Int64>()..value = streamIndex;
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_sync_stream_volume, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

}
