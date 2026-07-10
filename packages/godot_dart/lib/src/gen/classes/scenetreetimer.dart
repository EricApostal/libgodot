// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class SceneTreeTimer extends RefCounted {
  SceneTreeTimer(super.nativePtr);

  static final Pointer<Void> _mb_set_time_left =
      resolveMethodBind('SceneTreeTimer', 'set_time_left', 373806689);

  void setTimeLeft(double time) {
    final arg0 = malloc<Double>()..value = time;
    try {
      ptrcallVoid(_mb_set_time_left, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_time_left =
      resolveMethodBind('SceneTreeTimer', 'get_time_left', 1740695150);

  double getTimeLeft() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_time_left, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
