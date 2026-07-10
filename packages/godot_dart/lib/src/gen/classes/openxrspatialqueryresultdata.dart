// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class OpenXRSpatialQueryResultData extends OpenXRSpatialComponentData {
  OpenXRSpatialQueryResultData(super.nativePtr);

  /// Constructs a brand-new engine-owned OpenXRSpatialQueryResultData instance
  /// (via classdb_construct_object3), not an existing one.
  factory OpenXRSpatialQueryResultData.create() {
    return OpenXRSpatialQueryResultData(resolveClassConstructor('OpenXRSpatialQueryResultData'));
  }

  static final Pointer<Void> _mb_get_capacity =
      resolveMethodBind('OpenXRSpatialQueryResultData', 'get_capacity', 3905245786);

  int getCapacity() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_capacity, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_entity_id =
      resolveMethodBind('OpenXRSpatialQueryResultData', 'get_entity_id', 923996154);

  int getEntityId(int index) {
    final arg0 = malloc<Int64>()..value = index;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_entity_id, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_entity_state =
      resolveMethodBind('OpenXRSpatialQueryResultData', 'get_entity_state', 1411962015);

  int getEntityState(int index) {
    final arg0 = malloc<Int64>()..value = index;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_entity_state, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

}
