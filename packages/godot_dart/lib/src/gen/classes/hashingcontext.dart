// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class HashingContext extends RefCounted {
  HashingContext(super.nativePtr);

  /// Constructs a brand-new engine-owned HashingContext instance
  /// (via classdb_construct_object3), not an existing one.
  factory HashingContext.create() {
    return HashingContext(resolveClassConstructor('HashingContext'));
  }

  static final Pointer<Void> _mb_start =
      resolveMethodBind('HashingContext', 'start', 3940338335);

  int start(int type) {
    final arg0 = malloc<Int64>()..value = type;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_start, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  // Skipped update(): an argument type is unsupported.
  // Skipped finish(): unsupported return type "PackedByteArray".
}
