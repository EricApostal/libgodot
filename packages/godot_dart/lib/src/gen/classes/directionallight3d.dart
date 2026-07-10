// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class DirectionalLight3D extends Light3D {
  DirectionalLight3D(super.nativePtr);

  static final Pointer<Void> _mb_set_shadow_mode =
      resolveMethodBind('DirectionalLight3D', 'set_shadow_mode', 1261211726);

  void setShadowMode(int mode) {
    final arg0 = malloc<Int64>()..value = mode;
    try {
      ptrcallVoid(_mb_set_shadow_mode, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_shadow_mode =
      resolveMethodBind('DirectionalLight3D', 'get_shadow_mode', 2765228544);

  int getShadowMode() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_shadow_mode, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_blend_splits =
      resolveMethodBind('DirectionalLight3D', 'set_blend_splits', 2586408642);

  void setBlendSplits(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_blend_splits, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_blend_splits_enabled =
      resolveMethodBind('DirectionalLight3D', 'is_blend_splits_enabled', 36873697);

  bool isBlendSplitsEnabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_blend_splits_enabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_sky_mode =
      resolveMethodBind('DirectionalLight3D', 'set_sky_mode', 2691194817);

  void setSkyMode(int mode) {
    final arg0 = malloc<Int64>()..value = mode;
    try {
      ptrcallVoid(_mb_set_sky_mode, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_sky_mode =
      resolveMethodBind('DirectionalLight3D', 'get_sky_mode', 3819982774);

  int getSkyMode() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_sky_mode, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
