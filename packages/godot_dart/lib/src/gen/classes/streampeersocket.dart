// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class StreamPeerSocket extends StreamPeer {
  StreamPeerSocket(super.nativePtr);

  static final Pointer<Void> _mb_poll =
      resolveMethodBind('StreamPeerSocket', 'poll', 166280745);

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

  static final Pointer<Void> _mb_get_status =
      resolveMethodBind('StreamPeerSocket', 'get_status', 1156122502);

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

  static final Pointer<Void> _mb_disconnect_from_host =
      resolveMethodBind('StreamPeerSocket', 'disconnect_from_host', 3218959716);

  void disconnectFromHost() {
    try {
      ptrcallVoid(_mb_disconnect_from_host, nativePtr, []);
    } finally {
    }
  }

}
