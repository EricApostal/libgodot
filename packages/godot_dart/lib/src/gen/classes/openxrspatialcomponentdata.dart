// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class OpenXRSpatialComponentData extends RefCounted {
  OpenXRSpatialComponentData(super.nativePtr);

  static final Pointer<Void> _mb_set_capacity =
      resolveMethodBind('OpenXRSpatialComponentData', 'set_capacity', 1286410249);

  void setCapacity(int capacity) {
    final arg0 = malloc<Int64>()..value = capacity;
    try {
      ptrcallVoid(_mb_set_capacity, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_component_type =
      resolveMethodBind('OpenXRSpatialComponentData', 'get_component_type', 3905245786);

  int getComponentType() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_component_type, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
