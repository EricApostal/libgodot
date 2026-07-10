// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class PacketPeer extends RefCounted {
  PacketPeer(super.nativePtr);

  // Skipped get_var(): unsupported return type "Variant".
  // Skipped put_var(): an argument type is unsupported.
  // Skipped get_packet(): unsupported return type "PackedByteArray".
  // Skipped put_packet(): an argument type is unsupported.
  static final Pointer<Void> _mb_get_packet_error =
      resolveMethodBind('PacketPeer', 'get_packet_error', 3185525595);

  int getPacketError() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_packet_error, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_available_packet_count =
      resolveMethodBind('PacketPeer', 'get_available_packet_count', 3905245786);

  int getAvailablePacketCount() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_available_packet_count, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_encode_buffer_max_size =
      resolveMethodBind('PacketPeer', 'get_encode_buffer_max_size', 3905245786);

  int getEncodeBufferMaxSize() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_encode_buffer_max_size, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_encode_buffer_max_size =
      resolveMethodBind('PacketPeer', 'set_encode_buffer_max_size', 1286410249);

  void setEncodeBufferMaxSize(int maxSize) {
    final arg0 = malloc<Int64>()..value = maxSize;
    try {
      ptrcallVoid(_mb_set_encode_buffer_max_size, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

}
