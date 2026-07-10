// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class AudioEffectSpectrumAnalyzer extends AudioEffect {
  AudioEffectSpectrumAnalyzer(super.nativePtr);

  static final Pointer<Void> _mb_set_buffer_length =
      resolveMethodBind('AudioEffectSpectrumAnalyzer', 'set_buffer_length', 373806689);

  void setBufferLength(double seconds) {
    final arg0 = malloc<Double>()..value = seconds;
    try {
      ptrcallVoid(_mb_set_buffer_length, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_buffer_length =
      resolveMethodBind('AudioEffectSpectrumAnalyzer', 'get_buffer_length', 1740695150);

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

  static final Pointer<Void> _mb_set_fft_size =
      resolveMethodBind('AudioEffectSpectrumAnalyzer', 'set_fft_size', 1202879215);

  void setFftSize(int size) {
    final arg0 = malloc<Int64>()..value = size;
    try {
      ptrcallVoid(_mb_set_fft_size, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_fft_size =
      resolveMethodBind('AudioEffectSpectrumAnalyzer', 'get_fft_size', 3925405343);

  int getFftSize() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_fft_size, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
