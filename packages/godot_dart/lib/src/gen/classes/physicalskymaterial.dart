// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class PhysicalSkyMaterial extends Material {
  PhysicalSkyMaterial(super.nativePtr);

  /// Constructs a brand-new engine-owned PhysicalSkyMaterial instance
  /// (via classdb_construct_object3), not an existing one.
  factory PhysicalSkyMaterial.create() {
    return PhysicalSkyMaterial(resolveClassConstructor('PhysicalSkyMaterial'));
  }

  static final Pointer<Void> _mb_set_rayleigh_coefficient =
      resolveMethodBind('PhysicalSkyMaterial', 'set_rayleigh_coefficient', 373806689);

  void setRayleighCoefficient(double rayleigh) {
    final arg0 = malloc<Double>()..value = rayleigh;
    try {
      ptrcallVoid(_mb_set_rayleigh_coefficient, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_rayleigh_coefficient =
      resolveMethodBind('PhysicalSkyMaterial', 'get_rayleigh_coefficient', 1740695150);

  double getRayleighCoefficient() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_rayleigh_coefficient, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_rayleigh_color =
      resolveMethodBind('PhysicalSkyMaterial', 'set_rayleigh_color', 2920490490);

  void setRayleighColor(Color color) {
    final arg0 = malloc<Uint8>(Color.nativeSize);
    color.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_rayleigh_color, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_rayleigh_color =
      resolveMethodBind('PhysicalSkyMaterial', 'get_rayleigh_color', 3444240500);

  Color getRayleighColor() {
    try {
      final ret = malloc<Uint8>(Color.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_rayleigh_color, nativePtr, [], ret.cast());
        return Color.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_mie_coefficient =
      resolveMethodBind('PhysicalSkyMaterial', 'set_mie_coefficient', 373806689);

  void setMieCoefficient(double mie) {
    final arg0 = malloc<Double>()..value = mie;
    try {
      ptrcallVoid(_mb_set_mie_coefficient, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_mie_coefficient =
      resolveMethodBind('PhysicalSkyMaterial', 'get_mie_coefficient', 1740695150);

  double getMieCoefficient() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_mie_coefficient, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_mie_eccentricity =
      resolveMethodBind('PhysicalSkyMaterial', 'set_mie_eccentricity', 373806689);

  void setMieEccentricity(double eccentricity) {
    final arg0 = malloc<Double>()..value = eccentricity;
    try {
      ptrcallVoid(_mb_set_mie_eccentricity, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_mie_eccentricity =
      resolveMethodBind('PhysicalSkyMaterial', 'get_mie_eccentricity', 1740695150);

  double getMieEccentricity() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_mie_eccentricity, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_mie_color =
      resolveMethodBind('PhysicalSkyMaterial', 'set_mie_color', 2920490490);

  void setMieColor(Color color) {
    final arg0 = malloc<Uint8>(Color.nativeSize);
    color.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_mie_color, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_mie_color =
      resolveMethodBind('PhysicalSkyMaterial', 'get_mie_color', 3444240500);

  Color getMieColor() {
    try {
      final ret = malloc<Uint8>(Color.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_mie_color, nativePtr, [], ret.cast());
        return Color.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_turbidity =
      resolveMethodBind('PhysicalSkyMaterial', 'set_turbidity', 373806689);

  void setTurbidity(double turbidity) {
    final arg0 = malloc<Double>()..value = turbidity;
    try {
      ptrcallVoid(_mb_set_turbidity, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_turbidity =
      resolveMethodBind('PhysicalSkyMaterial', 'get_turbidity', 1740695150);

  double getTurbidity() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_turbidity, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_sun_disk_scale =
      resolveMethodBind('PhysicalSkyMaterial', 'set_sun_disk_scale', 373806689);

  void setSunDiskScale(double scale) {
    final arg0 = malloc<Double>()..value = scale;
    try {
      ptrcallVoid(_mb_set_sun_disk_scale, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_sun_disk_scale =
      resolveMethodBind('PhysicalSkyMaterial', 'get_sun_disk_scale', 1740695150);

  double getSunDiskScale() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_sun_disk_scale, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_ground_color =
      resolveMethodBind('PhysicalSkyMaterial', 'set_ground_color', 2920490490);

  void setGroundColor(Color color) {
    final arg0 = malloc<Uint8>(Color.nativeSize);
    color.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_ground_color, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_ground_color =
      resolveMethodBind('PhysicalSkyMaterial', 'get_ground_color', 3444240500);

  Color getGroundColor() {
    try {
      final ret = malloc<Uint8>(Color.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_ground_color, nativePtr, [], ret.cast());
        return Color.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_energy_multiplier =
      resolveMethodBind('PhysicalSkyMaterial', 'set_energy_multiplier', 373806689);

  void setEnergyMultiplier(double multiplier) {
    final arg0 = malloc<Double>()..value = multiplier;
    try {
      ptrcallVoid(_mb_set_energy_multiplier, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_energy_multiplier =
      resolveMethodBind('PhysicalSkyMaterial', 'get_energy_multiplier', 1740695150);

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

  static final Pointer<Void> _mb_set_use_debanding =
      resolveMethodBind('PhysicalSkyMaterial', 'set_use_debanding', 2586408642);

  void setUseDebanding(bool useDebanding) {
    final arg0 = malloc<Uint8>()..value = useDebanding ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_use_debanding, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_use_debanding =
      resolveMethodBind('PhysicalSkyMaterial', 'get_use_debanding', 36873697);

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

  static final Pointer<Void> _mb_set_night_sky =
      resolveMethodBind('PhysicalSkyMaterial', 'set_night_sky', 4051416890);

  void setNightSky(Texture2D nightSky) {
    final arg0 = malloc<Pointer<Void>>()..value = nightSky.nativePtr;
    try {
      ptrcallVoid(_mb_set_night_sky, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_night_sky =
      resolveMethodBind('PhysicalSkyMaterial', 'get_night_sky', 3635182373);

  Texture2D? getNightSky() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_night_sky, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Texture2D(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
