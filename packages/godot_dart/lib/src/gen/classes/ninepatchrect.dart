// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class NinePatchRect extends Control {
  NinePatchRect(super.nativePtr);

  /// Constructs a brand-new engine-owned NinePatchRect instance
  /// (via classdb_construct_object3), not an existing one.
  factory NinePatchRect.create() {
    return NinePatchRect(resolveClassConstructor('NinePatchRect'));
  }

  static final Pointer<Void> _mb_set_texture =
      resolveMethodBind('NinePatchRect', 'set_texture', 4051416890);

  void setTexture(Texture2D texture) {
    final arg0 = malloc<Pointer<Void>>()..value = texture.nativePtr;
    try {
      ptrcallVoid(_mb_set_texture, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_texture =
      resolveMethodBind('NinePatchRect', 'get_texture', 3635182373);

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

  static final Pointer<Void> _mb_set_patch_margin =
      resolveMethodBind('NinePatchRect', 'set_patch_margin', 437707142);

  void setPatchMargin(int margin, int value) {
    final arg0 = malloc<Int64>()..value = margin;
    final arg1 = malloc<Int64>()..value = value;
    try {
      ptrcallVoid(_mb_set_patch_margin, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_patch_margin =
      resolveMethodBind('NinePatchRect', 'get_patch_margin', 1983885014);

  int getPatchMargin(int margin) {
    final arg0 = malloc<Int64>()..value = margin;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_patch_margin, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_region_rect =
      resolveMethodBind('NinePatchRect', 'set_region_rect', 2046264180);

  void setRegionRect(Rect2 rect) {
    final arg0 = malloc<Uint8>(Rect2.nativeSize);
    rect.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_region_rect, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_region_rect =
      resolveMethodBind('NinePatchRect', 'get_region_rect', 1639390495);

  Rect2 getRegionRect() {
    try {
      final ret = malloc<Uint8>(Rect2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_region_rect, nativePtr, [], ret.cast());
        return Rect2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_draw_center =
      resolveMethodBind('NinePatchRect', 'set_draw_center', 2586408642);

  void setDrawCenter(bool drawCenter) {
    final arg0 = malloc<Uint8>()..value = drawCenter ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_draw_center, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_draw_center_enabled =
      resolveMethodBind('NinePatchRect', 'is_draw_center_enabled', 36873697);

  bool isDrawCenterEnabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_draw_center_enabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_h_axis_stretch_mode =
      resolveMethodBind('NinePatchRect', 'set_h_axis_stretch_mode', 3219608417);

  void setHAxisStretchMode(int mode) {
    final arg0 = malloc<Int64>()..value = mode;
    try {
      ptrcallVoid(_mb_set_h_axis_stretch_mode, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_h_axis_stretch_mode =
      resolveMethodBind('NinePatchRect', 'get_h_axis_stretch_mode', 3317113799);

  int getHAxisStretchMode() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_h_axis_stretch_mode, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_v_axis_stretch_mode =
      resolveMethodBind('NinePatchRect', 'set_v_axis_stretch_mode', 3219608417);

  void setVAxisStretchMode(int mode) {
    final arg0 = malloc<Int64>()..value = mode;
    try {
      ptrcallVoid(_mb_set_v_axis_stretch_mode, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_v_axis_stretch_mode =
      resolveMethodBind('NinePatchRect', 'get_v_axis_stretch_mode', 3317113799);

  int getVAxisStretchMode() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_v_axis_stretch_mode, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
