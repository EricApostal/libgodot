// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class ENetMultiplayerPeer extends MultiplayerPeer {
  ENetMultiplayerPeer(super.nativePtr);

  static final Pointer<Void> _mb_create_server =
      resolveMethodBind('ENetMultiplayerPeer', 'create_server', 2917761309);

  int createServer(int port, int maxClients, int maxChannels, int inBandwidth, int outBandwidth) {
    final arg0 = malloc<Int64>()..value = port;
    final arg1 = malloc<Int64>()..value = maxClients;
    final arg2 = malloc<Int64>()..value = maxChannels;
    final arg3 = malloc<Int64>()..value = inBandwidth;
    final arg4 = malloc<Int64>()..value = outBandwidth;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_create_server, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>(), arg3.cast<Void>(), arg4.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
      malloc.free(arg3);
      malloc.free(arg4);
    }
  }

  static final Pointer<Void> _mb_create_client =
      resolveMethodBind('ENetMultiplayerPeer', 'create_client', 2327163476);

  int createClient(String address, int port, int channelCount, int inBandwidth, int outBandwidth, int localPort) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), address);
    final arg1 = malloc<Int64>()..value = port;
    final arg2 = malloc<Int64>()..value = channelCount;
    final arg3 = malloc<Int64>()..value = inBandwidth;
    final arg4 = malloc<Int64>()..value = outBandwidth;
    final arg5 = malloc<Int64>()..value = localPort;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_create_client, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>(), arg3.cast<Void>(), arg4.cast<Void>(), arg5.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
      malloc.free(arg3);
      malloc.free(arg4);
      malloc.free(arg5);
    }
  }

  static final Pointer<Void> _mb_create_mesh =
      resolveMethodBind('ENetMultiplayerPeer', 'create_mesh', 844576869);

  int createMesh(int uniqueId) {
    final arg0 = malloc<Int64>()..value = uniqueId;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_create_mesh, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_add_mesh_peer =
      resolveMethodBind('ENetMultiplayerPeer', 'add_mesh_peer', 1293458335);

  int addMeshPeer(int peerId, ENetConnection host) {
    final arg0 = malloc<Int64>()..value = peerId;
    final arg1 = malloc<Pointer<Void>>()..value = host.nativePtr;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_add_mesh_peer, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_set_bind_ip =
      resolveMethodBind('ENetMultiplayerPeer', 'set_bind_ip', 83702148);

  void setBindIp(String ip) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), ip);
    try {
      ptrcallVoid(_mb_set_bind_ip, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_host =
      resolveMethodBind('ENetMultiplayerPeer', 'get_host', 4103238886);

  ENetConnection? getHost() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_host, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : ENetConnection(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_peer =
      resolveMethodBind('ENetMultiplayerPeer', 'get_peer', 3793311544);

  ENetPacketPeer? getPeer(int id) {
    final arg0 = malloc<Int64>()..value = id;
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_peer, nativePtr, [arg0.cast<Void>()], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : ENetPacketPeer(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

}
