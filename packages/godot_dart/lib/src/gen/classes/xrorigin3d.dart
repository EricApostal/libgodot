// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class XROrigin3D extends Node3D {
  XROrigin3D(super.nativePtr);

  static final Pointer<Void> _mb_set_world_scale =
      resolveMethodBind('XROrigin3D', 'set_world_scale', 373806689);

  void setWorldScale(double worldScale) {
    final arg0 = malloc<Double>()..value = worldScale;
    try {
      ptrcallVoid(_mb_set_world_scale, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_world_scale =
      resolveMethodBind('XROrigin3D', 'get_world_scale', 1740695150);

  double getWorldScale() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_world_scale, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_current =
      resolveMethodBind('XROrigin3D', 'set_current', 2586408642);

  void setCurrent(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_current, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_current =
      resolveMethodBind('XROrigin3D', 'is_current', 36873697);

  bool isCurrent() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_current, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
