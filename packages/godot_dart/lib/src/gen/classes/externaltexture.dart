// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class ExternalTexture extends Texture2D {
  ExternalTexture(super.nativePtr);

  static final Pointer<Void> _mb_set_size =
      resolveMethodBind('ExternalTexture', 'set_size', 743155724);

  void setSize(Vector2 size) {
    final arg0 = malloc<Uint8>(Vector2.nativeSize);
    size.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_size, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_external_texture_id =
      resolveMethodBind('ExternalTexture', 'get_external_texture_id', 3905245786);

  int getExternalTextureId() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_external_texture_id, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_external_buffer_id =
      resolveMethodBind('ExternalTexture', 'set_external_buffer_id', 1286410249);

  void setExternalBufferId(int externalBufferId) {
    final arg0 = malloc<Int64>()..value = externalBufferId;
    try {
      ptrcallVoid(_mb_set_external_buffer_id, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

}
