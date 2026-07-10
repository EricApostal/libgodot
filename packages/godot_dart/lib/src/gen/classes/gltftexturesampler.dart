// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class GLTFTextureSampler extends Resource {
  GLTFTextureSampler(super.nativePtr);

  /// Constructs a brand-new engine-owned GLTFTextureSampler instance
  /// (via classdb_construct_object3), not an existing one.
  factory GLTFTextureSampler.create() {
    return GLTFTextureSampler(resolveClassConstructor('GLTFTextureSampler'));
  }

  static final Pointer<Void> _mb_get_mag_filter =
      resolveMethodBind('GLTFTextureSampler', 'get_mag_filter', 3905245786);

  int getMagFilter() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_mag_filter, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_mag_filter =
      resolveMethodBind('GLTFTextureSampler', 'set_mag_filter', 1286410249);

  void setMagFilter(int filterMode) {
    final arg0 = malloc<Int64>()..value = filterMode;
    try {
      ptrcallVoid(_mb_set_mag_filter, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_min_filter =
      resolveMethodBind('GLTFTextureSampler', 'get_min_filter', 3905245786);

  int getMinFilter() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_min_filter, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_min_filter =
      resolveMethodBind('GLTFTextureSampler', 'set_min_filter', 1286410249);

  void setMinFilter(int filterMode) {
    final arg0 = malloc<Int64>()..value = filterMode;
    try {
      ptrcallVoid(_mb_set_min_filter, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_wrap_s =
      resolveMethodBind('GLTFTextureSampler', 'get_wrap_s', 3905245786);

  int getWrapS() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_wrap_s, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_wrap_s =
      resolveMethodBind('GLTFTextureSampler', 'set_wrap_s', 1286410249);

  void setWrapS(int wrapMode) {
    final arg0 = malloc<Int64>()..value = wrapMode;
    try {
      ptrcallVoid(_mb_set_wrap_s, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_wrap_t =
      resolveMethodBind('GLTFTextureSampler', 'get_wrap_t', 3905245786);

  int getWrapT() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_wrap_t, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_wrap_t =
      resolveMethodBind('GLTFTextureSampler', 'set_wrap_t', 1286410249);

  void setWrapT(int wrapMode) {
    final arg0 = malloc<Int64>()..value = wrapMode;
    try {
      ptrcallVoid(_mb_set_wrap_t, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

}
