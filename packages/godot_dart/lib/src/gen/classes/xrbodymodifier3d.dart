// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class XRBodyModifier3D extends SkeletonModifier3D {
  XRBodyModifier3D(super.nativePtr);

  static final Pointer<Void> _mb_set_body_tracker =
      resolveMethodBind('XRBodyModifier3D', 'set_body_tracker', 3304788590);

  void setBodyTracker(String trackerName) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), trackerName);
    try {
      ptrcallVoid(_mb_set_body_tracker, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_body_tracker =
      resolveMethodBind('XRBodyModifier3D', 'get_body_tracker', 2002593661);

  String getBodyTracker() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_body_tracker, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readStringName(ret.cast());
        BuiltinMarshal.destroyStringName(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_body_update =
      resolveMethodBind('XRBodyModifier3D', 'set_body_update', 2211199417);

  void setBodyUpdate(int bodyUpdate) {
    final arg0 = malloc<Int64>()..value = bodyUpdate;
    try {
      ptrcallVoid(_mb_set_body_update, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_body_update =
      resolveMethodBind('XRBodyModifier3D', 'get_body_update', 2642335328);

  int getBodyUpdate() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_body_update, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_bone_update =
      resolveMethodBind('XRBodyModifier3D', 'set_bone_update', 3356796943);

  void setBoneUpdate(int boneUpdate) {
    final arg0 = malloc<Int64>()..value = boneUpdate;
    try {
      ptrcallVoid(_mb_set_bone_update, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_bone_update =
      resolveMethodBind('XRBodyModifier3D', 'get_bone_update', 1309305964);

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
