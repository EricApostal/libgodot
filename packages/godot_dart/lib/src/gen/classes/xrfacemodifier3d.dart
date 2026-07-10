// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class XRFaceModifier3D extends Node3D {
  XRFaceModifier3D(super.nativePtr);

  static final Pointer<Void> _mb_set_face_tracker =
      resolveMethodBind('XRFaceModifier3D', 'set_face_tracker', 3304788590);

  void setFaceTracker(String trackerName) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), trackerName);
    try {
      ptrcallVoid(_mb_set_face_tracker, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_face_tracker =
      resolveMethodBind('XRFaceModifier3D', 'get_face_tracker', 2002593661);

  String getFaceTracker() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_face_tracker, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readStringName(ret.cast());
        BuiltinMarshal.destroyStringName(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  // Skipped set_target(): an argument type is unsupported.
  // Skipped get_target(): unsupported return type "NodePath".
}
