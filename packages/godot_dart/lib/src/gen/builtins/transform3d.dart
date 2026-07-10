// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'basis.dart';
import 'vector3.dart';

final class Transform3D {
  const Transform3D(this.basis, this.origin);

  final Basis basis;
  final Vector3 origin;

  static const int nativeSize = 48;

  static Transform3D readFrom(Pointer<Uint8> buf, int offset) {
    return Transform3D(
      Basis.readFrom(buf, offset + 0),
      Vector3.readFrom(buf, offset + 36),
    );
  }

  void writeTo(Pointer<Uint8> buf, int offset) {
    basis.writeTo(buf, offset + 0);
    origin.writeTo(buf, offset + 36);
  }
}
