// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class OpenXRHapticVibration extends OpenXRHapticBase {
  OpenXRHapticVibration(super.nativePtr);

  static final Pointer<Void> _mb_set_duration =
      resolveMethodBind('OpenXRHapticVibration', 'set_duration', 1286410249);

  void setDuration(int duration) {
    final arg0 = malloc<Int64>()..value = duration;
    try {
      ptrcallVoid(_mb_set_duration, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_duration =
      resolveMethodBind('OpenXRHapticVibration', 'get_duration', 3905245786);

  int getDuration() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_duration, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_frequency =
      resolveMethodBind('OpenXRHapticVibration', 'set_frequency', 373806689);

  void setFrequency(double frequency) {
    final arg0 = malloc<Double>()..value = frequency;
    try {
      ptrcallVoid(_mb_set_frequency, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_frequency =
      resolveMethodBind('OpenXRHapticVibration', 'get_frequency', 1740695150);

  double getFrequency() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_frequency, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_amplitude =
      resolveMethodBind('OpenXRHapticVibration', 'set_amplitude', 373806689);

  void setAmplitude(double amplitude) {
    final arg0 = malloc<Double>()..value = amplitude;
    try {
      ptrcallVoid(_mb_set_amplitude, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_amplitude =
      resolveMethodBind('OpenXRHapticVibration', 'get_amplitude', 1740695150);

  double getAmplitude() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_amplitude, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
