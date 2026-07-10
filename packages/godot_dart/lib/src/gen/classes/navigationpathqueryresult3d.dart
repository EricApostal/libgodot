// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class NavigationPathQueryResult3D extends RefCounted {
  NavigationPathQueryResult3D(super.nativePtr);

  // Skipped set_path(): an argument type is unsupported.
  // Skipped get_path(): unsupported return type "PackedVector3Array".
  // Skipped set_path_types(): an argument type is unsupported.
  // Skipped get_path_types(): unsupported return type "PackedInt32Array".
  // Skipped set_path_rids(): an argument type is unsupported.
  // Skipped get_path_rids(): unsupported return type "typedarray::RID".
  // Skipped set_path_owner_ids(): an argument type is unsupported.
  // Skipped get_path_owner_ids(): unsupported return type "PackedInt64Array".
  static final Pointer<Void> _mb_set_path_length =
      resolveMethodBind('NavigationPathQueryResult3D', 'set_path_length', 373806689);

  void setPathLength(double length) {
    final arg0 = malloc<Double>()..value = length;
    try {
      ptrcallVoid(_mb_set_path_length, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_path_length =
      resolveMethodBind('NavigationPathQueryResult3D', 'get_path_length', 1740695150);

  double getPathLength() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_path_length, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_reset =
      resolveMethodBind('NavigationPathQueryResult3D', 'reset', 3218959716);

  void reset() {
    try {
      ptrcallVoid(_mb_reset, nativePtr, []);
    } finally {
    }
  }

}
