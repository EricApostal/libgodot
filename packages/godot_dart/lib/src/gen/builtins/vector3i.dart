// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';


final class Vector3i {
  const Vector3i(this.x, this.y, this.z);

  final int x;
  final int y;
  final int z;

  static const int nativeSize = 12;

  static Vector3i readFrom(Pointer<Uint8> buf, int offset) {
    return Vector3i(
      (buf + offset + 0).cast<Int32>().value,
      (buf + offset + 4).cast<Int32>().value,
      (buf + offset + 8).cast<Int32>().value,
    );
  }

  void writeTo(Pointer<Uint8> buf, int offset) {
    (buf + offset + 0).cast<Int32>().value = x;
    (buf + offset + 4).cast<Int32>().value = y;
    (buf + offset + 8).cast<Int32>().value = z;
  }
}
