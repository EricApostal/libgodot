// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class RootMotionView extends VisualInstance3D {
  RootMotionView(super.nativePtr);

  /// Constructs a brand-new engine-owned RootMotionView instance
  /// (via classdb_construct_object3), not an existing one.
  factory RootMotionView.create() {
    return RootMotionView(resolveClassConstructor('RootMotionView'));
  }

  // Skipped set_animation_path(): an argument type is unsupported.
  // Skipped get_animation_path(): unsupported return type "NodePath".
  static final Pointer<Void> _mb_set_color =
      resolveMethodBind('RootMotionView', 'set_color', 2920490490);

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
      resolveMethodBind('RootMotionView', 'get_color', 3444240500);

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

  static final Pointer<Void> _mb_set_cell_size =
      resolveMethodBind('RootMotionView', 'set_cell_size', 373806689);

  void setCellSize(double size) {
    final arg0 = malloc<Double>()..value = size;
    try {
      ptrcallVoid(_mb_set_cell_size, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_cell_size =
      resolveMethodBind('RootMotionView', 'get_cell_size', 1740695150);

  double getCellSize() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_cell_size, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_radius =
      resolveMethodBind('RootMotionView', 'set_radius', 373806689);

  void setRadius(double size) {
    final arg0 = malloc<Double>()..value = size;
    try {
      ptrcallVoid(_mb_set_radius, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_radius =
      resolveMethodBind('RootMotionView', 'get_radius', 1740695150);

  double getRadius() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_radius, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_zero_y =
      resolveMethodBind('RootMotionView', 'set_zero_y', 2586408642);

  void setZeroY(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_zero_y, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_zero_y =
      resolveMethodBind('RootMotionView', 'get_zero_y', 36873697);

  bool getZeroY() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_zero_y, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
