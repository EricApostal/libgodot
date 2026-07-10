// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class Thread extends RefCounted {
  Thread(super.nativePtr);

  /// Constructs a brand-new engine-owned Thread instance
  /// (via classdb_construct_object3), not an existing one.
  factory Thread.create() {
    return Thread(resolveClassConstructor('Thread'));
  }

  // Skipped start(): an argument type is unsupported.
  static final Pointer<Void> _mb_get_id =
      resolveMethodBind('Thread', 'get_id', 201670096);

  String getId() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_id, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_is_started =
      resolveMethodBind('Thread', 'is_started', 36873697);

  bool isStarted() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_started, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_is_alive =
      resolveMethodBind('Thread', 'is_alive', 36873697);

  bool isAlive() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_alive, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  // Skipped wait_to_finish(): unsupported return type "Variant".
}
