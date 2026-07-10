// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class DirectionalLight2D extends Light2D {
  DirectionalLight2D(super.nativePtr);

  static final Pointer<Void> _mb_set_max_distance =
      resolveMethodBind('DirectionalLight2D', 'set_max_distance', 373806689);

  void setMaxDistance(double pixels) {
    final arg0 = malloc<Double>()..value = pixels;
    try {
      ptrcallVoid(_mb_set_max_distance, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_max_distance =
      resolveMethodBind('DirectionalLight2D', 'get_max_distance', 1740695150);

  double getMaxDistance() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_max_distance, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
