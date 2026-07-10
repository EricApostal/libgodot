// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class OpenXRDpadBindingModifier extends OpenXRIPBindingModifier {
  OpenXRDpadBindingModifier(super.nativePtr);

  static final Pointer<Void> _mb_set_action_set =
      resolveMethodBind('OpenXRDpadBindingModifier', 'set_action_set', 2093310581);

  void setActionSet(OpenXRActionSet actionSet) {
    final arg0 = malloc<Pointer<Void>>()..value = actionSet.nativePtr;
    try {
      ptrcallVoid(_mb_set_action_set, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_action_set =
      resolveMethodBind('OpenXRDpadBindingModifier', 'get_action_set', 619941079);

  OpenXRActionSet? getActionSet() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_action_set, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : OpenXRActionSet(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_input_path =
      resolveMethodBind('OpenXRDpadBindingModifier', 'set_input_path', 83702148);

  void setInputPath(String inputPath) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), inputPath);
    try {
      ptrcallVoid(_mb_set_input_path, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_input_path =
      resolveMethodBind('OpenXRDpadBindingModifier', 'get_input_path', 201670096);

  String getInputPath() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_input_path, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_threshold =
      resolveMethodBind('OpenXRDpadBindingModifier', 'set_threshold', 373806689);

  void setThreshold(double threshold) {
    final arg0 = malloc<Double>()..value = threshold;
    try {
      ptrcallVoid(_mb_set_threshold, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_threshold =
      resolveMethodBind('OpenXRDpadBindingModifier', 'get_threshold', 1740695150);

  double getThreshold() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_threshold, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_threshold_released =
      resolveMethodBind('OpenXRDpadBindingModifier', 'set_threshold_released', 373806689);

  void setThresholdReleased(double thresholdReleased) {
    final arg0 = malloc<Double>()..value = thresholdReleased;
    try {
      ptrcallVoid(_mb_set_threshold_released, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_threshold_released =
      resolveMethodBind('OpenXRDpadBindingModifier', 'get_threshold_released', 1740695150);

  double getThresholdReleased() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_threshold_released, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_center_region =
      resolveMethodBind('OpenXRDpadBindingModifier', 'set_center_region', 373806689);

  void setCenterRegion(double centerRegion) {
    final arg0 = malloc<Double>()..value = centerRegion;
    try {
      ptrcallVoid(_mb_set_center_region, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_center_region =
      resolveMethodBind('OpenXRDpadBindingModifier', 'get_center_region', 1740695150);

  double getCenterRegion() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_center_region, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_wedge_angle =
      resolveMethodBind('OpenXRDpadBindingModifier', 'set_wedge_angle', 373806689);

  void setWedgeAngle(double wedgeAngle) {
    final arg0 = malloc<Double>()..value = wedgeAngle;
    try {
      ptrcallVoid(_mb_set_wedge_angle, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_wedge_angle =
      resolveMethodBind('OpenXRDpadBindingModifier', 'get_wedge_angle', 1740695150);

  double getWedgeAngle() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_wedge_angle, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_is_sticky =
      resolveMethodBind('OpenXRDpadBindingModifier', 'set_is_sticky', 2586408642);

  void setIsSticky(bool isSticky) {
    final arg0 = malloc<Uint8>()..value = isSticky ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_is_sticky, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_is_sticky =
      resolveMethodBind('OpenXRDpadBindingModifier', 'get_is_sticky', 36873697);

  bool getIsSticky() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_is_sticky, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_on_haptic =
      resolveMethodBind('OpenXRDpadBindingModifier', 'set_on_haptic', 2998020150);

  void setOnHaptic(OpenXRHapticBase haptic) {
    final arg0 = malloc<Pointer<Void>>()..value = haptic.nativePtr;
    try {
      ptrcallVoid(_mb_set_on_haptic, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_on_haptic =
      resolveMethodBind('OpenXRDpadBindingModifier', 'get_on_haptic', 922310751);

  OpenXRHapticBase? getOnHaptic() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_on_haptic, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : OpenXRHapticBase(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_off_haptic =
      resolveMethodBind('OpenXRDpadBindingModifier', 'set_off_haptic', 2998020150);

  void setOffHaptic(OpenXRHapticBase haptic) {
    final arg0 = malloc<Pointer<Void>>()..value = haptic.nativePtr;
    try {
      ptrcallVoid(_mb_set_off_haptic, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_off_haptic =
      resolveMethodBind('OpenXRDpadBindingModifier', 'get_off_haptic', 922310751);

  OpenXRHapticBase? getOffHaptic() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_off_haptic, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : OpenXRHapticBase(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
