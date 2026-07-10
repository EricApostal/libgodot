// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class Decal extends VisualInstance3D {
  Decal(super.nativePtr);

  /// Constructs a brand-new engine-owned Decal instance
  /// (via classdb_construct_object3), not an existing one.
  factory Decal.create() {
    return Decal(resolveClassConstructor('Decal'));
  }

  static final Pointer<Void> _mb_set_size =
      resolveMethodBind('Decal', 'set_size', 3460891852);

  void setSize(Vector3 size) {
    final arg0 = malloc<Uint8>(Vector3.nativeSize);
    size.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_size, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_size =
      resolveMethodBind('Decal', 'get_size', 3360562783);

  Vector3 getSize() {
    try {
      final ret = malloc<Uint8>(Vector3.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_size, nativePtr, [], ret.cast());
        return Vector3.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_texture =
      resolveMethodBind('Decal', 'set_texture', 2086764391);

  void setTexture(int type, Texture2D texture) {
    final arg0 = malloc<Int64>()..value = type;
    final arg1 = malloc<Pointer<Void>>()..value = texture.nativePtr;
    try {
      ptrcallVoid(_mb_set_texture, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_texture =
      resolveMethodBind('Decal', 'get_texture', 3244119503);

  Texture2D? getTexture(int type) {
    final arg0 = malloc<Int64>()..value = type;
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_texture, nativePtr, [arg0.cast<Void>()], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Texture2D(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_emission_energy =
      resolveMethodBind('Decal', 'set_emission_energy', 373806689);

  void setEmissionEnergy(double energy) {
    final arg0 = malloc<Double>()..value = energy;
    try {
      ptrcallVoid(_mb_set_emission_energy, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_emission_energy =
      resolveMethodBind('Decal', 'get_emission_energy', 1740695150);

  double getEmissionEnergy() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_emission_energy, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_albedo_mix =
      resolveMethodBind('Decal', 'set_albedo_mix', 373806689);

  void setAlbedoMix(double energy) {
    final arg0 = malloc<Double>()..value = energy;
    try {
      ptrcallVoid(_mb_set_albedo_mix, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_albedo_mix =
      resolveMethodBind('Decal', 'get_albedo_mix', 1740695150);

  double getAlbedoMix() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_albedo_mix, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_modulate =
      resolveMethodBind('Decal', 'set_modulate', 2920490490);

  void setModulate(Color color) {
    final arg0 = malloc<Uint8>(Color.nativeSize);
    color.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_modulate, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_modulate =
      resolveMethodBind('Decal', 'get_modulate', 3444240500);

  Color getModulate() {
    try {
      final ret = malloc<Uint8>(Color.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_modulate, nativePtr, [], ret.cast());
        return Color.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_upper_fade =
      resolveMethodBind('Decal', 'set_upper_fade', 373806689);

  void setUpperFade(double fade) {
    final arg0 = malloc<Double>()..value = fade;
    try {
      ptrcallVoid(_mb_set_upper_fade, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_upper_fade =
      resolveMethodBind('Decal', 'get_upper_fade', 1740695150);

  double getUpperFade() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_upper_fade, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_lower_fade =
      resolveMethodBind('Decal', 'set_lower_fade', 373806689);

  void setLowerFade(double fade) {
    final arg0 = malloc<Double>()..value = fade;
    try {
      ptrcallVoid(_mb_set_lower_fade, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_lower_fade =
      resolveMethodBind('Decal', 'get_lower_fade', 1740695150);

  double getLowerFade() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_lower_fade, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_normal_fade =
      resolveMethodBind('Decal', 'set_normal_fade', 373806689);

  void setNormalFade(double fade) {
    final arg0 = malloc<Double>()..value = fade;
    try {
      ptrcallVoid(_mb_set_normal_fade, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_normal_fade =
      resolveMethodBind('Decal', 'get_normal_fade', 1740695150);

  double getNormalFade() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_normal_fade, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_enable_distance_fade =
      resolveMethodBind('Decal', 'set_enable_distance_fade', 2586408642);

  void setEnableDistanceFade(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_enable_distance_fade, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_distance_fade_enabled =
      resolveMethodBind('Decal', 'is_distance_fade_enabled', 36873697);

  bool isDistanceFadeEnabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_distance_fade_enabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_distance_fade_begin =
      resolveMethodBind('Decal', 'set_distance_fade_begin', 373806689);

  void setDistanceFadeBegin(double distance) {
    final arg0 = malloc<Double>()..value = distance;
    try {
      ptrcallVoid(_mb_set_distance_fade_begin, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_distance_fade_begin =
      resolveMethodBind('Decal', 'get_distance_fade_begin', 1740695150);

  double getDistanceFadeBegin() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_distance_fade_begin, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_distance_fade_length =
      resolveMethodBind('Decal', 'set_distance_fade_length', 373806689);

  void setDistanceFadeLength(double distance) {
    final arg0 = malloc<Double>()..value = distance;
    try {
      ptrcallVoid(_mb_set_distance_fade_length, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_distance_fade_length =
      resolveMethodBind('Decal', 'get_distance_fade_length', 1740695150);

  double getDistanceFadeLength() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_distance_fade_length, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_cull_mask =
      resolveMethodBind('Decal', 'set_cull_mask', 1286410249);

  void setCullMask(int mask) {
    final arg0 = malloc<Int64>()..value = mask;
    try {
      ptrcallVoid(_mb_set_cull_mask, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_cull_mask =
      resolveMethodBind('Decal', 'get_cull_mask', 3905245786);

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

}
