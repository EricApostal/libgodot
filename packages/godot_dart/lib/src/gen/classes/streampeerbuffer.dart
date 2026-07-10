// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class StreamPeerBuffer extends StreamPeer {
  StreamPeerBuffer(super.nativePtr);

  /// Constructs a brand-new engine-owned StreamPeerBuffer instance
  /// (via classdb_construct_object3), not an existing one.
  factory StreamPeerBuffer.create() {
    return StreamPeerBuffer(resolveClassConstructor('StreamPeerBuffer'));
  }

  static final Pointer<Void> _mb_seek =
      resolveMethodBind('StreamPeerBuffer', 'seek', 1286410249);

  void seek(int position) {
    final arg0 = malloc<Int64>()..value = position;
    try {
      ptrcallVoid(_mb_seek, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_size =
      resolveMethodBind('StreamPeerBuffer', 'get_size', 3905245786);

  int getSize() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_size, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_position =
      resolveMethodBind('StreamPeerBuffer', 'get_position', 3905245786);

  int getPosition() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_position, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_resize =
      resolveMethodBind('StreamPeerBuffer', 'resize', 1286410249);

  void resize(int size) {
    final arg0 = malloc<Int64>()..value = size;
    try {
      ptrcallVoid(_mb_resize, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  // Skipped set_data_array(): an argument type is unsupported.
  // Skipped get_data_array(): unsupported return type "PackedByteArray".
  static final Pointer<Void> _mb_clear =
      resolveMethodBind('StreamPeerBuffer', 'clear', 3218959716);

  void clear() {
    try {
      ptrcallVoid(_mb_clear, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_duplicate =
      resolveMethodBind('StreamPeerBuffer', 'duplicate', 2474064677);

  StreamPeerBuffer? duplicate() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_duplicate, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : StreamPeerBuffer(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
