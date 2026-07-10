// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class IKModifier3D extends SkeletonModifier3D {
  IKModifier3D(super.nativePtr);

  static final Pointer<Void> _mb_set_setting_count =
      resolveMethodBind('IKModifier3D', 'set_setting_count', 1286410249);

  void setSettingCount(int count) {
    final arg0 = malloc<Int64>()..value = count;
    try {
      ptrcallVoid(_mb_set_setting_count, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_setting_count =
      resolveMethodBind('IKModifier3D', 'get_setting_count', 3905245786);

  int getSettingCount() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_setting_count, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_clear_settings =
      resolveMethodBind('IKModifier3D', 'clear_settings', 3218959716);

  void clearSettings() {
    try {
      ptrcallVoid(_mb_clear_settings, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_mutable_bone_axes =
      resolveMethodBind('IKModifier3D', 'set_mutable_bone_axes', 2586408642);

  void setMutableBoneAxes(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_mutable_bone_axes, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_are_bone_axes_mutable =
      resolveMethodBind('IKModifier3D', 'are_bone_axes_mutable', 36873697);

  bool areBoneAxesMutable() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_are_bone_axes_mutable, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_reset =
      resolveMethodBind('IKModifier3D', 'reset', 3218959716);

  void reset() {
    try {
      ptrcallVoid(_mb_reset, nativePtr, []);
    } finally {
    }
  }

}
