// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class VisibleOnScreenNotifier2D extends Node2D {
  VisibleOnScreenNotifier2D(super.nativePtr);

  static final Pointer<Void> _mb_set_rect =
      resolveMethodBind('VisibleOnScreenNotifier2D', 'set_rect', 2046264180);

  void setRect(Rect2 rect) {
    final arg0 = malloc<Uint8>(Rect2.nativeSize);
    rect.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_rect, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_rect =
      resolveMethodBind('VisibleOnScreenNotifier2D', 'get_rect', 1639390495);

  Rect2 getRect() {
    try {
      final ret = malloc<Uint8>(Rect2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_rect, nativePtr, [], ret.cast());
        return Rect2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_show_rect =
      resolveMethodBind('VisibleOnScreenNotifier2D', 'set_show_rect', 2586408642);

  void setShowRect(bool showRect) {
    final arg0 = malloc<Uint8>()..value = showRect ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_show_rect, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_showing_rect =
      resolveMethodBind('VisibleOnScreenNotifier2D', 'is_showing_rect', 36873697);

  bool isShowingRect() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_showing_rect, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_is_on_screen =
      resolveMethodBind('VisibleOnScreenNotifier2D', 'is_on_screen', 36873697);

  bool isOnScreen() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_on_screen, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
