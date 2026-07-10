// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class OccluderPolygon2D extends Resource {
  OccluderPolygon2D(super.nativePtr);

  static final Pointer<Void> _mb_set_closed =
      resolveMethodBind('OccluderPolygon2D', 'set_closed', 2586408642);

  void setClosed(bool closed) {
    final arg0 = malloc<Uint8>()..value = closed ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_closed, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_closed =
      resolveMethodBind('OccluderPolygon2D', 'is_closed', 36873697);

  bool isClosed() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_closed, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_cull_mode =
      resolveMethodBind('OccluderPolygon2D', 'set_cull_mode', 3500863002);

  void setCullMode(int cullMode) {
    final arg0 = malloc<Int64>()..value = cullMode;
    try {
      ptrcallVoid(_mb_set_cull_mode, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_cull_mode =
      resolveMethodBind('OccluderPolygon2D', 'get_cull_mode', 33931036);

  int getCullMode() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_cull_mode, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  // Skipped set_polygon(): an argument type is unsupported.
  // Skipped get_polygon(): unsupported return type "PackedVector2Array".
}
