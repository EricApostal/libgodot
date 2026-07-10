// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class Range extends Control {
  Range(super.nativePtr);

  static final Pointer<Void> _mb_get_value =
      resolveMethodBind('Range', 'get_value', 1740695150);

  double getValue() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_value, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_min =
      resolveMethodBind('Range', 'get_min', 1740695150);

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

  static final Pointer<Void> _mb_get_max =
      resolveMethodBind('Range', 'get_max', 1740695150);

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

  static final Pointer<Void> _mb_get_step =
      resolveMethodBind('Range', 'get_step', 1740695150);

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

  static final Pointer<Void> _mb_get_page =
      resolveMethodBind('Range', 'get_page', 1740695150);

  double getPage() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_page, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_as_ratio =
      resolveMethodBind('Range', 'get_as_ratio', 1740695150);

  double getAsRatio() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_as_ratio, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_value =
      resolveMethodBind('Range', 'set_value', 373806689);

  void setValue(double value) {
    final arg0 = malloc<Double>()..value = value;
    try {
      ptrcallVoid(_mb_set_value, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_value_no_signal =
      resolveMethodBind('Range', 'set_value_no_signal', 373806689);

  void setValueNoSignal(double value) {
    final arg0 = malloc<Double>()..value = value;
    try {
      ptrcallVoid(_mb_set_value_no_signal, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_min =
      resolveMethodBind('Range', 'set_min', 373806689);

  void setMin(double minimum) {
    final arg0 = malloc<Double>()..value = minimum;
    try {
      ptrcallVoid(_mb_set_min, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_max =
      resolveMethodBind('Range', 'set_max', 373806689);

  void setMax(double maximum) {
    final arg0 = malloc<Double>()..value = maximum;
    try {
      ptrcallVoid(_mb_set_max, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_step =
      resolveMethodBind('Range', 'set_step', 373806689);

  void setStep(double step) {
    final arg0 = malloc<Double>()..value = step;
    try {
      ptrcallVoid(_mb_set_step, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_page =
      resolveMethodBind('Range', 'set_page', 373806689);

  void setPage(double pagesize) {
    final arg0 = malloc<Double>()..value = pagesize;
    try {
      ptrcallVoid(_mb_set_page, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_as_ratio =
      resolveMethodBind('Range', 'set_as_ratio', 373806689);

  void setAsRatio(double value) {
    final arg0 = malloc<Double>()..value = value;
    try {
      ptrcallVoid(_mb_set_as_ratio, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_use_rounded_values =
      resolveMethodBind('Range', 'set_use_rounded_values', 2586408642);

  void setUseRoundedValues(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_use_rounded_values, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_using_rounded_values =
      resolveMethodBind('Range', 'is_using_rounded_values', 36873697);

  bool isUsingRoundedValues() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_using_rounded_values, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_exp_ratio =
      resolveMethodBind('Range', 'set_exp_ratio', 2586408642);

  void setExpRatio(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_exp_ratio, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_ratio_exp =
      resolveMethodBind('Range', 'is_ratio_exp', 36873697);

  bool isRatioExp() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_ratio_exp, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_allow_greater =
      resolveMethodBind('Range', 'set_allow_greater', 2586408642);

  void setAllowGreater(bool allow) {
    final arg0 = malloc<Uint8>()..value = allow ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_allow_greater, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_greater_allowed =
      resolveMethodBind('Range', 'is_greater_allowed', 36873697);

  bool isGreaterAllowed() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_greater_allowed, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_allow_lesser =
      resolveMethodBind('Range', 'set_allow_lesser', 2586408642);

  void setAllowLesser(bool allow) {
    final arg0 = malloc<Uint8>()..value = allow ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_allow_lesser, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_lesser_allowed =
      resolveMethodBind('Range', 'is_lesser_allowed', 36873697);

  bool isLesserAllowed() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_lesser_allowed, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_share =
      resolveMethodBind('Range', 'share', 1078189570);

  void share(Node with_) {
    final arg0 = malloc<Pointer<Void>>()..value = with_.nativePtr;
    try {
      ptrcallVoid(_mb_share, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_unshare =
      resolveMethodBind('Range', 'unshare', 3218959716);

  void unshare() {
    try {
      ptrcallVoid(_mb_unshare, nativePtr, []);
    } finally {
    }
  }

}
