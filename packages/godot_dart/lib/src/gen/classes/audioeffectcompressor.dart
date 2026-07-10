// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class AudioEffectCompressor extends AudioEffect {
  AudioEffectCompressor(super.nativePtr);

  /// Constructs a brand-new engine-owned AudioEffectCompressor instance
  /// (via classdb_construct_object3), not an existing one.
  factory AudioEffectCompressor.create() {
    return AudioEffectCompressor(resolveClassConstructor('AudioEffectCompressor'));
  }

  static final Pointer<Void> _mb_set_threshold =
      resolveMethodBind('AudioEffectCompressor', 'set_threshold', 373806689);

  void setThreshold(double threshold) {
    final arg0 = malloc<Double>()..value = threshold;
    try {
      ptrcallVoid(_mb_set_threshold, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_threshold =
      resolveMethodBind('AudioEffectCompressor', 'get_threshold', 1740695150);

  double getThreshold() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_threshold, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_ratio =
      resolveMethodBind('AudioEffectCompressor', 'set_ratio', 373806689);

  void setRatio(double ratio) {
    final arg0 = malloc<Double>()..value = ratio;
    try {
      ptrcallVoid(_mb_set_ratio, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_ratio =
      resolveMethodBind('AudioEffectCompressor', 'get_ratio', 1740695150);

  double getRatio() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_ratio, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_gain =
      resolveMethodBind('AudioEffectCompressor', 'set_gain', 373806689);

  void setGain(double gain) {
    final arg0 = malloc<Double>()..value = gain;
    try {
      ptrcallVoid(_mb_set_gain, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_gain =
      resolveMethodBind('AudioEffectCompressor', 'get_gain', 1740695150);

  double getGain() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_gain, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_attack_us =
      resolveMethodBind('AudioEffectCompressor', 'set_attack_us', 373806689);

  void setAttackUs(double attackUs) {
    final arg0 = malloc<Double>()..value = attackUs;
    try {
      ptrcallVoid(_mb_set_attack_us, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_attack_us =
      resolveMethodBind('AudioEffectCompressor', 'get_attack_us', 1740695150);

  double getAttackUs() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_attack_us, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_release_ms =
      resolveMethodBind('AudioEffectCompressor', 'set_release_ms', 373806689);

  void setReleaseMs(double releaseMs) {
    final arg0 = malloc<Double>()..value = releaseMs;
    try {
      ptrcallVoid(_mb_set_release_ms, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_release_ms =
      resolveMethodBind('AudioEffectCompressor', 'get_release_ms', 1740695150);

  double getReleaseMs() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_release_ms, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_mix =
      resolveMethodBind('AudioEffectCompressor', 'set_mix', 373806689);

  void setMix(double mix) {
    final arg0 = malloc<Double>()..value = mix;
    try {
      ptrcallVoid(_mb_set_mix, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_mix =
      resolveMethodBind('AudioEffectCompressor', 'get_mix', 1740695150);

  double getMix() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_mix, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_sidechain =
      resolveMethodBind('AudioEffectCompressor', 'set_sidechain', 3304788590);

  void setSidechain(String sidechain) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), sidechain);
    try {
      ptrcallVoid(_mb_set_sidechain, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_sidechain =
      resolveMethodBind('AudioEffectCompressor', 'get_sidechain', 2002593661);

  String getSidechain() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_sidechain, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readStringName(ret.cast());
        BuiltinMarshal.destroyStringName(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
