// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class EncodedObjectAsID extends RefCounted {
  EncodedObjectAsID(super.nativePtr);

  /// Constructs a brand-new engine-owned EncodedObjectAsID instance
  /// (via classdb_construct_object3), not an existing one.
  factory EncodedObjectAsID.create() {
    return EncodedObjectAsID(resolveClassConstructor('EncodedObjectAsID'));
  }

  static final Pointer<Void> _mb_set_object_id =
      resolveMethodBind('EncodedObjectAsID', 'set_object_id', 1286410249);

  void setObjectId(int id) {
    final arg0 = malloc<Int64>()..value = id;
    try {
      ptrcallVoid(_mb_set_object_id, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_object_id =
      resolveMethodBind('EncodedObjectAsID', 'get_object_id', 3905245786);

  int getObjectId() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_object_id, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
