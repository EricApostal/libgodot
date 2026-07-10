// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class ProceduralSkyMaterial extends Material {
  ProceduralSkyMaterial(super.nativePtr);

  /// Constructs a brand-new engine-owned ProceduralSkyMaterial instance
  /// (via classdb_construct_object3), not an existing one.
  factory ProceduralSkyMaterial.create() {
    return ProceduralSkyMaterial(resolveClassConstructor('ProceduralSkyMaterial'));
  }

  static final Pointer<Void> _mb_set_sky_top_color =
      resolveMethodBind('ProceduralSkyMaterial', 'set_sky_top_color', 2920490490);

  void setSkyTopColor(Color color) {
    final arg0 = malloc<Uint8>(Color.nativeSize);
    color.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_sky_top_color, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_sky_top_color =
      resolveMethodBind('ProceduralSkyMaterial', 'get_sky_top_color', 3444240500);

  Color getSkyTopColor() {
    try {
      final ret = malloc<Uint8>(Color.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_sky_top_color, nativePtr, [], ret.cast());
        return Color.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_sky_horizon_color =
      resolveMethodBind('ProceduralSkyMaterial', 'set_sky_horizon_color', 2920490490);

  void setSkyHorizonColor(Color color) {
    final arg0 = malloc<Uint8>(Color.nativeSize);
    color.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_sky_horizon_color, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_sky_horizon_color =
      resolveMethodBind('ProceduralSkyMaterial', 'get_sky_horizon_color', 3444240500);

  Color getSkyHorizonColor() {
    try {
      final ret = malloc<Uint8>(Color.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_sky_horizon_color, nativePtr, [], ret.cast());
        return Color.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_sky_curve =
      resolveMethodBind('ProceduralSkyMaterial', 'set_sky_curve', 373806689);

  void setSkyCurve(double curve) {
    final arg0 = malloc<Double>()..value = curve;
    try {
      ptrcallVoid(_mb_set_sky_curve, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_sky_curve =
      resolveMethodBind('ProceduralSkyMaterial', 'get_sky_curve', 1740695150);

  double getSkyCurve() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_sky_curve, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_sky_energy_multiplier =
      resolveMethodBind('ProceduralSkyMaterial', 'set_sky_energy_multiplier', 373806689);

  void setSkyEnergyMultiplier(double multiplier) {
    final arg0 = malloc<Double>()..value = multiplier;
    try {
      ptrcallVoid(_mb_set_sky_energy_multiplier, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_sky_energy_multiplier =
      resolveMethodBind('ProceduralSkyMaterial', 'get_sky_energy_multiplier', 1740695150);

  double getSkyEnergyMultiplier() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_sky_energy_multiplier, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_sky_cover =
      resolveMethodBind('ProceduralSkyMaterial', 'set_sky_cover', 4051416890);

  void setSkyCover(Texture2D skyCover) {
    final arg0 = malloc<Pointer<Void>>()..value = skyCover.nativePtr;
    try {
      ptrcallVoid(_mb_set_sky_cover, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_sky_cover =
      resolveMethodBind('ProceduralSkyMaterial', 'get_sky_cover', 3635182373);

  Texture2D? getSkyCover() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_sky_cover, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Texture2D(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_sky_cover_modulate =
      resolveMethodBind('ProceduralSkyMaterial', 'set_sky_cover_modulate', 2920490490);

  void setSkyCoverModulate(Color color) {
    final arg0 = malloc<Uint8>(Color.nativeSize);
    color.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_sky_cover_modulate, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_sky_cover_modulate =
      resolveMethodBind('ProceduralSkyMaterial', 'get_sky_cover_modulate', 3444240500);

  Color getSkyCoverModulate() {
    try {
      final ret = malloc<Uint8>(Color.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_sky_cover_modulate, nativePtr, [], ret.cast());
        return Color.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_ground_bottom_color =
      resolveMethodBind('ProceduralSkyMaterial', 'set_ground_bottom_color', 2920490490);

  void setGroundBottomColor(Color color) {
    final arg0 = malloc<Uint8>(Color.nativeSize);
    color.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_ground_bottom_color, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_ground_bottom_color =
      resolveMethodBind('ProceduralSkyMaterial', 'get_ground_bottom_color', 3444240500);

  Color getGroundBottomColor() {
    try {
      final ret = malloc<Uint8>(Color.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_ground_bottom_color, nativePtr, [], ret.cast());
        return Color.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_ground_horizon_color =
      resolveMethodBind('ProceduralSkyMaterial', 'set_ground_horizon_color', 2920490490);

  void setGroundHorizonColor(Color color) {
    final arg0 = malloc<Uint8>(Color.nativeSize);
    color.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_ground_horizon_color, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_ground_horizon_color =
      resolveMethodBind('ProceduralSkyMaterial', 'get_ground_horizon_color', 3444240500);

  Color getGroundHorizonColor() {
    try {
      final ret = malloc<Uint8>(Color.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_ground_horizon_color, nativePtr, [], ret.cast());
        return Color.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_ground_curve =
      resolveMethodBind('ProceduralSkyMaterial', 'set_ground_curve', 373806689);

  void setGroundCurve(double curve) {
    final arg0 = malloc<Double>()..value = curve;
    try {
      ptrcallVoid(_mb_set_ground_curve, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_ground_curve =
      resolveMethodBind('ProceduralSkyMaterial', 'get_ground_curve', 1740695150);

  double getGroundCurve() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_ground_curve, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_ground_energy_multiplier =
      resolveMethodBind('ProceduralSkyMaterial', 'set_ground_energy_multiplier', 373806689);

  void setGroundEnergyMultiplier(double energy) {
    final arg0 = malloc<Double>()..value = energy;
    try {
      ptrcallVoid(_mb_set_ground_energy_multiplier, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_ground_energy_multiplier =
      resolveMethodBind('ProceduralSkyMaterial', 'get_ground_energy_multiplier', 1740695150);

  double getGroundEnergyMultiplier() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_ground_energy_multiplier, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_sun_angle_max =
      resolveMethodBind('ProceduralSkyMaterial', 'set_sun_angle_max', 373806689);

  void setSunAngleMax(double degrees) {
    final arg0 = malloc<Double>()..value = degrees;
    try {
      ptrcallVoid(_mb_set_sun_angle_max, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_sun_angle_max =
      resolveMethodBind('ProceduralSkyMaterial', 'get_sun_angle_max', 1740695150);

  double getSunAngleMax() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_sun_angle_max, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_sun_curve =
      resolveMethodBind('ProceduralSkyMaterial', 'set_sun_curve', 373806689);

  void setSunCurve(double curve) {
    final arg0 = malloc<Double>()..value = curve;
    try {
      ptrcallVoid(_mb_set_sun_curve, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_sun_curve =
      resolveMethodBind('ProceduralSkyMaterial', 'get_sun_curve', 1740695150);

  double getSunCurve() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_sun_curve, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_use_debanding =
      resolveMethodBind('ProceduralSkyMaterial', 'set_use_debanding', 2586408642);

  void setUseDebanding(bool useDebanding) {
    final arg0 = malloc<Uint8>()..value = useDebanding ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_use_debanding, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_use_debanding =
      resolveMethodBind('ProceduralSkyMaterial', 'get_use_debanding', 36873697);

  bool getUseDebanding() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_use_debanding, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_energy_multiplier =
      resolveMethodBind('ProceduralSkyMaterial', 'set_energy_multiplier', 373806689);

  void setEnergyMultiplier(double multiplier) {
    final arg0 = malloc<Double>()..value = multiplier;
    try {
      ptrcallVoid(_mb_set_energy_multiplier, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_energy_multiplier =
      resolveMethodBind('ProceduralSkyMaterial', 'get_energy_multiplier', 1740695150);

  double getEnergyMultiplier() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_energy_multiplier, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
