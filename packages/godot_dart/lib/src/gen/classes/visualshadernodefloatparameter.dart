// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class VisualShaderNodeFloatParameter extends VisualShaderNodeParameter {
  VisualShaderNodeFloatParameter(super.nativePtr);

  static final Pointer<Void> _mb_set_hint =
      resolveMethodBind('VisualShaderNodeFloatParameter', 'set_hint', 3712586466);

  void setHint(int hint) {
    final arg0 = malloc<Int64>()..value = hint;
    try {
      ptrcallVoid(_mb_set_hint, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_hint =
      resolveMethodBind('VisualShaderNodeFloatParameter', 'get_hint', 3042240429);

  int getHint() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_hint, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_min =
      resolveMethodBind('VisualShaderNodeFloatParameter', 'set_min', 373806689);

  void setMin(double value) {
    final arg0 = malloc<Double>()..value = value;
    try {
      ptrcallVoid(_mb_set_min, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_min =
      resolveMethodBind('VisualShaderNodeFloatParameter', 'get_min', 1740695150);

  double getMin() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_min, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_max =
      resolveMethodBind('VisualShaderNodeFloatParameter', 'set_max', 373806689);

  void setMax(double value) {
    final arg0 = malloc<Double>()..value = value;
    try {
      ptrcallVoid(_mb_set_max, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_max =
      resolveMethodBind('VisualShaderNodeFloatParameter', 'get_max', 1740695150);

  double getMax() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_max, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_step =
      resolveMethodBind('VisualShaderNodeFloatParameter', 'set_step', 373806689);

  void setStep(double value) {
    final arg0 = malloc<Double>()..value = value;
    try {
      ptrcallVoid(_mb_set_step, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_step =
      resolveMethodBind('VisualShaderNodeFloatParameter', 'get_step', 1740695150);

  double getStep() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_step, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_default_value_enabled =
      resolveMethodBind('VisualShaderNodeFloatParameter', 'set_default_value_enabled', 2586408642);

  void setDefaultValueEnabled(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_default_value_enabled, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_default_value_enabled =
      resolveMethodBind('VisualShaderNodeFloatParameter', 'is_default_value_enabled', 36873697);

  bool isDefaultValueEnabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_default_value_enabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_default_value =
      resolveMethodBind('VisualShaderNodeFloatParameter', 'set_default_value', 373806689);

  void setDefaultValue(double value) {
    final arg0 = malloc<Double>()..value = value;
    try {
      ptrcallVoid(_mb_set_default_value, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_default_value =
      resolveMethodBind('VisualShaderNodeFloatParameter', 'get_default_value', 1740695150);

  double getDefaultValue() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_default_value, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
