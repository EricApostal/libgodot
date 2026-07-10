// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class FileAccess extends RefCounted {
  FileAccess(super.nativePtr);

  static final Pointer<Void> _mb_resize =
      resolveMethodBind('FileAccess', 'resize', 844576869);

  int resize(int length) {
    final arg0 = malloc<Int64>()..value = length;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_resize, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_flush =
      resolveMethodBind('FileAccess', 'flush', 3218959716);

  void flush() {
    try {
      ptrcallVoid(_mb_flush, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_path =
      resolveMethodBind('FileAccess', 'get_path', 201670096);

  String getPath() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_path, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_path_absolute =
      resolveMethodBind('FileAccess', 'get_path_absolute', 201670096);

  String getPathAbsolute() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_path_absolute, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_is_open =
      resolveMethodBind('FileAccess', 'is_open', 36873697);

  bool isOpen() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_open, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_seek =
      resolveMethodBind('FileAccess', 'seek', 1286410249);

  void seek(int position) {
    final arg0 = malloc<Int64>()..value = position;
    try {
      ptrcallVoid(_mb_seek, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_seek_end =
      resolveMethodBind('FileAccess', 'seek_end', 1995695955);

  void seekEnd(int position) {
    final arg0 = malloc<Int64>()..value = position;
    try {
      ptrcallVoid(_mb_seek_end, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_position =
      resolveMethodBind('FileAccess', 'get_position', 3905245786);

  int getPosition() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_position, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_length =
      resolveMethodBind('FileAccess', 'get_length', 3905245786);

  int getLength() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_length, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_eof_reached =
      resolveMethodBind('FileAccess', 'eof_reached', 36873697);

  bool eofReached() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_eof_reached, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_8 =
      resolveMethodBind('FileAccess', 'get_8', 3905245786);

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

  static final Pointer<Void> _mb_get_16 =
      resolveMethodBind('FileAccess', 'get_16', 3905245786);

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

  static final Pointer<Void> _mb_get_32 =
      resolveMethodBind('FileAccess', 'get_32', 3905245786);

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

  static final Pointer<Void> _mb_get_64 =
      resolveMethodBind('FileAccess', 'get_64', 3905245786);

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

  static final Pointer<Void> _mb_get_half =
      resolveMethodBind('FileAccess', 'get_half', 1740695150);

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
      resolveMethodBind('FileAccess', 'get_float', 1740695150);

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
      resolveMethodBind('FileAccess', 'get_double', 1740695150);

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

  static final Pointer<Void> _mb_get_real =
      resolveMethodBind('FileAccess', 'get_real', 1740695150);

  double getReal() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_real, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  // Skipped get_buffer(): unsupported return type "PackedByteArray".
  static final Pointer<Void> _mb_get_line =
      resolveMethodBind('FileAccess', 'get_line', 201670096);

  String getLine() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_line, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  // Skipped get_csv_line(): unsupported return type "PackedStringArray".
  static final Pointer<Void> _mb_get_as_text =
      resolveMethodBind('FileAccess', 'get_as_text', 201670096);

  String getAsText() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_as_text, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_is_big_endian =
      resolveMethodBind('FileAccess', 'is_big_endian', 36873697);

  bool isBigEndian() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_big_endian, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_big_endian =
      resolveMethodBind('FileAccess', 'set_big_endian', 2586408642);

  void setBigEndian(bool bigEndian) {
    final arg0 = malloc<Uint8>()..value = bigEndian ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_big_endian, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_error =
      resolveMethodBind('FileAccess', 'get_error', 3185525595);

  int getError() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_error, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  // Skipped get_var(): unsupported return type "Variant".
  static final Pointer<Void> _mb_store_8 =
      resolveMethodBind('FileAccess', 'store_8', 3067735520);

  bool store8(int value) {
    final arg0 = malloc<Int64>()..value = value;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_store_8, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_store_16 =
      resolveMethodBind('FileAccess', 'store_16', 3067735520);

  bool store16(int value) {
    final arg0 = malloc<Int64>()..value = value;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_store_16, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_store_32 =
      resolveMethodBind('FileAccess', 'store_32', 3067735520);

  bool store32(int value) {
    final arg0 = malloc<Int64>()..value = value;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_store_32, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_store_64 =
      resolveMethodBind('FileAccess', 'store_64', 3067735520);

  bool store64(int value) {
    final arg0 = malloc<Int64>()..value = value;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_store_64, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_store_half =
      resolveMethodBind('FileAccess', 'store_half', 330693286);

  bool storeHalf(double value) {
    final arg0 = malloc<Double>()..value = value;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_store_half, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_store_float =
      resolveMethodBind('FileAccess', 'store_float', 330693286);

  bool storeFloat(double value) {
    final arg0 = malloc<Double>()..value = value;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_store_float, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_store_double =
      resolveMethodBind('FileAccess', 'store_double', 330693286);

  bool storeDouble(double value) {
    final arg0 = malloc<Double>()..value = value;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_store_double, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_store_real =
      resolveMethodBind('FileAccess', 'store_real', 330693286);

  bool storeReal(double value) {
    final arg0 = malloc<Double>()..value = value;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_store_real, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  // Skipped store_buffer(): an argument type is unsupported.
  static final Pointer<Void> _mb_store_line =
      resolveMethodBind('FileAccess', 'store_line', 2323990056);

  bool storeLine(String line) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), line);
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_store_line, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  // Skipped store_csv_line(): an argument type is unsupported.
  static final Pointer<Void> _mb_store_string =
      resolveMethodBind('FileAccess', 'store_string', 2323990056);

  bool storeString(String string) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), string);
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_store_string, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  // Skipped store_var(): an argument type is unsupported.
  static final Pointer<Void> _mb_store_pascal_string =
      resolveMethodBind('FileAccess', 'store_pascal_string', 2323990056);

  bool storePascalString(String string) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), string);
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_store_pascal_string, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_pascal_string =
      resolveMethodBind('FileAccess', 'get_pascal_string', 2841200299);

  String getPascalString() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_pascal_string, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_close =
      resolveMethodBind('FileAccess', 'close', 3218959716);

  void close() {
    try {
      ptrcallVoid(_mb_close, nativePtr, []);
    } finally {
    }
  }

}
