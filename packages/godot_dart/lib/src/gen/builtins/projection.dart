// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'vector4.dart';

final class Projection {
  const Projection(this.x, this.y, this.z, this.w);

  final Vector4 x;
  final Vector4 y;
  final Vector4 z;
  final Vector4 w;

  static const int nativeSize = 64;

  static Projection readFrom(Pointer<Uint8> buf, int offset) {
    return Projection(
      Vector4.readFrom(buf, offset + 0),
      Vector4.readFrom(buf, offset + 16),
      Vector4.readFrom(buf, offset + 32),
      Vector4.readFrom(buf, offset + 48),
    );
  }

  void writeTo(Pointer<Uint8> buf, int offset) {
    x.writeTo(buf, offset + 0);
    y.writeTo(buf, offset + 16);
    z.writeTo(buf, offset + 32);
    w.writeTo(buf, offset + 48);
  }
}
