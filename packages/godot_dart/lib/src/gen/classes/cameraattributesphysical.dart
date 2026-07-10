// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class CameraAttributesPhysical extends CameraAttributes {
  CameraAttributesPhysical(super.nativePtr);

  static final Pointer<Void> _mb_set_aperture =
      resolveMethodBind('CameraAttributesPhysical', 'set_aperture', 373806689);

  void setAperture(double aperture) {
    final arg0 = malloc<Double>()..value = aperture;
    try {
      ptrcallVoid(_mb_set_aperture, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_aperture =
      resolveMethodBind('CameraAttributesPhysical', 'get_aperture', 1740695150);

  double getAperture() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_aperture, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_shutter_speed =
      resolveMethodBind('CameraAttributesPhysical', 'set_shutter_speed', 373806689);

  void setShutterSpeed(double shutterSpeed) {
    final arg0 = malloc<Double>()..value = shutterSpeed;
    try {
      ptrcallVoid(_mb_set_shutter_speed, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_shutter_speed =
      resolveMethodBind('CameraAttributesPhysical', 'get_shutter_speed', 1740695150);

  double getShutterSpeed() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_shutter_speed, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_focal_length =
      resolveMethodBind('CameraAttributesPhysical', 'set_focal_length', 373806689);

  void setFocalLength(double focalLength) {
    final arg0 = malloc<Double>()..value = focalLength;
    try {
      ptrcallVoid(_mb_set_focal_length, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_focal_length =
      resolveMethodBind('CameraAttributesPhysical', 'get_focal_length', 1740695150);

  double getFocalLength() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_focal_length, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_focus_distance =
      resolveMethodBind('CameraAttributesPhysical', 'set_focus_distance', 373806689);

  void setFocusDistance(double focusDistance) {
    final arg0 = malloc<Double>()..value = focusDistance;
    try {
      ptrcallVoid(_mb_set_focus_distance, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_focus_distance =
      resolveMethodBind('CameraAttributesPhysical', 'get_focus_distance', 1740695150);

  double getFocusDistance() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_focus_distance, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_near =
      resolveMethodBind('CameraAttributesPhysical', 'set_near', 373806689);

  void setNear(double near) {
    final arg0 = malloc<Double>()..value = near;
    try {
      ptrcallVoid(_mb_set_near, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_near =
      resolveMethodBind('CameraAttributesPhysical', 'get_near', 1740695150);

  double getNear() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_near, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_far =
      resolveMethodBind('CameraAttributesPhysical', 'set_far', 373806689);

  void setFar(double far) {
    final arg0 = malloc<Double>()..value = far;
    try {
      ptrcallVoid(_mb_set_far, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_far =
      resolveMethodBind('CameraAttributesPhysical', 'get_far', 1740695150);

  double getFar() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_far, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_fov =
      resolveMethodBind('CameraAttributesPhysical', 'get_fov', 1740695150);

  double getFov() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_fov, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_auto_exposure_max_exposure_value =
      resolveMethodBind('CameraAttributesPhysical', 'set_auto_exposure_max_exposure_value', 373806689);

  void setAutoExposureMaxExposureValue(double exposureValueMax) {
    final arg0 = malloc<Double>()..value = exposureValueMax;
    try {
      ptrcallVoid(_mb_set_auto_exposure_max_exposure_value, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_auto_exposure_max_exposure_value =
      resolveMethodBind('CameraAttributesPhysical', 'get_auto_exposure_max_exposure_value', 1740695150);

  double getAutoExposureMaxExposureValue() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_auto_exposure_max_exposure_value, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_auto_exposure_min_exposure_value =
      resolveMethodBind('CameraAttributesPhysical', 'set_auto_exposure_min_exposure_value', 373806689);

  void setAutoExposureMinExposureValue(double exposureValueMin) {
    final arg0 = malloc<Double>()..value = exposureValueMin;
    try {
      ptrcallVoid(_mb_set_auto_exposure_min_exposure_value, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_auto_exposure_min_exposure_value =
      resolveMethodBind('CameraAttributesPhysical', 'get_auto_exposure_min_exposure_value', 1740695150);

  double getAutoExposureMinExposureValue() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_auto_exposure_min_exposure_value, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
