// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class JSONRPC extends GodotObject {
  JSONRPC(super.nativePtr);

  // Skipped set_method(): an argument type is unsupported.
  // Skipped process_action(): unsupported return type "Variant".
  static final Pointer<Void> _mb_process_string =
      resolveMethodBind('JSONRPC', 'process_string', 1703090593);

  String processString(String action) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), action);
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_process_string, nativePtr, [arg0.cast<Void>()], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  // Skipped make_request(): unsupported return type "Dictionary".
  // Skipped make_response(): unsupported return type "Dictionary".
  // Skipped make_notification(): unsupported return type "Dictionary".
  // Skipped make_response_error(): unsupported return type "Dictionary".
}
