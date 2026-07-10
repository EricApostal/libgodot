// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class ENetPacketPeer extends PacketPeer {
  ENetPacketPeer(super.nativePtr);

  static final Pointer<Void> _mb_peer_disconnect =
      resolveMethodBind('ENetPacketPeer', 'peer_disconnect', 1995695955);

  void peerDisconnect(int data) {
    final arg0 = malloc<Int64>()..value = data;
    try {
      ptrcallVoid(_mb_peer_disconnect, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_peer_disconnect_later =
      resolveMethodBind('ENetPacketPeer', 'peer_disconnect_later', 1995695955);

  void peerDisconnectLater(int data) {
    final arg0 = malloc<Int64>()..value = data;
    try {
      ptrcallVoid(_mb_peer_disconnect_later, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_peer_disconnect_now =
      resolveMethodBind('ENetPacketPeer', 'peer_disconnect_now', 1995695955);

  void peerDisconnectNow(int data) {
    final arg0 = malloc<Int64>()..value = data;
    try {
      ptrcallVoid(_mb_peer_disconnect_now, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_ping =
      resolveMethodBind('ENetPacketPeer', 'ping', 3218959716);

  void ping() {
    try {
      ptrcallVoid(_mb_ping, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_ping_interval =
      resolveMethodBind('ENetPacketPeer', 'ping_interval', 1286410249);

  void pingInterval(int pingInterval) {
    final arg0 = malloc<Int64>()..value = pingInterval;
    try {
      ptrcallVoid(_mb_ping_interval, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_reset =
      resolveMethodBind('ENetPacketPeer', 'reset', 3218959716);

  void reset() {
    try {
      ptrcallVoid(_mb_reset, nativePtr, []);
    } finally {
    }
  }

  // Skipped send(): an argument type is unsupported.
  static final Pointer<Void> _mb_throttle_configure =
      resolveMethodBind('ENetPacketPeer', 'throttle_configure', 1649997291);

  void throttleConfigure(int interval, int acceleration, int deceleration) {
    final arg0 = malloc<Int64>()..value = interval;
    final arg1 = malloc<Int64>()..value = acceleration;
    final arg2 = malloc<Int64>()..value = deceleration;
    try {
      ptrcallVoid(_mb_throttle_configure, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_set_timeout =
      resolveMethodBind('ENetPacketPeer', 'set_timeout', 1649997291);

  void setTimeout(int timeout, int timeoutMin, int timeoutMax) {
    final arg0 = malloc<Int64>()..value = timeout;
    final arg1 = malloc<Int64>()..value = timeoutMin;
    final arg2 = malloc<Int64>()..value = timeoutMax;
    try {
      ptrcallVoid(_mb_set_timeout, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_get_packet_flags =
      resolveMethodBind('ENetPacketPeer', 'get_packet_flags', 3905245786);

  int getPacketFlags() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_packet_flags, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_remote_address =
      resolveMethodBind('ENetPacketPeer', 'get_remote_address', 201670096);

  String getRemoteAddress() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_remote_address, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_remote_port =
      resolveMethodBind('ENetPacketPeer', 'get_remote_port', 3905245786);

  int getRemotePort() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_remote_port, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_statistic =
      resolveMethodBind('ENetPacketPeer', 'get_statistic', 1642578323);

  double getStatistic(int statistic) {
    final arg0 = malloc<Int64>()..value = statistic;
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_statistic, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_state =
      resolveMethodBind('ENetPacketPeer', 'get_state', 711068532);

  int getState() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_state, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_channels =
      resolveMethodBind('ENetPacketPeer', 'get_channels', 3905245786);

  int getChannels() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_channels, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_is_active =
      resolveMethodBind('ENetPacketPeer', 'is_active', 36873697);

  bool isActive() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_active, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
