// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class CSGPrimitive3D extends CSGShape3D {
  CSGPrimitive3D(super.nativePtr);

  static final Pointer<Void> _mb_set_flip_faces =
      resolveMethodBind('CSGPrimitive3D', 'set_flip_faces', 2586408642);

  void setFlipFaces(bool flipFaces) {
    final arg0 = malloc<Uint8>()..value = flipFaces ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_flip_faces, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_flip_faces =
      resolveMethodBind('CSGPrimitive3D', 'get_flip_faces', 2240911060);

  bool getFlipFaces() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_flip_faces, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
