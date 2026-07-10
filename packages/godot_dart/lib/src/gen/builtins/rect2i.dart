// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'vector2i.dart';

final class Rect2i {
  const Rect2i(this.position, this.size);

  final Vector2i position;
  final Vector2i size;

  static const int nativeSize = 16;

  static Rect2i readFrom(Pointer<Uint8> buf, int offset) {
    return Rect2i(
      Vector2i.readFrom(buf, offset + 0),
      Vector2i.readFrom(buf, offset + 8),
    );
  }

  void writeTo(Pointer<Uint8> buf, int offset) {
    position.writeTo(buf, offset + 0);
    size.writeTo(buf, offset + 8);
  }
}
