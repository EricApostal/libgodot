// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class AudioEffectDistortion extends AudioEffect {
  AudioEffectDistortion(super.nativePtr);

  static final Pointer<Void> _mb_set_mode =
      resolveMethodBind('AudioEffectDistortion', 'set_mode', 1314744793);

  void setMode(int mode) {
    final arg0 = malloc<Int64>()..value = mode;
    try {
      ptrcallVoid(_mb_set_mode, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_mode =
      resolveMethodBind('AudioEffectDistortion', 'get_mode', 809118343);

  int getMode() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_mode, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_pre_gain =
      resolveMethodBind('AudioEffectDistortion', 'set_pre_gain', 373806689);

  void setPreGain(double preGain) {
    final arg0 = malloc<Double>()..value = preGain;
    try {
      ptrcallVoid(_mb_set_pre_gain, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_pre_gain =
      resolveMethodBind('AudioEffectDistortion', 'get_pre_gain', 1740695150);

  double getPreGain() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_pre_gain, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_keep_hf_hz =
      resolveMethodBind('AudioEffectDistortion', 'set_keep_hf_hz', 373806689);

  void setKeepHfHz(double keepHfHz) {
    final arg0 = malloc<Double>()..value = keepHfHz;
    try {
      ptrcallVoid(_mb_set_keep_hf_hz, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_keep_hf_hz =
      resolveMethodBind('AudioEffectDistortion', 'get_keep_hf_hz', 1740695150);

  double getKeepHfHz() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_keep_hf_hz, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_drive =
      resolveMethodBind('AudioEffectDistortion', 'set_drive', 373806689);

  void setDrive(double drive) {
    final arg0 = malloc<Double>()..value = drive;
    try {
      ptrcallVoid(_mb_set_drive, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_drive =
      resolveMethodBind('AudioEffectDistortion', 'get_drive', 1740695150);

  double getDrive() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_drive, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_post_gain =
      resolveMethodBind('AudioEffectDistortion', 'set_post_gain', 373806689);

  void setPostGain(double postGain) {
    final arg0 = malloc<Double>()..value = postGain;
    try {
      ptrcallVoid(_mb_set_post_gain, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_post_gain =
      resolveMethodBind('AudioEffectDistortion', 'get_post_gain', 1740695150);

  double getPostGain() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_post_gain, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
