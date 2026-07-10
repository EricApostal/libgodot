// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class VirtualJoystick extends Control {
  VirtualJoystick(super.nativePtr);

  /// Constructs a brand-new engine-owned VirtualJoystick instance
  /// (via classdb_construct_object3), not an existing one.
  factory VirtualJoystick.create() {
    return VirtualJoystick(resolveClassConstructor('VirtualJoystick'));
  }

  static final Pointer<Void> _mb_set_joystick_mode =
      resolveMethodBind('VirtualJoystick', 'set_joystick_mode', 1316760817);

  void setJoystickMode(int mode) {
    final arg0 = malloc<Int64>()..value = mode;
    try {
      ptrcallVoid(_mb_set_joystick_mode, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_joystick_mode =
      resolveMethodBind('VirtualJoystick', 'get_joystick_mode', 2694680530);

  int getJoystickMode() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_joystick_mode, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_joystick_size =
      resolveMethodBind('VirtualJoystick', 'set_joystick_size', 373806689);

  void setJoystickSize(double size) {
    final arg0 = malloc<Double>()..value = size;
    try {
      ptrcallVoid(_mb_set_joystick_size, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_joystick_size =
      resolveMethodBind('VirtualJoystick', 'get_joystick_size', 1740695150);

  double getJoystickSize() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_joystick_size, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_tip_size =
      resolveMethodBind('VirtualJoystick', 'set_tip_size', 373806689);

  void setTipSize(double size) {
    final arg0 = malloc<Double>()..value = size;
    try {
      ptrcallVoid(_mb_set_tip_size, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_tip_size =
      resolveMethodBind('VirtualJoystick', 'get_tip_size', 1740695150);

  double getTipSize() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_tip_size, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_deadzone_ratio =
      resolveMethodBind('VirtualJoystick', 'set_deadzone_ratio', 373806689);

  void setDeadzoneRatio(double ratio) {
    final arg0 = malloc<Double>()..value = ratio;
    try {
      ptrcallVoid(_mb_set_deadzone_ratio, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_deadzone_ratio =
      resolveMethodBind('VirtualJoystick', 'get_deadzone_ratio', 1740695150);

  double getDeadzoneRatio() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_deadzone_ratio, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_clampzone_ratio =
      resolveMethodBind('VirtualJoystick', 'set_clampzone_ratio', 373806689);

  void setClampzoneRatio(double ratio) {
    final arg0 = malloc<Double>()..value = ratio;
    try {
      ptrcallVoid(_mb_set_clampzone_ratio, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_clampzone_ratio =
      resolveMethodBind('VirtualJoystick', 'get_clampzone_ratio', 1740695150);

  double getClampzoneRatio() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_clampzone_ratio, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_initial_offset_ratio =
      resolveMethodBind('VirtualJoystick', 'set_initial_offset_ratio', 743155724);

  void setInitialOffsetRatio(Vector2 ratio) {
    final arg0 = malloc<Uint8>(Vector2.nativeSize);
    ratio.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_initial_offset_ratio, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_initial_offset_ratio =
      resolveMethodBind('VirtualJoystick', 'get_initial_offset_ratio', 3341600327);

  Vector2 getInitialOffsetRatio() {
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_initial_offset_ratio, nativePtr, [], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_action_left =
      resolveMethodBind('VirtualJoystick', 'set_action_left', 3304788590);

  void setActionLeft(String action) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), action);
    try {
      ptrcallVoid(_mb_set_action_left, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_action_left =
      resolveMethodBind('VirtualJoystick', 'get_action_left', 2002593661);

  String getActionLeft() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_action_left, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readStringName(ret.cast());
        BuiltinMarshal.destroyStringName(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_action_right =
      resolveMethodBind('VirtualJoystick', 'set_action_right', 3304788590);

  void setActionRight(String action) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), action);
    try {
      ptrcallVoid(_mb_set_action_right, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_action_right =
      resolveMethodBind('VirtualJoystick', 'get_action_right', 2002593661);

  String getActionRight() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_action_right, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readStringName(ret.cast());
        BuiltinMarshal.destroyStringName(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_action_up =
      resolveMethodBind('VirtualJoystick', 'set_action_up', 3304788590);

  void setActionUp(String action) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), action);
    try {
      ptrcallVoid(_mb_set_action_up, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_action_up =
      resolveMethodBind('VirtualJoystick', 'get_action_up', 2002593661);

  String getActionUp() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_action_up, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readStringName(ret.cast());
        BuiltinMarshal.destroyStringName(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_action_down =
      resolveMethodBind('VirtualJoystick', 'set_action_down', 3304788590);

  void setActionDown(String action) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), action);
    try {
      ptrcallVoid(_mb_set_action_down, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_action_down =
      resolveMethodBind('VirtualJoystick', 'get_action_down', 2002593661);

  String getActionDown() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_action_down, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readStringName(ret.cast());
        BuiltinMarshal.destroyStringName(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_visibility_mode =
      resolveMethodBind('VirtualJoystick', 'set_visibility_mode', 2638298545);

  void setVisibilityMode(int mode) {
    final arg0 = malloc<Int64>()..value = mode;
    try {
      ptrcallVoid(_mb_set_visibility_mode, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_visibility_mode =
      resolveMethodBind('VirtualJoystick', 'get_visibility_mode', 3530872950);

  int getVisibilityMode() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_visibility_mode, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
