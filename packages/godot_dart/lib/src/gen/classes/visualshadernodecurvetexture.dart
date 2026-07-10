// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class VisualShaderNodeCurveTexture extends VisualShaderNodeResizableBase {
  VisualShaderNodeCurveTexture(super.nativePtr);

  /// Constructs a brand-new engine-owned VisualShaderNodeCurveTexture instance
  /// (via classdb_construct_object3), not an existing one.
  factory VisualShaderNodeCurveTexture.create() {
    return VisualShaderNodeCurveTexture(resolveClassConstructor('VisualShaderNodeCurveTexture'));
  }

  static final Pointer<Void> _mb_set_texture =
      resolveMethodBind('VisualShaderNodeCurveTexture', 'set_texture', 181872837);

  void setTexture(CurveTexture texture) {
    final arg0 = malloc<Pointer<Void>>()..value = texture.nativePtr;
    try {
      ptrcallVoid(_mb_set_texture, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_texture =
      resolveMethodBind('VisualShaderNodeCurveTexture', 'get_texture', 2800800579);

  CurveTexture? getTexture() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_texture, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : CurveTexture(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
