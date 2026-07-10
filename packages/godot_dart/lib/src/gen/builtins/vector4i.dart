// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';


final class Vector4i {
  const Vector4i(this.x, this.y, this.z, this.w);

  final int x;
  final int y;
  final int z;
  final int w;

  static const int nativeSize = 16;

  static Vector4i readFrom(Pointer<Uint8> buf, int offset) {
    return Vector4i(
      (buf + offset + 0).cast<Int32>().value,
      (buf + offset + 4).cast<Int32>().value,
      (buf + offset + 8).cast<Int32>().value,
      (buf + offset + 12).cast<Int32>().value,
    );
  }

  void writeTo(Pointer<Uint8> buf, int offset) {
    (buf + offset + 0).cast<Int32>().value = x;
    (buf + offset + 4).cast<Int32>().value = y;
    (buf + offset + 8).cast<Int32>().value = z;
    (buf + offset + 12).cast<Int32>().value = w;
  }
}
