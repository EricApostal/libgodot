// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class Marshalls extends GodotObject {
  Marshalls(super.nativePtr);

  // Skipped variant_to_base64(): an argument type is unsupported.
  // Skipped base64_to_variant(): unsupported return type "Variant".
  // Skipped raw_to_base64(): an argument type is unsupported.
  // Skipped base64_to_raw(): unsupported return type "PackedByteArray".
  static final Pointer<Void> _mb_utf8_to_base64 =
      resolveMethodBind('Marshalls', 'utf8_to_base64', 1703090593);

  String utf8ToBase64(String utf8Str) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), utf8Str);
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_utf8_to_base64, nativePtr, [arg0.cast<Void>()], ret.cast());
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

  static final Pointer<Void> _mb_base64_to_utf8 =
      resolveMethodBind('Marshalls', 'base64_to_utf8', 1703090593);

  String base64ToUtf8(String base64Str) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), base64Str);
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_base64_to_utf8, nativePtr, [arg0.cast<Void>()], ret.cast());
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

}
