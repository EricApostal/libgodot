// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class StreamPeerTLS extends StreamPeer {
  StreamPeerTLS(super.nativePtr);

  /// Constructs a brand-new engine-owned StreamPeerTLS instance
  /// (via classdb_construct_object3), not an existing one.
  factory StreamPeerTLS.create() {
    return StreamPeerTLS(resolveClassConstructor('StreamPeerTLS'));
  }

  static final Pointer<Void> _mb_poll =
      resolveMethodBind('StreamPeerTLS', 'poll', 3218959716);

  void poll() {
    try {
      ptrcallVoid(_mb_poll, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_accept_stream =
      resolveMethodBind('StreamPeerTLS', 'accept_stream', 4292689651);

  int acceptStream(StreamPeer stream, TLSOptions serverOptions) {
    final arg0 = malloc<Pointer<Void>>()..value = stream.nativePtr;
    final arg1 = malloc<Pointer<Void>>()..value = serverOptions.nativePtr;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_accept_stream, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_connect_to_stream =
      resolveMethodBind('StreamPeerTLS', 'connect_to_stream', 57169517);

  int connectToStream(StreamPeer stream, String commonName, TLSOptions clientOptions) {
    final arg0 = malloc<Pointer<Void>>()..value = stream.nativePtr;
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg1.cast(), commonName);
    final arg2 = malloc<Pointer<Void>>()..value = clientOptions.nativePtr;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_connect_to_stream, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      BuiltinMarshal.destroyGDString(arg1.cast());
      malloc.free(arg1);
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_get_status =
      resolveMethodBind('StreamPeerTLS', 'get_status', 1128380576);

  int getStatus() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_status, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_stream =
      resolveMethodBind('StreamPeerTLS', 'get_stream', 2741655269);

  StreamPeer? getStream() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_stream, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : StreamPeer(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_disconnect_from_stream =
      resolveMethodBind('StreamPeerTLS', 'disconnect_from_stream', 3218959716);

  void disconnectFromStream() {
    try {
      ptrcallVoid(_mb_disconnect_from_stream, nativePtr, []);
    } finally {
    }
  }

}
