// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class DrawableTexture2D extends Texture2D {
  DrawableTexture2D(super.nativePtr);

  /// Constructs a brand-new engine-owned DrawableTexture2D instance
  /// (via classdb_construct_object3), not an existing one.
  factory DrawableTexture2D.create() {
    return DrawableTexture2D(resolveClassConstructor('DrawableTexture2D'));
  }

  static final Pointer<Void> _mb_set_format =
      resolveMethodBind('DrawableTexture2D', 'set_format', 2875673594);

  void setFormat(int format) {
    final arg0 = malloc<Int64>()..value = format;
    try {
      ptrcallVoid(_mb_set_format, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_use_mipmaps =
      resolveMethodBind('DrawableTexture2D', 'set_use_mipmaps', 2586408642);

  void setUseMipmaps(bool mipmaps) {
    final arg0 = malloc<Uint8>()..value = mipmaps ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_use_mipmaps, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_use_mipmaps =
      resolveMethodBind('DrawableTexture2D', 'get_use_mipmaps', 36873697);

  bool getUseMipmaps() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_use_mipmaps, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_setup =
      resolveMethodBind('DrawableTexture2D', 'setup', 674365339);

  void setup(int width, int height, int format, Color color, bool useMipmaps) {
    final arg0 = malloc<Int64>()..value = width;
    final arg1 = malloc<Int64>()..value = height;
    final arg2 = malloc<Int64>()..value = format;
    final arg3 = malloc<Uint8>(Color.nativeSize);
    color.writeTo(arg3, 0);
    final arg4 = malloc<Uint8>()..value = useMipmaps ? 1 : 0;
    try {
      ptrcallVoid(_mb_setup, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>(), arg3.cast<Void>(), arg4.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
      malloc.free(arg3);
      malloc.free(arg4);
    }
  }

  static final Pointer<Void> _mb_blit_rect =
      resolveMethodBind('DrawableTexture2D', 'blit_rect', 319217173);

  void blitRect(Rect2i rect, Texture2D source, Color modulate, int mipmap, Material material) {
    final arg0 = malloc<Uint8>(Rect2i.nativeSize);
    rect.writeTo(arg0, 0);
    final arg1 = malloc<Pointer<Void>>()..value = source.nativePtr;
    final arg2 = malloc<Uint8>(Color.nativeSize);
    modulate.writeTo(arg2, 0);
    final arg3 = malloc<Int64>()..value = mipmap;
    final arg4 = malloc<Pointer<Void>>()..value = material.nativePtr;
    try {
      ptrcallVoid(_mb_blit_rect, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>(), arg3.cast<Void>(), arg4.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
      malloc.free(arg3);
      malloc.free(arg4);
    }
  }

  // Skipped blit_rect_multi(): an argument type is unsupported.
  static final Pointer<Void> _mb_generate_mipmaps =
      resolveMethodBind('DrawableTexture2D', 'generate_mipmaps', 3218959716);

  void generateMipmaps() {
    try {
      ptrcallVoid(_mb_generate_mipmaps, nativePtr, []);
    } finally {
    }
  }

}
