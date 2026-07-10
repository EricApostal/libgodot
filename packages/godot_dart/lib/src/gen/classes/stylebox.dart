// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class StyleBox extends Resource {
  StyleBox(super.nativePtr);

  /// Constructs a brand-new engine-owned StyleBox instance
  /// (via classdb_construct_object3), not an existing one.
  factory StyleBox.create() {
    return StyleBox(resolveClassConstructor('StyleBox'));
  }

  static final Pointer<Void> _mb_get_minimum_size =
      resolveMethodBind('StyleBox', 'get_minimum_size', 3341600327);

  Vector2 getMinimumSize() {
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_minimum_size, nativePtr, [], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_content_margin =
      resolveMethodBind('StyleBox', 'set_content_margin', 4290182280);

  void setContentMargin(int margin, double offset) {
    final arg0 = malloc<Int64>()..value = margin;
    final arg1 = malloc<Double>()..value = offset;
    try {
      ptrcallVoid(_mb_set_content_margin, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_set_content_margin_all =
      resolveMethodBind('StyleBox', 'set_content_margin_all', 373806689);

  void setContentMarginAll(double offset) {
    final arg0 = malloc<Double>()..value = offset;
    try {
      ptrcallVoid(_mb_set_content_margin_all, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_content_margin =
      resolveMethodBind('StyleBox', 'get_content_margin', 2869120046);

  double getContentMargin(int margin) {
    final arg0 = malloc<Int64>()..value = margin;
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_content_margin, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_margin =
      resolveMethodBind('StyleBox', 'get_margin', 2869120046);

  double getMargin(int margin) {
    final arg0 = malloc<Int64>()..value = margin;
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_margin, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_offset =
      resolveMethodBind('StyleBox', 'get_offset', 3341600327);

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

  // Skipped draw(): an argument type is unsupported.
  static final Pointer<Void> _mb_get_current_item_drawn =
      resolveMethodBind('StyleBox', 'get_current_item_drawn', 3213695180);

  CanvasItem? getCurrentItemDrawn() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_current_item_drawn, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : CanvasItem(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_test_mask =
      resolveMethodBind('StyleBox', 'test_mask', 3735564539);

  bool testMask(Vector2 point, Rect2 rect) {
    final arg0 = malloc<Uint8>(Vector2.nativeSize);
    point.writeTo(arg0, 0);
    final arg1 = malloc<Uint8>(Rect2.nativeSize);
    rect.writeTo(arg1, 0);
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_test_mask, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

}
