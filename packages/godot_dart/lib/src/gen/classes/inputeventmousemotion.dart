// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class InputEventMouseMotion extends InputEventMouse {
  InputEventMouseMotion(super.nativePtr);

  /// Constructs a brand-new engine-owned InputEventMouseMotion instance
  /// (via classdb_construct_object3), not an existing one.
  factory InputEventMouseMotion.create() {
    return InputEventMouseMotion(resolveClassConstructor('InputEventMouseMotion'));
  }

  static final Pointer<Void> _mb_set_tilt =
      resolveMethodBind('InputEventMouseMotion', 'set_tilt', 743155724);

  void setTilt(Vector2 tilt) {
    final arg0 = malloc<Uint8>(Vector2.nativeSize);
    tilt.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_tilt, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_tilt =
      resolveMethodBind('InputEventMouseMotion', 'get_tilt', 3341600327);

  Vector2 getTilt() {
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_tilt, nativePtr, [], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_pressure =
      resolveMethodBind('InputEventMouseMotion', 'set_pressure', 373806689);

  void setPressure(double pressure) {
    final arg0 = malloc<Double>()..value = pressure;
    try {
      ptrcallVoid(_mb_set_pressure, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_pressure =
      resolveMethodBind('InputEventMouseMotion', 'get_pressure', 1740695150);

  double getPressure() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_pressure, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_pen_inverted =
      resolveMethodBind('InputEventMouseMotion', 'set_pen_inverted', 2586408642);

  void setPenInverted(bool penInverted) {
    final arg0 = malloc<Uint8>()..value = penInverted ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_pen_inverted, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_pen_inverted =
      resolveMethodBind('InputEventMouseMotion', 'get_pen_inverted', 36873697);

  bool getPenInverted() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_pen_inverted, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_relative =
      resolveMethodBind('InputEventMouseMotion', 'set_relative', 743155724);

  void setRelative(Vector2 relative) {
    final arg0 = malloc<Uint8>(Vector2.nativeSize);
    relative.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_relative, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_relative =
      resolveMethodBind('InputEventMouseMotion', 'get_relative', 3341600327);

  Vector2 getRelative() {
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_relative, nativePtr, [], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_screen_relative =
      resolveMethodBind('InputEventMouseMotion', 'set_screen_relative', 743155724);

  void setScreenRelative(Vector2 relative) {
    final arg0 = malloc<Uint8>(Vector2.nativeSize);
    relative.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_screen_relative, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_screen_relative =
      resolveMethodBind('InputEventMouseMotion', 'get_screen_relative', 3341600327);

  Vector2 getScreenRelative() {
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_screen_relative, nativePtr, [], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_velocity =
      resolveMethodBind('InputEventMouseMotion', 'set_velocity', 743155724);

  void setVelocity(Vector2 velocity) {
    final arg0 = malloc<Uint8>(Vector2.nativeSize);
    velocity.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_velocity, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_velocity =
      resolveMethodBind('InputEventMouseMotion', 'get_velocity', 3341600327);

  Vector2 getVelocity() {
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_velocity, nativePtr, [], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_screen_velocity =
      resolveMethodBind('InputEventMouseMotion', 'set_screen_velocity', 743155724);

  void setScreenVelocity(Vector2 velocity) {
    final arg0 = malloc<Uint8>(Vector2.nativeSize);
    velocity.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_screen_velocity, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_screen_velocity =
      resolveMethodBind('InputEventMouseMotion', 'get_screen_velocity', 3341600327);

  Vector2 getScreenVelocity() {
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_screen_velocity, nativePtr, [], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
