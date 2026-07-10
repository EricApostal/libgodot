// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class AudioEffectPanner extends AudioEffect {
  AudioEffectPanner(super.nativePtr);

  static final Pointer<Void> _mb_set_pan =
      resolveMethodBind('AudioEffectPanner', 'set_pan', 373806689);

  void setPan(double cpanume) {
    final arg0 = malloc<Double>()..value = cpanume;
    try {
      ptrcallVoid(_mb_set_pan, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_pan =
      resolveMethodBind('AudioEffectPanner', 'get_pan', 1740695150);

  double getPan() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_pan, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
