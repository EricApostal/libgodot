// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class PacketPeerStream extends PacketPeer {
  PacketPeerStream(super.nativePtr);

  /// Constructs a brand-new engine-owned PacketPeerStream instance
  /// (via classdb_construct_object3), not an existing one.
  factory PacketPeerStream.create() {
    return PacketPeerStream(resolveClassConstructor('PacketPeerStream'));
  }

  static final Pointer<Void> _mb_set_stream_peer =
      resolveMethodBind('PacketPeerStream', 'set_stream_peer', 3281897016);

  void setStreamPeer(StreamPeer peer) {
    final arg0 = malloc<Pointer<Void>>()..value = peer.nativePtr;
    try {
      ptrcallVoid(_mb_set_stream_peer, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_stream_peer =
      resolveMethodBind('PacketPeerStream', 'get_stream_peer', 2741655269);

  StreamPeer? getStreamPeer() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_stream_peer, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : StreamPeer(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_input_buffer_max_size =
      resolveMethodBind('PacketPeerStream', 'set_input_buffer_max_size', 1286410249);

  void setInputBufferMaxSize(int maxSizeBytes) {
    final arg0 = malloc<Int64>()..value = maxSizeBytes;
    try {
      ptrcallVoid(_mb_set_input_buffer_max_size, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_output_buffer_max_size =
      resolveMethodBind('PacketPeerStream', 'set_output_buffer_max_size', 1286410249);

  void setOutputBufferMaxSize(int maxSizeBytes) {
    final arg0 = malloc<Int64>()..value = maxSizeBytes;
    try {
      ptrcallVoid(_mb_set_output_buffer_max_size, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_input_buffer_max_size =
      resolveMethodBind('PacketPeerStream', 'get_input_buffer_max_size', 3905245786);

  int getInputBufferMaxSize() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_input_buffer_max_size, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_output_buffer_max_size =
      resolveMethodBind('PacketPeerStream', 'get_output_buffer_max_size', 3905245786);

  int getOutputBufferMaxSize() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_output_buffer_max_size, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
