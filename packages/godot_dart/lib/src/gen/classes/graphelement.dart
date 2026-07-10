// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class GraphElement extends Container {
  GraphElement(super.nativePtr);

  static final Pointer<Void> _mb_set_resizable =
      resolveMethodBind('GraphElement', 'set_resizable', 2586408642);

  void setResizable(bool resizable) {
    final arg0 = malloc<Uint8>()..value = resizable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_resizable, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_resizable =
      resolveMethodBind('GraphElement', 'is_resizable', 36873697);

  bool isResizable() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_resizable, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_draggable =
      resolveMethodBind('GraphElement', 'set_draggable', 2586408642);

  void setDraggable(bool draggable) {
    final arg0 = malloc<Uint8>()..value = draggable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_draggable, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_draggable =
      resolveMethodBind('GraphElement', 'is_draggable', 2240911060);

  bool isDraggable() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_draggable, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_selectable =
      resolveMethodBind('GraphElement', 'set_selectable', 2586408642);

  void setSelectable(bool selectable) {
    final arg0 = malloc<Uint8>()..value = selectable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_selectable, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_selectable =
      resolveMethodBind('GraphElement', 'is_selectable', 2240911060);

  bool isSelectable() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_selectable, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_selected =
      resolveMethodBind('GraphElement', 'set_selected', 2586408642);

  void setSelected(bool selected) {
    final arg0 = malloc<Uint8>()..value = selected ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_selected, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_selected =
      resolveMethodBind('GraphElement', 'is_selected', 2240911060);

  bool isSelected() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_selected, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_scaling_menus =
      resolveMethodBind('GraphElement', 'set_scaling_menus', 2586408642);

  void setScalingMenus(bool scalingMenus) {
    final arg0 = malloc<Uint8>()..value = scalingMenus ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_scaling_menus, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_scaling_menus =
      resolveMethodBind('GraphElement', 'is_scaling_menus', 36873697);

  bool isScalingMenus() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_scaling_menus, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_position_offset =
      resolveMethodBind('GraphElement', 'set_position_offset', 743155724);

  void setPositionOffset(Vector2 offset) {
    final arg0 = malloc<Uint8>(Vector2.nativeSize);
    offset.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_position_offset, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_position_offset =
      resolveMethodBind('GraphElement', 'get_position_offset', 3341600327);

  Vector2 getPositionOffset() {
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_position_offset, nativePtr, [], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
