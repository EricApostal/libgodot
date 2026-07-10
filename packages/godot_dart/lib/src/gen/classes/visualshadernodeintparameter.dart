// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class VisualShaderNodeIntParameter extends VisualShaderNodeParameter {
  VisualShaderNodeIntParameter(super.nativePtr);

  static final Pointer<Void> _mb_set_hint =
      resolveMethodBind('VisualShaderNodeIntParameter', 'set_hint', 2540512075);

  void setHint(int hint) {
    final arg0 = malloc<Int64>()..value = hint;
    try {
      ptrcallVoid(_mb_set_hint, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_hint =
      resolveMethodBind('VisualShaderNodeIntParameter', 'get_hint', 4250814924);

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
      resolveMethodBind('VisualShaderNodeIntParameter', 'set_min', 1286410249);

  void setMin(int value) {
    final arg0 = malloc<Int64>()..value = value;
    try {
      ptrcallVoid(_mb_set_min, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_min =
      resolveMethodBind('VisualShaderNodeIntParameter', 'get_min', 3905245786);

  int getMin() {
    try {
      final ret = malloc<Int64>();
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
      resolveMethodBind('VisualShaderNodeIntParameter', 'set_max', 1286410249);

  void setMax(int value) {
    final arg0 = malloc<Int64>()..value = value;
    try {
      ptrcallVoid(_mb_set_max, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_max =
      resolveMethodBind('VisualShaderNodeIntParameter', 'get_max', 3905245786);

  int getMax() {
    try {
      final ret = malloc<Int64>();
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
      resolveMethodBind('VisualShaderNodeIntParameter', 'set_step', 1286410249);

  void setStep(int value) {
    final arg0 = malloc<Int64>()..value = value;
    try {
      ptrcallVoid(_mb_set_step, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_step =
      resolveMethodBind('VisualShaderNodeIntParameter', 'get_step', 3905245786);

  int getStep() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_step, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  // Skipped set_enum_names(): an argument type is unsupported.
  // Skipped get_enum_names(): unsupported return type "PackedStringArray".
  static final Pointer<Void> _mb_set_default_value_enabled =
      resolveMethodBind('VisualShaderNodeIntParameter', 'set_default_value_enabled', 2586408642);

  void setDefaultValueEnabled(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_default_value_enabled, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_default_value_enabled =
      resolveMethodBind('VisualShaderNodeIntParameter', 'is_default_value_enabled', 36873697);

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
      resolveMethodBind('VisualShaderNodeIntParameter', 'set_default_value', 1286410249);

  void setDefaultValue(int value) {
    final arg0 = malloc<Int64>()..value = value;
    try {
      ptrcallVoid(_mb_set_default_value, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_default_value =
      resolveMethodBind('VisualShaderNodeIntParameter', 'get_default_value', 3905245786);

  int getDefaultValue() {
    try {
      final ret = malloc<Int64>();
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
