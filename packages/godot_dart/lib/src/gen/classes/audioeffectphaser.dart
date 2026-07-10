// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class AudioEffectPhaser extends AudioEffect {
  AudioEffectPhaser(super.nativePtr);

  /// Constructs a brand-new engine-owned AudioEffectPhaser instance
  /// (via classdb_construct_object3), not an existing one.
  factory AudioEffectPhaser.create() {
    return AudioEffectPhaser(resolveClassConstructor('AudioEffectPhaser'));
  }

  static final Pointer<Void> _mb_set_range_min_hz =
      resolveMethodBind('AudioEffectPhaser', 'set_range_min_hz', 373806689);

  void setRangeMinHz(double hz) {
    final arg0 = malloc<Double>()..value = hz;
    try {
      ptrcallVoid(_mb_set_range_min_hz, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_range_min_hz =
      resolveMethodBind('AudioEffectPhaser', 'get_range_min_hz', 1740695150);

  double getRangeMinHz() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_range_min_hz, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_range_max_hz =
      resolveMethodBind('AudioEffectPhaser', 'set_range_max_hz', 373806689);

  void setRangeMaxHz(double hz) {
    final arg0 = malloc<Double>()..value = hz;
    try {
      ptrcallVoid(_mb_set_range_max_hz, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_range_max_hz =
      resolveMethodBind('AudioEffectPhaser', 'get_range_max_hz', 1740695150);

  double getRangeMaxHz() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_range_max_hz, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_rate_hz =
      resolveMethodBind('AudioEffectPhaser', 'set_rate_hz', 373806689);

  void setRateHz(double hz) {
    final arg0 = malloc<Double>()..value = hz;
    try {
      ptrcallVoid(_mb_set_rate_hz, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_rate_hz =
      resolveMethodBind('AudioEffectPhaser', 'get_rate_hz', 1740695150);

  double getRateHz() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_rate_hz, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_feedback =
      resolveMethodBind('AudioEffectPhaser', 'set_feedback', 373806689);

  void setFeedback(double fbk) {
    final arg0 = malloc<Double>()..value = fbk;
    try {
      ptrcallVoid(_mb_set_feedback, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_feedback =
      resolveMethodBind('AudioEffectPhaser', 'get_feedback', 1740695150);

  double getFeedback() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_feedback, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_depth =
      resolveMethodBind('AudioEffectPhaser', 'set_depth', 373806689);

  void setDepth(double depth) {
    final arg0 = malloc<Double>()..value = depth;
    try {
      ptrcallVoid(_mb_set_depth, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_depth =
      resolveMethodBind('AudioEffectPhaser', 'get_depth', 1740695150);

  double getDepth() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_depth, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
