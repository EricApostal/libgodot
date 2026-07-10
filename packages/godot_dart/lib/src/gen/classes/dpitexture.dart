// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class DPITexture extends Texture2D {
  DPITexture(super.nativePtr);

  static final Pointer<Void> _mb_set_source =
      resolveMethodBind('DPITexture', 'set_source', 83702148);

  void setSource(String source) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), source);
    try {
      ptrcallVoid(_mb_set_source, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_source =
      resolveMethodBind('DPITexture', 'get_source', 201670096);

  String getSource() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_source, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_fix_alpha_border =
      resolveMethodBind('DPITexture', 'set_fix_alpha_border', 2586408642);

  void setFixAlphaBorder(bool fixAlphaBorder) {
    final arg0 = malloc<Uint8>()..value = fixAlphaBorder ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_fix_alpha_border, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_fix_alpha_border =
      resolveMethodBind('DPITexture', 'get_fix_alpha_border', 36873697);

  bool getFixAlphaBorder() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_fix_alpha_border, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_premult_alpha =
      resolveMethodBind('DPITexture', 'set_premult_alpha', 2586408642);

  void setPremultAlpha(bool premultAlpha) {
    final arg0 = malloc<Uint8>()..value = premultAlpha ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_premult_alpha, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_premult_alpha =
      resolveMethodBind('DPITexture', 'get_premult_alpha', 36873697);

  bool getPremultAlpha() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_premult_alpha, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_base_scale =
      resolveMethodBind('DPITexture', 'set_base_scale', 373806689);

  void setBaseScale(double baseScale) {
    final arg0 = malloc<Double>()..value = baseScale;
    try {
      ptrcallVoid(_mb_set_base_scale, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_base_scale =
      resolveMethodBind('DPITexture', 'get_base_scale', 1740695150);

  double getBaseScale() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_base_scale, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_saturation =
      resolveMethodBind('DPITexture', 'set_saturation', 373806689);

  void setSaturation(double saturation) {
    final arg0 = malloc<Double>()..value = saturation;
    try {
      ptrcallVoid(_mb_set_saturation, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_saturation =
      resolveMethodBind('DPITexture', 'get_saturation', 1740695150);

  double getSaturation() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_saturation, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  // Skipped set_color_map(): an argument type is unsupported.
  // Skipped get_color_map(): unsupported return type "Dictionary".
  static final Pointer<Void> _mb_set_size_override =
      resolveMethodBind('DPITexture', 'set_size_override', 1130785943);

  void setSizeOverride(Vector2i size) {
    final arg0 = malloc<Uint8>(Vector2i.nativeSize);
    size.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_size_override, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  // Skipped get_scaled_rid(): unsupported return type "RID".
}
