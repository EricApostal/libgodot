// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'vector2.dart';

final class Transform2D {
  const Transform2D(this.x, this.y, this.origin);

  final Vector2 x;
  final Vector2 y;
  final Vector2 origin;

  static const int nativeSize = 24;

  static Transform2D readFrom(Pointer<Uint8> buf, int offset) {
    return Transform2D(
      Vector2.readFrom(buf, offset + 0),
      Vector2.readFrom(buf, offset + 8),
      Vector2.readFrom(buf, offset + 16),
    );
  }

  void writeTo(Pointer<Uint8> buf, int offset) {
    x.writeTo(buf, offset + 0);
    y.writeTo(buf, offset + 8);
    origin.writeTo(buf, offset + 16);
  }
}
