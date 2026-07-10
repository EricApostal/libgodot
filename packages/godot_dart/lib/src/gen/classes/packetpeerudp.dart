// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class PacketPeerUDP extends PacketPeer {
  PacketPeerUDP(super.nativePtr);

  static final Pointer<Void> _mb_bind =
      resolveMethodBind('PacketPeerUDP', 'bind', 4051239242);

  int bind(int port, String bindAddress, int recvBufSize) {
    final arg0 = malloc<Int64>()..value = port;
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg1.cast(), bindAddress);
    final arg2 = malloc<Int64>()..value = recvBufSize;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_bind, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()], ret.cast());
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

  static final Pointer<Void> _mb_close =
      resolveMethodBind('PacketPeerUDP', 'close', 3218959716);

  void close() {
    try {
      ptrcallVoid(_mb_close, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_wait =
      resolveMethodBind('PacketPeerUDP', 'wait', 166280745);

  int wait() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_wait, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_is_bound =
      resolveMethodBind('PacketPeerUDP', 'is_bound', 36873697);

  bool isBound() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_bound, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_connect_to_host =
      resolveMethodBind('PacketPeerUDP', 'connect_to_host', 993915709);

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

  static final Pointer<Void> _mb_is_socket_connected =
      resolveMethodBind('PacketPeerUDP', 'is_socket_connected', 36873697);

  bool isSocketConnected() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_socket_connected, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_packet_ip =
      resolveMethodBind('PacketPeerUDP', 'get_packet_ip', 201670096);

  String getPacketIp() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_packet_ip, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_packet_port =
      resolveMethodBind('PacketPeerUDP', 'get_packet_port', 3905245786);

  int getPacketPort() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_packet_port, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_local_port =
      resolveMethodBind('PacketPeerUDP', 'get_local_port', 3905245786);

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

  static final Pointer<Void> _mb_set_dest_address =
      resolveMethodBind('PacketPeerUDP', 'set_dest_address', 993915709);

  int setDestAddress(String host, int port) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), host);
    final arg1 = malloc<Int64>()..value = port;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_set_dest_address, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
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

  static final Pointer<Void> _mb_set_broadcast_enabled =
      resolveMethodBind('PacketPeerUDP', 'set_broadcast_enabled', 2586408642);

  void setBroadcastEnabled(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_broadcast_enabled, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_join_multicast_group =
      resolveMethodBind('PacketPeerUDP', 'join_multicast_group', 852856452);

  int joinMulticastGroup(String multicastAddress, String interfaceName) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), multicastAddress);
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg1.cast(), interfaceName);
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_join_multicast_group, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
      BuiltinMarshal.destroyGDString(arg1.cast());
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_leave_multicast_group =
      resolveMethodBind('PacketPeerUDP', 'leave_multicast_group', 852856452);

  int leaveMulticastGroup(String multicastAddress, String interfaceName) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), multicastAddress);
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg1.cast(), interfaceName);
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_leave_multicast_group, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
      BuiltinMarshal.destroyGDString(arg1.cast());
      malloc.free(arg1);
    }
  }

}
