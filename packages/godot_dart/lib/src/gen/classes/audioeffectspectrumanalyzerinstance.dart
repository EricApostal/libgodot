// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class AudioEffectSpectrumAnalyzerInstance extends AudioEffectInstance {
  AudioEffectSpectrumAnalyzerInstance(super.nativePtr);

  static final Pointer<Void> _mb_get_magnitude_for_frequency_range =
      resolveMethodBind('AudioEffectSpectrumAnalyzerInstance', 'get_magnitude_for_frequency_range', 797993915);

  Vector2 getMagnitudeForFrequencyRange(double fromHz, double toHz, int mode) {
    final arg0 = malloc<Double>()..value = fromHz;
    final arg1 = malloc<Double>()..value = toHz;
    final arg2 = malloc<Int64>()..value = mode;
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_magnitude_for_frequency_range, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
    }
  }

}
