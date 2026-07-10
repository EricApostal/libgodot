// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class CanvasLayer extends Node {
  CanvasLayer(super.nativePtr);

  static final Pointer<Void> _mb_set_layer =
      resolveMethodBind('CanvasLayer', 'set_layer', 1286410249);

  void setLayer(int layer) {
    final arg0 = malloc<Int64>()..value = layer;
    try {
      ptrcallVoid(_mb_set_layer, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_layer =
      resolveMethodBind('CanvasLayer', 'get_layer', 3905245786);

  int getLayer() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_layer, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_visible =
      resolveMethodBind('CanvasLayer', 'set_visible', 2586408642);

  void setVisible(bool visible) {
    final arg0 = malloc<Uint8>()..value = visible ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_visible, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_visible =
      resolveMethodBind('CanvasLayer', 'is_visible', 36873697);

  bool isVisible() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_visible, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_show =
      resolveMethodBind('CanvasLayer', 'show', 3218959716);

  void show_() {
    try {
      ptrcallVoid(_mb_show, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_hide =
      resolveMethodBind('CanvasLayer', 'hide', 3218959716);

  void hide_() {
    try {
      ptrcallVoid(_mb_hide, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_transform =
      resolveMethodBind('CanvasLayer', 'set_transform', 2761652528);

  void setTransform(Transform2D transform) {
    final arg0 = malloc<Uint8>(Transform2D.nativeSize);
    transform.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_transform, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_transform =
      resolveMethodBind('CanvasLayer', 'get_transform', 3814499831);

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

  static final Pointer<Void> _mb_get_final_transform =
      resolveMethodBind('CanvasLayer', 'get_final_transform', 3814499831);

  Transform2D getFinalTransform() {
    try {
      final ret = malloc<Uint8>(Transform2D.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_final_transform, nativePtr, [], ret.cast());
        return Transform2D.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_offset =
      resolveMethodBind('CanvasLayer', 'set_offset', 743155724);

  void setOffset(Vector2 offset) {
    final arg0 = malloc<Uint8>(Vector2.nativeSize);
    offset.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_offset, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_offset =
      resolveMethodBind('CanvasLayer', 'get_offset', 3341600327);

  Vector2 getOffset() {
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_offset, nativePtr, [], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_rotation =
      resolveMethodBind('CanvasLayer', 'set_rotation', 373806689);

  void setRotation(double radians) {
    final arg0 = malloc<Double>()..value = radians;
    try {
      ptrcallVoid(_mb_set_rotation, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_rotation =
      resolveMethodBind('CanvasLayer', 'get_rotation', 1740695150);

  double getRotation() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_rotation, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_scale =
      resolveMethodBind('CanvasLayer', 'set_scale', 743155724);

  void setScale(Vector2 scale) {
    final arg0 = malloc<Uint8>(Vector2.nativeSize);
    scale.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_scale, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_scale =
      resolveMethodBind('CanvasLayer', 'get_scale', 3341600327);

  Vector2 getScale() {
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_scale, nativePtr, [], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_follow_viewport =
      resolveMethodBind('CanvasLayer', 'set_follow_viewport', 2586408642);

  void setFollowViewport(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_follow_viewport, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_following_viewport =
      resolveMethodBind('CanvasLayer', 'is_following_viewport', 36873697);

  bool isFollowingViewport() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_following_viewport, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_follow_viewport_scale =
      resolveMethodBind('CanvasLayer', 'set_follow_viewport_scale', 373806689);

  void setFollowViewportScale(double scale) {
    final arg0 = malloc<Double>()..value = scale;
    try {
      ptrcallVoid(_mb_set_follow_viewport_scale, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_follow_viewport_scale =
      resolveMethodBind('CanvasLayer', 'get_follow_viewport_scale', 1740695150);

  double getFollowViewportScale() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_follow_viewport_scale, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_custom_viewport =
      resolveMethodBind('CanvasLayer', 'set_custom_viewport', 1078189570);

  void setCustomViewport(Node viewport) {
    final arg0 = malloc<Pointer<Void>>()..value = viewport.nativePtr;
    try {
      ptrcallVoid(_mb_set_custom_viewport, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_custom_viewport =
      resolveMethodBind('CanvasLayer', 'get_custom_viewport', 3160264692);

  Node? getCustomViewport() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_custom_viewport, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Node(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  // Skipped get_canvas(): unsupported return type "RID".
}
