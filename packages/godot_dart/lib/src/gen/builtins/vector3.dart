// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';


final class Vector3 {
  const Vector3(this.x, this.y, this.z);

  final double x;
  final double y;
  final double z;

  static const int nativeSize = 12;

  static Vector3 readFrom(Pointer<Uint8> buf, int offset) {
    return Vector3(
      (buf + offset + 0).cast<Float>().value,
      (buf + offset + 4).cast<Float>().value,
      (buf + offset + 8).cast<Float>().value,
    );
  }

  void writeTo(Pointer<Uint8> buf, int offset) {
    (buf + offset + 0).cast<Float>().value = x;
    (buf + offset + 4).cast<Float>().value = y;
    (buf + offset + 8).cast<Float>().value = z;
  }
}
