import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:godot_dart/godot_dart.dart';

part 'spinning_controller.g.dart';

/// A Dart-authored GDExtension class: registered with the engine as a real
/// class (parent "MeshInstance3D", inherited from extending the generated
/// [MeshInstance3D] wrapper), instantiable from a `.tscn` via
/// `type="SpinningController"`, with `_process` called by the engine every
/// frame exactly like a GDScript `_process` override would be.
///
/// This replaces the demo project's GDScript-driven spin (see
/// assets/godot_project/main.tscn) to prove the round trip: Dart code
/// driving a live node in the embedded scene tree.
@GodotClass()
class SpinningController extends MeshInstance3D {
  SpinningController(super.nativePtr);

  int _frameCount = 0;

  void _process(double delta) {
    rotateY(delta);
    rotateX(delta * 0.6);

    _frameCount++;
    if (_frameCount % 60 == 0) {
      // ignore: avoid_print
      print('SpinningController._process: frame $_frameCount, delta=$delta');
    }
  }
}
