// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class ZIPPacker extends RefCounted {
  ZIPPacker(super.nativePtr);

  /// Constructs a brand-new engine-owned ZIPPacker instance
  /// (via classdb_construct_object3), not an existing one.
  factory ZIPPacker.create() {
    return ZIPPacker(resolveClassConstructor('ZIPPacker'));
  }

  static final Pointer<Void> _mb_open =
      resolveMethodBind('ZIPPacker', 'open', 1936816515);

  int open(String path, int append) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), path);
    final arg1 = malloc<Int64>()..value = append;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_open, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
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

  static final Pointer<Void> _mb_set_compression_level =
      resolveMethodBind('ZIPPacker', 'set_compression_level', 1286410249);

  void setCompressionLevel(int compressionLevel) {
    final arg0 = malloc<Int64>()..value = compressionLevel;
    try {
      ptrcallVoid(_mb_set_compression_level, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_compression_level =
      resolveMethodBind('ZIPPacker', 'get_compression_level', 3905245786);

  int getCompressionLevel() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_compression_level, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_add_directory =
      resolveMethodBind('ZIPPacker', 'add_directory', 934773537);

  int addDirectory(String path, int permissions, int modifiedTime) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), path);
    final arg1 = malloc<Int64>()..value = permissions;
    final arg2 = malloc<Int64>()..value = modifiedTime;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_add_directory, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_start_file =
      resolveMethodBind('ZIPPacker', 'start_file', 4260848715);

  int startFile(String path, int permissions, int modifiedTime) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), path);
    final arg1 = malloc<Int64>()..value = permissions;
    final arg2 = malloc<Int64>()..value = modifiedTime;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_start_file, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
    }
  }

  // Skipped write_file(): an argument type is unsupported.
  static final Pointer<Void> _mb_close_file =
      resolveMethodBind('ZIPPacker', 'close_file', 166280745);

  int closeFile() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_close_file, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_close =
      resolveMethodBind('ZIPPacker', 'close', 166280745);

  int close() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_close, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
