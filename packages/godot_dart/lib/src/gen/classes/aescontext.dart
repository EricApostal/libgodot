// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class AESContext extends RefCounted {
  AESContext(super.nativePtr);

  /// Constructs a brand-new engine-owned AESContext instance
  /// (via classdb_construct_object3), not an existing one.
  factory AESContext.create() {
    return AESContext(resolveClassConstructor('AESContext'));
  }

  // Skipped start(): an argument type is unsupported.
  // Skipped update(): unsupported return type "PackedByteArray".
  // Skipped get_iv_state(): unsupported return type "PackedByteArray".
  static final Pointer<Void> _mb_finish =
      resolveMethodBind('AESContext', 'finish', 3218959716);

  void finish() {
    try {
      ptrcallVoid(_mb_finish, nativePtr, []);
    } finally {
    }
  }

}
