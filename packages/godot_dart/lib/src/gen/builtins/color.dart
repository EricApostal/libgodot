// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';


final class Color {
  const Color(this.r, this.g, this.b, this.a);

  final double r;
  final double g;
  final double b;
  final double a;

  static const int nativeSize = 16;

  static Color readFrom(Pointer<Uint8> buf, int offset) {
    return Color(
      (buf + offset + 0).cast<Float>().value,
      (buf + offset + 4).cast<Float>().value,
      (buf + offset + 8).cast<Float>().value,
      (buf + offset + 12).cast<Float>().value,
    );
  }

  void writeTo(Pointer<Uint8> buf, int offset) {
    (buf + offset + 0).cast<Float>().value = r;
    (buf + offset + 4).cast<Float>().value = g;
    (buf + offset + 8).cast<Float>().value = b;
    (buf + offset + 12).cast<Float>().value = a;
  }
}
