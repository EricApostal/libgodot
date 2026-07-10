// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class StreamPeer extends RefCounted {
  StreamPeer(super.nativePtr);

  // Skipped put_data(): an argument type is unsupported.
  // Skipped put_partial_data(): unsupported return type "Array".
  // Skipped get_data(): unsupported return type "Array".
  // Skipped get_partial_data(): unsupported return type "Array".
  static final Pointer<Void> _mb_get_available_bytes =
      resolveMethodBind('StreamPeer', 'get_available_bytes', 3905245786);

  int getAvailableBytes() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_available_bytes, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_big_endian =
      resolveMethodBind('StreamPeer', 'set_big_endian', 2586408642);

  void setBigEndian(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_big_endian, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_big_endian_enabled =
      resolveMethodBind('StreamPeer', 'is_big_endian_enabled', 36873697);

  bool isBigEndianEnabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_big_endian_enabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_put_8 =
      resolveMethodBind('StreamPeer', 'put_8', 1286410249);

  void put8(int value) {
    final arg0 = malloc<Int64>()..value = value;
    try {
      ptrcallVoid(_mb_put_8, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_put_u8 =
      resolveMethodBind('StreamPeer', 'put_u8', 1286410249);

  void putU8(int value) {
    final arg0 = malloc<Int64>()..value = value;
    try {
      ptrcallVoid(_mb_put_u8, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_put_16 =
      resolveMethodBind('StreamPeer', 'put_16', 1286410249);

  void put16(int value) {
    final arg0 = malloc<Int64>()..value = value;
    try {
      ptrcallVoid(_mb_put_16, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_put_u16 =
      resolveMethodBind('StreamPeer', 'put_u16', 1286410249);

  void putU16(int value) {
    final arg0 = malloc<Int64>()..value = value;
    try {
      ptrcallVoid(_mb_put_u16, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_put_32 =
      resolveMethodBind('StreamPeer', 'put_32', 1286410249);

  void put32(int value) {
    final arg0 = malloc<Int64>()..value = value;
    try {
      ptrcallVoid(_mb_put_32, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_put_u32 =
      resolveMethodBind('StreamPeer', 'put_u32', 1286410249);

  void putU32(int value) {
    final arg0 = malloc<Int64>()..value = value;
    try {
      ptrcallVoid(_mb_put_u32, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_put_64 =
      resolveMethodBind('StreamPeer', 'put_64', 1286410249);

  void put64(int value) {
    final arg0 = malloc<Int64>()..value = value;
    try {
      ptrcallVoid(_mb_put_64, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_put_u64 =
      resolveMethodBind('StreamPeer', 'put_u64', 1286410249);

  void putU64(int value) {
    final arg0 = malloc<Int64>()..value = value;
    try {
      ptrcallVoid(_mb_put_u64, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_put_half =
      resolveMethodBind('StreamPeer', 'put_half', 373806689);

  void putHalf(double value) {
    final arg0 = malloc<Double>()..value = value;
    try {
      ptrcallVoid(_mb_put_half, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_put_float =
      resolveMethodBind('StreamPeer', 'put_float', 373806689);

  void putFloat(double value) {
    final arg0 = malloc<Double>()..value = value;
    try {
      ptrcallVoid(_mb_put_float, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_put_double =
      resolveMethodBind('StreamPeer', 'put_double', 373806689);

  void putDouble(double value) {
    final arg0 = malloc<Double>()..value = value;
    try {
      ptrcallVoid(_mb_put_double, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_put_string =
      resolveMethodBind('StreamPeer', 'put_string', 83702148);

  void putString(String value) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), value);
    try {
      ptrcallVoid(_mb_put_string, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_put_utf8_string =
      resolveMethodBind('StreamPeer', 'put_utf8_string', 83702148);

  void putUtf8String(String value) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), value);
    try {
      ptrcallVoid(_mb_put_utf8_string, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  // Skipped put_var(): an argument type is unsupported.
  static final Pointer<Void> _mb_get_8 =
      resolveMethodBind('StreamPeer', 'get_8', 2455072627);

  int get8() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_8, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_u8 =
      resolveMethodBind('StreamPeer', 'get_u8', 2455072627);

  int getU8() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_u8, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_16 =
      resolveMethodBind('StreamPeer', 'get_16', 2455072627);

  int get16() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_16, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_u16 =
      resolveMethodBind('StreamPeer', 'get_u16', 2455072627);

  int getU16() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_u16, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_32 =
      resolveMethodBind('StreamPeer', 'get_32', 2455072627);

  int get32() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_32, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_u32 =
      resolveMethodBind('StreamPeer', 'get_u32', 2455072627);

  int getU32() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_u32, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_64 =
      resolveMethodBind('StreamPeer', 'get_64', 2455072627);

  int get64() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_64, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_u64 =
      resolveMethodBind('StreamPeer', 'get_u64', 2455072627);

  int getU64() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_u64, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_half =
      resolveMethodBind('StreamPeer', 'get_half', 191475506);

  double getHalf() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_half, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_float =
      resolveMethodBind('StreamPeer', 'get_float', 191475506);

  double getFloat() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_float, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_double =
      resolveMethodBind('StreamPeer', 'get_double', 191475506);

  double getDouble() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_double, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_string =
      resolveMethodBind('StreamPeer', 'get_string', 2309358862);

  String getString(int bytes) {
    final arg0 = malloc<Int64>()..value = bytes;
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_string, nativePtr, [arg0.cast<Void>()], ret.cast());
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

  static final Pointer<Void> _mb_get_utf8_string =
      resolveMethodBind('StreamPeer', 'get_utf8_string', 2309358862);

  String getUtf8String(int bytes) {
    final arg0 = malloc<Int64>()..value = bytes;
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_utf8_string, nativePtr, [arg0.cast<Void>()], ret.cast());
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

  // Skipped get_var(): unsupported return type "Variant".
}
