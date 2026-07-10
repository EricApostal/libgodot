// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class Texture2D extends Texture {
  Texture2D(super.nativePtr);

  /// Constructs a brand-new engine-owned Texture2D instance
  /// (via classdb_construct_object3), not an existing one.
  factory Texture2D.create() {
    return Texture2D(resolveClassConstructor('Texture2D'));
  }

  // Skipped virtual _get_image(): dart name "getImage" collides with an existing member.
  // Skipped virtual _get_format(): dart name "getFormat" collides with an existing member.
  // Skipped virtual _get_mipmap_count(): dart name "getMipmapCount" collides with an existing member.
  // Skipped virtual _get_width(): dart name "getWidth" collides with an existing member.
  // Skipped virtual _get_height(): dart name "getHeight" collides with an existing member.
  /// Override to hook into Godot's `_is_pixel_opaque` virtual.
  bool isPixelOpaque(int x, int y) => false;

  // Skipped virtual _has_alpha(): dart name "hasAlpha" collides with an existing member.
  // Skipped virtual _has_mipmaps(): dart name "hasMipmaps" collides with an existing member.
  // Skipped virtual _draw(): an argument type is unsupported ("RID").
  // Skipped virtual _draw_rect(): an argument type is unsupported ("RID").
  // Skipped virtual _draw_rect_region(): an argument type is unsupported ("RID").
  static final Pointer<Void> _mb_get_format =
      resolveMethodBind('Texture2D', 'get_format', 3847873762);

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

  static final Pointer<Void> _mb_get_mipmap_count =
      resolveMethodBind('Texture2D', 'get_mipmap_count', 3905245786);

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

  static final Pointer<Void> _mb_get_width =
      resolveMethodBind('Texture2D', 'get_width', 3905245786);

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
      resolveMethodBind('Texture2D', 'get_height', 3905245786);

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
      resolveMethodBind('Texture2D', 'get_size', 3341600327);

  Vector2 getSize() {
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_size, nativePtr, [], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_has_alpha =
      resolveMethodBind('Texture2D', 'has_alpha', 36873697);

  bool hasAlpha() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_has_alpha, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_has_mipmaps =
      resolveMethodBind('Texture2D', 'has_mipmaps', 36873697);

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

  // Skipped draw(): an argument type is unsupported.
  // Skipped draw_rect(): an argument type is unsupported.
  // Skipped draw_rect_region(): an argument type is unsupported.
  static final Pointer<Void> _mb_get_image =
      resolveMethodBind('Texture2D', 'get_image', 4190603485);

  Image? getImage() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_image, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Image(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_create_placeholder =
      resolveMethodBind('Texture2D', 'create_placeholder', 121922552);

  Resource? createPlaceholder() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_create_placeholder, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Resource(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
