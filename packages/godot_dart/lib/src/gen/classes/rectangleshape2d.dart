// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class RectangleShape2D extends Shape2D {
  RectangleShape2D(super.nativePtr);

  /// Constructs a brand-new engine-owned RectangleShape2D instance
  /// (via classdb_construct_object3), not an existing one.
  factory RectangleShape2D.create() {
    return RectangleShape2D(resolveClassConstructor('RectangleShape2D'));
  }

  static final Pointer<Void> _mb_set_size =
      resolveMethodBind('RectangleShape2D', 'set_size', 743155724);

  void setSize(Vector2 size) {
    final arg0 = malloc<Uint8>(Vector2.nativeSize);
    size.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_size, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_size =
      resolveMethodBind('RectangleShape2D', 'get_size', 3341600327);

  Vector2 getSize() {
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_size, nativePtr, [], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
