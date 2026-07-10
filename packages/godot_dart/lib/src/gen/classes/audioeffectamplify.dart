// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class AudioEffectAmplify extends AudioEffect {
  AudioEffectAmplify(super.nativePtr);

  static final Pointer<Void> _mb_set_volume_db =
      resolveMethodBind('AudioEffectAmplify', 'set_volume_db', 373806689);

  void setVolumeDb(double volume) {
    final arg0 = malloc<Double>()..value = volume;
    try {
      ptrcallVoid(_mb_set_volume_db, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_volume_db =
      resolveMethodBind('AudioEffectAmplify', 'get_volume_db', 1740695150);

  double getVolumeDb() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_volume_db, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_volume_linear =
      resolveMethodBind('AudioEffectAmplify', 'set_volume_linear', 373806689);

  void setVolumeLinear(double volume) {
    final arg0 = malloc<Double>()..value = volume;
    try {
      ptrcallVoid(_mb_set_volume_linear, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_volume_linear =
      resolveMethodBind('AudioEffectAmplify', 'get_volume_linear', 1740695150);

  double getVolumeLinear() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_volume_linear, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
