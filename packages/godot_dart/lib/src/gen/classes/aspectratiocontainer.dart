// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class AspectRatioContainer extends Container {
  AspectRatioContainer(super.nativePtr);

  static final Pointer<Void> _mb_set_ratio =
      resolveMethodBind('AspectRatioContainer', 'set_ratio', 373806689);

  void setRatio(double ratio) {
    final arg0 = malloc<Double>()..value = ratio;
    try {
      ptrcallVoid(_mb_set_ratio, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_ratio =
      resolveMethodBind('AspectRatioContainer', 'get_ratio', 1740695150);

  double getRatio() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_ratio, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_stretch_mode =
      resolveMethodBind('AspectRatioContainer', 'set_stretch_mode', 1876743467);

  void setStretchMode(int stretchMode) {
    final arg0 = malloc<Int64>()..value = stretchMode;
    try {
      ptrcallVoid(_mb_set_stretch_mode, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_stretch_mode =
      resolveMethodBind('AspectRatioContainer', 'get_stretch_mode', 3416449033);

  int getStretchMode() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_stretch_mode, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_alignment_horizontal =
      resolveMethodBind('AspectRatioContainer', 'set_alignment_horizontal', 2147829016);

  void setAlignmentHorizontal(int alignmentHorizontal) {
    final arg0 = malloc<Int64>()..value = alignmentHorizontal;
    try {
      ptrcallVoid(_mb_set_alignment_horizontal, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_alignment_horizontal =
      resolveMethodBind('AspectRatioContainer', 'get_alignment_horizontal', 3838875429);

  int getAlignmentHorizontal() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_alignment_horizontal, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_alignment_vertical =
      resolveMethodBind('AspectRatioContainer', 'set_alignment_vertical', 2147829016);

  void setAlignmentVertical(int alignmentVertical) {
    final arg0 = malloc<Int64>()..value = alignmentVertical;
    try {
      ptrcallVoid(_mb_set_alignment_vertical, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_alignment_vertical =
      resolveMethodBind('AspectRatioContainer', 'get_alignment_vertical', 3838875429);

  int getAlignmentVertical() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_alignment_vertical, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
