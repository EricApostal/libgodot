// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class MultiMeshInstance2D extends Node2D {
  MultiMeshInstance2D(super.nativePtr);

  /// Constructs a brand-new engine-owned MultiMeshInstance2D instance
  /// (via classdb_construct_object3), not an existing one.
  factory MultiMeshInstance2D.create() {
    return MultiMeshInstance2D(resolveClassConstructor('MultiMeshInstance2D'));
  }

  static final Pointer<Void> _mb_set_multimesh =
      resolveMethodBind('MultiMeshInstance2D', 'set_multimesh', 2246127404);

  void setMultimesh(MultiMesh multimesh) {
    final arg0 = malloc<Pointer<Void>>()..value = multimesh.nativePtr;
    try {
      ptrcallVoid(_mb_set_multimesh, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_multimesh =
      resolveMethodBind('MultiMeshInstance2D', 'get_multimesh', 1385450523);

  MultiMesh? getMultimesh() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_multimesh, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : MultiMesh(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_texture =
      resolveMethodBind('MultiMeshInstance2D', 'set_texture', 4051416890);

  void setTexture(Texture2D texture) {
    final arg0 = malloc<Pointer<Void>>()..value = texture.nativePtr;
    try {
      ptrcallVoid(_mb_set_texture, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_texture =
      resolveMethodBind('MultiMeshInstance2D', 'get_texture', 3635182373);

  Texture2D? getTexture() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_texture, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Texture2D(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
