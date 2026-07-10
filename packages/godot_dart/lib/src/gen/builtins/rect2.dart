// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'vector2.dart';

final class Rect2 {
  const Rect2(this.position, this.size);

  final Vector2 position;
  final Vector2 size;

  static const int nativeSize = 16;

  static Rect2 readFrom(Pointer<Uint8> buf, int offset) {
    return Rect2(
      Vector2.readFrom(buf, offset + 0),
      Vector2.readFrom(buf, offset + 8),
    );
  }

  void writeTo(Pointer<Uint8> buf, int offset) {
    position.writeTo(buf, offset + 0);
    size.writeTo(buf, offset + 8);
  }
}
