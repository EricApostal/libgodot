// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class TextureProgressBar extends Range {
  TextureProgressBar(super.nativePtr);

  static final Pointer<Void> _mb_set_under_texture =
      resolveMethodBind('TextureProgressBar', 'set_under_texture', 4051416890);

  void setUnderTexture(Texture2D tex) {
    final arg0 = malloc<Pointer<Void>>()..value = tex.nativePtr;
    try {
      ptrcallVoid(_mb_set_under_texture, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_under_texture =
      resolveMethodBind('TextureProgressBar', 'get_under_texture', 3635182373);

  Texture2D? getUnderTexture() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_under_texture, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Texture2D(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_progress_texture =
      resolveMethodBind('TextureProgressBar', 'set_progress_texture', 4051416890);

  void setProgressTexture(Texture2D tex) {
    final arg0 = malloc<Pointer<Void>>()..value = tex.nativePtr;
    try {
      ptrcallVoid(_mb_set_progress_texture, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_progress_texture =
      resolveMethodBind('TextureProgressBar', 'get_progress_texture', 3635182373);

  Texture2D? getProgressTexture() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_progress_texture, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Texture2D(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_over_texture =
      resolveMethodBind('TextureProgressBar', 'set_over_texture', 4051416890);

  void setOverTexture(Texture2D tex) {
    final arg0 = malloc<Pointer<Void>>()..value = tex.nativePtr;
    try {
      ptrcallVoid(_mb_set_over_texture, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_over_texture =
      resolveMethodBind('TextureProgressBar', 'get_over_texture', 3635182373);

  Texture2D? getOverTexture() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_over_texture, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Texture2D(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_fill_mode =
      resolveMethodBind('TextureProgressBar', 'set_fill_mode', 1286410249);

  void setFillMode(int mode) {
    final arg0 = malloc<Int64>()..value = mode;
    try {
      ptrcallVoid(_mb_set_fill_mode, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_fill_mode =
      resolveMethodBind('TextureProgressBar', 'get_fill_mode', 2455072627);

  int getFillMode() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_fill_mode, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_tint_under =
      resolveMethodBind('TextureProgressBar', 'set_tint_under', 2920490490);

  void setTintUnder(Color tint) {
    final arg0 = malloc<Uint8>(Color.nativeSize);
    tint.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_tint_under, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_tint_under =
      resolveMethodBind('TextureProgressBar', 'get_tint_under', 3444240500);

  Color getTintUnder() {
    try {
      final ret = malloc<Uint8>(Color.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_tint_under, nativePtr, [], ret.cast());
        return Color.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_tint_progress =
      resolveMethodBind('TextureProgressBar', 'set_tint_progress', 2920490490);

  void setTintProgress(Color tint) {
    final arg0 = malloc<Uint8>(Color.nativeSize);
    tint.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_tint_progress, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_tint_progress =
      resolveMethodBind('TextureProgressBar', 'get_tint_progress', 3444240500);

  Color getTintProgress() {
    try {
      final ret = malloc<Uint8>(Color.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_tint_progress, nativePtr, [], ret.cast());
        return Color.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_tint_over =
      resolveMethodBind('TextureProgressBar', 'set_tint_over', 2920490490);

  void setTintOver(Color tint) {
    final arg0 = malloc<Uint8>(Color.nativeSize);
    tint.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_tint_over, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_tint_over =
      resolveMethodBind('TextureProgressBar', 'get_tint_over', 3444240500);

  Color getTintOver() {
    try {
      final ret = malloc<Uint8>(Color.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_tint_over, nativePtr, [], ret.cast());
        return Color.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_texture_progress_offset =
      resolveMethodBind('TextureProgressBar', 'set_texture_progress_offset', 743155724);

  void setTextureProgressOffset(Vector2 offset) {
    final arg0 = malloc<Uint8>(Vector2.nativeSize);
    offset.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_texture_progress_offset, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_texture_progress_offset =
      resolveMethodBind('TextureProgressBar', 'get_texture_progress_offset', 3341600327);

  Vector2 getTextureProgressOffset() {
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_texture_progress_offset, nativePtr, [], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_radial_initial_angle =
      resolveMethodBind('TextureProgressBar', 'set_radial_initial_angle', 373806689);

  void setRadialInitialAngle(double mode) {
    final arg0 = malloc<Double>()..value = mode;
    try {
      ptrcallVoid(_mb_set_radial_initial_angle, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_radial_initial_angle =
      resolveMethodBind('TextureProgressBar', 'get_radial_initial_angle', 191475506);

  double getRadialInitialAngle() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_radial_initial_angle, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_radial_center_offset =
      resolveMethodBind('TextureProgressBar', 'set_radial_center_offset', 743155724);

  void setRadialCenterOffset(Vector2 mode) {
    final arg0 = malloc<Uint8>(Vector2.nativeSize);
    mode.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_radial_center_offset, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_radial_center_offset =
      resolveMethodBind('TextureProgressBar', 'get_radial_center_offset', 1497962370);

  Vector2 getRadialCenterOffset() {
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_radial_center_offset, nativePtr, [], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_fill_degrees =
      resolveMethodBind('TextureProgressBar', 'set_fill_degrees', 373806689);

  void setFillDegrees(double mode) {
    final arg0 = malloc<Double>()..value = mode;
    try {
      ptrcallVoid(_mb_set_fill_degrees, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_fill_degrees =
      resolveMethodBind('TextureProgressBar', 'get_fill_degrees', 191475506);

  double getFillDegrees() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_fill_degrees, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_stretch_margin =
      resolveMethodBind('TextureProgressBar', 'set_stretch_margin', 437707142);

  void setStretchMargin(int margin, int value) {
    final arg0 = malloc<Int64>()..value = margin;
    final arg1 = malloc<Int64>()..value = value;
    try {
      ptrcallVoid(_mb_set_stretch_margin, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_stretch_margin =
      resolveMethodBind('TextureProgressBar', 'get_stretch_margin', 1983885014);

  int getStretchMargin(int margin) {
    final arg0 = malloc<Int64>()..value = margin;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_stretch_margin, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_nine_patch_stretch =
      resolveMethodBind('TextureProgressBar', 'set_nine_patch_stretch', 2586408642);

  void setNinePatchStretch(bool stretch) {
    final arg0 = malloc<Uint8>()..value = stretch ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_nine_patch_stretch, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_nine_patch_stretch =
      resolveMethodBind('TextureProgressBar', 'get_nine_patch_stretch', 36873697);

  bool getNinePatchStretch() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_nine_patch_stretch, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
