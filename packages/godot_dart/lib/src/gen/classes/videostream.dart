// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class VideoStream extends Resource {
  VideoStream(super.nativePtr);

  /// Constructs a brand-new engine-owned VideoStream instance
  /// (via classdb_construct_object3), not an existing one.
  factory VideoStream.create() {
    return VideoStream(resolveClassConstructor('VideoStream'));
  }

  static final Pointer<Void> _mb_set_file =
      resolveMethodBind('VideoStream', 'set_file', 83702148);

  void setFile(String file) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), file);
    try {
      ptrcallVoid(_mb_set_file, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_file =
      resolveMethodBind('VideoStream', 'get_file', 2841200299);

  String getFile() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_file, nativePtr, [], ret.cast());
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
