// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class AudioEffectFilter extends AudioEffect {
  AudioEffectFilter(super.nativePtr);

  static final Pointer<Void> _mb_set_cutoff =
      resolveMethodBind('AudioEffectFilter', 'set_cutoff', 373806689);

  void setCutoff(double freq) {
    final arg0 = malloc<Double>()..value = freq;
    try {
      ptrcallVoid(_mb_set_cutoff, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_cutoff =
      resolveMethodBind('AudioEffectFilter', 'get_cutoff', 1740695150);

  double getCutoff() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_cutoff, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_resonance =
      resolveMethodBind('AudioEffectFilter', 'set_resonance', 373806689);

  void setResonance(double amount) {
    final arg0 = malloc<Double>()..value = amount;
    try {
      ptrcallVoid(_mb_set_resonance, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_resonance =
      resolveMethodBind('AudioEffectFilter', 'get_resonance', 1740695150);

  double getResonance() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_resonance, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_gain =
      resolveMethodBind('AudioEffectFilter', 'set_gain', 373806689);

  void setGain(double amount) {
    final arg0 = malloc<Double>()..value = amount;
    try {
      ptrcallVoid(_mb_set_gain, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_gain =
      resolveMethodBind('AudioEffectFilter', 'get_gain', 1740695150);

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

  static final Pointer<Void> _mb_set_db =
      resolveMethodBind('AudioEffectFilter', 'set_db', 771740901);

  void setDb(int amount) {
    final arg0 = malloc<Int64>()..value = amount;
    try {
      ptrcallVoid(_mb_set_db, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_db =
      resolveMethodBind('AudioEffectFilter', 'get_db', 3981721890);

  int getDb() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_db, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
