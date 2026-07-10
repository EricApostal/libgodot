// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class OpenXRRenderModelManager extends Node3D {
  OpenXRRenderModelManager(super.nativePtr);

  /// Constructs a brand-new engine-owned OpenXRRenderModelManager instance
  /// (via classdb_construct_object3), not an existing one.
  factory OpenXRRenderModelManager.create() {
    return OpenXRRenderModelManager(resolveClassConstructor('OpenXRRenderModelManager'));
  }

  static final Pointer<Void> _mb_get_tracker =
      resolveMethodBind('OpenXRRenderModelManager', 'get_tracker', 2456466356);

  int getTracker() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_tracker, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_tracker =
      resolveMethodBind('OpenXRRenderModelManager', 'set_tracker', 2814627380);

  void setTracker(int tracker) {
    final arg0 = malloc<Int64>()..value = tracker;
    try {
      ptrcallVoid(_mb_set_tracker, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_make_local_to_pose =
      resolveMethodBind('OpenXRRenderModelManager', 'get_make_local_to_pose', 201670096);

  String getMakeLocalToPose() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_make_local_to_pose, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_make_local_to_pose =
      resolveMethodBind('OpenXRRenderModelManager', 'set_make_local_to_pose', 83702148);

  void setMakeLocalToPose(String makeLocalToPose) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), makeLocalToPose);
    try {
      ptrcallVoid(_mb_set_make_local_to_pose, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

}
