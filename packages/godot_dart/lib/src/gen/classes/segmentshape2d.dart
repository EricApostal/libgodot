// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class SegmentShape2D extends Shape2D {
  SegmentShape2D(super.nativePtr);

  static final Pointer<Void> _mb_set_a =
      resolveMethodBind('SegmentShape2D', 'set_a', 743155724);

  void setA(Vector2 a) {
    final arg0 = malloc<Uint8>(Vector2.nativeSize);
    a.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_a, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_a =
      resolveMethodBind('SegmentShape2D', 'get_a', 3341600327);

  Vector2 getA() {
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_a, nativePtr, [], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_b =
      resolveMethodBind('SegmentShape2D', 'set_b', 743155724);

  void setB(Vector2 b) {
    final arg0 = malloc<Uint8>(Vector2.nativeSize);
    b.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_b, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_b =
      resolveMethodBind('SegmentShape2D', 'get_b', 3341600327);

  Vector2 getB() {
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_b, nativePtr, [], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
