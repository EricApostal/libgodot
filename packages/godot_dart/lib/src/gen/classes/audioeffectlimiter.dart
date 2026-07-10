// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class AudioEffectLimiter extends AudioEffect {
  AudioEffectLimiter(super.nativePtr);

  static final Pointer<Void> _mb_set_ceiling_db =
      resolveMethodBind('AudioEffectLimiter', 'set_ceiling_db', 373806689);

  void setCeilingDb(double ceiling) {
    final arg0 = malloc<Double>()..value = ceiling;
    try {
      ptrcallVoid(_mb_set_ceiling_db, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_ceiling_db =
      resolveMethodBind('AudioEffectLimiter', 'get_ceiling_db', 1740695150);

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

  static final Pointer<Void> _mb_set_threshold_db =
      resolveMethodBind('AudioEffectLimiter', 'set_threshold_db', 373806689);

  void setThresholdDb(double threshold) {
    final arg0 = malloc<Double>()..value = threshold;
    try {
      ptrcallVoid(_mb_set_threshold_db, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_threshold_db =
      resolveMethodBind('AudioEffectLimiter', 'get_threshold_db', 1740695150);

  double getThresholdDb() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_threshold_db, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_soft_clip_db =
      resolveMethodBind('AudioEffectLimiter', 'set_soft_clip_db', 373806689);

  void setSoftClipDb(double softClip) {
    final arg0 = malloc<Double>()..value = softClip;
    try {
      ptrcallVoid(_mb_set_soft_clip_db, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_soft_clip_db =
      resolveMethodBind('AudioEffectLimiter', 'get_soft_clip_db', 1740695150);

  double getSoftClipDb() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_soft_clip_db, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_soft_clip_ratio =
      resolveMethodBind('AudioEffectLimiter', 'set_soft_clip_ratio', 373806689);

  void setSoftClipRatio(double softClip) {
    final arg0 = malloc<Double>()..value = softClip;
    try {
      ptrcallVoid(_mb_set_soft_clip_ratio, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_soft_clip_ratio =
      resolveMethodBind('AudioEffectLimiter', 'get_soft_clip_ratio', 1740695150);

  double getSoftClipRatio() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_soft_clip_ratio, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
