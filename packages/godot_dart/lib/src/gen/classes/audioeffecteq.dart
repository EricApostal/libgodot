// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class AudioEffectEQ extends AudioEffect {
  AudioEffectEQ(super.nativePtr);

  static final Pointer<Void> _mb_set_band_gain_db =
      resolveMethodBind('AudioEffectEQ', 'set_band_gain_db', 1602489585);

  void setBandGainDb(int bandIdx, double volumeDb) {
    final arg0 = malloc<Int64>()..value = bandIdx;
    final arg1 = malloc<Double>()..value = volumeDb;
    try {
      ptrcallVoid(_mb_set_band_gain_db, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_band_gain_db =
      resolveMethodBind('AudioEffectEQ', 'get_band_gain_db', 2339986948);

  double getBandGainDb(int bandIdx) {
    final arg0 = malloc<Int64>()..value = bandIdx;
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_band_gain_db, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_band_count =
      resolveMethodBind('AudioEffectEQ', 'get_band_count', 3905245786);

  int getBandCount() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_band_count, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
