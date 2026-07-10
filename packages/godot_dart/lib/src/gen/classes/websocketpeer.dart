// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class WebSocketPeer extends PacketPeer {
  WebSocketPeer(super.nativePtr);

  static final Pointer<Void> _mb_connect_to_url =
      resolveMethodBind('WebSocketPeer', 'connect_to_url', 1966198364);

  int connectToUrl(String url, TLSOptions tlsClientOptions) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), url);
    final arg1 = malloc<Pointer<Void>>()..value = tlsClientOptions.nativePtr;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_connect_to_url, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
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

  static final Pointer<Void> _mb_accept_stream =
      resolveMethodBind('WebSocketPeer', 'accept_stream', 255125695);

  int acceptStream(StreamPeer stream) {
    final arg0 = malloc<Pointer<Void>>()..value = stream.nativePtr;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_accept_stream, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  // Skipped send(): an argument type is unsupported.
  static final Pointer<Void> _mb_send_text =
      resolveMethodBind('WebSocketPeer', 'send_text', 166001499);

  int sendText(String message) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), message);
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_send_text, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_was_string_packet =
      resolveMethodBind('WebSocketPeer', 'was_string_packet', 36873697);

  bool wasStringPacket() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_was_string_packet, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_poll =
      resolveMethodBind('WebSocketPeer', 'poll', 3218959716);

  void poll() {
    try {
      ptrcallVoid(_mb_poll, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_close =
      resolveMethodBind('WebSocketPeer', 'close', 1047156615);

  void close(int code, String reason) {
    final arg0 = malloc<Int64>()..value = code;
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg1.cast(), reason);
    try {
      ptrcallVoid(_mb_close, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      BuiltinMarshal.destroyGDString(arg1.cast());
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_connected_host =
      resolveMethodBind('WebSocketPeer', 'get_connected_host', 201670096);

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
      resolveMethodBind('WebSocketPeer', 'get_connected_port', 3905245786);

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

  static final Pointer<Void> _mb_get_selected_protocol =
      resolveMethodBind('WebSocketPeer', 'get_selected_protocol', 201670096);

  String getSelectedProtocol() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_selected_protocol, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_requested_url =
      resolveMethodBind('WebSocketPeer', 'get_requested_url', 201670096);

  String getRequestedUrl() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_requested_url, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_no_delay =
      resolveMethodBind('WebSocketPeer', 'set_no_delay', 2586408642);

  void setNoDelay(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_no_delay, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_current_outbound_buffered_amount =
      resolveMethodBind('WebSocketPeer', 'get_current_outbound_buffered_amount', 3905245786);

  int getCurrentOutboundBufferedAmount() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_current_outbound_buffered_amount, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_ready_state =
      resolveMethodBind('WebSocketPeer', 'get_ready_state', 346482985);

  int getReadyState() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_ready_state, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_close_code =
      resolveMethodBind('WebSocketPeer', 'get_close_code', 3905245786);

  int getCloseCode() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_close_code, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_close_reason =
      resolveMethodBind('WebSocketPeer', 'get_close_reason', 201670096);

  String getCloseReason() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_close_reason, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  // Skipped get_supported_protocols(): unsupported return type "PackedStringArray".
  // Skipped set_supported_protocols(): an argument type is unsupported.
  // Skipped get_handshake_headers(): unsupported return type "PackedStringArray".
  // Skipped set_handshake_headers(): an argument type is unsupported.
  static final Pointer<Void> _mb_get_inbound_buffer_size =
      resolveMethodBind('WebSocketPeer', 'get_inbound_buffer_size', 3905245786);

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
      resolveMethodBind('WebSocketPeer', 'set_inbound_buffer_size', 1286410249);

  void setInboundBufferSize(int bufferSize) {
    final arg0 = malloc<Int64>()..value = bufferSize;
    try {
      ptrcallVoid(_mb_set_inbound_buffer_size, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_outbound_buffer_size =
      resolveMethodBind('WebSocketPeer', 'get_outbound_buffer_size', 3905245786);

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
      resolveMethodBind('WebSocketPeer', 'set_outbound_buffer_size', 1286410249);

  void setOutboundBufferSize(int bufferSize) {
    final arg0 = malloc<Int64>()..value = bufferSize;
    try {
      ptrcallVoid(_mb_set_outbound_buffer_size, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_max_queued_packets =
      resolveMethodBind('WebSocketPeer', 'set_max_queued_packets', 1286410249);

  void setMaxQueuedPackets(int bufferSize) {
    final arg0 = malloc<Int64>()..value = bufferSize;
    try {
      ptrcallVoid(_mb_set_max_queued_packets, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_max_queued_packets =
      resolveMethodBind('WebSocketPeer', 'get_max_queued_packets', 3905245786);

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

  static final Pointer<Void> _mb_set_heartbeat_interval =
      resolveMethodBind('WebSocketPeer', 'set_heartbeat_interval', 373806689);

  void setHeartbeatInterval(double interval) {
    final arg0 = malloc<Double>()..value = interval;
    try {
      ptrcallVoid(_mb_set_heartbeat_interval, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_heartbeat_interval =
      resolveMethodBind('WebSocketPeer', 'get_heartbeat_interval', 1740695150);

  double getHeartbeatInterval() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_heartbeat_interval, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
