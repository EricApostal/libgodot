// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class TLSOptions extends RefCounted {
  TLSOptions(super.nativePtr);

  static final Pointer<Void> _mb_is_server =
      resolveMethodBind('TLSOptions', 'is_server', 36873697);

  bool isServer() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_server, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_is_unsafe_client =
      resolveMethodBind('TLSOptions', 'is_unsafe_client', 36873697);

  bool isUnsafeClient() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_unsafe_client, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_common_name_override =
      resolveMethodBind('TLSOptions', 'get_common_name_override', 201670096);

  String getCommonNameOverride() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_common_name_override, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_trusted_ca_chain =
      resolveMethodBind('TLSOptions', 'get_trusted_ca_chain', 1120709175);

  X509Certificate? getTrustedCaChain() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_trusted_ca_chain, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : X509Certificate(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_private_key =
      resolveMethodBind('TLSOptions', 'get_private_key', 2119971811);

  CryptoKey? getPrivateKey() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_private_key, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : CryptoKey(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_own_certificate =
      resolveMethodBind('TLSOptions', 'get_own_certificate', 1120709175);

  X509Certificate? getOwnCertificate() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_own_certificate, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : X509Certificate(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
