// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class RefCounted extends GodotObject {
  RefCounted(super.nativePtr);

  /// Constructs a brand-new engine-owned RefCounted instance
  /// (via classdb_construct_object3), not an existing one.
  factory RefCounted.create() {
    return RefCounted(resolveClassConstructor('RefCounted'));
  }

  static final Pointer<Void> _mb_init_ref =
      resolveMethodBind('RefCounted', 'init_ref', 2240911060);

  bool initRef() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_init_ref, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_reference =
      resolveMethodBind('RefCounted', 'reference', 2240911060);

  bool reference() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_reference, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_unreference =
      resolveMethodBind('RefCounted', 'unreference', 2240911060);

  bool unreference() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_unreference, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_reference_count =
      resolveMethodBind('RefCounted', 'get_reference_count', 3905245786);

  int getReferenceCount() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_reference_count, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
