// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class UDPServer extends RefCounted {
  UDPServer(super.nativePtr);

  /// Constructs a brand-new engine-owned UDPServer instance
  /// (via classdb_construct_object3), not an existing one.
  factory UDPServer.create() {
    return UDPServer(resolveClassConstructor('UDPServer'));
  }

  static final Pointer<Void> _mb_listen =
      resolveMethodBind('UDPServer', 'listen', 3167955072);

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

  static final Pointer<Void> _mb_poll =
      resolveMethodBind('UDPServer', 'poll', 166280745);

  int poll() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_poll, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_is_connection_available =
      resolveMethodBind('UDPServer', 'is_connection_available', 36873697);

  bool isConnectionAvailable() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_connection_available, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_local_port =
      resolveMethodBind('UDPServer', 'get_local_port', 3905245786);

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

  static final Pointer<Void> _mb_is_listening =
      resolveMethodBind('UDPServer', 'is_listening', 36873697);

  bool isListening() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_listening, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_take_connection =
      resolveMethodBind('UDPServer', 'take_connection', 808734560);

  PacketPeerUDP? takeConnection() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_take_connection, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : PacketPeerUDP(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_stop =
      resolveMethodBind('UDPServer', 'stop', 3218959716);

  void stop() {
    try {
      ptrcallVoid(_mb_stop, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_max_pending_connections =
      resolveMethodBind('UDPServer', 'set_max_pending_connections', 1286410249);

  void setMaxPendingConnections(int maxPendingConnections) {
    final arg0 = malloc<Int64>()..value = maxPendingConnections;
    try {
      ptrcallVoid(_mb_set_max_pending_connections, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_max_pending_connections =
      resolveMethodBind('UDPServer', 'get_max_pending_connections', 3905245786);

  int getMaxPendingConnections() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_max_pending_connections, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
