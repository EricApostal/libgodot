// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class OpenXRAnchorTracker extends OpenXRSpatialEntityTracker {
  OpenXRAnchorTracker(super.nativePtr);

  static final Pointer<Void> _mb_has_uuid =
      resolveMethodBind('OpenXRAnchorTracker', 'has_uuid', 36873697);

  bool hasUuid() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_has_uuid, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_uuid =
      resolveMethodBind('OpenXRAnchorTracker', 'set_uuid', 83702148);

  void setUuid(String uuid) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), uuid);
    try {
      ptrcallVoid(_mb_set_uuid, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_uuid =
      resolveMethodBind('OpenXRAnchorTracker', 'get_uuid', 201670096);

  String getUuid() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_uuid, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
