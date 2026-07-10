// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class CameraAttributesPractical extends CameraAttributes {
  CameraAttributesPractical(super.nativePtr);

  static final Pointer<Void> _mb_set_dof_blur_far_enabled =
      resolveMethodBind('CameraAttributesPractical', 'set_dof_blur_far_enabled', 2586408642);

  void setDofBlurFarEnabled(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_dof_blur_far_enabled, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_dof_blur_far_enabled =
      resolveMethodBind('CameraAttributesPractical', 'is_dof_blur_far_enabled', 36873697);

  bool isDofBlurFarEnabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_dof_blur_far_enabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_dof_blur_far_distance =
      resolveMethodBind('CameraAttributesPractical', 'set_dof_blur_far_distance', 373806689);

  void setDofBlurFarDistance(double distance) {
    final arg0 = malloc<Double>()..value = distance;
    try {
      ptrcallVoid(_mb_set_dof_blur_far_distance, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_dof_blur_far_distance =
      resolveMethodBind('CameraAttributesPractical', 'get_dof_blur_far_distance', 1740695150);

  double getDofBlurFarDistance() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_dof_blur_far_distance, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_dof_blur_far_transition =
      resolveMethodBind('CameraAttributesPractical', 'set_dof_blur_far_transition', 373806689);

  void setDofBlurFarTransition(double distance) {
    final arg0 = malloc<Double>()..value = distance;
    try {
      ptrcallVoid(_mb_set_dof_blur_far_transition, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_dof_blur_far_transition =
      resolveMethodBind('CameraAttributesPractical', 'get_dof_blur_far_transition', 1740695150);

  double getDofBlurFarTransition() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_dof_blur_far_transition, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_dof_blur_near_enabled =
      resolveMethodBind('CameraAttributesPractical', 'set_dof_blur_near_enabled', 2586408642);

  void setDofBlurNearEnabled(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_dof_blur_near_enabled, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_dof_blur_near_enabled =
      resolveMethodBind('CameraAttributesPractical', 'is_dof_blur_near_enabled', 36873697);

  bool isDofBlurNearEnabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_dof_blur_near_enabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_dof_blur_near_distance =
      resolveMethodBind('CameraAttributesPractical', 'set_dof_blur_near_distance', 373806689);

  void setDofBlurNearDistance(double distance) {
    final arg0 = malloc<Double>()..value = distance;
    try {
      ptrcallVoid(_mb_set_dof_blur_near_distance, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_dof_blur_near_distance =
      resolveMethodBind('CameraAttributesPractical', 'get_dof_blur_near_distance', 1740695150);

  double getDofBlurNearDistance() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_dof_blur_near_distance, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_dof_blur_near_transition =
      resolveMethodBind('CameraAttributesPractical', 'set_dof_blur_near_transition', 373806689);

  void setDofBlurNearTransition(double distance) {
    final arg0 = malloc<Double>()..value = distance;
    try {
      ptrcallVoid(_mb_set_dof_blur_near_transition, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_dof_blur_near_transition =
      resolveMethodBind('CameraAttributesPractical', 'get_dof_blur_near_transition', 1740695150);

  double getDofBlurNearTransition() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_dof_blur_near_transition, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_dof_blur_amount =
      resolveMethodBind('CameraAttributesPractical', 'set_dof_blur_amount', 373806689);

  void setDofBlurAmount(double amount) {
    final arg0 = malloc<Double>()..value = amount;
    try {
      ptrcallVoid(_mb_set_dof_blur_amount, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_dof_blur_amount =
      resolveMethodBind('CameraAttributesPractical', 'get_dof_blur_amount', 1740695150);

  double getDofBlurAmount() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_dof_blur_amount, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_auto_exposure_max_sensitivity =
      resolveMethodBind('CameraAttributesPractical', 'set_auto_exposure_max_sensitivity', 373806689);

  void setAutoExposureMaxSensitivity(double maxSensitivity) {
    final arg0 = malloc<Double>()..value = maxSensitivity;
    try {
      ptrcallVoid(_mb_set_auto_exposure_max_sensitivity, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_auto_exposure_max_sensitivity =
      resolveMethodBind('CameraAttributesPractical', 'get_auto_exposure_max_sensitivity', 1740695150);

  double getAutoExposureMaxSensitivity() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_auto_exposure_max_sensitivity, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_auto_exposure_min_sensitivity =
      resolveMethodBind('CameraAttributesPractical', 'set_auto_exposure_min_sensitivity', 373806689);

  void setAutoExposureMinSensitivity(double minSensitivity) {
    final arg0 = malloc<Double>()..value = minSensitivity;
    try {
      ptrcallVoid(_mb_set_auto_exposure_min_sensitivity, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_auto_exposure_min_sensitivity =
      resolveMethodBind('CameraAttributesPractical', 'get_auto_exposure_min_sensitivity', 1740695150);

  double getAutoExposureMinSensitivity() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_auto_exposure_min_sensitivity, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
