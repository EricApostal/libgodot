import 'dart:ffi';
import 'dart:math';

import 'package:ffi/ffi.dart';
import 'package:godot_dart/godot_dart.dart';

part 'orbiting_body.g.dart';

/// A Dart-authored GDExtension class that orbits around its parent's origin
/// in the XZ plane while spinning on its own axis - entirely computed in
/// Dart every frame via `process`, no GDScript involved.
@GodotClass()
class OrbitingBody extends MeshInstance3D {
  OrbitingBody(super.nativePtr);

  double radius = 2.0;
  double orbitSpeed = 1.0;
  double spinSpeed = 2.0;
  double verticalOffset = 0.0;
  double _angle = 0.0;

  @override
  void process(double delta) {
    _angle += orbitSpeed * delta;
    setPosition(Vector3(radius * cos(_angle), verticalOffset, radius * sin(_angle)));
    rotateY(delta * spinSpeed);
  }
}
