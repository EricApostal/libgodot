// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class CanvasGroup extends Node2D {
  CanvasGroup(super.nativePtr);

  static final Pointer<Void> _mb_set_fit_margin =
      resolveMethodBind('CanvasGroup', 'set_fit_margin', 373806689);

  void setFitMargin(double fitMargin) {
    final arg0 = malloc<Double>()..value = fitMargin;
    try {
      ptrcallVoid(_mb_set_fit_margin, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_fit_margin =
      resolveMethodBind('CanvasGroup', 'get_fit_margin', 1740695150);

  double getFitMargin() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_fit_margin, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_clear_margin =
      resolveMethodBind('CanvasGroup', 'set_clear_margin', 373806689);

  void setClearMargin(double clearMargin) {
    final arg0 = malloc<Double>()..value = clearMargin;
    try {
      ptrcallVoid(_mb_set_clear_margin, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_clear_margin =
      resolveMethodBind('CanvasGroup', 'get_clear_margin', 1740695150);

  double getClearMargin() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_clear_margin, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_use_mipmaps =
      resolveMethodBind('CanvasGroup', 'set_use_mipmaps', 2586408642);

  void setUseMipmaps(bool useMipmaps) {
    final arg0 = malloc<Uint8>()..value = useMipmaps ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_use_mipmaps, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_using_mipmaps =
      resolveMethodBind('CanvasGroup', 'is_using_mipmaps', 36873697);

  bool isUsingMipmaps() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_using_mipmaps, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
