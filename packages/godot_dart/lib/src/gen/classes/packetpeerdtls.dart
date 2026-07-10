// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class PacketPeerDTLS extends PacketPeer {
  PacketPeerDTLS(super.nativePtr);

  static final Pointer<Void> _mb_poll =
      resolveMethodBind('PacketPeerDTLS', 'poll', 3218959716);

  void poll() {
    try {
      ptrcallVoid(_mb_poll, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_connect_to_peer =
      resolveMethodBind('PacketPeerDTLS', 'connect_to_peer', 2880188099);

  int connectToPeer(PacketPeerUDP packetPeer, String hostname, TLSOptions clientOptions) {
    final arg0 = malloc<Pointer<Void>>()..value = packetPeer.nativePtr;
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg1.cast(), hostname);
    final arg2 = malloc<Pointer<Void>>()..value = clientOptions.nativePtr;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_connect_to_peer, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()], ret.cast());
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

  static final Pointer<Void> _mb_get_status =
      resolveMethodBind('PacketPeerDTLS', 'get_status', 3248654679);

  int getStatus() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_status, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_disconnect_from_peer =
      resolveMethodBind('PacketPeerDTLS', 'disconnect_from_peer', 3218959716);

  void disconnectFromPeer() {
    try {
      ptrcallVoid(_mb_disconnect_from_peer, nativePtr, []);
    } finally {
    }
  }

}
