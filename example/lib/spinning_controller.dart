import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:godot_dart/godot_dart.dart';

part 'spinning_controller.g.dart';

/// A Dart-authored GDExtension class: registered with the engine as a real
/// class (parent "MeshInstance3D"), instantiable both from a `.tscn` via
/// `type="SpinningController"` and dynamically at runtime from other Dart
/// code (see `InstanceRegistry.constructAndWrap`, used by [SceneRoot] to
/// spawn several of these). `_process` is called by the engine every frame
/// exactly like a GDScript `_process` override would be.
@GodotClass()
class SpinningController extends MeshInstance3D {
  SpinningController(super.nativePtr);

  /// Radians/second around Y; settable by whoever constructs this (e.g.
  /// [SceneRoot]) right after creation, since it's a plain Dart field.
  double yawSpeed = 1.0;
  double rollSpeed = 0.6;

  void _process(double delta) {
    rotateY(delta * yawSpeed);
    rotateX(delta * rollSpeed);
  }
}
