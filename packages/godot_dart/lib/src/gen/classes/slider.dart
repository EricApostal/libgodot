// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class Slider extends Range {
  Slider(super.nativePtr);

  static final Pointer<Void> _mb_set_ticks =
      resolveMethodBind('Slider', 'set_ticks', 1286410249);

  void setTicks(int count) {
    final arg0 = malloc<Int64>()..value = count;
    try {
      ptrcallVoid(_mb_set_ticks, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_ticks =
      resolveMethodBind('Slider', 'get_ticks', 3905245786);

  int getTicks() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_ticks, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_ticks_on_borders =
      resolveMethodBind('Slider', 'get_ticks_on_borders', 36873697);

  bool getTicksOnBorders() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_ticks_on_borders, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_ticks_on_borders =
      resolveMethodBind('Slider', 'set_ticks_on_borders', 2586408642);

  void setTicksOnBorders(bool ticksOnBorder) {
    final arg0 = malloc<Uint8>()..value = ticksOnBorder ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_ticks_on_borders, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_ticks_position =
      resolveMethodBind('Slider', 'get_ticks_position', 3567635531);

  int getTicksPosition() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_ticks_position, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_ticks_position =
      resolveMethodBind('Slider', 'set_ticks_position', 2952822224);

  void setTicksPosition(int ticksOnBorder) {
    final arg0 = malloc<Int64>()..value = ticksOnBorder;
    try {
      ptrcallVoid(_mb_set_ticks_position, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_editable =
      resolveMethodBind('Slider', 'set_editable', 2586408642);

  void setEditable(bool editable) {
    final arg0 = malloc<Uint8>()..value = editable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_editable, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_editable =
      resolveMethodBind('Slider', 'is_editable', 36873697);

  bool isEditable() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_editable, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_scrollable =
      resolveMethodBind('Slider', 'set_scrollable', 2586408642);

  void setScrollable(bool scrollable) {
    final arg0 = malloc<Uint8>()..value = scrollable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_scrollable, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_scrollable =
      resolveMethodBind('Slider', 'is_scrollable', 36873697);

  bool isScrollable() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_scrollable, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
