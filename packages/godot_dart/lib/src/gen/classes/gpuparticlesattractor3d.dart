// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class GPUParticlesAttractor3D extends VisualInstance3D {
  GPUParticlesAttractor3D(super.nativePtr);

  static final Pointer<Void> _mb_set_cull_mask =
      resolveMethodBind('GPUParticlesAttractor3D', 'set_cull_mask', 1286410249);

  void setCullMask(int mask) {
    final arg0 = malloc<Int64>()..value = mask;
    try {
      ptrcallVoid(_mb_set_cull_mask, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_cull_mask =
      resolveMethodBind('GPUParticlesAttractor3D', 'get_cull_mask', 3905245786);

  int getCullMask() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_cull_mask, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_strength =
      resolveMethodBind('GPUParticlesAttractor3D', 'set_strength', 373806689);

  void setStrength(double strength) {
    final arg0 = malloc<Double>()..value = strength;
    try {
      ptrcallVoid(_mb_set_strength, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_strength =
      resolveMethodBind('GPUParticlesAttractor3D', 'get_strength', 1740695150);

  double getStrength() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_strength, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_attenuation =
      resolveMethodBind('GPUParticlesAttractor3D', 'set_attenuation', 373806689);

  void setAttenuation(double attenuation) {
    final arg0 = malloc<Double>()..value = attenuation;
    try {
      ptrcallVoid(_mb_set_attenuation, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_attenuation =
      resolveMethodBind('GPUParticlesAttractor3D', 'get_attenuation', 1740695150);

  double getAttenuation() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_attenuation, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_directionality =
      resolveMethodBind('GPUParticlesAttractor3D', 'set_directionality', 373806689);

  void setDirectionality(double amount) {
    final arg0 = malloc<Double>()..value = amount;
    try {
      ptrcallVoid(_mb_set_directionality, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_directionality =
      resolveMethodBind('GPUParticlesAttractor3D', 'get_directionality', 1740695150);

  double getDirectionality() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_directionality, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
