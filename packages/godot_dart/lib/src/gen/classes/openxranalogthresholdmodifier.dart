// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class OpenXRAnalogThresholdModifier extends OpenXRActionBindingModifier {
  OpenXRAnalogThresholdModifier(super.nativePtr);

  static final Pointer<Void> _mb_set_on_threshold =
      resolveMethodBind('OpenXRAnalogThresholdModifier', 'set_on_threshold', 373806689);

  void setOnThreshold(double onThreshold) {
    final arg0 = malloc<Double>()..value = onThreshold;
    try {
      ptrcallVoid(_mb_set_on_threshold, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_on_threshold =
      resolveMethodBind('OpenXRAnalogThresholdModifier', 'get_on_threshold', 1740695150);

  double getOnThreshold() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_on_threshold, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_off_threshold =
      resolveMethodBind('OpenXRAnalogThresholdModifier', 'set_off_threshold', 373806689);

  void setOffThreshold(double offThreshold) {
    final arg0 = malloc<Double>()..value = offThreshold;
    try {
      ptrcallVoid(_mb_set_off_threshold, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_off_threshold =
      resolveMethodBind('OpenXRAnalogThresholdModifier', 'get_off_threshold', 1740695150);

  double getOffThreshold() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_off_threshold, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_on_haptic =
      resolveMethodBind('OpenXRAnalogThresholdModifier', 'set_on_haptic', 2998020150);

  void setOnHaptic(OpenXRHapticBase haptic) {
    final arg0 = malloc<Pointer<Void>>()..value = haptic.nativePtr;
    try {
      ptrcallVoid(_mb_set_on_haptic, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_on_haptic =
      resolveMethodBind('OpenXRAnalogThresholdModifier', 'get_on_haptic', 922310751);

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
      resolveMethodBind('OpenXRAnalogThresholdModifier', 'set_off_haptic', 2998020150);

  void setOffHaptic(OpenXRHapticBase haptic) {
    final arg0 = malloc<Pointer<Void>>()..value = haptic.nativePtr;
    try {
      ptrcallVoid(_mb_set_off_haptic, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_off_haptic =
      resolveMethodBind('OpenXRAnalogThresholdModifier', 'get_off_haptic', 922310751);

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
