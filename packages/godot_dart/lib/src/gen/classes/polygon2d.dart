// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class Polygon2D extends Node2D {
  Polygon2D(super.nativePtr);

  /// Constructs a brand-new engine-owned Polygon2D instance
  /// (via classdb_construct_object3), not an existing one.
  factory Polygon2D.create() {
    return Polygon2D(resolveClassConstructor('Polygon2D'));
  }

  // Skipped set_polygon(): an argument type is unsupported.
  // Skipped get_polygon(): unsupported return type "PackedVector2Array".
  // Skipped set_uv(): an argument type is unsupported.
  // Skipped get_uv(): unsupported return type "PackedVector2Array".
  static final Pointer<Void> _mb_set_color =
      resolveMethodBind('Polygon2D', 'set_color', 2920490490);

  void setColor(Color color) {
    final arg0 = malloc<Uint8>(Color.nativeSize);
    color.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_color, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_color =
      resolveMethodBind('Polygon2D', 'get_color', 3444240500);

  Color getColor() {
    try {
      final ret = malloc<Uint8>(Color.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_color, nativePtr, [], ret.cast());
        return Color.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  // Skipped set_polygons(): an argument type is unsupported.
  // Skipped get_polygons(): unsupported return type "Array".
  // Skipped set_vertex_colors(): an argument type is unsupported.
  // Skipped get_vertex_colors(): unsupported return type "PackedColorArray".
  static final Pointer<Void> _mb_set_texture =
      resolveMethodBind('Polygon2D', 'set_texture', 4051416890);

  void setTexture(Texture2D texture) {
    final arg0 = malloc<Pointer<Void>>()..value = texture.nativePtr;
    try {
      ptrcallVoid(_mb_set_texture, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_texture =
      resolveMethodBind('Polygon2D', 'get_texture', 3635182373);

  Texture2D? getTexture() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_texture, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Texture2D(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_texture_offset =
      resolveMethodBind('Polygon2D', 'set_texture_offset', 743155724);

  void setTextureOffset(Vector2 textureOffset) {
    final arg0 = malloc<Uint8>(Vector2.nativeSize);
    textureOffset.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_texture_offset, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_texture_offset =
      resolveMethodBind('Polygon2D', 'get_texture_offset', 3341600327);

  Vector2 getTextureOffset() {
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_texture_offset, nativePtr, [], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_texture_rotation =
      resolveMethodBind('Polygon2D', 'set_texture_rotation', 373806689);

  void setTextureRotation(double textureRotation) {
    final arg0 = malloc<Double>()..value = textureRotation;
    try {
      ptrcallVoid(_mb_set_texture_rotation, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_texture_rotation =
      resolveMethodBind('Polygon2D', 'get_texture_rotation', 1740695150);

  double getTextureRotation() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_texture_rotation, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_texture_scale =
      resolveMethodBind('Polygon2D', 'set_texture_scale', 743155724);

  void setTextureScale(Vector2 textureScale) {
    final arg0 = malloc<Uint8>(Vector2.nativeSize);
    textureScale.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_texture_scale, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_texture_scale =
      resolveMethodBind('Polygon2D', 'get_texture_scale', 3341600327);

  Vector2 getTextureScale() {
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_texture_scale, nativePtr, [], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_invert_enabled =
      resolveMethodBind('Polygon2D', 'set_invert_enabled', 2586408642);

  void setInvertEnabled(bool invert) {
    final arg0 = malloc<Uint8>()..value = invert ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_invert_enabled, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_invert_enabled =
      resolveMethodBind('Polygon2D', 'get_invert_enabled', 36873697);

  bool getInvertEnabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_invert_enabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_antialiased =
      resolveMethodBind('Polygon2D', 'set_antialiased', 2586408642);

  void setAntialiased(bool antialiased) {
    final arg0 = malloc<Uint8>()..value = antialiased ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_antialiased, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_antialiased =
      resolveMethodBind('Polygon2D', 'get_antialiased', 36873697);

  bool getAntialiased() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_antialiased, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_invert_border =
      resolveMethodBind('Polygon2D', 'set_invert_border', 373806689);

  void setInvertBorder(double invertBorder) {
    final arg0 = malloc<Double>()..value = invertBorder;
    try {
      ptrcallVoid(_mb_set_invert_border, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_invert_border =
      resolveMethodBind('Polygon2D', 'get_invert_border', 1740695150);

  double getInvertBorder() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_invert_border, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_offset =
      resolveMethodBind('Polygon2D', 'set_offset', 743155724);

  void setOffset(Vector2 offset) {
    final arg0 = malloc<Uint8>(Vector2.nativeSize);
    offset.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_offset, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_offset =
      resolveMethodBind('Polygon2D', 'get_offset', 3341600327);

  Vector2 getOffset() {
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_offset, nativePtr, [], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  // Skipped add_bone(): an argument type is unsupported.
  static final Pointer<Void> _mb_get_bone_count =
      resolveMethodBind('Polygon2D', 'get_bone_count', 3905245786);

  int getBoneCount() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_bone_count, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  // Skipped get_bone_path(): unsupported return type "NodePath".
  // Skipped get_bone_weights(): unsupported return type "PackedFloat32Array".
  static final Pointer<Void> _mb_erase_bone =
      resolveMethodBind('Polygon2D', 'erase_bone', 1286410249);

  void eraseBone(int index) {
    final arg0 = malloc<Int64>()..value = index;
    try {
      ptrcallVoid(_mb_erase_bone, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_clear_bones =
      resolveMethodBind('Polygon2D', 'clear_bones', 3218959716);

  void clearBones() {
    try {
      ptrcallVoid(_mb_clear_bones, nativePtr, []);
    } finally {
    }
  }

  // Skipped set_bone_path(): an argument type is unsupported.
  // Skipped set_bone_weights(): an argument type is unsupported.
  // Skipped set_skeleton(): an argument type is unsupported.
  // Skipped get_skeleton(): unsupported return type "NodePath".
  static final Pointer<Void> _mb_set_internal_vertex_count =
      resolveMethodBind('Polygon2D', 'set_internal_vertex_count', 1286410249);

  void setInternalVertexCount(int internalVertexCount) {
    final arg0 = malloc<Int64>()..value = internalVertexCount;
    try {
      ptrcallVoid(_mb_set_internal_vertex_count, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_internal_vertex_count =
      resolveMethodBind('Polygon2D', 'get_internal_vertex_count', 3905245786);

  int getInternalVertexCount() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_internal_vertex_count, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
