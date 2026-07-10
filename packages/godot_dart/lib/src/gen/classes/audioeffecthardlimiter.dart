// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class AudioEffectHardLimiter extends AudioEffect {
  AudioEffectHardLimiter(super.nativePtr);

  /// Constructs a brand-new engine-owned AudioEffectHardLimiter instance
  /// (via classdb_construct_object3), not an existing one.
  factory AudioEffectHardLimiter.create() {
    return AudioEffectHardLimiter(resolveClassConstructor('AudioEffectHardLimiter'));
  }

  static final Pointer<Void> _mb_set_ceiling_db =
      resolveMethodBind('AudioEffectHardLimiter', 'set_ceiling_db', 373806689);

  void setCeilingDb(double ceiling) {
    final arg0 = malloc<Double>()..value = ceiling;
    try {
      ptrcallVoid(_mb_set_ceiling_db, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_ceiling_db =
      resolveMethodBind('AudioEffectHardLimiter', 'get_ceiling_db', 1740695150);

  double getCeilingDb() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_ceiling_db, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_pre_gain_db =
      resolveMethodBind('AudioEffectHardLimiter', 'set_pre_gain_db', 373806689);

  void setPreGainDb(double preGain) {
    final arg0 = malloc<Double>()..value = preGain;
    try {
      ptrcallVoid(_mb_set_pre_gain_db, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_pre_gain_db =
      resolveMethodBind('AudioEffectHardLimiter', 'get_pre_gain_db', 1740695150);

  double getPreGainDb() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_pre_gain_db, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_release =
      resolveMethodBind('AudioEffectHardLimiter', 'set_release', 373806689);

  void setRelease(double release) {
    final arg0 = malloc<Double>()..value = release;
    try {
      ptrcallVoid(_mb_set_release, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_release =
      resolveMethodBind('AudioEffectHardLimiter', 'get_release', 1740695150);

  double getRelease() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_release, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
