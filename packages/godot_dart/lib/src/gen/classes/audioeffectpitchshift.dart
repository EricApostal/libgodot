// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class AudioEffectPitchShift extends AudioEffect {
  AudioEffectPitchShift(super.nativePtr);

  /// Constructs a brand-new engine-owned AudioEffectPitchShift instance
  /// (via classdb_construct_object3), not an existing one.
  factory AudioEffectPitchShift.create() {
    return AudioEffectPitchShift(resolveClassConstructor('AudioEffectPitchShift'));
  }

  static final Pointer<Void> _mb_set_pitch_scale =
      resolveMethodBind('AudioEffectPitchShift', 'set_pitch_scale', 373806689);

  void setPitchScale(double rate) {
    final arg0 = malloc<Double>()..value = rate;
    try {
      ptrcallVoid(_mb_set_pitch_scale, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_pitch_scale =
      resolveMethodBind('AudioEffectPitchShift', 'get_pitch_scale', 1740695150);

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

  static final Pointer<Void> _mb_set_oversampling =
      resolveMethodBind('AudioEffectPitchShift', 'set_oversampling', 1286410249);

  void setOversampling(int amount) {
    final arg0 = malloc<Int64>()..value = amount;
    try {
      ptrcallVoid(_mb_set_oversampling, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_oversampling =
      resolveMethodBind('AudioEffectPitchShift', 'get_oversampling', 3905245786);

  int getOversampling() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_oversampling, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_fft_size =
      resolveMethodBind('AudioEffectPitchShift', 'set_fft_size', 2323518741);

  void setFftSize(int size) {
    final arg0 = malloc<Int64>()..value = size;
    try {
      ptrcallVoid(_mb_set_fft_size, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_fft_size =
      resolveMethodBind('AudioEffectPitchShift', 'get_fft_size', 2361246789);

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
