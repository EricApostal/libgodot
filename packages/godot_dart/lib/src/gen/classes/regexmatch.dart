// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class RegExMatch extends RefCounted {
  RegExMatch(super.nativePtr);

  /// Constructs a brand-new engine-owned RegExMatch instance
  /// (via classdb_construct_object3), not an existing one.
  factory RegExMatch.create() {
    return RegExMatch(resolveClassConstructor('RegExMatch'));
  }

  static final Pointer<Void> _mb_get_subject =
      resolveMethodBind('RegExMatch', 'get_subject', 201670096);

  String getSubject() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_subject, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_group_count =
      resolveMethodBind('RegExMatch', 'get_group_count', 3905245786);

  int getGroupCount() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_group_count, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  // Skipped get_names(): unsupported return type "Dictionary".
  // Skipped get_strings(): unsupported return type "PackedStringArray".
  // Skipped get_string(): an argument type is unsupported.
  // Skipped get_start(): an argument type is unsupported.
  // Skipped get_end(): an argument type is unsupported.
}
