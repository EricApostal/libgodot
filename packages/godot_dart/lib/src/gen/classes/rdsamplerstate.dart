// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class RDSamplerState extends RefCounted {
  RDSamplerState(super.nativePtr);

  /// Constructs a brand-new engine-owned RDSamplerState instance
  /// (via classdb_construct_object3), not an existing one.
  factory RDSamplerState.create() {
    return RDSamplerState(resolveClassConstructor('RDSamplerState'));
  }

  static final Pointer<Void> _mb_set_mag_filter =
      resolveMethodBind('RDSamplerState', 'set_mag_filter', 1493420382);

  void setMagFilter(int pMember) {
    final arg0 = malloc<Int64>()..value = pMember;
    try {
      ptrcallVoid(_mb_set_mag_filter, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_mag_filter =
      resolveMethodBind('RDSamplerState', 'get_mag_filter', 2209202801);

  int getMagFilter() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_mag_filter, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_min_filter =
      resolveMethodBind('RDSamplerState', 'set_min_filter', 1493420382);

  void setMinFilter(int pMember) {
    final arg0 = malloc<Int64>()..value = pMember;
    try {
      ptrcallVoid(_mb_set_min_filter, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_min_filter =
      resolveMethodBind('RDSamplerState', 'get_min_filter', 2209202801);

  int getMinFilter() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_min_filter, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_mip_filter =
      resolveMethodBind('RDSamplerState', 'set_mip_filter', 1493420382);

  void setMipFilter(int pMember) {
    final arg0 = malloc<Int64>()..value = pMember;
    try {
      ptrcallVoid(_mb_set_mip_filter, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_mip_filter =
      resolveMethodBind('RDSamplerState', 'get_mip_filter', 2209202801);

  int getMipFilter() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_mip_filter, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_repeat_u =
      resolveMethodBind('RDSamplerState', 'set_repeat_u', 246127626);

  void setRepeatU(int pMember) {
    final arg0 = malloc<Int64>()..value = pMember;
    try {
      ptrcallVoid(_mb_set_repeat_u, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_repeat_u =
      resolveMethodBind('RDSamplerState', 'get_repeat_u', 3227895872);

  int getRepeatU() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_repeat_u, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_repeat_v =
      resolveMethodBind('RDSamplerState', 'set_repeat_v', 246127626);

  void setRepeatV(int pMember) {
    final arg0 = malloc<Int64>()..value = pMember;
    try {
      ptrcallVoid(_mb_set_repeat_v, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_repeat_v =
      resolveMethodBind('RDSamplerState', 'get_repeat_v', 3227895872);

  int getRepeatV() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_repeat_v, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_repeat_w =
      resolveMethodBind('RDSamplerState', 'set_repeat_w', 246127626);

  void setRepeatW(int pMember) {
    final arg0 = malloc<Int64>()..value = pMember;
    try {
      ptrcallVoid(_mb_set_repeat_w, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_repeat_w =
      resolveMethodBind('RDSamplerState', 'get_repeat_w', 3227895872);

  int getRepeatW() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_repeat_w, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_lod_bias =
      resolveMethodBind('RDSamplerState', 'set_lod_bias', 373806689);

  void setLodBias(double pMember) {
    final arg0 = malloc<Double>()..value = pMember;
    try {
      ptrcallVoid(_mb_set_lod_bias, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_lod_bias =
      resolveMethodBind('RDSamplerState', 'get_lod_bias', 1740695150);

  double getLodBias() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_lod_bias, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_use_anisotropy =
      resolveMethodBind('RDSamplerState', 'set_use_anisotropy', 2586408642);

  void setUseAnisotropy(bool pMember) {
    final arg0 = malloc<Uint8>()..value = pMember ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_use_anisotropy, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_use_anisotropy =
      resolveMethodBind('RDSamplerState', 'get_use_anisotropy', 36873697);

  bool getUseAnisotropy() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_use_anisotropy, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_anisotropy_max =
      resolveMethodBind('RDSamplerState', 'set_anisotropy_max', 373806689);

  void setAnisotropyMax(double pMember) {
    final arg0 = malloc<Double>()..value = pMember;
    try {
      ptrcallVoid(_mb_set_anisotropy_max, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_anisotropy_max =
      resolveMethodBind('RDSamplerState', 'get_anisotropy_max', 1740695150);

  double getAnisotropyMax() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_anisotropy_max, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_enable_compare =
      resolveMethodBind('RDSamplerState', 'set_enable_compare', 2586408642);

  void setEnableCompare(bool pMember) {
    final arg0 = malloc<Uint8>()..value = pMember ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_enable_compare, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_enable_compare =
      resolveMethodBind('RDSamplerState', 'get_enable_compare', 36873697);

  bool getEnableCompare() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_enable_compare, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_compare_op =
      resolveMethodBind('RDSamplerState', 'set_compare_op', 2573711505);

  void setCompareOp(int pMember) {
    final arg0 = malloc<Int64>()..value = pMember;
    try {
      ptrcallVoid(_mb_set_compare_op, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_compare_op =
      resolveMethodBind('RDSamplerState', 'get_compare_op', 269730778);

  int getCompareOp() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_compare_op, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_min_lod =
      resolveMethodBind('RDSamplerState', 'set_min_lod', 373806689);

  void setMinLod(double pMember) {
    final arg0 = malloc<Double>()..value = pMember;
    try {
      ptrcallVoid(_mb_set_min_lod, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_min_lod =
      resolveMethodBind('RDSamplerState', 'get_min_lod', 1740695150);

  double getMinLod() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_min_lod, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_max_lod =
      resolveMethodBind('RDSamplerState', 'set_max_lod', 373806689);

  void setMaxLod(double pMember) {
    final arg0 = malloc<Double>()..value = pMember;
    try {
      ptrcallVoid(_mb_set_max_lod, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_max_lod =
      resolveMethodBind('RDSamplerState', 'get_max_lod', 1740695150);

  double getMaxLod() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_max_lod, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_border_color =
      resolveMethodBind('RDSamplerState', 'set_border_color', 1115869595);

  void setBorderColor(int pMember) {
    final arg0 = malloc<Int64>()..value = pMember;
    try {
      ptrcallVoid(_mb_set_border_color, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_border_color =
      resolveMethodBind('RDSamplerState', 'get_border_color', 3514246478);

  int getBorderColor() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_border_color, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_unnormalized_uvw =
      resolveMethodBind('RDSamplerState', 'set_unnormalized_uvw', 2586408642);

  void setUnnormalizedUvw(bool pMember) {
    final arg0 = malloc<Uint8>()..value = pMember ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_unnormalized_uvw, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_unnormalized_uvw =
      resolveMethodBind('RDSamplerState', 'get_unnormalized_uvw', 36873697);

  bool getUnnormalizedUvw() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_unnormalized_uvw, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
