// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';


final class Vector2i {
  const Vector2i(this.x, this.y);

  final int x;
  final int y;

  static const int nativeSize = 8;

  static Vector2i readFrom(Pointer<Uint8> buf, int offset) {
    return Vector2i(
      (buf + offset + 0).cast<Int32>().value,
      (buf + offset + 4).cast<Int32>().value,
    );
  }

  void writeTo(Pointer<Uint8> buf, int offset) {
    (buf + offset + 0).cast<Int32>().value = x;
    (buf + offset + 4).cast<Int32>().value = y;
  }
}
