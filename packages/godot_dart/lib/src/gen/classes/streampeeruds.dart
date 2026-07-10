// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class StreamPeerUDS extends StreamPeerSocket {
  StreamPeerUDS(super.nativePtr);

  /// Constructs a brand-new engine-owned StreamPeerUDS instance
  /// (via classdb_construct_object3), not an existing one.
  factory StreamPeerUDS.create() {
    return StreamPeerUDS(resolveClassConstructor('StreamPeerUDS'));
  }

  static final Pointer<Void> _mb_bind =
      resolveMethodBind('StreamPeerUDS', 'bind', 166001499);

  int bind(String path) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), path);
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_bind, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_connect_to_host =
      resolveMethodBind('StreamPeerUDS', 'connect_to_host', 166001499);

  int connectToHost(String path) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), path);
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_connect_to_host, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_connected_path =
      resolveMethodBind('StreamPeerUDS', 'get_connected_path', 201670096);

  String getConnectedPath() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_connected_path, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
