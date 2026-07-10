// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class Marker2D extends Node2D {
  Marker2D(super.nativePtr);

  static final Pointer<Void> _mb_set_gizmo_extents =
      resolveMethodBind('Marker2D', 'set_gizmo_extents', 373806689);

  void setGizmoExtents(double extents) {
    final arg0 = malloc<Double>()..value = extents;
    try {
      ptrcallVoid(_mb_set_gizmo_extents, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_gizmo_extents =
      resolveMethodBind('Marker2D', 'get_gizmo_extents', 1740695150);

  double getGizmoExtents() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_gizmo_extents, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
