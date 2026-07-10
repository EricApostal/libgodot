// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class PhysicalBoneSimulator3D extends SkeletonModifier3D {
  PhysicalBoneSimulator3D(super.nativePtr);

  static final Pointer<Void> _mb_is_simulating_physics =
      resolveMethodBind('PhysicalBoneSimulator3D', 'is_simulating_physics', 36873697);

  bool isSimulatingPhysics() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_simulating_physics, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_physical_bones_stop_simulation =
      resolveMethodBind('PhysicalBoneSimulator3D', 'physical_bones_stop_simulation', 3218959716);

  void physicalBonesStopSimulation() {
    try {
      ptrcallVoid(_mb_physical_bones_stop_simulation, nativePtr, []);
    } finally {
    }
  }

  // Skipped physical_bones_start_simulation(): an argument type is unsupported.
  // Skipped physical_bones_add_collision_exception(): an argument type is unsupported.
  // Skipped physical_bones_remove_collision_exception(): an argument type is unsupported.
}
