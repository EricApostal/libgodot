// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class AudioEffectReverb extends AudioEffect {
  AudioEffectReverb(super.nativePtr);

  static final Pointer<Void> _mb_set_predelay_msec =
      resolveMethodBind('AudioEffectReverb', 'set_predelay_msec', 373806689);

  void setPredelayMsec(double msec) {
    final arg0 = malloc<Double>()..value = msec;
    try {
      ptrcallVoid(_mb_set_predelay_msec, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_predelay_msec =
      resolveMethodBind('AudioEffectReverb', 'get_predelay_msec', 1740695150);

  double getPredelayMsec() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_predelay_msec, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_predelay_feedback =
      resolveMethodBind('AudioEffectReverb', 'set_predelay_feedback', 373806689);

  void setPredelayFeedback(double feedback) {
    final arg0 = malloc<Double>()..value = feedback;
    try {
      ptrcallVoid(_mb_set_predelay_feedback, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_predelay_feedback =
      resolveMethodBind('AudioEffectReverb', 'get_predelay_feedback', 1740695150);

  double getPredelayFeedback() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_predelay_feedback, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_room_size =
      resolveMethodBind('AudioEffectReverb', 'set_room_size', 373806689);

  void setRoomSize(double size) {
    final arg0 = malloc<Double>()..value = size;
    try {
      ptrcallVoid(_mb_set_room_size, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_room_size =
      resolveMethodBind('AudioEffectReverb', 'get_room_size', 1740695150);

  double getRoomSize() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_room_size, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_damping =
      resolveMethodBind('AudioEffectReverb', 'set_damping', 373806689);

  void setDamping(double amount) {
    final arg0 = malloc<Double>()..value = amount;
    try {
      ptrcallVoid(_mb_set_damping, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_damping =
      resolveMethodBind('AudioEffectReverb', 'get_damping', 1740695150);

  double getDamping() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_damping, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_spread =
      resolveMethodBind('AudioEffectReverb', 'set_spread', 373806689);

  void setSpread(double amount) {
    final arg0 = malloc<Double>()..value = amount;
    try {
      ptrcallVoid(_mb_set_spread, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_spread =
      resolveMethodBind('AudioEffectReverb', 'get_spread', 1740695150);

  double getSpread() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_spread, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_dry =
      resolveMethodBind('AudioEffectReverb', 'set_dry', 373806689);

  void setDry(double amount) {
    final arg0 = malloc<Double>()..value = amount;
    try {
      ptrcallVoid(_mb_set_dry, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_dry =
      resolveMethodBind('AudioEffectReverb', 'get_dry', 1740695150);

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

  static final Pointer<Void> _mb_set_wet =
      resolveMethodBind('AudioEffectReverb', 'set_wet', 373806689);

  void setWet(double amount) {
    final arg0 = malloc<Double>()..value = amount;
    try {
      ptrcallVoid(_mb_set_wet, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_wet =
      resolveMethodBind('AudioEffectReverb', 'get_wet', 1740695150);

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

  static final Pointer<Void> _mb_set_hpf =
      resolveMethodBind('AudioEffectReverb', 'set_hpf', 373806689);

  void setHpf(double amount) {
    final arg0 = malloc<Double>()..value = amount;
    try {
      ptrcallVoid(_mb_set_hpf, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_hpf =
      resolveMethodBind('AudioEffectReverb', 'get_hpf', 1740695150);

  double getHpf() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_hpf, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
