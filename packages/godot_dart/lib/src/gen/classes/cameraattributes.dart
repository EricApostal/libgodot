// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class CameraAttributes extends Resource {
  CameraAttributes(super.nativePtr);

  /// Constructs a brand-new engine-owned CameraAttributes instance
  /// (via classdb_construct_object3), not an existing one.
  factory CameraAttributes.create() {
    return CameraAttributes(resolveClassConstructor('CameraAttributes'));
  }

  static final Pointer<Void> _mb_set_exposure_multiplier =
      resolveMethodBind('CameraAttributes', 'set_exposure_multiplier', 373806689);

  void setExposureMultiplier(double multiplier) {
    final arg0 = malloc<Double>()..value = multiplier;
    try {
      ptrcallVoid(_mb_set_exposure_multiplier, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_exposure_multiplier =
      resolveMethodBind('CameraAttributes', 'get_exposure_multiplier', 1740695150);

  double getExposureMultiplier() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_exposure_multiplier, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_exposure_sensitivity =
      resolveMethodBind('CameraAttributes', 'set_exposure_sensitivity', 373806689);

  void setExposureSensitivity(double sensitivity) {
    final arg0 = malloc<Double>()..value = sensitivity;
    try {
      ptrcallVoid(_mb_set_exposure_sensitivity, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_exposure_sensitivity =
      resolveMethodBind('CameraAttributes', 'get_exposure_sensitivity', 1740695150);

  double getExposureSensitivity() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_exposure_sensitivity, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_auto_exposure_enabled =
      resolveMethodBind('CameraAttributes', 'set_auto_exposure_enabled', 2586408642);

  void setAutoExposureEnabled(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_auto_exposure_enabled, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_auto_exposure_enabled =
      resolveMethodBind('CameraAttributes', 'is_auto_exposure_enabled', 36873697);

  bool isAutoExposureEnabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_auto_exposure_enabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_auto_exposure_speed =
      resolveMethodBind('CameraAttributes', 'set_auto_exposure_speed', 373806689);

  void setAutoExposureSpeed(double exposureSpeed) {
    final arg0 = malloc<Double>()..value = exposureSpeed;
    try {
      ptrcallVoid(_mb_set_auto_exposure_speed, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_auto_exposure_speed =
      resolveMethodBind('CameraAttributes', 'get_auto_exposure_speed', 1740695150);

  double getAutoExposureSpeed() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_auto_exposure_speed, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_auto_exposure_scale =
      resolveMethodBind('CameraAttributes', 'set_auto_exposure_scale', 373806689);

  void setAutoExposureScale(double exposureGrey) {
    final arg0 = malloc<Double>()..value = exposureGrey;
    try {
      ptrcallVoid(_mb_set_auto_exposure_scale, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_auto_exposure_scale =
      resolveMethodBind('CameraAttributes', 'get_auto_exposure_scale', 1740695150);

  double getAutoExposureScale() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_auto_exposure_scale, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
