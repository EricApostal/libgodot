// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class VisualShaderNodeTexture3D extends VisualShaderNodeSample3D {
  VisualShaderNodeTexture3D(super.nativePtr);

  /// Constructs a brand-new engine-owned VisualShaderNodeTexture3D instance
  /// (via classdb_construct_object3), not an existing one.
  factory VisualShaderNodeTexture3D.create() {
    return VisualShaderNodeTexture3D(resolveClassConstructor('VisualShaderNodeTexture3D'));
  }

  static final Pointer<Void> _mb_set_texture =
      resolveMethodBind('VisualShaderNodeTexture3D', 'set_texture', 1188404210);

  void setTexture(Texture3D value) {
    final arg0 = malloc<Pointer<Void>>()..value = value.nativePtr;
    try {
      ptrcallVoid(_mb_set_texture, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_texture =
      resolveMethodBind('VisualShaderNodeTexture3D', 'get_texture', 373985333);

  Texture3D? getTexture() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_texture, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Texture3D(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
