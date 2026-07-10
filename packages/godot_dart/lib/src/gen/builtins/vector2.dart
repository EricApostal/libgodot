// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';


final class Vector2 {
  const Vector2(this.x, this.y);

  final double x;
  final double y;

  static const int nativeSize = 8;

  static Vector2 readFrom(Pointer<Uint8> buf, int offset) {
    return Vector2(
      (buf + offset + 0).cast<Float>().value,
      (buf + offset + 4).cast<Float>().value,
    );
  }

  void writeTo(Pointer<Uint8> buf, int offset) {
    (buf + offset + 0).cast<Float>().value = x;
    (buf + offset + 4).cast<Float>().value = y;
  }
}
