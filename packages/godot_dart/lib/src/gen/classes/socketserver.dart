// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class SocketServer extends RefCounted {
  SocketServer(super.nativePtr);

  static final Pointer<Void> _mb_is_connection_available =
      resolveMethodBind('SocketServer', 'is_connection_available', 36873697);

  bool isConnectionAvailable() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_connection_available, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_is_listening =
      resolveMethodBind('SocketServer', 'is_listening', 36873697);

  bool isListening() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_listening, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_stop =
      resolveMethodBind('SocketServer', 'stop', 3218959716);

  void stop() {
    try {
      ptrcallVoid(_mb_stop, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_take_socket_connection =
      resolveMethodBind('SocketServer', 'take_socket_connection', 1883962599);

  StreamPeerSocket? takeSocketConnection() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_take_socket_connection, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : StreamPeerSocket(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
