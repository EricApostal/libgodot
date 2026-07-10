// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class Expression extends RefCounted {
  Expression(super.nativePtr);

  /// Constructs a brand-new engine-owned Expression instance
  /// (via classdb_construct_object3), not an existing one.
  factory Expression.create() {
    return Expression(resolveClassConstructor('Expression'));
  }

  // Skipped parse(): an argument type is unsupported.
  // Skipped execute(): unsupported return type "Variant".
  static final Pointer<Void> _mb_has_execute_failed =
      resolveMethodBind('Expression', 'has_execute_failed', 36873697);

  bool hasExecuteFailed() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_has_execute_failed, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_error_text =
      resolveMethodBind('Expression', 'get_error_text', 201670096);

  String getErrorText() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_error_text, nativePtr, [], ret.cast());
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
