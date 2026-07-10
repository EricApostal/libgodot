// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class VisualShaderNodeCurveXYZTexture extends VisualShaderNodeResizableBase {
  VisualShaderNodeCurveXYZTexture(super.nativePtr);

  static final Pointer<Void> _mb_set_texture =
      resolveMethodBind('VisualShaderNodeCurveXYZTexture', 'set_texture', 8031783);

  void setTexture(CurveXYZTexture texture) {
    final arg0 = malloc<Pointer<Void>>()..value = texture.nativePtr;
    try {
      ptrcallVoid(_mb_set_texture, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_texture =
      resolveMethodBind('VisualShaderNodeCurveXYZTexture', 'get_texture', 1950275015);

  CurveXYZTexture? getTexture() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_texture, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : CurveXYZTexture(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
