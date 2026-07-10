// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class Noise extends Resource {
  Noise(super.nativePtr);

  static final Pointer<Void> _mb_get_noise_1d =
      resolveMethodBind('Noise', 'get_noise_1d', 3919130443);

  double getNoise1d(double x) {
    final arg0 = malloc<Double>()..value = x;
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_noise_1d, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_noise_2d =
      resolveMethodBind('Noise', 'get_noise_2d', 2753205203);

  double getNoise2d(double x, double y) {
    final arg0 = malloc<Double>()..value = x;
    final arg1 = malloc<Double>()..value = y;
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_noise_2d, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_noise_2dv =
      resolveMethodBind('Noise', 'get_noise_2dv', 2276447920);

  double getNoise2dv(Vector2 v) {
    final arg0 = malloc<Uint8>(Vector2.nativeSize);
    v.writeTo(arg0, 0);
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_noise_2dv, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_noise_3d =
      resolveMethodBind('Noise', 'get_noise_3d', 973811851);

  double getNoise3d(double x, double y, double z) {
    final arg0 = malloc<Double>()..value = x;
    final arg1 = malloc<Double>()..value = y;
    final arg2 = malloc<Double>()..value = z;
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_noise_3d, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_get_noise_3dv =
      resolveMethodBind('Noise', 'get_noise_3dv', 1109078154);

  double getNoise3dv(Vector3 v) {
    final arg0 = malloc<Uint8>(Vector3.nativeSize);
    v.writeTo(arg0, 0);
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_noise_3dv, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_image =
      resolveMethodBind('Noise', 'get_image', 3180683109);

  Image? getImage(int width, int height, bool invert, bool in3dSpace, bool normalize) {
    final arg0 = malloc<Int64>()..value = width;
    final arg1 = malloc<Int64>()..value = height;
    final arg2 = malloc<Uint8>()..value = invert ? 1 : 0;
    final arg3 = malloc<Uint8>()..value = in3dSpace ? 1 : 0;
    final arg4 = malloc<Uint8>()..value = normalize ? 1 : 0;
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_image, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>(), arg3.cast<Void>(), arg4.cast<Void>()], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Image(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
      malloc.free(arg3);
      malloc.free(arg4);
    }
  }

  static final Pointer<Void> _mb_get_seamless_image =
      resolveMethodBind('Noise', 'get_seamless_image', 2770743602);

  Image? getSeamlessImage(int width, int height, bool invert, bool in3dSpace, double skirt, bool normalize) {
    final arg0 = malloc<Int64>()..value = width;
    final arg1 = malloc<Int64>()..value = height;
    final arg2 = malloc<Uint8>()..value = invert ? 1 : 0;
    final arg3 = malloc<Uint8>()..value = in3dSpace ? 1 : 0;
    final arg4 = malloc<Double>()..value = skirt;
    final arg5 = malloc<Uint8>()..value = normalize ? 1 : 0;
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_seamless_image, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>(), arg3.cast<Void>(), arg4.cast<Void>(), arg5.cast<Void>()], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Image(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
      malloc.free(arg3);
      malloc.free(arg4);
      malloc.free(arg5);
    }
  }

  // Skipped get_image_3d(): unsupported return type "typedarray::Image".
  // Skipped get_seamless_image_3d(): unsupported return type "typedarray::Image".
}
