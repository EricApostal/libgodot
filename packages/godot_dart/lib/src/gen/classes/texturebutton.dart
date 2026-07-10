// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class TextureButton extends BaseButton {
  TextureButton(super.nativePtr);

  /// Constructs a brand-new engine-owned TextureButton instance
  /// (via classdb_construct_object3), not an existing one.
  factory TextureButton.create() {
    return TextureButton(resolveClassConstructor('TextureButton'));
  }

  static final Pointer<Void> _mb_set_texture_normal =
      resolveMethodBind('TextureButton', 'set_texture_normal', 4051416890);

  void setTextureNormal(Texture2D texture) {
    final arg0 = malloc<Pointer<Void>>()..value = texture.nativePtr;
    try {
      ptrcallVoid(_mb_set_texture_normal, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_texture_pressed =
      resolveMethodBind('TextureButton', 'set_texture_pressed', 4051416890);

  void setTexturePressed(Texture2D texture) {
    final arg0 = malloc<Pointer<Void>>()..value = texture.nativePtr;
    try {
      ptrcallVoid(_mb_set_texture_pressed, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_texture_hover =
      resolveMethodBind('TextureButton', 'set_texture_hover', 4051416890);

  void setTextureHover(Texture2D texture) {
    final arg0 = malloc<Pointer<Void>>()..value = texture.nativePtr;
    try {
      ptrcallVoid(_mb_set_texture_hover, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_texture_disabled =
      resolveMethodBind('TextureButton', 'set_texture_disabled', 4051416890);

  void setTextureDisabled(Texture2D texture) {
    final arg0 = malloc<Pointer<Void>>()..value = texture.nativePtr;
    try {
      ptrcallVoid(_mb_set_texture_disabled, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_texture_focused =
      resolveMethodBind('TextureButton', 'set_texture_focused', 4051416890);

  void setTextureFocused(Texture2D texture) {
    final arg0 = malloc<Pointer<Void>>()..value = texture.nativePtr;
    try {
      ptrcallVoid(_mb_set_texture_focused, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_click_mask =
      resolveMethodBind('TextureButton', 'set_click_mask', 698588216);

  void setClickMask(BitMap mask) {
    final arg0 = malloc<Pointer<Void>>()..value = mask.nativePtr;
    try {
      ptrcallVoid(_mb_set_click_mask, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_ignore_texture_size =
      resolveMethodBind('TextureButton', 'set_ignore_texture_size', 2586408642);

  void setIgnoreTextureSize(bool ignore) {
    final arg0 = malloc<Uint8>()..value = ignore ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_ignore_texture_size, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_stretch_mode =
      resolveMethodBind('TextureButton', 'set_stretch_mode', 252530840);

  void setStretchMode(int mode) {
    final arg0 = malloc<Int64>()..value = mode;
    try {
      ptrcallVoid(_mb_set_stretch_mode, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_flip_h =
      resolveMethodBind('TextureButton', 'set_flip_h', 2586408642);

  void setFlipH(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_flip_h, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_flipped_h =
      resolveMethodBind('TextureButton', 'is_flipped_h', 36873697);

  bool isFlippedH() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_flipped_h, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_flip_v =
      resolveMethodBind('TextureButton', 'set_flip_v', 2586408642);

  void setFlipV(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_flip_v, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_flipped_v =
      resolveMethodBind('TextureButton', 'is_flipped_v', 36873697);

  bool isFlippedV() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_flipped_v, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_texture_normal =
      resolveMethodBind('TextureButton', 'get_texture_normal', 3635182373);

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

  static final Pointer<Void> _mb_get_texture_pressed =
      resolveMethodBind('TextureButton', 'get_texture_pressed', 3635182373);

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

  static final Pointer<Void> _mb_get_texture_hover =
      resolveMethodBind('TextureButton', 'get_texture_hover', 3635182373);

  Texture2D? getTextureHover() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_texture_hover, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Texture2D(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_texture_disabled =
      resolveMethodBind('TextureButton', 'get_texture_disabled', 3635182373);

  Texture2D? getTextureDisabled() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_texture_disabled, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Texture2D(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_texture_focused =
      resolveMethodBind('TextureButton', 'get_texture_focused', 3635182373);

  Texture2D? getTextureFocused() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_texture_focused, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Texture2D(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_click_mask =
      resolveMethodBind('TextureButton', 'get_click_mask', 2459671998);

  BitMap? getClickMask() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_click_mask, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : BitMap(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_ignore_texture_size =
      resolveMethodBind('TextureButton', 'get_ignore_texture_size', 36873697);

  bool getIgnoreTextureSize() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_ignore_texture_size, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_stretch_mode =
      resolveMethodBind('TextureButton', 'get_stretch_mode', 33815122);

  int getStretchMode() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_stretch_mode, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
