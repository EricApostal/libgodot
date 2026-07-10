// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class FastNoiseLite extends Noise {
  FastNoiseLite(super.nativePtr);

  /// Constructs a brand-new engine-owned FastNoiseLite instance
  /// (via classdb_construct_object3), not an existing one.
  factory FastNoiseLite.create() {
    return FastNoiseLite(resolveClassConstructor('FastNoiseLite'));
  }

  static final Pointer<Void> _mb_set_noise_type =
      resolveMethodBind('FastNoiseLite', 'set_noise_type', 2624461392);

  void setNoiseType(int type) {
    final arg0 = malloc<Int64>()..value = type;
    try {
      ptrcallVoid(_mb_set_noise_type, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_noise_type =
      resolveMethodBind('FastNoiseLite', 'get_noise_type', 1458108610);

  int getNoiseType() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_noise_type, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_seed =
      resolveMethodBind('FastNoiseLite', 'set_seed', 1286410249);

  void setSeed(int seed) {
    final arg0 = malloc<Int64>()..value = seed;
    try {
      ptrcallVoid(_mb_set_seed, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_seed =
      resolveMethodBind('FastNoiseLite', 'get_seed', 3905245786);

  int getSeed() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_seed, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_frequency =
      resolveMethodBind('FastNoiseLite', 'set_frequency', 373806689);

  void setFrequency(double freq) {
    final arg0 = malloc<Double>()..value = freq;
    try {
      ptrcallVoid(_mb_set_frequency, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_frequency =
      resolveMethodBind('FastNoiseLite', 'get_frequency', 1740695150);

  double getFrequency() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_frequency, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_offset =
      resolveMethodBind('FastNoiseLite', 'set_offset', 3460891852);

  void setOffset(Vector3 offset) {
    final arg0 = malloc<Uint8>(Vector3.nativeSize);
    offset.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_offset, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_offset =
      resolveMethodBind('FastNoiseLite', 'get_offset', 3360562783);

  Vector3 getOffset() {
    try {
      final ret = malloc<Uint8>(Vector3.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_offset, nativePtr, [], ret.cast());
        return Vector3.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_fractal_type =
      resolveMethodBind('FastNoiseLite', 'set_fractal_type', 4132731174);

  void setFractalType(int type) {
    final arg0 = malloc<Int64>()..value = type;
    try {
      ptrcallVoid(_mb_set_fractal_type, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_fractal_type =
      resolveMethodBind('FastNoiseLite', 'get_fractal_type', 1036889279);

  int getFractalType() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_fractal_type, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_fractal_octaves =
      resolveMethodBind('FastNoiseLite', 'set_fractal_octaves', 1286410249);

  void setFractalOctaves(int octaveCount) {
    final arg0 = malloc<Int64>()..value = octaveCount;
    try {
      ptrcallVoid(_mb_set_fractal_octaves, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_fractal_octaves =
      resolveMethodBind('FastNoiseLite', 'get_fractal_octaves', 3905245786);

  int getFractalOctaves() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_fractal_octaves, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_fractal_lacunarity =
      resolveMethodBind('FastNoiseLite', 'set_fractal_lacunarity', 373806689);

  void setFractalLacunarity(double lacunarity) {
    final arg0 = malloc<Double>()..value = lacunarity;
    try {
      ptrcallVoid(_mb_set_fractal_lacunarity, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_fractal_lacunarity =
      resolveMethodBind('FastNoiseLite', 'get_fractal_lacunarity', 1740695150);

  double getFractalLacunarity() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_fractal_lacunarity, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_fractal_gain =
      resolveMethodBind('FastNoiseLite', 'set_fractal_gain', 373806689);

  void setFractalGain(double gain) {
    final arg0 = malloc<Double>()..value = gain;
    try {
      ptrcallVoid(_mb_set_fractal_gain, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_fractal_gain =
      resolveMethodBind('FastNoiseLite', 'get_fractal_gain', 1740695150);

  double getFractalGain() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_fractal_gain, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_fractal_weighted_strength =
      resolveMethodBind('FastNoiseLite', 'set_fractal_weighted_strength', 373806689);

  void setFractalWeightedStrength(double weightedStrength) {
    final arg0 = malloc<Double>()..value = weightedStrength;
    try {
      ptrcallVoid(_mb_set_fractal_weighted_strength, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_fractal_weighted_strength =
      resolveMethodBind('FastNoiseLite', 'get_fractal_weighted_strength', 1740695150);

  double getFractalWeightedStrength() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_fractal_weighted_strength, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_fractal_ping_pong_strength =
      resolveMethodBind('FastNoiseLite', 'set_fractal_ping_pong_strength', 373806689);

  void setFractalPingPongStrength(double pingPongStrength) {
    final arg0 = malloc<Double>()..value = pingPongStrength;
    try {
      ptrcallVoid(_mb_set_fractal_ping_pong_strength, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_fractal_ping_pong_strength =
      resolveMethodBind('FastNoiseLite', 'get_fractal_ping_pong_strength', 1740695150);

  double getFractalPingPongStrength() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_fractal_ping_pong_strength, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_cellular_distance_function =
      resolveMethodBind('FastNoiseLite', 'set_cellular_distance_function', 1006013267);

  void setCellularDistanceFunction(int func) {
    final arg0 = malloc<Int64>()..value = func;
    try {
      ptrcallVoid(_mb_set_cellular_distance_function, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_cellular_distance_function =
      resolveMethodBind('FastNoiseLite', 'get_cellular_distance_function', 2021274088);

  int getCellularDistanceFunction() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_cellular_distance_function, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_cellular_jitter =
      resolveMethodBind('FastNoiseLite', 'set_cellular_jitter', 373806689);

  void setCellularJitter(double jitter) {
    final arg0 = malloc<Double>()..value = jitter;
    try {
      ptrcallVoid(_mb_set_cellular_jitter, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_cellular_jitter =
      resolveMethodBind('FastNoiseLite', 'get_cellular_jitter', 1740695150);

  double getCellularJitter() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_cellular_jitter, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_cellular_return_type =
      resolveMethodBind('FastNoiseLite', 'set_cellular_return_type', 2654169698);

  void setCellularReturnType(int ret) {
    final arg0 = malloc<Int64>()..value = ret;
    try {
      ptrcallVoid(_mb_set_cellular_return_type, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_cellular_return_type =
      resolveMethodBind('FastNoiseLite', 'get_cellular_return_type', 3699796343);

  int getCellularReturnType() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_cellular_return_type, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_domain_warp_enabled =
      resolveMethodBind('FastNoiseLite', 'set_domain_warp_enabled', 2586408642);

  void setDomainWarpEnabled(bool domainWarpEnabled) {
    final arg0 = malloc<Uint8>()..value = domainWarpEnabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_domain_warp_enabled, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_domain_warp_enabled =
      resolveMethodBind('FastNoiseLite', 'is_domain_warp_enabled', 36873697);

  bool isDomainWarpEnabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_domain_warp_enabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_domain_warp_type =
      resolveMethodBind('FastNoiseLite', 'set_domain_warp_type', 3629692980);

  void setDomainWarpType(int domainWarpType) {
    final arg0 = malloc<Int64>()..value = domainWarpType;
    try {
      ptrcallVoid(_mb_set_domain_warp_type, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_domain_warp_type =
      resolveMethodBind('FastNoiseLite', 'get_domain_warp_type', 2980162020);

  int getDomainWarpType() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_domain_warp_type, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_domain_warp_amplitude =
      resolveMethodBind('FastNoiseLite', 'set_domain_warp_amplitude', 373806689);

  void setDomainWarpAmplitude(double domainWarpAmplitude) {
    final arg0 = malloc<Double>()..value = domainWarpAmplitude;
    try {
      ptrcallVoid(_mb_set_domain_warp_amplitude, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_domain_warp_amplitude =
      resolveMethodBind('FastNoiseLite', 'get_domain_warp_amplitude', 1740695150);

  double getDomainWarpAmplitude() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_domain_warp_amplitude, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_domain_warp_frequency =
      resolveMethodBind('FastNoiseLite', 'set_domain_warp_frequency', 373806689);

  void setDomainWarpFrequency(double domainWarpFrequency) {
    final arg0 = malloc<Double>()..value = domainWarpFrequency;
    try {
      ptrcallVoid(_mb_set_domain_warp_frequency, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_domain_warp_frequency =
      resolveMethodBind('FastNoiseLite', 'get_domain_warp_frequency', 1740695150);

  double getDomainWarpFrequency() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_domain_warp_frequency, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_domain_warp_fractal_type =
      resolveMethodBind('FastNoiseLite', 'set_domain_warp_fractal_type', 3999408287);

  void setDomainWarpFractalType(int domainWarpFractalType) {
    final arg0 = malloc<Int64>()..value = domainWarpFractalType;
    try {
      ptrcallVoid(_mb_set_domain_warp_fractal_type, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_domain_warp_fractal_type =
      resolveMethodBind('FastNoiseLite', 'get_domain_warp_fractal_type', 407716934);

  int getDomainWarpFractalType() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_domain_warp_fractal_type, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_domain_warp_fractal_octaves =
      resolveMethodBind('FastNoiseLite', 'set_domain_warp_fractal_octaves', 1286410249);

  void setDomainWarpFractalOctaves(int domainWarpOctaveCount) {
    final arg0 = malloc<Int64>()..value = domainWarpOctaveCount;
    try {
      ptrcallVoid(_mb_set_domain_warp_fractal_octaves, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_domain_warp_fractal_octaves =
      resolveMethodBind('FastNoiseLite', 'get_domain_warp_fractal_octaves', 3905245786);

  int getDomainWarpFractalOctaves() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_domain_warp_fractal_octaves, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_domain_warp_fractal_lacunarity =
      resolveMethodBind('FastNoiseLite', 'set_domain_warp_fractal_lacunarity', 373806689);

  void setDomainWarpFractalLacunarity(double domainWarpLacunarity) {
    final arg0 = malloc<Double>()..value = domainWarpLacunarity;
    try {
      ptrcallVoid(_mb_set_domain_warp_fractal_lacunarity, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_domain_warp_fractal_lacunarity =
      resolveMethodBind('FastNoiseLite', 'get_domain_warp_fractal_lacunarity', 1740695150);

  double getDomainWarpFractalLacunarity() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_domain_warp_fractal_lacunarity, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_domain_warp_fractal_gain =
      resolveMethodBind('FastNoiseLite', 'set_domain_warp_fractal_gain', 373806689);

  void setDomainWarpFractalGain(double domainWarpGain) {
    final arg0 = malloc<Double>()..value = domainWarpGain;
    try {
      ptrcallVoid(_mb_set_domain_warp_fractal_gain, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_domain_warp_fractal_gain =
      resolveMethodBind('FastNoiseLite', 'get_domain_warp_fractal_gain', 1740695150);

  double getDomainWarpFractalGain() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_domain_warp_fractal_gain, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
