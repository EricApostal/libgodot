// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class MultiplayerPeer extends PacketPeer {
  MultiplayerPeer(super.nativePtr);

  static final Pointer<Void> _mb_set_transfer_channel =
      resolveMethodBind('MultiplayerPeer', 'set_transfer_channel', 1286410249);

  void setTransferChannel(int channel) {
    final arg0 = malloc<Int64>()..value = channel;
    try {
      ptrcallVoid(_mb_set_transfer_channel, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_transfer_channel =
      resolveMethodBind('MultiplayerPeer', 'get_transfer_channel', 3905245786);

  int getTransferChannel() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_transfer_channel, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_transfer_mode =
      resolveMethodBind('MultiplayerPeer', 'set_transfer_mode', 950411049);

  void setTransferMode(int mode) {
    final arg0 = malloc<Int64>()..value = mode;
    try {
      ptrcallVoid(_mb_set_transfer_mode, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_transfer_mode =
      resolveMethodBind('MultiplayerPeer', 'get_transfer_mode', 3369852622);

  int getTransferMode() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_transfer_mode, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_target_peer =
      resolveMethodBind('MultiplayerPeer', 'set_target_peer', 1286410249);

  void setTargetPeer(int id) {
    final arg0 = malloc<Int64>()..value = id;
    try {
      ptrcallVoid(_mb_set_target_peer, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_packet_peer =
      resolveMethodBind('MultiplayerPeer', 'get_packet_peer', 3905245786);

  int getPacketPeer() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_packet_peer, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_packet_channel =
      resolveMethodBind('MultiplayerPeer', 'get_packet_channel', 3905245786);

  int getPacketChannel() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_packet_channel, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_packet_mode =
      resolveMethodBind('MultiplayerPeer', 'get_packet_mode', 3369852622);

  int getPacketMode() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_packet_mode, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_poll =
      resolveMethodBind('MultiplayerPeer', 'poll', 3218959716);

  void poll() {
    try {
      ptrcallVoid(_mb_poll, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_close =
      resolveMethodBind('MultiplayerPeer', 'close', 3218959716);

  void close() {
    try {
      ptrcallVoid(_mb_close, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_disconnect_peer =
      resolveMethodBind('MultiplayerPeer', 'disconnect_peer', 4023243586);

  void disconnectPeer(int peer, bool force) {
    final arg0 = malloc<Int64>()..value = peer;
    final arg1 = malloc<Uint8>()..value = force ? 1 : 0;
    try {
      ptrcallVoid(_mb_disconnect_peer, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_connection_status =
      resolveMethodBind('MultiplayerPeer', 'get_connection_status', 2147374275);

  int getConnectionStatus() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_connection_status, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_unique_id =
      resolveMethodBind('MultiplayerPeer', 'get_unique_id', 3905245786);

  int getUniqueId() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_unique_id, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_generate_unique_id =
      resolveMethodBind('MultiplayerPeer', 'generate_unique_id', 3905245786);

  int generateUniqueId() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_generate_unique_id, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_refuse_new_connections =
      resolveMethodBind('MultiplayerPeer', 'set_refuse_new_connections', 2586408642);

  void setRefuseNewConnections(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_refuse_new_connections, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_refusing_new_connections =
      resolveMethodBind('MultiplayerPeer', 'is_refusing_new_connections', 36873697);

  bool isRefusingNewConnections() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_refusing_new_connections, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_is_server_relay_supported =
      resolveMethodBind('MultiplayerPeer', 'is_server_relay_supported', 36873697);

  bool isServerRelaySupported() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_server_relay_supported, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
