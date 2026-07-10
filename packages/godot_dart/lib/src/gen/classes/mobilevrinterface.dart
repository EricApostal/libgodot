// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class MobileVRInterface extends XRInterface {
  MobileVRInterface(super.nativePtr);

  /// Constructs a brand-new engine-owned MobileVRInterface instance
  /// (via classdb_construct_object3), not an existing one.
  factory MobileVRInterface.create() {
    return MobileVRInterface(resolveClassConstructor('MobileVRInterface'));
  }

  static final Pointer<Void> _mb_set_eye_height =
      resolveMethodBind('MobileVRInterface', 'set_eye_height', 373806689);

  void setEyeHeight(double eyeHeight) {
    final arg0 = malloc<Double>()..value = eyeHeight;
    try {
      ptrcallVoid(_mb_set_eye_height, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_eye_height =
      resolveMethodBind('MobileVRInterface', 'get_eye_height', 1740695150);

  double getEyeHeight() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_eye_height, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_iod =
      resolveMethodBind('MobileVRInterface', 'set_iod', 373806689);

  void setIod(double iod) {
    final arg0 = malloc<Double>()..value = iod;
    try {
      ptrcallVoid(_mb_set_iod, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_iod =
      resolveMethodBind('MobileVRInterface', 'get_iod', 1740695150);

  double getIod() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_iod, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_display_width =
      resolveMethodBind('MobileVRInterface', 'set_display_width', 373806689);

  void setDisplayWidth(double displayWidth) {
    final arg0 = malloc<Double>()..value = displayWidth;
    try {
      ptrcallVoid(_mb_set_display_width, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_display_width =
      resolveMethodBind('MobileVRInterface', 'get_display_width', 1740695150);

  double getDisplayWidth() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_display_width, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_display_to_lens =
      resolveMethodBind('MobileVRInterface', 'set_display_to_lens', 373806689);

  void setDisplayToLens(double displayToLens) {
    final arg0 = malloc<Double>()..value = displayToLens;
    try {
      ptrcallVoid(_mb_set_display_to_lens, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_display_to_lens =
      resolveMethodBind('MobileVRInterface', 'get_display_to_lens', 1740695150);

  double getDisplayToLens() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_display_to_lens, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_offset_rect =
      resolveMethodBind('MobileVRInterface', 'set_offset_rect', 2046264180);

  void setOffsetRect(Rect2 offsetRect) {
    final arg0 = malloc<Uint8>(Rect2.nativeSize);
    offsetRect.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_offset_rect, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_offset_rect =
      resolveMethodBind('MobileVRInterface', 'get_offset_rect', 1639390495);

  Rect2 getOffsetRect() {
    try {
      final ret = malloc<Uint8>(Rect2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_offset_rect, nativePtr, [], ret.cast());
        return Rect2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_oversample =
      resolveMethodBind('MobileVRInterface', 'set_oversample', 373806689);

  void setOversample(double oversample) {
    final arg0 = malloc<Double>()..value = oversample;
    try {
      ptrcallVoid(_mb_set_oversample, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_oversample =
      resolveMethodBind('MobileVRInterface', 'get_oversample', 1740695150);

  double getOversample() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_oversample, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_k1 =
      resolveMethodBind('MobileVRInterface', 'set_k1', 373806689);

  void setK1(double k) {
    final arg0 = malloc<Double>()..value = k;
    try {
      ptrcallVoid(_mb_set_k1, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_k1 =
      resolveMethodBind('MobileVRInterface', 'get_k1', 1740695150);

  double getK1() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_k1, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_k2 =
      resolveMethodBind('MobileVRInterface', 'set_k2', 373806689);

  void setK2(double k) {
    final arg0 = malloc<Double>()..value = k;
    try {
      ptrcallVoid(_mb_set_k2, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_k2 =
      resolveMethodBind('MobileVRInterface', 'get_k2', 1740695150);

  double getK2() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_k2, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_vrs_min_radius =
      resolveMethodBind('MobileVRInterface', 'get_vrs_min_radius', 1740695150);

  double getVrsMinRadius() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_vrs_min_radius, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_vrs_min_radius =
      resolveMethodBind('MobileVRInterface', 'set_vrs_min_radius', 373806689);

  void setVrsMinRadius(double radius) {
    final arg0 = malloc<Double>()..value = radius;
    try {
      ptrcallVoid(_mb_set_vrs_min_radius, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_vrs_strength =
      resolveMethodBind('MobileVRInterface', 'get_vrs_strength', 1740695150);

  double getVrsStrength() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_vrs_strength, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_vrs_strength =
      resolveMethodBind('MobileVRInterface', 'set_vrs_strength', 373806689);

  void setVrsStrength(double strength) {
    final arg0 = malloc<Double>()..value = strength;
    try {
      ptrcallVoid(_mb_set_vrs_strength, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

}
