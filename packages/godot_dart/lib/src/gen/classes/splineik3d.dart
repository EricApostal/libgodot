// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class SplineIK3D extends ChainIK3D {
  SplineIK3D(super.nativePtr);

  // Skipped set_path_3d(): an argument type is unsupported.
  // Skipped get_path_3d(): unsupported return type "NodePath".
  static final Pointer<Void> _mb_set_tilt_enabled =
      resolveMethodBind('SplineIK3D', 'set_tilt_enabled', 300928843);

  void setTiltEnabled(int index, bool enabled) {
    final arg0 = malloc<Int64>()..value = index;
    final arg1 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_tilt_enabled, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_is_tilt_enabled =
      resolveMethodBind('SplineIK3D', 'is_tilt_enabled', 1116898809);

  bool isTiltEnabled(int index) {
    final arg0 = malloc<Int64>()..value = index;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_tilt_enabled, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_tilt_fade_in =
      resolveMethodBind('SplineIK3D', 'set_tilt_fade_in', 3937882851);

  void setTiltFadeIn(int index, int size) {
    final arg0 = malloc<Int64>()..value = index;
    final arg1 = malloc<Int64>()..value = size;
    try {
      ptrcallVoid(_mb_set_tilt_fade_in, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_tilt_fade_in =
      resolveMethodBind('SplineIK3D', 'get_tilt_fade_in', 923996154);

  int getTiltFadeIn(int index) {
    final arg0 = malloc<Int64>()..value = index;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_tilt_fade_in, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_tilt_fade_out =
      resolveMethodBind('SplineIK3D', 'set_tilt_fade_out', 3937882851);

  void setTiltFadeOut(int index, int size) {
    final arg0 = malloc<Int64>()..value = index;
    final arg1 = malloc<Int64>()..value = size;
    try {
      ptrcallVoid(_mb_set_tilt_fade_out, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_tilt_fade_out =
      resolveMethodBind('SplineIK3D', 'get_tilt_fade_out', 923996154);

  int getTiltFadeOut(int index) {
    final arg0 = malloc<Int64>()..value = index;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_tilt_fade_out, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

}
