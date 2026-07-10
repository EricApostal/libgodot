// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class CanvasTexture extends Texture2D {
  CanvasTexture(super.nativePtr);

  static final Pointer<Void> _mb_set_diffuse_texture =
      resolveMethodBind('CanvasTexture', 'set_diffuse_texture', 4051416890);

  void setDiffuseTexture(Texture2D texture) {
    final arg0 = malloc<Pointer<Void>>()..value = texture.nativePtr;
    try {
      ptrcallVoid(_mb_set_diffuse_texture, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_diffuse_texture =
      resolveMethodBind('CanvasTexture', 'get_diffuse_texture', 3635182373);

  Texture2D? getDiffuseTexture() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_diffuse_texture, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Texture2D(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_normal_texture =
      resolveMethodBind('CanvasTexture', 'set_normal_texture', 4051416890);

  void setNormalTexture(Texture2D texture) {
    final arg0 = malloc<Pointer<Void>>()..value = texture.nativePtr;
    try {
      ptrcallVoid(_mb_set_normal_texture, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_normal_texture =
      resolveMethodBind('CanvasTexture', 'get_normal_texture', 3635182373);

  Texture2D? getNormalTexture() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_normal_texture, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Texture2D(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_specular_texture =
      resolveMethodBind('CanvasTexture', 'set_specular_texture', 4051416890);

  void setSpecularTexture(Texture2D texture) {
    final arg0 = malloc<Pointer<Void>>()..value = texture.nativePtr;
    try {
      ptrcallVoid(_mb_set_specular_texture, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_specular_texture =
      resolveMethodBind('CanvasTexture', 'get_specular_texture', 3635182373);

  Texture2D? getSpecularTexture() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_specular_texture, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Texture2D(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_specular_color =
      resolveMethodBind('CanvasTexture', 'set_specular_color', 2920490490);

  void setSpecularColor(Color color) {
    final arg0 = malloc<Uint8>(Color.nativeSize);
    color.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_specular_color, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_specular_color =
      resolveMethodBind('CanvasTexture', 'get_specular_color', 3444240500);

  Color getSpecularColor() {
    try {
      final ret = malloc<Uint8>(Color.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_specular_color, nativePtr, [], ret.cast());
        return Color.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_specular_shininess =
      resolveMethodBind('CanvasTexture', 'set_specular_shininess', 373806689);

  void setSpecularShininess(double shininess) {
    final arg0 = malloc<Double>()..value = shininess;
    try {
      ptrcallVoid(_mb_set_specular_shininess, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_specular_shininess =
      resolveMethodBind('CanvasTexture', 'get_specular_shininess', 1740695150);

  double getSpecularShininess() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_specular_shininess, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_texture_filter =
      resolveMethodBind('CanvasTexture', 'set_texture_filter', 1037999706);

  void setTextureFilter(int filter) {
    final arg0 = malloc<Int64>()..value = filter;
    try {
      ptrcallVoid(_mb_set_texture_filter, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_texture_filter =
      resolveMethodBind('CanvasTexture', 'get_texture_filter', 121960042);

  int getTextureFilter() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_texture_filter, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_texture_repeat =
      resolveMethodBind('CanvasTexture', 'set_texture_repeat', 1716472974);

  void setTextureRepeat(int repeat) {
    final arg0 = malloc<Int64>()..value = repeat;
    try {
      ptrcallVoid(_mb_set_texture_repeat, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_texture_repeat =
      resolveMethodBind('CanvasTexture', 'get_texture_repeat', 2667158319);

  int getTextureRepeat() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_texture_repeat, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
