// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class Container extends Control {
  Container(super.nativePtr);

  /// Constructs a brand-new engine-owned Container instance
  /// (via classdb_construct_object3), not an existing one.
  factory Container.create() {
    return Container(resolveClassConstructor('Container'));
  }

  static final Pointer<Void> _mb_queue_sort =
      resolveMethodBind('Container', 'queue_sort', 3218959716);

  void queueSort() {
    try {
      ptrcallVoid(_mb_queue_sort, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_fit_child_in_rect =
      resolveMethodBind('Container', 'fit_child_in_rect', 1993438598);

  void fitChildInRect(Control child, Rect2 rect) {
    final arg0 = malloc<Pointer<Void>>()..value = child.nativePtr;
    final arg1 = malloc<Uint8>(Rect2.nativeSize);
    rect.writeTo(arg1, 0);
    try {
      ptrcallVoid(_mb_fit_child_in_rect, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_set_accessibility_region =
      resolveMethodBind('Container', 'set_accessibility_region', 2586408642);

  void setAccessibilityRegion(bool region) {
    final arg0 = malloc<Uint8>()..value = region ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_accessibility_region, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_accessibility_region =
      resolveMethodBind('Container', 'is_accessibility_region', 36873697);

  bool isAccessibilityRegion() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_accessibility_region, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
