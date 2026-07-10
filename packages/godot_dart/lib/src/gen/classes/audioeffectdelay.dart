// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class AudioEffectDelay extends AudioEffect {
  AudioEffectDelay(super.nativePtr);

  /// Constructs a brand-new engine-owned AudioEffectDelay instance
  /// (via classdb_construct_object3), not an existing one.
  factory AudioEffectDelay.create() {
    return AudioEffectDelay(resolveClassConstructor('AudioEffectDelay'));
  }

  static final Pointer<Void> _mb_set_dry =
      resolveMethodBind('AudioEffectDelay', 'set_dry', 373806689);

  void setDry(double amount) {
    final arg0 = malloc<Double>()..value = amount;
    try {
      ptrcallVoid(_mb_set_dry, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_dry =
      resolveMethodBind('AudioEffectDelay', 'get_dry', 191475506);

  double getDry() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_dry, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_tap1_active =
      resolveMethodBind('AudioEffectDelay', 'set_tap1_active', 2586408642);

  void setTap1Active(bool amount) {
    final arg0 = malloc<Uint8>()..value = amount ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_tap1_active, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_tap1_active =
      resolveMethodBind('AudioEffectDelay', 'is_tap1_active', 36873697);

  bool isTap1Active() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_tap1_active, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_tap1_delay_ms =
      resolveMethodBind('AudioEffectDelay', 'set_tap1_delay_ms', 373806689);

  void setTap1DelayMs(double amount) {
    final arg0 = malloc<Double>()..value = amount;
    try {
      ptrcallVoid(_mb_set_tap1_delay_ms, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_tap1_delay_ms =
      resolveMethodBind('AudioEffectDelay', 'get_tap1_delay_ms', 1740695150);

  double getTap1DelayMs() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_tap1_delay_ms, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_tap1_level_db =
      resolveMethodBind('AudioEffectDelay', 'set_tap1_level_db', 373806689);

  void setTap1LevelDb(double amount) {
    final arg0 = malloc<Double>()..value = amount;
    try {
      ptrcallVoid(_mb_set_tap1_level_db, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_tap1_level_db =
      resolveMethodBind('AudioEffectDelay', 'get_tap1_level_db', 1740695150);

  double getTap1LevelDb() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_tap1_level_db, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_tap1_pan =
      resolveMethodBind('AudioEffectDelay', 'set_tap1_pan', 373806689);

  void setTap1Pan(double amount) {
    final arg0 = malloc<Double>()..value = amount;
    try {
      ptrcallVoid(_mb_set_tap1_pan, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_tap1_pan =
      resolveMethodBind('AudioEffectDelay', 'get_tap1_pan', 1740695150);

  double getTap1Pan() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_tap1_pan, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_tap2_active =
      resolveMethodBind('AudioEffectDelay', 'set_tap2_active', 2586408642);

  void setTap2Active(bool amount) {
    final arg0 = malloc<Uint8>()..value = amount ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_tap2_active, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_tap2_active =
      resolveMethodBind('AudioEffectDelay', 'is_tap2_active', 36873697);

  bool isTap2Active() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_tap2_active, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_tap2_delay_ms =
      resolveMethodBind('AudioEffectDelay', 'set_tap2_delay_ms', 373806689);

  void setTap2DelayMs(double amount) {
    final arg0 = malloc<Double>()..value = amount;
    try {
      ptrcallVoid(_mb_set_tap2_delay_ms, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_tap2_delay_ms =
      resolveMethodBind('AudioEffectDelay', 'get_tap2_delay_ms', 1740695150);

  double getTap2DelayMs() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_tap2_delay_ms, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_tap2_level_db =
      resolveMethodBind('AudioEffectDelay', 'set_tap2_level_db', 373806689);

  void setTap2LevelDb(double amount) {
    final arg0 = malloc<Double>()..value = amount;
    try {
      ptrcallVoid(_mb_set_tap2_level_db, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_tap2_level_db =
      resolveMethodBind('AudioEffectDelay', 'get_tap2_level_db', 1740695150);

  double getTap2LevelDb() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_tap2_level_db, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_tap2_pan =
      resolveMethodBind('AudioEffectDelay', 'set_tap2_pan', 373806689);

  void setTap2Pan(double amount) {
    final arg0 = malloc<Double>()..value = amount;
    try {
      ptrcallVoid(_mb_set_tap2_pan, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_tap2_pan =
      resolveMethodBind('AudioEffectDelay', 'get_tap2_pan', 1740695150);

  double getTap2Pan() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_tap2_pan, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_feedback_active =
      resolveMethodBind('AudioEffectDelay', 'set_feedback_active', 2586408642);

  void setFeedbackActive(bool amount) {
    final arg0 = malloc<Uint8>()..value = amount ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_feedback_active, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_feedback_active =
      resolveMethodBind('AudioEffectDelay', 'is_feedback_active', 36873697);

  bool isFeedbackActive() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_feedback_active, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_feedback_delay_ms =
      resolveMethodBind('AudioEffectDelay', 'set_feedback_delay_ms', 373806689);

  void setFeedbackDelayMs(double amount) {
    final arg0 = malloc<Double>()..value = amount;
    try {
      ptrcallVoid(_mb_set_feedback_delay_ms, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_feedback_delay_ms =
      resolveMethodBind('AudioEffectDelay', 'get_feedback_delay_ms', 1740695150);

  double getFeedbackDelayMs() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_feedback_delay_ms, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_feedback_level_db =
      resolveMethodBind('AudioEffectDelay', 'set_feedback_level_db', 373806689);

  void setFeedbackLevelDb(double amount) {
    final arg0 = malloc<Double>()..value = amount;
    try {
      ptrcallVoid(_mb_set_feedback_level_db, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_feedback_level_db =
      resolveMethodBind('AudioEffectDelay', 'get_feedback_level_db', 1740695150);

  double getFeedbackLevelDb() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_feedback_level_db, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_feedback_lowpass =
      resolveMethodBind('AudioEffectDelay', 'set_feedback_lowpass', 373806689);

  void setFeedbackLowpass(double amount) {
    final arg0 = malloc<Double>()..value = amount;
    try {
      ptrcallVoid(_mb_set_feedback_lowpass, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_feedback_lowpass =
      resolveMethodBind('AudioEffectDelay', 'get_feedback_lowpass', 1740695150);

  double getFeedbackLowpass() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_feedback_lowpass, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
