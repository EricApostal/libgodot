// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class StyleBoxLine extends StyleBox {
  StyleBoxLine(super.nativePtr);

  /// Constructs a brand-new engine-owned StyleBoxLine instance
  /// (via classdb_construct_object3), not an existing one.
  factory StyleBoxLine.create() {
    return StyleBoxLine(resolveClassConstructor('StyleBoxLine'));
  }

  static final Pointer<Void> _mb_set_color =
      resolveMethodBind('StyleBoxLine', 'set_color', 2920490490);

  void setColor(Color color) {
    final arg0 = malloc<Uint8>(Color.nativeSize);
    color.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_color, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_color =
      resolveMethodBind('StyleBoxLine', 'get_color', 3444240500);

  Color getColor() {
    try {
      final ret = malloc<Uint8>(Color.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_color, nativePtr, [], ret.cast());
        return Color.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_thickness =
      resolveMethodBind('StyleBoxLine', 'set_thickness', 1286410249);

  void setThickness(int thickness) {
    final arg0 = malloc<Int64>()..value = thickness;
    try {
      ptrcallVoid(_mb_set_thickness, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_thickness =
      resolveMethodBind('StyleBoxLine', 'get_thickness', 3905245786);

  int getThickness() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_thickness, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_grow_begin =
      resolveMethodBind('StyleBoxLine', 'set_grow_begin', 373806689);

  void setGrowBegin(double offset) {
    final arg0 = malloc<Double>()..value = offset;
    try {
      ptrcallVoid(_mb_set_grow_begin, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_grow_begin =
      resolveMethodBind('StyleBoxLine', 'get_grow_begin', 1740695150);

  double getGrowBegin() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_grow_begin, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_grow_end =
      resolveMethodBind('StyleBoxLine', 'set_grow_end', 373806689);

  void setGrowEnd(double offset) {
    final arg0 = malloc<Double>()..value = offset;
    try {
      ptrcallVoid(_mb_set_grow_end, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_grow_end =
      resolveMethodBind('StyleBoxLine', 'get_grow_end', 1740695150);

  double getGrowEnd() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_grow_end, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_vertical =
      resolveMethodBind('StyleBoxLine', 'set_vertical', 2586408642);

  void setVertical(bool vertical) {
    final arg0 = malloc<Uint8>()..value = vertical ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_vertical, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_vertical =
      resolveMethodBind('StyleBoxLine', 'is_vertical', 36873697);

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

}
