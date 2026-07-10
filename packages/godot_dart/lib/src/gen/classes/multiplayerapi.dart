// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class MultiplayerAPI extends RefCounted {
  MultiplayerAPI(super.nativePtr);

  static final Pointer<Void> _mb_has_multiplayer_peer =
      resolveMethodBind('MultiplayerAPI', 'has_multiplayer_peer', 2240911060);

  bool hasMultiplayerPeer() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_has_multiplayer_peer, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_multiplayer_peer =
      resolveMethodBind('MultiplayerAPI', 'get_multiplayer_peer', 3223692825);

  MultiplayerPeer? getMultiplayerPeer() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_multiplayer_peer, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : MultiplayerPeer(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_multiplayer_peer =
      resolveMethodBind('MultiplayerAPI', 'set_multiplayer_peer', 3694835298);

  void setMultiplayerPeer(MultiplayerPeer peer) {
    final arg0 = malloc<Pointer<Void>>()..value = peer.nativePtr;
    try {
      ptrcallVoid(_mb_set_multiplayer_peer, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_unique_id =
      resolveMethodBind('MultiplayerAPI', 'get_unique_id', 2455072627);

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

  static final Pointer<Void> _mb_is_server =
      resolveMethodBind('MultiplayerAPI', 'is_server', 2240911060);

  bool isServer() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_server, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_remote_sender_id =
      resolveMethodBind('MultiplayerAPI', 'get_remote_sender_id', 2455072627);

  int getRemoteSenderId() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_remote_sender_id, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_poll =
      resolveMethodBind('MultiplayerAPI', 'poll', 166280745);

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

  // Skipped rpc(): an argument type is unsupported.
  // Skipped object_configuration_add(): an argument type is unsupported.
  // Skipped object_configuration_remove(): an argument type is unsupported.
  // Skipped get_peers(): unsupported return type "PackedInt32Array".
}
