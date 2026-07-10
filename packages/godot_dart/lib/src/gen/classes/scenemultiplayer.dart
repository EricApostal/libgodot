// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class SceneMultiplayer extends MultiplayerAPI {
  SceneMultiplayer(super.nativePtr);

  /// Constructs a brand-new engine-owned SceneMultiplayer instance
  /// (via classdb_construct_object3), not an existing one.
  factory SceneMultiplayer.create() {
    return SceneMultiplayer(resolveClassConstructor('SceneMultiplayer'));
  }

  // Skipped set_root_path(): an argument type is unsupported.
  // Skipped get_root_path(): unsupported return type "NodePath".
  static final Pointer<Void> _mb_clear =
      resolveMethodBind('SceneMultiplayer', 'clear', 3218959716);

  void clear() {
    try {
      ptrcallVoid(_mb_clear, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_disconnect_peer =
      resolveMethodBind('SceneMultiplayer', 'disconnect_peer', 1286410249);

  void disconnectPeer(int id) {
    final arg0 = malloc<Int64>()..value = id;
    try {
      ptrcallVoid(_mb_disconnect_peer, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  // Skipped get_authenticating_peers(): unsupported return type "PackedInt32Array".
  // Skipped send_auth(): an argument type is unsupported.
  static final Pointer<Void> _mb_complete_auth =
      resolveMethodBind('SceneMultiplayer', 'complete_auth', 844576869);

  int completeAuth(int id) {
    final arg0 = malloc<Int64>()..value = id;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_complete_auth, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  // Skipped set_auth_callback(): an argument type is unsupported.
  // Skipped get_auth_callback(): unsupported return type "Callable".
  static final Pointer<Void> _mb_set_auth_timeout =
      resolveMethodBind('SceneMultiplayer', 'set_auth_timeout', 373806689);

  void setAuthTimeout(double timeout) {
    final arg0 = malloc<Double>()..value = timeout;
    try {
      ptrcallVoid(_mb_set_auth_timeout, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_auth_timeout =
      resolveMethodBind('SceneMultiplayer', 'get_auth_timeout', 1740695150);

  double getAuthTimeout() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_auth_timeout, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_refuse_new_connections =
      resolveMethodBind('SceneMultiplayer', 'set_refuse_new_connections', 2586408642);

  void setRefuseNewConnections(bool refuse) {
    final arg0 = malloc<Uint8>()..value = refuse ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_refuse_new_connections, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_refusing_new_connections =
      resolveMethodBind('SceneMultiplayer', 'is_refusing_new_connections', 36873697);

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

  static final Pointer<Void> _mb_set_allow_object_decoding =
      resolveMethodBind('SceneMultiplayer', 'set_allow_object_decoding', 2586408642);

  void setAllowObjectDecoding(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_allow_object_decoding, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_object_decoding_allowed =
      resolveMethodBind('SceneMultiplayer', 'is_object_decoding_allowed', 36873697);

  bool isObjectDecodingAllowed() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_object_decoding_allowed, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_server_relay_enabled =
      resolveMethodBind('SceneMultiplayer', 'set_server_relay_enabled', 2586408642);

  void setServerRelayEnabled(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_server_relay_enabled, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_server_relay_enabled =
      resolveMethodBind('SceneMultiplayer', 'is_server_relay_enabled', 36873697);

  bool isServerRelayEnabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_server_relay_enabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  // Skipped send_bytes(): an argument type is unsupported.
  static final Pointer<Void> _mb_get_max_sync_packet_size =
      resolveMethodBind('SceneMultiplayer', 'get_max_sync_packet_size', 3905245786);

  int getMaxSyncPacketSize() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_max_sync_packet_size, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_max_sync_packet_size =
      resolveMethodBind('SceneMultiplayer', 'set_max_sync_packet_size', 1286410249);

  void setMaxSyncPacketSize(int size) {
    final arg0 = malloc<Int64>()..value = size;
    try {
      ptrcallVoid(_mb_set_max_sync_packet_size, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_max_delta_packet_size =
      resolveMethodBind('SceneMultiplayer', 'get_max_delta_packet_size', 3905245786);

  int getMaxDeltaPacketSize() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_max_delta_packet_size, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_max_delta_packet_size =
      resolveMethodBind('SceneMultiplayer', 'set_max_delta_packet_size', 1286410249);

  void setMaxDeltaPacketSize(int size) {
    final arg0 = malloc<Int64>()..value = size;
    try {
      ptrcallVoid(_mb_set_max_delta_packet_size, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

}
