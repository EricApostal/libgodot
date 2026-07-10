// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class BoxContainer extends Container {
  BoxContainer(super.nativePtr);

  /// Constructs a brand-new engine-owned BoxContainer instance
  /// (via classdb_construct_object3), not an existing one.
  factory BoxContainer.create() {
    return BoxContainer(resolveClassConstructor('BoxContainer'));
  }

  static final Pointer<Void> _mb_add_spacer =
      resolveMethodBind('BoxContainer', 'add_spacer', 1326660695);

  Control? addSpacer(bool begin) {
    final arg0 = malloc<Uint8>()..value = begin ? 1 : 0;
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_add_spacer, nativePtr, [arg0.cast<Void>()], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Control(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_alignment =
      resolveMethodBind('BoxContainer', 'set_alignment', 2456745134);

  void setAlignment(int alignment) {
    final arg0 = malloc<Int64>()..value = alignment;
    try {
      ptrcallVoid(_mb_set_alignment, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_alignment =
      resolveMethodBind('BoxContainer', 'get_alignment', 1915476527);

  int getAlignment() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_alignment, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_vertical =
      resolveMethodBind('BoxContainer', 'set_vertical', 2586408642);

  void setVertical(bool vertical) {
    final arg0 = malloc<Uint8>()..value = vertical ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_vertical, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_vertical =
      resolveMethodBind('BoxContainer', 'is_vertical', 36873697);

  bool isVertical() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_vertical, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_reverse_sort =
      resolveMethodBind('BoxContainer', 'set_reverse_sort', 2586408642);

  void setReverseSort(bool reverseSort) {
    final arg0 = malloc<Uint8>()..value = reverseSort ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_reverse_sort, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_reverse_sort =
      resolveMethodBind('BoxContainer', 'is_reverse_sort', 36873697);

  bool isReverseSort() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_reverse_sort, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
