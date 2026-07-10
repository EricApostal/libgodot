// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class StreamPeerTCP extends StreamPeerSocket {
  StreamPeerTCP(super.nativePtr);

  /// Constructs a brand-new engine-owned StreamPeerTCP instance
  /// (via classdb_construct_object3), not an existing one.
  factory StreamPeerTCP.create() {
    return StreamPeerTCP(resolveClassConstructor('StreamPeerTCP'));
  }

  static final Pointer<Void> _mb_bind =
      resolveMethodBind('StreamPeerTCP', 'bind', 3167955072);

  int bind(int port, String host) {
    final arg0 = malloc<Int64>()..value = port;
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg1.cast(), host);
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_bind, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      BuiltinMarshal.destroyGDString(arg1.cast());
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_connect_to_host =
      resolveMethodBind('StreamPeerTCP', 'connect_to_host', 993915709);

  int connectToHost(String host, int port) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), host);
    final arg1 = malloc<Int64>()..value = port;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_connect_to_host, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
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

  static final Pointer<Void> _mb_get_connected_host =
      resolveMethodBind('StreamPeerTCP', 'get_connected_host', 201670096);

  String getConnectedHost() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_connected_host, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_connected_port =
      resolveMethodBind('StreamPeerTCP', 'get_connected_port', 3905245786);

  int getConnectedPort() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_connected_port, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_local_port =
      resolveMethodBind('StreamPeerTCP', 'get_local_port', 3905245786);

  int getLocalPort() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_local_port, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_no_delay =
      resolveMethodBind('StreamPeerTCP', 'set_no_delay', 2586408642);

  void setNoDelay(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_no_delay, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

}
