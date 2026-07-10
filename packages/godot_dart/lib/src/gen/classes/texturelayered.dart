// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class TextureLayered extends Texture {
  TextureLayered(super.nativePtr);

  /// Constructs a brand-new engine-owned TextureLayered instance
  /// (via classdb_construct_object3), not an existing one.
  factory TextureLayered.create() {
    return TextureLayered(resolveClassConstructor('TextureLayered'));
  }

  static final Pointer<Void> _mb_get_format =
      resolveMethodBind('TextureLayered', 'get_format', 3847873762);

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

  static final Pointer<Void> _mb_get_layered_type =
      resolveMethodBind('TextureLayered', 'get_layered_type', 518123893);

  int getLayeredType() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_layered_type, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_width =
      resolveMethodBind('TextureLayered', 'get_width', 3905245786);

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
      resolveMethodBind('TextureLayered', 'get_height', 3905245786);

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

  static final Pointer<Void> _mb_get_layers =
      resolveMethodBind('TextureLayered', 'get_layers', 3905245786);

  int getLayers() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_layers, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_has_mipmaps =
      resolveMethodBind('TextureLayered', 'has_mipmaps', 36873697);

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

  static final Pointer<Void> _mb_get_layer_data =
      resolveMethodBind('TextureLayered', 'get_layer_data', 3655284255);

  Image? getLayerData(int layer) {
    final arg0 = malloc<Int64>()..value = layer;
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_layer_data, nativePtr, [arg0.cast<Void>()], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Image(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

}
