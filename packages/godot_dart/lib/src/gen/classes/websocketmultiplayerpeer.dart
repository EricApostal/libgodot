// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class WebSocketMultiplayerPeer extends MultiplayerPeer {
  WebSocketMultiplayerPeer(super.nativePtr);

  /// Constructs a brand-new engine-owned WebSocketMultiplayerPeer instance
  /// (via classdb_construct_object3), not an existing one.
  factory WebSocketMultiplayerPeer.create() {
    return WebSocketMultiplayerPeer(resolveClassConstructor('WebSocketMultiplayerPeer'));
  }

  static final Pointer<Void> _mb_create_client =
      resolveMethodBind('WebSocketMultiplayerPeer', 'create_client', 1966198364);

  int createClient(String url, TLSOptions tlsClientOptions) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), url);
    final arg1 = malloc<Pointer<Void>>()..value = tlsClientOptions.nativePtr;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_create_client, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
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

  static final Pointer<Void> _mb_create_server =
      resolveMethodBind('WebSocketMultiplayerPeer', 'create_server', 2400822951);

  int createServer(int port, String bindAddress, TLSOptions tlsServerOptions) {
    final arg0 = malloc<Int64>()..value = port;
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg1.cast(), bindAddress);
    final arg2 = malloc<Pointer<Void>>()..value = tlsServerOptions.nativePtr;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_create_server, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()], ret.cast());
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

  static final Pointer<Void> _mb_get_peer =
      resolveMethodBind('WebSocketMultiplayerPeer', 'get_peer', 1381378851);

  WebSocketPeer? getPeer(int peerId) {
    final arg0 = malloc<Int64>()..value = peerId;
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_peer, nativePtr, [arg0.cast<Void>()], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : WebSocketPeer(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_peer_address =
      resolveMethodBind('WebSocketMultiplayerPeer', 'get_peer_address', 844755477);

  String getPeerAddress(int id) {
    final arg0 = malloc<Int64>()..value = id;
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_peer_address, nativePtr, [arg0.cast<Void>()], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_peer_port =
      resolveMethodBind('WebSocketMultiplayerPeer', 'get_peer_port', 923996154);

  int getPeerPort(int id) {
    final arg0 = malloc<Int64>()..value = id;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_peer_port, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  // Skipped get_supported_protocols(): unsupported return type "PackedStringArray".
  // Skipped set_supported_protocols(): an argument type is unsupported.
  // Skipped get_handshake_headers(): unsupported return type "PackedStringArray".
  // Skipped set_handshake_headers(): an argument type is unsupported.
  static final Pointer<Void> _mb_get_inbound_buffer_size =
      resolveMethodBind('WebSocketMultiplayerPeer', 'get_inbound_buffer_size', 3905245786);

  int getInboundBufferSize() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_inbound_buffer_size, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_inbound_buffer_size =
      resolveMethodBind('WebSocketMultiplayerPeer', 'set_inbound_buffer_size', 1286410249);

  void setInboundBufferSize(int bufferSize) {
    final arg0 = malloc<Int64>()..value = bufferSize;
    try {
      ptrcallVoid(_mb_set_inbound_buffer_size, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_outbound_buffer_size =
      resolveMethodBind('WebSocketMultiplayerPeer', 'get_outbound_buffer_size', 3905245786);

  int getOutboundBufferSize() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_outbound_buffer_size, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_outbound_buffer_size =
      resolveMethodBind('WebSocketMultiplayerPeer', 'set_outbound_buffer_size', 1286410249);

  void setOutboundBufferSize(int bufferSize) {
    final arg0 = malloc<Int64>()..value = bufferSize;
    try {
      ptrcallVoid(_mb_set_outbound_buffer_size, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_handshake_timeout =
      resolveMethodBind('WebSocketMultiplayerPeer', 'get_handshake_timeout', 1740695150);

  double getHandshakeTimeout() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_handshake_timeout, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_handshake_timeout =
      resolveMethodBind('WebSocketMultiplayerPeer', 'set_handshake_timeout', 373806689);

  void setHandshakeTimeout(double timeout) {
    final arg0 = malloc<Double>()..value = timeout;
    try {
      ptrcallVoid(_mb_set_handshake_timeout, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_max_queued_packets =
      resolveMethodBind('WebSocketMultiplayerPeer', 'set_max_queued_packets', 1286410249);

  void setMaxQueuedPackets(int maxQueuedPackets) {
    final arg0 = malloc<Int64>()..value = maxQueuedPackets;
    try {
      ptrcallVoid(_mb_set_max_queued_packets, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_max_queued_packets =
      resolveMethodBind('WebSocketMultiplayerPeer', 'get_max_queued_packets', 3905245786);

  int getMaxQueuedPackets() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_max_queued_packets, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
