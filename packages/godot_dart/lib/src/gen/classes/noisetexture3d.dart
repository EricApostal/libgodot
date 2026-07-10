// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class NoiseTexture3D extends Texture3D {
  NoiseTexture3D(super.nativePtr);

  /// Constructs a brand-new engine-owned NoiseTexture3D instance
  /// (via classdb_construct_object3), not an existing one.
  factory NoiseTexture3D.create() {
    return NoiseTexture3D(resolveClassConstructor('NoiseTexture3D'));
  }

  static final Pointer<Void> _mb_set_width =
      resolveMethodBind('NoiseTexture3D', 'set_width', 1286410249);

  void setWidth(int width) {
    final arg0 = malloc<Int64>()..value = width;
    try {
      ptrcallVoid(_mb_set_width, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_height =
      resolveMethodBind('NoiseTexture3D', 'set_height', 1286410249);

  void setHeight(int height) {
    final arg0 = malloc<Int64>()..value = height;
    try {
      ptrcallVoid(_mb_set_height, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_depth =
      resolveMethodBind('NoiseTexture3D', 'set_depth', 1286410249);

  void setDepth(int depth) {
    final arg0 = malloc<Int64>()..value = depth;
    try {
      ptrcallVoid(_mb_set_depth, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_noise =
      resolveMethodBind('NoiseTexture3D', 'set_noise', 4135492439);

  void setNoise(Noise noise) {
    final arg0 = malloc<Pointer<Void>>()..value = noise.nativePtr;
    try {
      ptrcallVoid(_mb_set_noise, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_noise =
      resolveMethodBind('NoiseTexture3D', 'get_noise', 185851837);

  Noise? getNoise() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_noise, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Noise(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_color_ramp =
      resolveMethodBind('NoiseTexture3D', 'set_color_ramp', 2756054477);

  void setColorRamp(Gradient gradient) {
    final arg0 = malloc<Pointer<Void>>()..value = gradient.nativePtr;
    try {
      ptrcallVoid(_mb_set_color_ramp, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_color_ramp =
      resolveMethodBind('NoiseTexture3D', 'get_color_ramp', 132272999);

  Gradient? getColorRamp() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_color_ramp, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Gradient(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_seamless =
      resolveMethodBind('NoiseTexture3D', 'set_seamless', 2586408642);

  void setSeamless(bool seamless) {
    final arg0 = malloc<Uint8>()..value = seamless ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_seamless, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_seamless =
      resolveMethodBind('NoiseTexture3D', 'get_seamless', 2240911060);

  bool getSeamless() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_seamless, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_invert =
      resolveMethodBind('NoiseTexture3D', 'set_invert', 2586408642);

  void setInvert(bool invert) {
    final arg0 = malloc<Uint8>()..value = invert ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_invert, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_invert =
      resolveMethodBind('NoiseTexture3D', 'get_invert', 36873697);

  bool getInvert() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_invert, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_normalize =
      resolveMethodBind('NoiseTexture3D', 'set_normalize', 2586408642);

  void setNormalize(bool normalize) {
    final arg0 = malloc<Uint8>()..value = normalize ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_normalize, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_normalized =
      resolveMethodBind('NoiseTexture3D', 'is_normalized', 36873697);

  bool isNormalized() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_normalized, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_seamless_blend_skirt =
      resolveMethodBind('NoiseTexture3D', 'set_seamless_blend_skirt', 373806689);

  void setSeamlessBlendSkirt(double seamlessBlendSkirt) {
    final arg0 = malloc<Double>()..value = seamlessBlendSkirt;
    try {
      ptrcallVoid(_mb_set_seamless_blend_skirt, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_seamless_blend_skirt =
      resolveMethodBind('NoiseTexture3D', 'get_seamless_blend_skirt', 191475506);

  double getSeamlessBlendSkirt() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_seamless_blend_skirt, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
