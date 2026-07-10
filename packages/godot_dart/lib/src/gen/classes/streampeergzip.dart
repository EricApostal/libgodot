// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class StreamPeerGZIP extends StreamPeer {
  StreamPeerGZIP(super.nativePtr);

  static final Pointer<Void> _mb_start_compression =
      resolveMethodBind('StreamPeerGZIP', 'start_compression', 781582770);

  int startCompression(bool useDeflate, int bufferSize) {
    final arg0 = malloc<Uint8>()..value = useDeflate ? 1 : 0;
    final arg1 = malloc<Int64>()..value = bufferSize;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_start_compression, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_start_decompression =
      resolveMethodBind('StreamPeerGZIP', 'start_decompression', 781582770);

  int startDecompression(bool useDeflate, int bufferSize) {
    final arg0 = malloc<Uint8>()..value = useDeflate ? 1 : 0;
    final arg1 = malloc<Int64>()..value = bufferSize;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_start_decompression, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_finish =
      resolveMethodBind('StreamPeerGZIP', 'finish', 166280745);

  int finish() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_finish, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_clear =
      resolveMethodBind('StreamPeerGZIP', 'clear', 3218959716);

  void clear() {
    try {
      ptrcallVoid(_mb_clear, nativePtr, []);
    } finally {
    }
  }

}
