// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'vector3.dart';

final class Basis {
  const Basis(this.x, this.y, this.z);

  final Vector3 x;
  final Vector3 y;
  final Vector3 z;

  static const int nativeSize = 36;

  static Basis readFrom(Pointer<Uint8> buf, int offset) {
    return Basis(
      Vector3.readFrom(buf, offset + 0),
      Vector3.readFrom(buf, offset + 12),
      Vector3.readFrom(buf, offset + 24),
    );
  }

  void writeTo(Pointer<Uint8> buf, int offset) {
    x.writeTo(buf, offset + 0);
    y.writeTo(buf, offset + 12);
    z.writeTo(buf, offset + 24);
  }
}
