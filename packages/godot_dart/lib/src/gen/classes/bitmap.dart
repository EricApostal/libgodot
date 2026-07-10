// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class BitMap extends Resource {
  BitMap(super.nativePtr);

  static final Pointer<Void> _mb_create =
      resolveMethodBind('BitMap', 'create', 1130785943);

  void create(Vector2i size) {
    final arg0 = malloc<Uint8>(Vector2i.nativeSize);
    size.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_create, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_create_from_image_alpha =
      resolveMethodBind('BitMap', 'create_from_image_alpha', 106271684);

  void createFromImageAlpha(Image image, double threshold) {
    final arg0 = malloc<Pointer<Void>>()..value = image.nativePtr;
    final arg1 = malloc<Double>()..value = threshold;
    try {
      ptrcallVoid(_mb_create_from_image_alpha, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_set_bitv =
      resolveMethodBind('BitMap', 'set_bitv', 4153096796);

  void setBitv(Vector2i position, bool bit) {
    final arg0 = malloc<Uint8>(Vector2i.nativeSize);
    position.writeTo(arg0, 0);
    final arg1 = malloc<Uint8>()..value = bit ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_bitv, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_set_bit =
      resolveMethodBind('BitMap', 'set_bit', 1383440665);

  void setBit(int x, int y, bool bit) {
    final arg0 = malloc<Int64>()..value = x;
    final arg1 = malloc<Int64>()..value = y;
    final arg2 = malloc<Uint8>()..value = bit ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_bit, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_get_bitv =
      resolveMethodBind('BitMap', 'get_bitv', 3900751641);

  bool getBitv(Vector2i position) {
    final arg0 = malloc<Uint8>(Vector2i.nativeSize);
    position.writeTo(arg0, 0);
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_bitv, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_bit =
      resolveMethodBind('BitMap', 'get_bit', 2522259332);

  bool getBit(int x, int y) {
    final arg0 = malloc<Int64>()..value = x;
    final arg1 = malloc<Int64>()..value = y;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_bit, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_set_bit_rect =
      resolveMethodBind('BitMap', 'set_bit_rect', 472162941);

  void setBitRect(Rect2i rect, bool bit) {
    final arg0 = malloc<Uint8>(Rect2i.nativeSize);
    rect.writeTo(arg0, 0);
    final arg1 = malloc<Uint8>()..value = bit ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_bit_rect, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_true_bit_count =
      resolveMethodBind('BitMap', 'get_true_bit_count', 3905245786);

  int getTrueBitCount() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_true_bit_count, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_size =
      resolveMethodBind('BitMap', 'get_size', 3690982128);

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

  static final Pointer<Void> _mb_resize =
      resolveMethodBind('BitMap', 'resize', 1130785943);

  void resize(Vector2i newSize) {
    final arg0 = malloc<Uint8>(Vector2i.nativeSize);
    newSize.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_resize, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_grow_mask =
      resolveMethodBind('BitMap', 'grow_mask', 3317281434);

  void growMask(int pixels, Rect2i rect) {
    final arg0 = malloc<Int64>()..value = pixels;
    final arg1 = malloc<Uint8>(Rect2i.nativeSize);
    rect.writeTo(arg1, 0);
    try {
      ptrcallVoid(_mb_grow_mask, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_convert_to_image =
      resolveMethodBind('BitMap', 'convert_to_image', 4190603485);

  Image? convertToImage() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_convert_to_image, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Image(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  // Skipped opaque_to_polygons(): unsupported return type "typedarray::PackedVector2Array".
}
