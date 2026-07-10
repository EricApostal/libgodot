// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class AudioStreamGenerator extends AudioStream {
  AudioStreamGenerator(super.nativePtr);

  static final Pointer<Void> _mb_set_mix_rate =
      resolveMethodBind('AudioStreamGenerator', 'set_mix_rate', 373806689);

  void setMixRate(double hz) {
    final arg0 = malloc<Double>()..value = hz;
    try {
      ptrcallVoid(_mb_set_mix_rate, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_mix_rate =
      resolveMethodBind('AudioStreamGenerator', 'get_mix_rate', 1740695150);

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

  static final Pointer<Void> _mb_set_mix_rate_mode =
      resolveMethodBind('AudioStreamGenerator', 'set_mix_rate_mode', 3354885803);

  void setMixRateMode(int mode) {
    final arg0 = malloc<Int64>()..value = mode;
    try {
      ptrcallVoid(_mb_set_mix_rate_mode, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_mix_rate_mode =
      resolveMethodBind('AudioStreamGenerator', 'get_mix_rate_mode', 3537132591);

  int getMixRateMode() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_mix_rate_mode, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_buffer_length =
      resolveMethodBind('AudioStreamGenerator', 'set_buffer_length', 373806689);

  void setBufferLength(double seconds) {
    final arg0 = malloc<Double>()..value = seconds;
    try {
      ptrcallVoid(_mb_set_buffer_length, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_buffer_length =
      resolveMethodBind('AudioStreamGenerator', 'get_buffer_length', 1740695150);

  double getBufferLength() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_buffer_length, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
