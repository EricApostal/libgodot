// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class OpenXRStructureBase extends RefCounted {
  OpenXRStructureBase(super.nativePtr);

  /// Constructs a brand-new engine-owned OpenXRStructureBase instance
  /// (via classdb_construct_object3), not an existing one.
  factory OpenXRStructureBase.create() {
    return OpenXRStructureBase(resolveClassConstructor('OpenXRStructureBase'));
  }

  /// Override to hook into Godot's `_get_header` virtual.
  int getHeader(int next) => 0;

  static final Pointer<Void> _mb_get_structure_type =
      resolveMethodBind('OpenXRStructureBase', 'get_structure_type', 2455072627);

  int getStructureType() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_structure_type, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_next =
      resolveMethodBind('OpenXRStructureBase', 'set_next', 334698771);

  void setNext(OpenXRStructureBase entity) {
    final arg0 = malloc<Pointer<Void>>()..value = entity.nativePtr;
    try {
      ptrcallVoid(_mb_set_next, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_next =
      resolveMethodBind('OpenXRStructureBase', 'get_next', 2798796760);

  OpenXRStructureBase? getNext() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_next, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : OpenXRStructureBase(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
