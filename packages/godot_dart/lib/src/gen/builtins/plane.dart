// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'vector3.dart';

final class Plane {
  const Plane(this.normal, this.d);

  final Vector3 normal;
  final double d;

  static const int nativeSize = 16;

  static Plane readFrom(Pointer<Uint8> buf, int offset) {
    return Plane(
      Vector3.readFrom(buf, offset + 0),
      (buf + offset + 12).cast<Float>().value,
    );
  }

  void writeTo(Pointer<Uint8> buf, int offset) {
    normal.writeTo(buf, offset + 0);
    (buf + offset + 12).cast<Float>().value = d;
  }
}
