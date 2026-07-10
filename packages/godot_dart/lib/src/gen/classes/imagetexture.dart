// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class ImageTexture extends Texture2D {
  ImageTexture(super.nativePtr);

  static final Pointer<Void> _mb_set_image =
      resolveMethodBind('ImageTexture', 'set_image', 532598488);

  void setImage(Image image) {
    final arg0 = malloc<Pointer<Void>>()..value = image.nativePtr;
    try {
      ptrcallVoid(_mb_set_image, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_update =
      resolveMethodBind('ImageTexture', 'update', 532598488);

  void update(Image image) {
    final arg0 = malloc<Pointer<Void>>()..value = image.nativePtr;
    try {
      ptrcallVoid(_mb_update, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_size_override =
      resolveMethodBind('ImageTexture', 'set_size_override', 1130785943);

  void setSizeOverride(Vector2i size) {
    final arg0 = malloc<Uint8>(Vector2i.nativeSize);
    size.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_size_override, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

}
