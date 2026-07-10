// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class ImageTextureLayered extends TextureLayered {
  ImageTextureLayered(super.nativePtr);

  // Skipped create_from_images(): an argument type is unsupported.
  static final Pointer<Void> _mb_update_layer =
      resolveMethodBind('ImageTextureLayered', 'update_layer', 3331733361);

  void updateLayer(Image image, int layer) {
    final arg0 = malloc<Pointer<Void>>()..value = image.nativePtr;
    final arg1 = malloc<Int64>()..value = layer;
    try {
      ptrcallVoid(_mb_update_layer, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

}
