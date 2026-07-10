// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class ENetConnection extends RefCounted {
  ENetConnection(super.nativePtr);

  /// Constructs a brand-new engine-owned ENetConnection instance
  /// (via classdb_construct_object3), not an existing one.
  factory ENetConnection.create() {
    return ENetConnection(resolveClassConstructor('ENetConnection'));
  }

  static final Pointer<Void> _mb_create_host_bound =
      resolveMethodBind('ENetConnection', 'create_host_bound', 1515002313);

  int createHostBound(String bindAddress, int bindPort, int maxPeers, int maxChannels, int inBandwidth, int outBandwidth) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), bindAddress);
    final arg1 = malloc<Int64>()..value = bindPort;
    final arg2 = malloc<Int64>()..value = maxPeers;
    final arg3 = malloc<Int64>()..value = maxChannels;
    final arg4 = malloc<Int64>()..value = inBandwidth;
    final arg5 = malloc<Int64>()..value = outBandwidth;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_create_host_bound, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>(), arg3.cast<Void>(), arg4.cast<Void>(), arg5.cast<Void>()], ret.cast());
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

  static final Pointer<Void> _mb_create_host =
      resolveMethodBind('ENetConnection', 'create_host', 117198950);

  int createHost(int maxPeers, int maxChannels, int inBandwidth, int outBandwidth) {
    final arg0 = malloc<Int64>()..value = maxPeers;
    final arg1 = malloc<Int64>()..value = maxChannels;
    final arg2 = malloc<Int64>()..value = inBandwidth;
    final arg3 = malloc<Int64>()..value = outBandwidth;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_create_host, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>(), arg3.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
      malloc.free(arg3);
    }
  }

  static final Pointer<Void> _mb_destroy =
      resolveMethodBind('ENetConnection', 'destroy', 3218959716);

  void destroy() {
    try {
      ptrcallVoid(_mb_destroy, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_connect_to_host =
      resolveMethodBind('ENetConnection', 'connect_to_host', 2171300490);

  ENetPacketPeer? connectToHost(String address, int port, int channels, int data) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), address);
    final arg1 = malloc<Int64>()..value = port;
    final arg2 = malloc<Int64>()..value = channels;
    final arg3 = malloc<Int64>()..value = data;
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_connect_to_host, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>(), arg3.cast<Void>()], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : ENetPacketPeer(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
      malloc.free(arg3);
    }
  }

  // Skipped service(): unsupported return type "Array".
  static final Pointer<Void> _mb_flush =
      resolveMethodBind('ENetConnection', 'flush', 3218959716);

  void flush() {
    try {
      ptrcallVoid(_mb_flush, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_bandwidth_limit =
      resolveMethodBind('ENetConnection', 'bandwidth_limit', 2302169788);

  void bandwidthLimit(int inBandwidth, int outBandwidth) {
    final arg0 = malloc<Int64>()..value = inBandwidth;
    final arg1 = malloc<Int64>()..value = outBandwidth;
    try {
      ptrcallVoid(_mb_bandwidth_limit, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_channel_limit =
      resolveMethodBind('ENetConnection', 'channel_limit', 1286410249);

  void channelLimit(int limit) {
    final arg0 = malloc<Int64>()..value = limit;
    try {
      ptrcallVoid(_mb_channel_limit, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  // Skipped broadcast(): an argument type is unsupported.
  static final Pointer<Void> _mb_compress =
      resolveMethodBind('ENetConnection', 'compress', 2660215187);

  void compress(int mode) {
    final arg0 = malloc<Int64>()..value = mode;
    try {
      ptrcallVoid(_mb_compress, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_dtls_server_setup =
      resolveMethodBind('ENetConnection', 'dtls_server_setup', 1262296096);

  int dtlsServerSetup(TLSOptions serverOptions) {
    final arg0 = malloc<Pointer<Void>>()..value = serverOptions.nativePtr;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_dtls_server_setup, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_dtls_client_setup =
      resolveMethodBind('ENetConnection', 'dtls_client_setup', 1966198364);

  int dtlsClientSetup(String hostname, TLSOptions clientOptions) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), hostname);
    final arg1 = malloc<Pointer<Void>>()..value = clientOptions.nativePtr;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_dtls_client_setup, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
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

  static final Pointer<Void> _mb_refuse_new_connections =
      resolveMethodBind('ENetConnection', 'refuse_new_connections', 2586408642);

  void refuseNewConnections(bool refuse) {
    final arg0 = malloc<Uint8>()..value = refuse ? 1 : 0;
    try {
      ptrcallVoid(_mb_refuse_new_connections, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_pop_statistic =
      resolveMethodBind('ENetConnection', 'pop_statistic', 2166904170);

  double popStatistic(int statistic) {
    final arg0 = malloc<Int64>()..value = statistic;
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_pop_statistic, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_max_channels =
      resolveMethodBind('ENetConnection', 'get_max_channels', 3905245786);

  int getMaxChannels() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_max_channels, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_local_port =
      resolveMethodBind('ENetConnection', 'get_local_port', 3905245786);

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

  // Skipped get_peers(): unsupported return type "typedarray::ENetPacketPeer".
  // Skipped socket_send(): an argument type is unsupported.
}
