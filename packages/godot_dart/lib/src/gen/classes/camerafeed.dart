// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class CameraFeed extends RefCounted {
  CameraFeed(super.nativePtr);

  static final Pointer<Void> _mb_get_id =
      resolveMethodBind('CameraFeed', 'get_id', 3905245786);

  int getId() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_id, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_is_active =
      resolveMethodBind('CameraFeed', 'is_active', 36873697);

  bool isActive() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_active, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_active =
      resolveMethodBind('CameraFeed', 'set_active', 2586408642);

  void setActive(bool active) {
    final arg0 = malloc<Uint8>()..value = active ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_active, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_name =
      resolveMethodBind('CameraFeed', 'get_name', 201670096);

  String getName() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_name, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_name =
      resolveMethodBind('CameraFeed', 'set_name', 83702148);

  void setName(String name) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), name);
    try {
      ptrcallVoid(_mb_set_name, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_position =
      resolveMethodBind('CameraFeed', 'get_position', 2711679033);

  int getPosition() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_position, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_position =
      resolveMethodBind('CameraFeed', 'set_position', 611162623);

  void setPosition(int position) {
    final arg0 = malloc<Int64>()..value = position;
    try {
      ptrcallVoid(_mb_set_position, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_transform =
      resolveMethodBind('CameraFeed', 'get_transform', 3814499831);

  Transform2D getTransform() {
    try {
      final ret = malloc<Uint8>(Transform2D.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_transform, nativePtr, [], ret.cast());
        return Transform2D.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_transform =
      resolveMethodBind('CameraFeed', 'set_transform', 2761652528);

  void setTransform(Transform2D transform) {
    final arg0 = malloc<Uint8>(Transform2D.nativeSize);
    transform.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_transform, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_rgb_image =
      resolveMethodBind('CameraFeed', 'set_rgb_image', 532598488);

  void setRgbImage(Image rgbImage) {
    final arg0 = malloc<Pointer<Void>>()..value = rgbImage.nativePtr;
    try {
      ptrcallVoid(_mb_set_rgb_image, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_ycbcr_image =
      resolveMethodBind('CameraFeed', 'set_ycbcr_image', 532598488);

  void setYcbcrImage(Image ycbcrImage) {
    final arg0 = malloc<Pointer<Void>>()..value = ycbcrImage.nativePtr;
    try {
      ptrcallVoid(_mb_set_ycbcr_image, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_ycbcr_images =
      resolveMethodBind('CameraFeed', 'set_ycbcr_images', 1986484629);

  void setYcbcrImages(Image yImage, Image cbcrImage) {
    final arg0 = malloc<Pointer<Void>>()..value = yImage.nativePtr;
    final arg1 = malloc<Pointer<Void>>()..value = cbcrImage.nativePtr;
    try {
      ptrcallVoid(_mb_set_ycbcr_images, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_set_external =
      resolveMethodBind('CameraFeed', 'set_external', 3937882851);

  void setExternal(int width, int height) {
    final arg0 = malloc<Int64>()..value = width;
    final arg1 = malloc<Int64>()..value = height;
    try {
      ptrcallVoid(_mb_set_external, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_texture_tex_id =
      resolveMethodBind('CameraFeed', 'get_texture_tex_id', 1135699418);

  int getTextureTexId(int feedImageType) {
    final arg0 = malloc<Int64>()..value = feedImageType;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_texture_tex_id, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_datatype =
      resolveMethodBind('CameraFeed', 'get_datatype', 1477782850);

  int getDatatype() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_datatype, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  // Skipped get_formats(): unsupported return type "Array".
  // Skipped set_format(): an argument type is unsupported.
}
