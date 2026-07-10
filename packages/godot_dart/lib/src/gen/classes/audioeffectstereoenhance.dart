// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class AudioEffectStereoEnhance extends AudioEffect {
  AudioEffectStereoEnhance(super.nativePtr);

  /// Constructs a brand-new engine-owned AudioEffectStereoEnhance instance
  /// (via classdb_construct_object3), not an existing one.
  factory AudioEffectStereoEnhance.create() {
    return AudioEffectStereoEnhance(resolveClassConstructor('AudioEffectStereoEnhance'));
  }

  static final Pointer<Void> _mb_set_pan_pullout =
      resolveMethodBind('AudioEffectStereoEnhance', 'set_pan_pullout', 373806689);

  void setPanPullout(double amount) {
    final arg0 = malloc<Double>()..value = amount;
    try {
      ptrcallVoid(_mb_set_pan_pullout, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_pan_pullout =
      resolveMethodBind('AudioEffectStereoEnhance', 'get_pan_pullout', 1740695150);

  double getPanPullout() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_pan_pullout, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_time_pullout =
      resolveMethodBind('AudioEffectStereoEnhance', 'set_time_pullout', 373806689);

  void setTimePullout(double amount) {
    final arg0 = malloc<Double>()..value = amount;
    try {
      ptrcallVoid(_mb_set_time_pullout, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_time_pullout =
      resolveMethodBind('AudioEffectStereoEnhance', 'get_time_pullout', 1740695150);

  double getTimePullout() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_time_pullout, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_surround =
      resolveMethodBind('AudioEffectStereoEnhance', 'set_surround', 373806689);

  void setSurround(double amount) {
    final arg0 = malloc<Double>()..value = amount;
    try {
      ptrcallVoid(_mb_set_surround, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_surround =
      resolveMethodBind('AudioEffectStereoEnhance', 'get_surround', 1740695150);

  double getSurround() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_surround, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
