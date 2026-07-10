// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class CryptoKey extends Resource {
  CryptoKey(super.nativePtr);

  /// Constructs a brand-new engine-owned CryptoKey instance
  /// (via classdb_construct_object3), not an existing one.
  factory CryptoKey.create() {
    return CryptoKey(resolveClassConstructor('CryptoKey'));
  }

  static final Pointer<Void> _mb_save =
      resolveMethodBind('CryptoKey', 'save', 885841341);

  int save(String path, bool publicOnly) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), path);
    final arg1 = malloc<Uint8>()..value = publicOnly ? 1 : 0;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_save, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_load =
      resolveMethodBind('CryptoKey', 'load', 885841341);

  int load(String path, bool publicOnly) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), path);
    final arg1 = malloc<Uint8>()..value = publicOnly ? 1 : 0;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_load, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_is_public_only =
      resolveMethodBind('CryptoKey', 'is_public_only', 36873697);

  bool isPublicOnly() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_public_only, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_save_to_string =
      resolveMethodBind('CryptoKey', 'save_to_string', 32795936);

  String saveToString(bool publicOnly) {
    final arg0 = malloc<Uint8>()..value = publicOnly ? 1 : 0;
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_save_to_string, nativePtr, [arg0.cast<Void>()], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_load_from_string =
      resolveMethodBind('CryptoKey', 'load_from_string', 885841341);

  int loadFromString(String stringKey, bool publicOnly) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), stringKey);
    final arg1 = malloc<Uint8>()..value = publicOnly ? 1 : 0;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_load_from_string, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

}
