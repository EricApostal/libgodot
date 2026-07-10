// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class TCPServer extends SocketServer {
  TCPServer(super.nativePtr);

  /// Constructs a brand-new engine-owned TCPServer instance
  /// (via classdb_construct_object3), not an existing one.
  factory TCPServer.create() {
    return TCPServer(resolveClassConstructor('TCPServer'));
  }

  static final Pointer<Void> _mb_listen =
      resolveMethodBind('TCPServer', 'listen', 3167955072);

  int listen(int port, String bindAddress) {
    final arg0 = malloc<Int64>()..value = port;
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg1.cast(), bindAddress);
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_listen, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
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

  static final Pointer<Void> _mb_get_local_port =
      resolveMethodBind('TCPServer', 'get_local_port', 3905245786);

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

  static final Pointer<Void> _mb_take_connection =
      resolveMethodBind('TCPServer', 'take_connection', 30545006);

  StreamPeerTCP? takeConnection() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_take_connection, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : StreamPeerTCP(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
