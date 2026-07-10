// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class TouchScreenButton extends Node2D {
  TouchScreenButton(super.nativePtr);

  static final Pointer<Void> _mb_set_texture_normal =
      resolveMethodBind('TouchScreenButton', 'set_texture_normal', 4051416890);

  void setTextureNormal(Texture2D texture) {
    final arg0 = malloc<Pointer<Void>>()..value = texture.nativePtr;
    try {
      ptrcallVoid(_mb_set_texture_normal, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_texture_normal =
      resolveMethodBind('TouchScreenButton', 'get_texture_normal', 3635182373);

  Texture2D? getTextureNormal() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_texture_normal, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Texture2D(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_texture_pressed =
      resolveMethodBind('TouchScreenButton', 'set_texture_pressed', 4051416890);

  void setTexturePressed(Texture2D texture) {
    final arg0 = malloc<Pointer<Void>>()..value = texture.nativePtr;
    try {
      ptrcallVoid(_mb_set_texture_pressed, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_texture_pressed =
      resolveMethodBind('TouchScreenButton', 'get_texture_pressed', 3635182373);

  Texture2D? getTexturePressed() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_texture_pressed, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Texture2D(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_bitmask =
      resolveMethodBind('TouchScreenButton', 'set_bitmask', 698588216);

  void setBitmask(BitMap bitmask) {
    final arg0 = malloc<Pointer<Void>>()..value = bitmask.nativePtr;
    try {
      ptrcallVoid(_mb_set_bitmask, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_bitmask =
      resolveMethodBind('TouchScreenButton', 'get_bitmask', 2459671998);

  BitMap? getBitmask() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_bitmask, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : BitMap(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_shape =
      resolveMethodBind('TouchScreenButton', 'set_shape', 771364740);

  void setShape(Shape2D shape) {
    final arg0 = malloc<Pointer<Void>>()..value = shape.nativePtr;
    try {
      ptrcallVoid(_mb_set_shape, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_shape =
      resolveMethodBind('TouchScreenButton', 'get_shape', 522005891);

  Shape2D? getShape() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_shape, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Shape2D(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_shape_centered =
      resolveMethodBind('TouchScreenButton', 'set_shape_centered', 2586408642);

  void setShapeCentered(bool bool) {
    final arg0 = malloc<Uint8>()..value = bool ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_shape_centered, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_shape_centered =
      resolveMethodBind('TouchScreenButton', 'is_shape_centered', 36873697);

  bool isShapeCentered() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_shape_centered, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_shape_visible =
      resolveMethodBind('TouchScreenButton', 'set_shape_visible', 2586408642);

  void setShapeVisible(bool bool) {
    final arg0 = malloc<Uint8>()..value = bool ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_shape_visible, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_shape_visible =
      resolveMethodBind('TouchScreenButton', 'is_shape_visible', 36873697);

  bool isShapeVisible() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_shape_visible, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_action =
      resolveMethodBind('TouchScreenButton', 'set_action', 83702148);

  void setAction(String action) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), action);
    try {
      ptrcallVoid(_mb_set_action, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_action =
      resolveMethodBind('TouchScreenButton', 'get_action', 201670096);

  String getAction() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_action, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_visibility_mode =
      resolveMethodBind('TouchScreenButton', 'set_visibility_mode', 3031128463);

  void setVisibilityMode(int mode) {
    final arg0 = malloc<Int64>()..value = mode;
    try {
      ptrcallVoid(_mb_set_visibility_mode, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_visibility_mode =
      resolveMethodBind('TouchScreenButton', 'get_visibility_mode', 2558996468);

  int getVisibilityMode() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_visibility_mode, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_passby_press =
      resolveMethodBind('TouchScreenButton', 'set_passby_press', 2586408642);

  void setPassbyPress(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_passby_press, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_passby_press_enabled =
      resolveMethodBind('TouchScreenButton', 'is_passby_press_enabled', 36873697);

  bool isPassbyPressEnabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_passby_press_enabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_is_pressed =
      resolveMethodBind('TouchScreenButton', 'is_pressed', 36873697);

  bool isPressed() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_pressed, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
