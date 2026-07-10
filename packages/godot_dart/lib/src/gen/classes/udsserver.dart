// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class UDSServer extends SocketServer {
  UDSServer(super.nativePtr);

  /// Constructs a brand-new engine-owned UDSServer instance
  /// (via classdb_construct_object3), not an existing one.
  factory UDSServer.create() {
    return UDSServer(resolveClassConstructor('UDSServer'));
  }

  static final Pointer<Void> _mb_listen =
      resolveMethodBind('UDSServer', 'listen', 166001499);

  int listen(String path) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), path);
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_listen, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_take_connection =
      resolveMethodBind('UDSServer', 'take_connection', 1623851112);

  StreamPeerUDS? takeConnection() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_take_connection, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : StreamPeerUDS(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
