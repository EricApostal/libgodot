// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class WebRTCPeerConnection extends RefCounted {
  WebRTCPeerConnection(super.nativePtr);

  // Skipped initialize(): an argument type is unsupported.
  // Skipped create_data_channel(): an argument type is unsupported.
  static final Pointer<Void> _mb_create_offer =
      resolveMethodBind('WebRTCPeerConnection', 'create_offer', 166280745);

  int createOffer() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_create_offer, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_local_description =
      resolveMethodBind('WebRTCPeerConnection', 'set_local_description', 852856452);

  int setLocalDescription(String type, String sdp) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), type);
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg1.cast(), sdp);
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_set_local_description, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
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

  static final Pointer<Void> _mb_set_remote_description =
      resolveMethodBind('WebRTCPeerConnection', 'set_remote_description', 852856452);

  int setRemoteDescription(String type, String sdp) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), type);
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg1.cast(), sdp);
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_set_remote_description, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
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

  static final Pointer<Void> _mb_add_ice_candidate =
      resolveMethodBind('WebRTCPeerConnection', 'add_ice_candidate', 3958950400);

  int addIceCandidate(String media, int index, String name) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), media);
    final arg1 = malloc<Int64>()..value = index;
    final arg2 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg2.cast(), name);
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_add_ice_candidate, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
      malloc.free(arg1);
      BuiltinMarshal.destroyGDString(arg2.cast());
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_poll =
      resolveMethodBind('WebRTCPeerConnection', 'poll', 166280745);

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

  static final Pointer<Void> _mb_close =
      resolveMethodBind('WebRTCPeerConnection', 'close', 3218959716);

  void close() {
    try {
      ptrcallVoid(_mb_close, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_connection_state =
      resolveMethodBind('WebRTCPeerConnection', 'get_connection_state', 2275710506);

  int getConnectionState() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_connection_state, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_gathering_state =
      resolveMethodBind('WebRTCPeerConnection', 'get_gathering_state', 4262591401);

  int getGatheringState() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_gathering_state, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_signaling_state =
      resolveMethodBind('WebRTCPeerConnection', 'get_signaling_state', 3342956226);

  int getSignalingState() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_signaling_state, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
