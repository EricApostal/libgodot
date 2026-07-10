// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class FogMaterial extends Material {
  FogMaterial(super.nativePtr);

  static final Pointer<Void> _mb_set_density =
      resolveMethodBind('FogMaterial', 'set_density', 373806689);

  void setDensity(double density) {
    final arg0 = malloc<Double>()..value = density;
    try {
      ptrcallVoid(_mb_set_density, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_density =
      resolveMethodBind('FogMaterial', 'get_density', 1740695150);

  double getDensity() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_density, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_albedo =
      resolveMethodBind('FogMaterial', 'set_albedo', 2920490490);

  void setAlbedo(Color albedo) {
    final arg0 = malloc<Uint8>(Color.nativeSize);
    albedo.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_albedo, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_albedo =
      resolveMethodBind('FogMaterial', 'get_albedo', 3444240500);

  Color getAlbedo() {
    try {
      final ret = malloc<Uint8>(Color.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_albedo, nativePtr, [], ret.cast());
        return Color.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_emission =
      resolveMethodBind('FogMaterial', 'set_emission', 2920490490);

  void setEmission(Color emission) {
    final arg0 = malloc<Uint8>(Color.nativeSize);
    emission.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_emission, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_emission =
      resolveMethodBind('FogMaterial', 'get_emission', 3444240500);

  Color getEmission() {
    try {
      final ret = malloc<Uint8>(Color.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_emission, nativePtr, [], ret.cast());
        return Color.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_height_falloff =
      resolveMethodBind('FogMaterial', 'set_height_falloff', 373806689);

  void setHeightFalloff(double heightFalloff) {
    final arg0 = malloc<Double>()..value = heightFalloff;
    try {
      ptrcallVoid(_mb_set_height_falloff, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_height_falloff =
      resolveMethodBind('FogMaterial', 'get_height_falloff', 1740695150);

  double getHeightFalloff() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_height_falloff, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_edge_fade =
      resolveMethodBind('FogMaterial', 'set_edge_fade', 373806689);

  void setEdgeFade(double edgeFade) {
    final arg0 = malloc<Double>()..value = edgeFade;
    try {
      ptrcallVoid(_mb_set_edge_fade, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_edge_fade =
      resolveMethodBind('FogMaterial', 'get_edge_fade', 1740695150);

  double getEdgeFade() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_edge_fade, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_density_texture =
      resolveMethodBind('FogMaterial', 'set_density_texture', 1188404210);

  void setDensityTexture(Texture3D densityTexture) {
    final arg0 = malloc<Pointer<Void>>()..value = densityTexture.nativePtr;
    try {
      ptrcallVoid(_mb_set_density_texture, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_density_texture =
      resolveMethodBind('FogMaterial', 'get_density_texture', 373985333);

  Texture3D? getDensityTexture() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_density_texture, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Texture3D(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
