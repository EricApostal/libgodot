// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class FlowContainer extends Container {
  FlowContainer(super.nativePtr);

  /// Constructs a brand-new engine-owned FlowContainer instance
  /// (via classdb_construct_object3), not an existing one.
  factory FlowContainer.create() {
    return FlowContainer(resolveClassConstructor('FlowContainer'));
  }

  static final Pointer<Void> _mb_get_line_count =
      resolveMethodBind('FlowContainer', 'get_line_count', 3905245786);

  int getLineCount() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_line_count, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_alignment =
      resolveMethodBind('FlowContainer', 'set_alignment', 575250951);

  void setAlignment(int alignment) {
    final arg0 = malloc<Int64>()..value = alignment;
    try {
      ptrcallVoid(_mb_set_alignment, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_alignment =
      resolveMethodBind('FlowContainer', 'get_alignment', 3749743559);

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

  static final Pointer<Void> _mb_set_last_wrap_alignment =
      resolveMethodBind('FlowContainer', 'set_last_wrap_alignment', 2899697495);

  void setLastWrapAlignment(int lastWrapAlignment) {
    final arg0 = malloc<Int64>()..value = lastWrapAlignment;
    try {
      ptrcallVoid(_mb_set_last_wrap_alignment, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_last_wrap_alignment =
      resolveMethodBind('FlowContainer', 'get_last_wrap_alignment', 3743456014);

  int getLastWrapAlignment() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_last_wrap_alignment, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_vertical =
      resolveMethodBind('FlowContainer', 'set_vertical', 2586408642);

  void setVertical(bool vertical) {
    final arg0 = malloc<Uint8>()..value = vertical ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_vertical, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_vertical =
      resolveMethodBind('FlowContainer', 'is_vertical', 36873697);

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

  static final Pointer<Void> _mb_set_reverse_fill =
      resolveMethodBind('FlowContainer', 'set_reverse_fill', 2586408642);

  void setReverseFill(bool reverseFill) {
    final arg0 = malloc<Uint8>()..value = reverseFill ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_reverse_fill, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_reverse_fill =
      resolveMethodBind('FlowContainer', 'is_reverse_fill', 36873697);

  bool isReverseFill() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_reverse_fill, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
