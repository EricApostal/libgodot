// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class Image extends Resource {
  Image(super.nativePtr);

  static final Pointer<Void> _mb_get_width =
      resolveMethodBind('Image', 'get_width', 3905245786);

  int getWidth() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_width, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_height =
      resolveMethodBind('Image', 'get_height', 3905245786);

  int getHeight() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_height, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_size =
      resolveMethodBind('Image', 'get_size', 3690982128);

  Vector2i getSize() {
    try {
      final ret = malloc<Uint8>(Vector2i.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_size, nativePtr, [], ret.cast());
        return Vector2i.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_has_mipmaps =
      resolveMethodBind('Image', 'has_mipmaps', 36873697);

  bool hasMipmaps() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_has_mipmaps, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_format =
      resolveMethodBind('Image', 'get_format', 3847873762);

  int getFormat() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_format, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  // Skipped get_data(): unsupported return type "PackedByteArray".
  static final Pointer<Void> _mb_get_data_size =
      resolveMethodBind('Image', 'get_data_size', 3905245786);

  int getDataSize() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_data_size, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_convert =
      resolveMethodBind('Image', 'convert', 2120693146);

  void convert(int format) {
    final arg0 = malloc<Int64>()..value = format;
    try {
      ptrcallVoid(_mb_convert, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_mipmap_count =
      resolveMethodBind('Image', 'get_mipmap_count', 3905245786);

  int getMipmapCount() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_mipmap_count, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_mipmap_offset =
      resolveMethodBind('Image', 'get_mipmap_offset', 923996154);

  int getMipmapOffset(int mipmap) {
    final arg0 = malloc<Int64>()..value = mipmap;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_mipmap_offset, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_resize_to_po2 =
      resolveMethodBind('Image', 'resize_to_po2', 4189212329);

  void resizeToPo2(bool square, int interpolation) {
    final arg0 = malloc<Uint8>()..value = square ? 1 : 0;
    final arg1 = malloc<Int64>()..value = interpolation;
    try {
      ptrcallVoid(_mb_resize_to_po2, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_resize =
      resolveMethodBind('Image', 'resize', 994498151);

  void resize(int width, int height, int interpolation) {
    final arg0 = malloc<Int64>()..value = width;
    final arg1 = malloc<Int64>()..value = height;
    final arg2 = malloc<Int64>()..value = interpolation;
    try {
      ptrcallVoid(_mb_resize, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_shrink_x2 =
      resolveMethodBind('Image', 'shrink_x2', 3218959716);

  void shrinkX2() {
    try {
      ptrcallVoid(_mb_shrink_x2, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_crop =
      resolveMethodBind('Image', 'crop', 3937882851);

  void crop(int width, int height) {
    final arg0 = malloc<Int64>()..value = width;
    final arg1 = malloc<Int64>()..value = height;
    try {
      ptrcallVoid(_mb_crop, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_flip_x =
      resolveMethodBind('Image', 'flip_x', 3218959716);

  void flipX() {
    try {
      ptrcallVoid(_mb_flip_x, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_flip_y =
      resolveMethodBind('Image', 'flip_y', 3218959716);

  void flipY() {
    try {
      ptrcallVoid(_mb_flip_y, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_generate_mipmaps =
      resolveMethodBind('Image', 'generate_mipmaps', 1633102583);

  int generateMipmaps(bool renormalize) {
    final arg0 = malloc<Uint8>()..value = renormalize ? 1 : 0;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_generate_mipmaps, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_clear_mipmaps =
      resolveMethodBind('Image', 'clear_mipmaps', 3218959716);

  void clearMipmaps() {
    try {
      ptrcallVoid(_mb_clear_mipmaps, nativePtr, []);
    } finally {
    }
  }

  // Skipped set_data(): an argument type is unsupported.
  static final Pointer<Void> _mb_is_empty =
      resolveMethodBind('Image', 'is_empty', 36873697);

  bool isEmpty() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_empty, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_load =
      resolveMethodBind('Image', 'load', 166001499);

  int load(String path) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), path);
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_load, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_save_png =
      resolveMethodBind('Image', 'save_png', 2113323047);

  int savePng(String path) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), path);
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_save_png, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  // Skipped save_png_to_buffer(): unsupported return type "PackedByteArray".
  static final Pointer<Void> _mb_save_jpg =
      resolveMethodBind('Image', 'save_jpg', 2800019068);

  int saveJpg(String path, double quality) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), path);
    final arg1 = malloc<Double>()..value = quality;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_save_jpg, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  // Skipped save_jpg_to_buffer(): unsupported return type "PackedByteArray".
  static final Pointer<Void> _mb_save_exr =
      resolveMethodBind('Image', 'save_exr', 2018602448);

  int saveExr(String path, bool grayscale, bool colorImage, double maxLinearValue) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), path);
    final arg1 = malloc<Uint8>()..value = grayscale ? 1 : 0;
    final arg2 = malloc<Uint8>()..value = colorImage ? 1 : 0;
    final arg3 = malloc<Double>()..value = maxLinearValue;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_save_exr, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>(), arg3.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
      malloc.free(arg3);
    }
  }

  // Skipped save_exr_to_buffer(): unsupported return type "PackedByteArray".
  static final Pointer<Void> _mb_save_dds =
      resolveMethodBind('Image', 'save_dds', 2113323047);

  int saveDds(String path) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), path);
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_save_dds, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  // Skipped save_dds_to_buffer(): unsupported return type "PackedByteArray".
  static final Pointer<Void> _mb_save_webp =
      resolveMethodBind('Image', 'save_webp', 2781156876);

  int saveWebp(String path, bool lossy, double quality) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), path);
    final arg1 = malloc<Uint8>()..value = lossy ? 1 : 0;
    final arg2 = malloc<Double>()..value = quality;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_save_webp, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
    }
  }

  // Skipped save_webp_to_buffer(): unsupported return type "PackedByteArray".
  static final Pointer<Void> _mb_detect_alpha =
      resolveMethodBind('Image', 'detect_alpha', 2030116505);

  int detectAlpha() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_detect_alpha, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_is_invisible =
      resolveMethodBind('Image', 'is_invisible', 36873697);

  bool isInvisible() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_invisible, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_detect_used_channels =
      resolveMethodBind('Image', 'detect_used_channels', 2703139984);

  int detectUsedChannels(int source) {
    final arg0 = malloc<Int64>()..value = source;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_detect_used_channels, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_compress =
      resolveMethodBind('Image', 'compress', 3872125418);

  int compress(int mode, int source, int profile) {
    final arg0 = malloc<Int64>()..value = mode;
    final arg1 = malloc<Int64>()..value = source;
    final arg2 = malloc<Int64>()..value = profile;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_compress, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_compress_from_channels =
      resolveMethodBind('Image', 'compress_from_channels', 2576825933);

  int compressFromChannels(int mode, int channels, int profile) {
    final arg0 = malloc<Int64>()..value = mode;
    final arg1 = malloc<Int64>()..value = channels;
    final arg2 = malloc<Int64>()..value = profile;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_compress_from_channels, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_decompress =
      resolveMethodBind('Image', 'decompress', 166280745);

  int decompress() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_decompress, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_is_compressed =
      resolveMethodBind('Image', 'is_compressed', 36873697);

  bool isCompressed() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_compressed, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_rotate_90 =
      resolveMethodBind('Image', 'rotate_90', 1901204267);

  void rotate90(int direction) {
    final arg0 = malloc<Int64>()..value = direction;
    try {
      ptrcallVoid(_mb_rotate_90, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_rotate_180 =
      resolveMethodBind('Image', 'rotate_180', 3218959716);

  void rotate180() {
    try {
      ptrcallVoid(_mb_rotate_180, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_fix_alpha_edges =
      resolveMethodBind('Image', 'fix_alpha_edges', 3218959716);

  void fixAlphaEdges() {
    try {
      ptrcallVoid(_mb_fix_alpha_edges, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_premultiply_alpha =
      resolveMethodBind('Image', 'premultiply_alpha', 3218959716);

  void premultiplyAlpha() {
    try {
      ptrcallVoid(_mb_premultiply_alpha, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_srgb_to_linear =
      resolveMethodBind('Image', 'srgb_to_linear', 3218959716);

  void srgbToLinear() {
    try {
      ptrcallVoid(_mb_srgb_to_linear, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_linear_to_srgb =
      resolveMethodBind('Image', 'linear_to_srgb', 3218959716);

  void linearToSrgb() {
    try {
      ptrcallVoid(_mb_linear_to_srgb, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_normal_map_to_xy =
      resolveMethodBind('Image', 'normal_map_to_xy', 3218959716);

  void normalMapToXy() {
    try {
      ptrcallVoid(_mb_normal_map_to_xy, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_rgbe_to_srgb =
      resolveMethodBind('Image', 'rgbe_to_srgb', 564927088);

  Image? rgbeToSrgb() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_rgbe_to_srgb, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Image(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_bump_map_to_normal_map =
      resolveMethodBind('Image', 'bump_map_to_normal_map', 3423495036);

  void bumpMapToNormalMap(double bumpScale) {
    final arg0 = malloc<Double>()..value = bumpScale;
    try {
      ptrcallVoid(_mb_bump_map_to_normal_map, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  // Skipped compute_image_metrics(): unsupported return type "Dictionary".
  static final Pointer<Void> _mb_blit_rect =
      resolveMethodBind('Image', 'blit_rect', 2903928755);

  void blitRect(Image src, Rect2i srcRect, Vector2i dst) {
    final arg0 = malloc<Pointer<Void>>()..value = src.nativePtr;
    final arg1 = malloc<Uint8>(Rect2i.nativeSize);
    srcRect.writeTo(arg1, 0);
    final arg2 = malloc<Uint8>(Vector2i.nativeSize);
    dst.writeTo(arg2, 0);
    try {
      ptrcallVoid(_mb_blit_rect, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_blit_rect_mask =
      resolveMethodBind('Image', 'blit_rect_mask', 3383581145);

  void blitRectMask(Image src, Image mask, Rect2i srcRect, Vector2i dst) {
    final arg0 = malloc<Pointer<Void>>()..value = src.nativePtr;
    final arg1 = malloc<Pointer<Void>>()..value = mask.nativePtr;
    final arg2 = malloc<Uint8>(Rect2i.nativeSize);
    srcRect.writeTo(arg2, 0);
    final arg3 = malloc<Uint8>(Vector2i.nativeSize);
    dst.writeTo(arg3, 0);
    try {
      ptrcallVoid(_mb_blit_rect_mask, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>(), arg3.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
      malloc.free(arg3);
    }
  }

  static final Pointer<Void> _mb_blend_rect =
      resolveMethodBind('Image', 'blend_rect', 2903928755);

  void blendRect(Image src, Rect2i srcRect, Vector2i dst) {
    final arg0 = malloc<Pointer<Void>>()..value = src.nativePtr;
    final arg1 = malloc<Uint8>(Rect2i.nativeSize);
    srcRect.writeTo(arg1, 0);
    final arg2 = malloc<Uint8>(Vector2i.nativeSize);
    dst.writeTo(arg2, 0);
    try {
      ptrcallVoid(_mb_blend_rect, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_blend_rect_mask =
      resolveMethodBind('Image', 'blend_rect_mask', 3383581145);

  void blendRectMask(Image src, Image mask, Rect2i srcRect, Vector2i dst) {
    final arg0 = malloc<Pointer<Void>>()..value = src.nativePtr;
    final arg1 = malloc<Pointer<Void>>()..value = mask.nativePtr;
    final arg2 = malloc<Uint8>(Rect2i.nativeSize);
    srcRect.writeTo(arg2, 0);
    final arg3 = malloc<Uint8>(Vector2i.nativeSize);
    dst.writeTo(arg3, 0);
    try {
      ptrcallVoid(_mb_blend_rect_mask, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>(), arg3.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
      malloc.free(arg3);
    }
  }

  static final Pointer<Void> _mb_fill =
      resolveMethodBind('Image', 'fill', 2920490490);

  void fill(Color color) {
    final arg0 = malloc<Uint8>(Color.nativeSize);
    color.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_fill, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_fill_rect =
      resolveMethodBind('Image', 'fill_rect', 514693913);

  void fillRect(Rect2i rect, Color color) {
    final arg0 = malloc<Uint8>(Rect2i.nativeSize);
    rect.writeTo(arg0, 0);
    final arg1 = malloc<Uint8>(Color.nativeSize);
    color.writeTo(arg1, 0);
    try {
      ptrcallVoid(_mb_fill_rect, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_used_rect =
      resolveMethodBind('Image', 'get_used_rect', 410525958);

  Rect2i getUsedRect() {
    try {
      final ret = malloc<Uint8>(Rect2i.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_used_rect, nativePtr, [], ret.cast());
        return Rect2i.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_region =
      resolveMethodBind('Image', 'get_region', 2601441065);

  Image? getRegion(Rect2i region) {
    final arg0 = malloc<Uint8>(Rect2i.nativeSize);
    region.writeTo(arg0, 0);
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_region, nativePtr, [arg0.cast<Void>()], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Image(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_copy_from =
      resolveMethodBind('Image', 'copy_from', 532598488);

  void copyFrom(Image src) {
    final arg0 = malloc<Pointer<Void>>()..value = src.nativePtr;
    try {
      ptrcallVoid(_mb_copy_from, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_pixelv =
      resolveMethodBind('Image', 'get_pixelv', 1532707496);

  Color getPixelv(Vector2i point) {
    final arg0 = malloc<Uint8>(Vector2i.nativeSize);
    point.writeTo(arg0, 0);
    try {
      final ret = malloc<Uint8>(Color.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_pixelv, nativePtr, [arg0.cast<Void>()], ret.cast());
        return Color.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_pixel =
      resolveMethodBind('Image', 'get_pixel', 2165839948);

  Color getPixel(int x, int y) {
    final arg0 = malloc<Int64>()..value = x;
    final arg1 = malloc<Int64>()..value = y;
    try {
      final ret = malloc<Uint8>(Color.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_pixel, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return Color.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_set_pixelv =
      resolveMethodBind('Image', 'set_pixelv', 287851464);

  void setPixelv(Vector2i point, Color color) {
    final arg0 = malloc<Uint8>(Vector2i.nativeSize);
    point.writeTo(arg0, 0);
    final arg1 = malloc<Uint8>(Color.nativeSize);
    color.writeTo(arg1, 0);
    try {
      ptrcallVoid(_mb_set_pixelv, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_set_pixel =
      resolveMethodBind('Image', 'set_pixel', 3733378741);

  void setPixel(int x, int y, Color color) {
    final arg0 = malloc<Int64>()..value = x;
    final arg1 = malloc<Int64>()..value = y;
    final arg2 = malloc<Uint8>(Color.nativeSize);
    color.writeTo(arg2, 0);
    try {
      ptrcallVoid(_mb_set_pixel, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_adjust_bcs =
      resolveMethodBind('Image', 'adjust_bcs', 2385087082);

  void adjustBcs(double brightness, double contrast, double saturation) {
    final arg0 = malloc<Double>()..value = brightness;
    final arg1 = malloc<Double>()..value = contrast;
    final arg2 = malloc<Double>()..value = saturation;
    try {
      ptrcallVoid(_mb_adjust_bcs, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
    }
  }

  // Skipped load_png_from_buffer(): an argument type is unsupported.
  // Skipped load_jpg_from_buffer(): an argument type is unsupported.
  // Skipped load_webp_from_buffer(): an argument type is unsupported.
  // Skipped load_tga_from_buffer(): an argument type is unsupported.
  // Skipped load_bmp_from_buffer(): an argument type is unsupported.
  // Skipped load_ktx_from_buffer(): an argument type is unsupported.
  // Skipped load_dds_from_buffer(): an argument type is unsupported.
  // Skipped load_exr_from_buffer(): an argument type is unsupported.
  // Skipped load_svg_from_buffer(): an argument type is unsupported.
  static final Pointer<Void> _mb_load_svg_from_string =
      resolveMethodBind('Image', 'load_svg_from_string', 3254053600);

  int loadSvgFromString(String svgStr, double scale) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), svgStr);
    final arg1 = malloc<Double>()..value = scale;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_load_svg_from_string, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

}
