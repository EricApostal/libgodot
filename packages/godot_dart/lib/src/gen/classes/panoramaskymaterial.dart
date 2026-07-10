// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class PanoramaSkyMaterial extends Material {
  PanoramaSkyMaterial(super.nativePtr);

  /// Constructs a brand-new engine-owned PanoramaSkyMaterial instance
  /// (via classdb_construct_object3), not an existing one.
  factory PanoramaSkyMaterial.create() {
    return PanoramaSkyMaterial(resolveClassConstructor('PanoramaSkyMaterial'));
  }

  static final Pointer<Void> _mb_set_panorama =
      resolveMethodBind('PanoramaSkyMaterial', 'set_panorama', 4051416890);

  void setPanorama(Texture2D texture) {
    final arg0 = malloc<Pointer<Void>>()..value = texture.nativePtr;
    try {
      ptrcallVoid(_mb_set_panorama, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_panorama =
      resolveMethodBind('PanoramaSkyMaterial', 'get_panorama', 3635182373);

  Texture2D? getPanorama() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_panorama, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Texture2D(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_filtering_enabled =
      resolveMethodBind('PanoramaSkyMaterial', 'set_filtering_enabled', 2586408642);

  void setFilteringEnabled(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_filtering_enabled, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_filtering_enabled =
      resolveMethodBind('PanoramaSkyMaterial', 'is_filtering_enabled', 36873697);

  bool isFilteringEnabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_filtering_enabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_energy_multiplier =
      resolveMethodBind('PanoramaSkyMaterial', 'set_energy_multiplier', 373806689);

  void setEnergyMultiplier(double multiplier) {
    final arg0 = malloc<Double>()..value = multiplier;
    try {
      ptrcallVoid(_mb_set_energy_multiplier, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_energy_multiplier =
      resolveMethodBind('PanoramaSkyMaterial', 'get_energy_multiplier', 1740695150);

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
