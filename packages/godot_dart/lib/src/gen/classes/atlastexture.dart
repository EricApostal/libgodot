// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class AtlasTexture extends Texture2D {
  AtlasTexture(super.nativePtr);

  /// Constructs a brand-new engine-owned AtlasTexture instance
  /// (via classdb_construct_object3), not an existing one.
  factory AtlasTexture.create() {
    return AtlasTexture(resolveClassConstructor('AtlasTexture'));
  }

  static final Pointer<Void> _mb_set_atlas =
      resolveMethodBind('AtlasTexture', 'set_atlas', 4051416890);

  void setAtlas(Texture2D atlas) {
    final arg0 = malloc<Pointer<Void>>()..value = atlas.nativePtr;
    try {
      ptrcallVoid(_mb_set_atlas, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_atlas =
      resolveMethodBind('AtlasTexture', 'get_atlas', 3635182373);

  Texture2D? getAtlas() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_atlas, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Texture2D(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_region =
      resolveMethodBind('AtlasTexture', 'set_region', 2046264180);

  void setRegion(Rect2 region) {
    final arg0 = malloc<Uint8>(Rect2.nativeSize);
    region.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_region, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_region =
      resolveMethodBind('AtlasTexture', 'get_region', 1639390495);

  Rect2 getRegion() {
    try {
      final ret = malloc<Uint8>(Rect2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_region, nativePtr, [], ret.cast());
        return Rect2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_margin =
      resolveMethodBind('AtlasTexture', 'set_margin', 2046264180);

  void setMargin(Rect2 margin) {
    final arg0 = malloc<Uint8>(Rect2.nativeSize);
    margin.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_margin, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_margin =
      resolveMethodBind('AtlasTexture', 'get_margin', 1639390495);

  Rect2 getMargin() {
    try {
      final ret = malloc<Uint8>(Rect2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_margin, nativePtr, [], ret.cast());
        return Rect2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_filter_clip =
      resolveMethodBind('AtlasTexture', 'set_filter_clip', 2586408642);

  void setFilterClip(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_filter_clip, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_has_filter_clip =
      resolveMethodBind('AtlasTexture', 'has_filter_clip', 36873697);

  bool hasFilterClip() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_has_filter_clip, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
