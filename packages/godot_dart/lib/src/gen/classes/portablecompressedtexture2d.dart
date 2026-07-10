// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class PortableCompressedTexture2D extends Texture2D {
  PortableCompressedTexture2D(super.nativePtr);

  static final Pointer<Void> _mb_create_from_image =
      resolveMethodBind('PortableCompressedTexture2D', 'create_from_image', 3679243433);

  void createFromImage(Image image, int compressionMode, bool normalMap, double lossyQuality) {
    final arg0 = malloc<Pointer<Void>>()..value = image.nativePtr;
    final arg1 = malloc<Int64>()..value = compressionMode;
    final arg2 = malloc<Uint8>()..value = normalMap ? 1 : 0;
    final arg3 = malloc<Double>()..value = lossyQuality;
    try {
      ptrcallVoid(_mb_create_from_image, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>(), arg3.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
      malloc.free(arg3);
    }
  }

  static final Pointer<Void> _mb_get_compression_mode =
      resolveMethodBind('PortableCompressedTexture2D', 'get_compression_mode', 3265612739);

  int getCompressionMode() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_compression_mode, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_size_override =
      resolveMethodBind('PortableCompressedTexture2D', 'set_size_override', 743155724);

  void setSizeOverride(Vector2 size) {
    final arg0 = malloc<Uint8>(Vector2.nativeSize);
    size.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_size_override, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_size_override =
      resolveMethodBind('PortableCompressedTexture2D', 'get_size_override', 3341600327);

  Vector2 getSizeOverride() {
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_size_override, nativePtr, [], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_keep_compressed_buffer =
      resolveMethodBind('PortableCompressedTexture2D', 'set_keep_compressed_buffer', 2586408642);

  void setKeepCompressedBuffer(bool keep) {
    final arg0 = malloc<Uint8>()..value = keep ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_keep_compressed_buffer, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_keeping_compressed_buffer =
      resolveMethodBind('PortableCompressedTexture2D', 'is_keeping_compressed_buffer', 36873697);

  bool isKeepingCompressedBuffer() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_keeping_compressed_buffer, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_basisu_compressor_params =
      resolveMethodBind('PortableCompressedTexture2D', 'set_basisu_compressor_params', 1602489585);

  void setBasisuCompressorParams(int uastcLevel, double rdoQualityLoss) {
    final arg0 = malloc<Int64>()..value = uastcLevel;
    final arg1 = malloc<Double>()..value = rdoQualityLoss;
    try {
      ptrcallVoid(_mb_set_basisu_compressor_params, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

}
