// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class XRHandModifier3D extends SkeletonModifier3D {
  XRHandModifier3D(super.nativePtr);

  static final Pointer<Void> _mb_set_hand_tracker =
      resolveMethodBind('XRHandModifier3D', 'set_hand_tracker', 3304788590);

  void setHandTracker(String trackerName) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), trackerName);
    try {
      ptrcallVoid(_mb_set_hand_tracker, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_hand_tracker =
      resolveMethodBind('XRHandModifier3D', 'get_hand_tracker', 2002593661);

  String getHandTracker() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_hand_tracker, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readStringName(ret.cast());
        BuiltinMarshal.destroyStringName(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_bone_update =
      resolveMethodBind('XRHandModifier3D', 'set_bone_update', 3635701455);

  void setBoneUpdate(int boneUpdate) {
    final arg0 = malloc<Int64>()..value = boneUpdate;
    try {
      ptrcallVoid(_mb_set_bone_update, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_bone_update =
      resolveMethodBind('XRHandModifier3D', 'get_bone_update', 2873665691);

  int getBoneUpdate() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_bone_update, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
