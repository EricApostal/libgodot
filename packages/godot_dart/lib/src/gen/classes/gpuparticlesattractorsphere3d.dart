// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class GPUParticlesAttractorSphere3D extends GPUParticlesAttractor3D {
  GPUParticlesAttractorSphere3D(super.nativePtr);

  /// Constructs a brand-new engine-owned GPUParticlesAttractorSphere3D instance
  /// (via classdb_construct_object3), not an existing one.
  factory GPUParticlesAttractorSphere3D.create() {
    return GPUParticlesAttractorSphere3D(resolveClassConstructor('GPUParticlesAttractorSphere3D'));
  }

  static final Pointer<Void> _mb_set_radius =
      resolveMethodBind('GPUParticlesAttractorSphere3D', 'set_radius', 373806689);

  void setRadius(double radius) {
    final arg0 = malloc<Double>()..value = radius;
    try {
      ptrcallVoid(_mb_set_radius, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_radius =
      resolveMethodBind('GPUParticlesAttractorSphere3D', 'get_radius', 1740695150);

  double getRadius() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_radius, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
