// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'vector3.dart';

final class AABB {
  const AABB(this.position, this.size);

  final Vector3 position;
  final Vector3 size;

  static const int nativeSize = 24;

  static AABB readFrom(Pointer<Uint8> buf, int offset) {
    return AABB(
      Vector3.readFrom(buf, offset + 0),
      Vector3.readFrom(buf, offset + 12),
    );
  }

  void writeTo(Pointer<Uint8> buf, int offset) {
    position.writeTo(buf, offset + 0);
    size.writeTo(buf, offset + 12);
  }
}
