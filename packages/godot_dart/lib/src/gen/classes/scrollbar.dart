// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class ScrollBar extends Range {
  ScrollBar(super.nativePtr);

  static final Pointer<Void> _mb_set_custom_step =
      resolveMethodBind('ScrollBar', 'set_custom_step', 373806689);

  void setCustomStep(double step) {
    final arg0 = malloc<Double>()..value = step;
    try {
      ptrcallVoid(_mb_set_custom_step, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_custom_step =
      resolveMethodBind('ScrollBar', 'get_custom_step', 1740695150);

  double getCustomStep() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_custom_step, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
