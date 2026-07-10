// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class DTLSServer extends RefCounted {
  DTLSServer(super.nativePtr);

  static final Pointer<Void> _mb_setup =
      resolveMethodBind('DTLSServer', 'setup', 1262296096);

  int setup(TLSOptions serverOptions) {
    final arg0 = malloc<Pointer<Void>>()..value = serverOptions.nativePtr;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_setup, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_take_connection =
      resolveMethodBind('DTLSServer', 'take_connection', 3946580474);

  PacketPeerDTLS? takeConnection(PacketPeerUDP udpPeer) {
    final arg0 = malloc<Pointer<Void>>()..value = udpPeer.nativePtr;
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_take_connection, nativePtr, [arg0.cast<Void>()], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : PacketPeerDTLS(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

}
