// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class FontVariation extends Font {
  FontVariation(super.nativePtr);

  /// Constructs a brand-new engine-owned FontVariation instance
  /// (via classdb_construct_object3), not an existing one.
  factory FontVariation.create() {
    return FontVariation(resolveClassConstructor('FontVariation'));
  }

  static final Pointer<Void> _mb_set_base_font =
      resolveMethodBind('FontVariation', 'set_base_font', 1262170328);

  void setBaseFont(Font font) {
    final arg0 = malloc<Pointer<Void>>()..value = font.nativePtr;
    try {
      ptrcallVoid(_mb_set_base_font, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_base_font =
      resolveMethodBind('FontVariation', 'get_base_font', 3229501585);

  Font? getBaseFont() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_base_font, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Font(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  // Skipped set_variation_opentype(): an argument type is unsupported.
  // Skipped get_variation_opentype(): unsupported return type "Dictionary".
  static final Pointer<Void> _mb_set_variation_embolden =
      resolveMethodBind('FontVariation', 'set_variation_embolden', 373806689);

  void setVariationEmbolden(double strength) {
    final arg0 = malloc<Double>()..value = strength;
    try {
      ptrcallVoid(_mb_set_variation_embolden, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_variation_embolden =
      resolveMethodBind('FontVariation', 'get_variation_embolden', 1740695150);

  double getVariationEmbolden() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_variation_embolden, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_variation_face_index =
      resolveMethodBind('FontVariation', 'set_variation_face_index', 1286410249);

  void setVariationFaceIndex(int faceIndex) {
    final arg0 = malloc<Int64>()..value = faceIndex;
    try {
      ptrcallVoid(_mb_set_variation_face_index, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_variation_face_index =
      resolveMethodBind('FontVariation', 'get_variation_face_index', 3905245786);

  int getVariationFaceIndex() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_variation_face_index, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_variation_transform =
      resolveMethodBind('FontVariation', 'set_variation_transform', 2761652528);

  void setVariationTransform(Transform2D transform) {
    final arg0 = malloc<Uint8>(Transform2D.nativeSize);
    transform.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_variation_transform, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_variation_transform =
      resolveMethodBind('FontVariation', 'get_variation_transform', 3814499831);

  Transform2D getVariationTransform() {
    try {
      final ret = malloc<Uint8>(Transform2D.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_variation_transform, nativePtr, [], ret.cast());
        return Transform2D.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  // Skipped set_opentype_features(): an argument type is unsupported.
  static final Pointer<Void> _mb_set_spacing =
      resolveMethodBind('FontVariation', 'set_spacing', 3122339690);

  void setSpacing(int spacing, int value) {
    final arg0 = malloc<Int64>()..value = spacing;
    final arg1 = malloc<Int64>()..value = value;
    try {
      ptrcallVoid(_mb_set_spacing, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_set_baseline_offset =
      resolveMethodBind('FontVariation', 'set_baseline_offset', 373806689);

  void setBaselineOffset(double baselineOffset) {
    final arg0 = malloc<Double>()..value = baselineOffset;
    try {
      ptrcallVoid(_mb_set_baseline_offset, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_baseline_offset =
      resolveMethodBind('FontVariation', 'get_baseline_offset', 1740695150);

  double getBaselineOffset() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_baseline_offset, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_palette_index =
      resolveMethodBind('FontVariation', 'get_palette_index', 3905245786);

  int getPaletteIndex() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_palette_index, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_palette_index =
      resolveMethodBind('FontVariation', 'set_palette_index', 1286410249);

  void setPaletteIndex(int paletteIndex) {
    final arg0 = malloc<Int64>()..value = paletteIndex;
    try {
      ptrcallVoid(_mb_set_palette_index, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  // Skipped get_palette_custom_colors(): unsupported return type "PackedColorArray".
  // Skipped set_palette_custom_colors(): an argument type is unsupported.
}
