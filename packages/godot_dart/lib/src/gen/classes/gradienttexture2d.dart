// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class GradientTexture2D extends Texture2D {
  GradientTexture2D(super.nativePtr);

  static final Pointer<Void> _mb_set_gradient =
      resolveMethodBind('GradientTexture2D', 'set_gradient', 2756054477);

  void setGradient(Gradient gradient) {
    final arg0 = malloc<Pointer<Void>>()..value = gradient.nativePtr;
    try {
      ptrcallVoid(_mb_set_gradient, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_gradient =
      resolveMethodBind('GradientTexture2D', 'get_gradient', 132272999);

  Gradient? getGradient() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_gradient, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Gradient(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_width =
      resolveMethodBind('GradientTexture2D', 'set_width', 1286410249);

  void setWidth(int width) {
    final arg0 = malloc<Int64>()..value = width;
    try {
      ptrcallVoid(_mb_set_width, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_height =
      resolveMethodBind('GradientTexture2D', 'set_height', 1286410249);

  void setHeight(int height) {
    final arg0 = malloc<Int64>()..value = height;
    try {
      ptrcallVoid(_mb_set_height, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_use_hdr =
      resolveMethodBind('GradientTexture2D', 'set_use_hdr', 2586408642);

  void setUseHdr(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_use_hdr, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_using_hdr =
      resolveMethodBind('GradientTexture2D', 'is_using_hdr', 36873697);

  bool isUsingHdr() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_using_hdr, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_fill =
      resolveMethodBind('GradientTexture2D', 'set_fill', 3623927636);

  void setFill(int fill) {
    final arg0 = malloc<Int64>()..value = fill;
    try {
      ptrcallVoid(_mb_set_fill, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_fill =
      resolveMethodBind('GradientTexture2D', 'get_fill', 1876227217);

  int getFill() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_fill, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_fill_from =
      resolveMethodBind('GradientTexture2D', 'set_fill_from', 743155724);

  void setFillFrom(Vector2 fillFrom) {
    final arg0 = malloc<Uint8>(Vector2.nativeSize);
    fillFrom.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_fill_from, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_fill_from =
      resolveMethodBind('GradientTexture2D', 'get_fill_from', 3341600327);

  Vector2 getFillFrom() {
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_fill_from, nativePtr, [], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_fill_to =
      resolveMethodBind('GradientTexture2D', 'set_fill_to', 743155724);

  void setFillTo(Vector2 fillTo) {
    final arg0 = malloc<Uint8>(Vector2.nativeSize);
    fillTo.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_fill_to, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_fill_to =
      resolveMethodBind('GradientTexture2D', 'get_fill_to', 3341600327);

  Vector2 getFillTo() {
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_fill_to, nativePtr, [], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_repeat =
      resolveMethodBind('GradientTexture2D', 'set_repeat', 1357597002);

  void setRepeat(int repeat) {
    final arg0 = malloc<Int64>()..value = repeat;
    try {
      ptrcallVoid(_mb_set_repeat, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_repeat =
      resolveMethodBind('GradientTexture2D', 'get_repeat', 3351758665);

  int getRepeat() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_repeat, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
