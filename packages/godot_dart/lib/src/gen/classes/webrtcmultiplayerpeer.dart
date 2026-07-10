// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class WebRTCMultiplayerPeer extends MultiplayerPeer {
  WebRTCMultiplayerPeer(super.nativePtr);

  // Skipped create_server(): an argument type is unsupported.
  // Skipped create_client(): an argument type is unsupported.
  // Skipped create_mesh(): an argument type is unsupported.
  static final Pointer<Void> _mb_add_peer =
      resolveMethodBind('WebRTCMultiplayerPeer', 'add_peer', 4078953270);

  int addPeer(WebRTCPeerConnection peer, int peerId, int unreliableLifetime) {
    final arg0 = malloc<Pointer<Void>>()..value = peer.nativePtr;
    final arg1 = malloc<Int64>()..value = peerId;
    final arg2 = malloc<Int64>()..value = unreliableLifetime;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_add_peer, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_remove_peer =
      resolveMethodBind('WebRTCMultiplayerPeer', 'remove_peer', 1286410249);

  void removePeer(int peerId) {
    final arg0 = malloc<Int64>()..value = peerId;
    try {
      ptrcallVoid(_mb_remove_peer, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_has_peer =
      resolveMethodBind('WebRTCMultiplayerPeer', 'has_peer', 3067735520);

  bool hasPeer(int peerId) {
    final arg0 = malloc<Int64>()..value = peerId;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_has_peer, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  // Skipped get_peer(): unsupported return type "Dictionary".
  // Skipped get_peers(): unsupported return type "Dictionary".
}
