// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class AudioEffectChorus extends AudioEffect {
  AudioEffectChorus(super.nativePtr);

  static final Pointer<Void> _mb_set_voice_count =
      resolveMethodBind('AudioEffectChorus', 'set_voice_count', 1286410249);

  void setVoiceCount(int voices) {
    final arg0 = malloc<Int64>()..value = voices;
    try {
      ptrcallVoid(_mb_set_voice_count, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_voice_count =
      resolveMethodBind('AudioEffectChorus', 'get_voice_count', 3905245786);

  int getVoiceCount() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_voice_count, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_voice_delay_ms =
      resolveMethodBind('AudioEffectChorus', 'set_voice_delay_ms', 1602489585);

  void setVoiceDelayMs(int voiceIdx, double delayMs) {
    final arg0 = malloc<Int64>()..value = voiceIdx;
    final arg1 = malloc<Double>()..value = delayMs;
    try {
      ptrcallVoid(_mb_set_voice_delay_ms, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_voice_delay_ms =
      resolveMethodBind('AudioEffectChorus', 'get_voice_delay_ms', 2339986948);

  double getVoiceDelayMs(int voiceIdx) {
    final arg0 = malloc<Int64>()..value = voiceIdx;
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_voice_delay_ms, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_voice_rate_hz =
      resolveMethodBind('AudioEffectChorus', 'set_voice_rate_hz', 1602489585);

  void setVoiceRateHz(int voiceIdx, double rateHz) {
    final arg0 = malloc<Int64>()..value = voiceIdx;
    final arg1 = malloc<Double>()..value = rateHz;
    try {
      ptrcallVoid(_mb_set_voice_rate_hz, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_voice_rate_hz =
      resolveMethodBind('AudioEffectChorus', 'get_voice_rate_hz', 2339986948);

  double getVoiceRateHz(int voiceIdx) {
    final arg0 = malloc<Int64>()..value = voiceIdx;
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_voice_rate_hz, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_voice_depth_ms =
      resolveMethodBind('AudioEffectChorus', 'set_voice_depth_ms', 1602489585);

  void setVoiceDepthMs(int voiceIdx, double depthMs) {
    final arg0 = malloc<Int64>()..value = voiceIdx;
    final arg1 = malloc<Double>()..value = depthMs;
    try {
      ptrcallVoid(_mb_set_voice_depth_ms, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_voice_depth_ms =
      resolveMethodBind('AudioEffectChorus', 'get_voice_depth_ms', 2339986948);

  double getVoiceDepthMs(int voiceIdx) {
    final arg0 = malloc<Int64>()..value = voiceIdx;
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_voice_depth_ms, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_voice_level_db =
      resolveMethodBind('AudioEffectChorus', 'set_voice_level_db', 1602489585);

  void setVoiceLevelDb(int voiceIdx, double levelDb) {
    final arg0 = malloc<Int64>()..value = voiceIdx;
    final arg1 = malloc<Double>()..value = levelDb;
    try {
      ptrcallVoid(_mb_set_voice_level_db, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_voice_level_db =
      resolveMethodBind('AudioEffectChorus', 'get_voice_level_db', 2339986948);

  double getVoiceLevelDb(int voiceIdx) {
    final arg0 = malloc<Int64>()..value = voiceIdx;
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_voice_level_db, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_voice_cutoff_hz =
      resolveMethodBind('AudioEffectChorus', 'set_voice_cutoff_hz', 1602489585);

  void setVoiceCutoffHz(int voiceIdx, double cutoffHz) {
    final arg0 = malloc<Int64>()..value = voiceIdx;
    final arg1 = malloc<Double>()..value = cutoffHz;
    try {
      ptrcallVoid(_mb_set_voice_cutoff_hz, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_voice_cutoff_hz =
      resolveMethodBind('AudioEffectChorus', 'get_voice_cutoff_hz', 2339986948);

  double getVoiceCutoffHz(int voiceIdx) {
    final arg0 = malloc<Int64>()..value = voiceIdx;
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_voice_cutoff_hz, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_voice_pan =
      resolveMethodBind('AudioEffectChorus', 'set_voice_pan', 1602489585);

  void setVoicePan(int voiceIdx, double pan) {
    final arg0 = malloc<Int64>()..value = voiceIdx;
    final arg1 = malloc<Double>()..value = pan;
    try {
      ptrcallVoid(_mb_set_voice_pan, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_voice_pan =
      resolveMethodBind('AudioEffectChorus', 'get_voice_pan', 2339986948);

  double getVoicePan(int voiceIdx) {
    final arg0 = malloc<Int64>()..value = voiceIdx;
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_voice_pan, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_wet =
      resolveMethodBind('AudioEffectChorus', 'set_wet', 373806689);

  void setWet(double amount) {
    final arg0 = malloc<Double>()..value = amount;
    try {
      ptrcallVoid(_mb_set_wet, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_wet =
      resolveMethodBind('AudioEffectChorus', 'get_wet', 1740695150);

  double getWet() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_wet, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_dry =
      resolveMethodBind('AudioEffectChorus', 'set_dry', 373806689);

  void setDry(double amount) {
    final arg0 = malloc<Double>()..value = amount;
    try {
      ptrcallVoid(_mb_set_dry, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_dry =
      resolveMethodBind('AudioEffectChorus', 'get_dry', 1740695150);

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

}
