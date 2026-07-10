// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class Crypto extends RefCounted {
  Crypto(super.nativePtr);

  /// Constructs a brand-new engine-owned Crypto instance
  /// (via classdb_construct_object3), not an existing one.
  factory Crypto.create() {
    return Crypto(resolveClassConstructor('Crypto'));
  }

  // Skipped generate_random_bytes(): unsupported return type "PackedByteArray".
  static final Pointer<Void> _mb_generate_rsa =
      resolveMethodBind('Crypto', 'generate_rsa', 1237515462);

  CryptoKey? generateRsa(int size) {
    final arg0 = malloc<Int64>()..value = size;
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_generate_rsa, nativePtr, [arg0.cast<Void>()], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : CryptoKey(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_generate_self_signed_certificate =
      resolveMethodBind('Crypto', 'generate_self_signed_certificate', 492266173);

  X509Certificate? generateSelfSignedCertificate(CryptoKey key, String issuerName, String notBefore, String notAfter) {
    final arg0 = malloc<Pointer<Void>>()..value = key.nativePtr;
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg1.cast(), issuerName);
    final arg2 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg2.cast(), notBefore);
    final arg3 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg3.cast(), notAfter);
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_generate_self_signed_certificate, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>(), arg3.cast<Void>()], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : X509Certificate(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      BuiltinMarshal.destroyGDString(arg1.cast());
      malloc.free(arg1);
      BuiltinMarshal.destroyGDString(arg2.cast());
      malloc.free(arg2);
      BuiltinMarshal.destroyGDString(arg3.cast());
      malloc.free(arg3);
    }
  }

  // Skipped sign(): unsupported return type "PackedByteArray".
  // Skipped verify(): an argument type is unsupported.
  // Skipped encrypt(): unsupported return type "PackedByteArray".
  // Skipped decrypt(): unsupported return type "PackedByteArray".
  // Skipped hmac_digest(): unsupported return type "PackedByteArray".
  // Skipped constant_time_compare(): an argument type is unsupported.
}
