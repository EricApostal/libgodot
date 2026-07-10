// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class RDUniform extends RefCounted {
  RDUniform(super.nativePtr);

  /// Constructs a brand-new engine-owned RDUniform instance
  /// (via classdb_construct_object3), not an existing one.
  factory RDUniform.create() {
    return RDUniform(resolveClassConstructor('RDUniform'));
  }

  static final Pointer<Void> _mb_set_uniform_type =
      resolveMethodBind('RDUniform', 'set_uniform_type', 1664894931);

  void setUniformType(int pMember) {
    final arg0 = malloc<Int64>()..value = pMember;
    try {
      ptrcallVoid(_mb_set_uniform_type, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_uniform_type =
      resolveMethodBind('RDUniform', 'get_uniform_type', 475470040);

  int getUniformType() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_uniform_type, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_binding =
      resolveMethodBind('RDUniform', 'set_binding', 1286410249);

  void setBinding(int pMember) {
    final arg0 = malloc<Int64>()..value = pMember;
    try {
      ptrcallVoid(_mb_set_binding, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_binding =
      resolveMethodBind('RDUniform', 'get_binding', 3905245786);

  int getBinding() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_binding, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  // Skipped add_id(): an argument type is unsupported.
  static final Pointer<Void> _mb_clear_ids =
      resolveMethodBind('RDUniform', 'clear_ids', 3218959716);

  void clearIds() {
    try {
      ptrcallVoid(_mb_clear_ids, nativePtr, []);
    } finally {
    }
  }

  // Skipped get_ids(): unsupported return type "typedarray::RID".
}
