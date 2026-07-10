// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class BackBufferCopy extends Node2D {
  BackBufferCopy(super.nativePtr);

  static final Pointer<Void> _mb_set_rect =
      resolveMethodBind('BackBufferCopy', 'set_rect', 2046264180);

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
      resolveMethodBind('BackBufferCopy', 'get_rect', 1639390495);

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

  static final Pointer<Void> _mb_set_copy_mode =
      resolveMethodBind('BackBufferCopy', 'set_copy_mode', 1713538590);

  void setCopyMode(int copyMode) {
    final arg0 = malloc<Int64>()..value = copyMode;
    try {
      ptrcallVoid(_mb_set_copy_mode, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_copy_mode =
      resolveMethodBind('BackBufferCopy', 'get_copy_mode', 3271169440);

  int getCopyMode() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_copy_mode, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
