// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class Input extends GodotObject {
  Input(super.nativePtr);

  static Input? _singleton;
  static Input get singleton {
    return _singleton ??= Input(resolveSingleton('Input'));
  }

  static final Pointer<Void> _mb_is_anything_pressed =
      resolveMethodBind('Input', 'is_anything_pressed', 36873697);

  bool isAnythingPressed() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_anything_pressed, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_is_key_pressed =
      resolveMethodBind('Input', 'is_key_pressed', 1938909964);

  bool isKeyPressed(int keycode) {
    final arg0 = malloc<Int64>()..value = keycode;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_key_pressed, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_physical_key_pressed =
      resolveMethodBind('Input', 'is_physical_key_pressed', 1938909964);

  bool isPhysicalKeyPressed(int keycode) {
    final arg0 = malloc<Int64>()..value = keycode;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_physical_key_pressed, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_key_label_pressed =
      resolveMethodBind('Input', 'is_key_label_pressed', 1938909964);

  bool isKeyLabelPressed(int keycode) {
    final arg0 = malloc<Int64>()..value = keycode;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_key_label_pressed, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_mouse_button_pressed =
      resolveMethodBind('Input', 'is_mouse_button_pressed', 1821097125);

  bool isMouseButtonPressed(int button) {
    final arg0 = malloc<Int64>()..value = button;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_mouse_button_pressed, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_joy_button_pressed =
      resolveMethodBind('Input', 'is_joy_button_pressed', 787208542);

  bool isJoyButtonPressed(int device, int button) {
    final arg0 = malloc<Int64>()..value = device;
    final arg1 = malloc<Int64>()..value = button;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_joy_button_pressed, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_is_action_pressed =
      resolveMethodBind('Input', 'is_action_pressed', 1558498928);

  bool isActionPressed(String action, bool exactMatch) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), action);
    final arg1 = malloc<Uint8>()..value = exactMatch ? 1 : 0;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_action_pressed, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_is_action_just_pressed =
      resolveMethodBind('Input', 'is_action_just_pressed', 1558498928);

  bool isActionJustPressed(String action, bool exactMatch) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), action);
    final arg1 = malloc<Uint8>()..value = exactMatch ? 1 : 0;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_action_just_pressed, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_is_action_just_released =
      resolveMethodBind('Input', 'is_action_just_released', 1558498928);

  bool isActionJustReleased(String action, bool exactMatch) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), action);
    final arg1 = malloc<Uint8>()..value = exactMatch ? 1 : 0;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_action_just_released, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_is_action_just_pressed_by_event =
      resolveMethodBind('Input', 'is_action_just_pressed_by_event', 551972873);

  bool isActionJustPressedByEvent(String action, InputEvent event, bool exactMatch) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), action);
    final arg1 = malloc<Pointer<Void>>()..value = event.nativePtr;
    final arg2 = malloc<Uint8>()..value = exactMatch ? 1 : 0;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_action_just_pressed_by_event, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_is_action_just_released_by_event =
      resolveMethodBind('Input', 'is_action_just_released_by_event', 551972873);

  bool isActionJustReleasedByEvent(String action, InputEvent event, bool exactMatch) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), action);
    final arg1 = malloc<Pointer<Void>>()..value = event.nativePtr;
    final arg2 = malloc<Uint8>()..value = exactMatch ? 1 : 0;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_action_just_released_by_event, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_get_action_strength =
      resolveMethodBind('Input', 'get_action_strength', 801543509);

  double getActionStrength(String action, bool exactMatch) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), action);
    final arg1 = malloc<Uint8>()..value = exactMatch ? 1 : 0;
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_action_strength, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_action_raw_strength =
      resolveMethodBind('Input', 'get_action_raw_strength', 801543509);

  double getActionRawStrength(String action, bool exactMatch) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), action);
    final arg1 = malloc<Uint8>()..value = exactMatch ? 1 : 0;
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_action_raw_strength, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_axis =
      resolveMethodBind('Input', 'get_axis', 1958752504);

  double getAxis(String negativeAction, String positiveAction) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), negativeAction);
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg1.cast(), positiveAction);
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_axis, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
      BuiltinMarshal.destroyStringName(arg1.cast());
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_vector =
      resolveMethodBind('Input', 'get_vector', 2479607902);

  Vector2 getVector(String negativeX, String positiveX, String negativeY, String positiveY, double deadzone) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), negativeX);
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg1.cast(), positiveX);
    final arg2 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg2.cast(), negativeY);
    final arg3 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg3.cast(), positiveY);
    final arg4 = malloc<Double>()..value = deadzone;
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_vector, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>(), arg3.cast<Void>(), arg4.cast<Void>()], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
      BuiltinMarshal.destroyStringName(arg1.cast());
      malloc.free(arg1);
      BuiltinMarshal.destroyStringName(arg2.cast());
      malloc.free(arg2);
      BuiltinMarshal.destroyStringName(arg3.cast());
      malloc.free(arg3);
      malloc.free(arg4);
    }
  }

  static final Pointer<Void> _mb_add_joy_mapping =
      resolveMethodBind('Input', 'add_joy_mapping', 1168363258);

  void addJoyMapping(String mapping, bool updateExisting) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), mapping);
    final arg1 = malloc<Uint8>()..value = updateExisting ? 1 : 0;
    try {
      ptrcallVoid(_mb_add_joy_mapping, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_remove_joy_mapping =
      resolveMethodBind('Input', 'remove_joy_mapping', 83702148);

  void removeJoyMapping(String guid) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), guid);
    try {
      ptrcallVoid(_mb_remove_joy_mapping, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_joy_known =
      resolveMethodBind('Input', 'is_joy_known', 3067735520);

  bool isJoyKnown(int device) {
    final arg0 = malloc<Int64>()..value = device;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_joy_known, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_joy_axis =
      resolveMethodBind('Input', 'get_joy_axis', 4063175957);

  double getJoyAxis(int device, int axis) {
    final arg0 = malloc<Int64>()..value = device;
    final arg1 = malloc<Int64>()..value = axis;
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_joy_axis, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_joy_name =
      resolveMethodBind('Input', 'get_joy_name', 990163283);

  String getJoyName(int device) {
    final arg0 = malloc<Int64>()..value = device;
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_joy_name, nativePtr, [arg0.cast<Void>()], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_joy_guid =
      resolveMethodBind('Input', 'get_joy_guid', 844755477);

  String getJoyGuid(int device) {
    final arg0 = malloc<Int64>()..value = device;
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_joy_guid, nativePtr, [arg0.cast<Void>()], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  // Skipped get_joy_info(): unsupported return type "Dictionary".
  static final Pointer<Void> _mb_should_ignore_device =
      resolveMethodBind('Input', 'should_ignore_device', 2522259332);

  bool shouldIgnoreDevice(int vendorId, int productId) {
    final arg0 = malloc<Int64>()..value = vendorId;
    final arg1 = malloc<Int64>()..value = productId;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_should_ignore_device, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  // Skipped get_connected_joypads(): unsupported return type "typedarray::int".
  static final Pointer<Void> _mb_get_joy_vibration_strength =
      resolveMethodBind('Input', 'get_joy_vibration_strength', 3114997196);

  Vector2 getJoyVibrationStrength(int device) {
    final arg0 = malloc<Int64>()..value = device;
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_joy_vibration_strength, nativePtr, [arg0.cast<Void>()], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_joy_vibration_duration =
      resolveMethodBind('Input', 'get_joy_vibration_duration', 4025615559);

  double getJoyVibrationDuration(int device) {
    final arg0 = malloc<Int64>()..value = device;
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_joy_vibration_duration, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_joy_vibration_remaining_duration =
      resolveMethodBind('Input', 'get_joy_vibration_remaining_duration', 4025615559);

  double getJoyVibrationRemainingDuration(int device) {
    final arg0 = malloc<Int64>()..value = device;
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_joy_vibration_remaining_duration, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_joy_vibrating =
      resolveMethodBind('Input', 'is_joy_vibrating', 3067735520);

  bool isJoyVibrating(int device) {
    final arg0 = malloc<Int64>()..value = device;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_joy_vibrating, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_has_joy_vibration =
      resolveMethodBind('Input', 'has_joy_vibration', 1116898809);

  bool hasJoyVibration(int device) {
    final arg0 = malloc<Int64>()..value = device;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_has_joy_vibration, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_start_joy_vibration =
      resolveMethodBind('Input', 'start_joy_vibration', 2576575033);

  void startJoyVibration(int device, double weakMagnitude, double strongMagnitude, double duration) {
    final arg0 = malloc<Int64>()..value = device;
    final arg1 = malloc<Double>()..value = weakMagnitude;
    final arg2 = malloc<Double>()..value = strongMagnitude;
    final arg3 = malloc<Double>()..value = duration;
    try {
      ptrcallVoid(_mb_start_joy_vibration, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>(), arg3.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
      malloc.free(arg3);
    }
  }

  static final Pointer<Void> _mb_stop_joy_vibration =
      resolveMethodBind('Input', 'stop_joy_vibration', 1286410249);

  void stopJoyVibration(int device) {
    final arg0 = malloc<Int64>()..value = device;
    try {
      ptrcallVoid(_mb_stop_joy_vibration, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_vibrate_handheld =
      resolveMethodBind('Input', 'vibrate_handheld', 544894297);

  void vibrateHandheld(int durationMs, double amplitude) {
    final arg0 = malloc<Int64>()..value = durationMs;
    final arg1 = malloc<Double>()..value = amplitude;
    try {
      ptrcallVoid(_mb_vibrate_handheld, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_set_ignore_joypad_on_unfocused_application =
      resolveMethodBind('Input', 'set_ignore_joypad_on_unfocused_application', 2586408642);

  void setIgnoreJoypadOnUnfocusedApplication(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_ignore_joypad_on_unfocused_application, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_ignoring_joypad_on_unfocused_application =
      resolveMethodBind('Input', 'is_ignoring_joypad_on_unfocused_application', 36873697);

  bool isIgnoringJoypadOnUnfocusedApplication() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_ignoring_joypad_on_unfocused_application, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_gravity =
      resolveMethodBind('Input', 'get_gravity', 3360562783);

  Vector3 getGravity() {
    try {
      final ret = malloc<Uint8>(Vector3.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_gravity, nativePtr, [], ret.cast());
        return Vector3.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_accelerometer =
      resolveMethodBind('Input', 'get_accelerometer', 3360562783);

  Vector3 getAccelerometer() {
    try {
      final ret = malloc<Uint8>(Vector3.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_accelerometer, nativePtr, [], ret.cast());
        return Vector3.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_magnetometer =
      resolveMethodBind('Input', 'get_magnetometer', 3360562783);

  Vector3 getMagnetometer() {
    try {
      final ret = malloc<Uint8>(Vector3.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_magnetometer, nativePtr, [], ret.cast());
        return Vector3.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_gyroscope =
      resolveMethodBind('Input', 'get_gyroscope', 3360562783);

  Vector3 getGyroscope() {
    try {
      final ret = malloc<Uint8>(Vector3.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_gyroscope, nativePtr, [], ret.cast());
        return Vector3.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_joy_accelerometer =
      resolveMethodBind('Input', 'get_joy_accelerometer', 711720468);

  Vector3 getJoyAccelerometer(int device) {
    final arg0 = malloc<Int64>()..value = device;
    try {
      final ret = malloc<Uint8>(Vector3.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_joy_accelerometer, nativePtr, [arg0.cast<Void>()], ret.cast());
        return Vector3.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_joy_gravity =
      resolveMethodBind('Input', 'get_joy_gravity', 711720468);

  Vector3 getJoyGravity(int device) {
    final arg0 = malloc<Int64>()..value = device;
    try {
      final ret = malloc<Uint8>(Vector3.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_joy_gravity, nativePtr, [arg0.cast<Void>()], ret.cast());
        return Vector3.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_joy_gyroscope =
      resolveMethodBind('Input', 'get_joy_gyroscope', 711720468);

  Vector3 getJoyGyroscope(int device) {
    final arg0 = malloc<Int64>()..value = device;
    try {
      final ret = malloc<Uint8>(Vector3.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_joy_gyroscope, nativePtr, [arg0.cast<Void>()], ret.cast());
        return Vector3.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_joy_motion_sensors_rate =
      resolveMethodBind('Input', 'get_joy_motion_sensors_rate', 2339986948);

  double getJoyMotionSensorsRate(int device) {
    final arg0 = malloc<Int64>()..value = device;
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_joy_motion_sensors_rate, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_joy_motion_sensors_enabled =
      resolveMethodBind('Input', 'is_joy_motion_sensors_enabled', 1116898809);

  bool isJoyMotionSensorsEnabled(int device) {
    final arg0 = malloc<Int64>()..value = device;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_joy_motion_sensors_enabled, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_joy_motion_sensors_enabled =
      resolveMethodBind('Input', 'set_joy_motion_sensors_enabled', 300928843);

  void setJoyMotionSensorsEnabled(int device, bool enable) {
    final arg0 = malloc<Int64>()..value = device;
    final arg1 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_joy_motion_sensors_enabled, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_has_joy_motion_sensors =
      resolveMethodBind('Input', 'has_joy_motion_sensors', 1116898809);

  bool hasJoyMotionSensors(int device) {
    final arg0 = malloc<Int64>()..value = device;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_has_joy_motion_sensors, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_start_joy_motion_sensors_calibration =
      resolveMethodBind('Input', 'start_joy_motion_sensors_calibration', 1286410249);

  void startJoyMotionSensorsCalibration(int device) {
    final arg0 = malloc<Int64>()..value = device;
    try {
      ptrcallVoid(_mb_start_joy_motion_sensors_calibration, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_stop_joy_motion_sensors_calibration =
      resolveMethodBind('Input', 'stop_joy_motion_sensors_calibration', 1286410249);

  void stopJoyMotionSensorsCalibration(int device) {
    final arg0 = malloc<Int64>()..value = device;
    try {
      ptrcallVoid(_mb_stop_joy_motion_sensors_calibration, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_clear_joy_motion_sensors_calibration =
      resolveMethodBind('Input', 'clear_joy_motion_sensors_calibration', 1286410249);

  void clearJoyMotionSensorsCalibration(int device) {
    final arg0 = malloc<Int64>()..value = device;
    try {
      ptrcallVoid(_mb_clear_joy_motion_sensors_calibration, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  // Skipped get_joy_motion_sensors_calibration(): unsupported return type "Dictionary".
  // Skipped set_joy_motion_sensors_calibration(): an argument type is unsupported.
  static final Pointer<Void> _mb_is_joy_motion_sensors_calibrated =
      resolveMethodBind('Input', 'is_joy_motion_sensors_calibrated', 1116898809);

  bool isJoyMotionSensorsCalibrated(int device) {
    final arg0 = malloc<Int64>()..value = device;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_joy_motion_sensors_calibrated, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_joy_motion_sensors_calibrating =
      resolveMethodBind('Input', 'is_joy_motion_sensors_calibrating', 1116898809);

  bool isJoyMotionSensorsCalibrating(int device) {
    final arg0 = malloc<Int64>()..value = device;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_joy_motion_sensors_calibrating, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_joy_touchpad_finger_position =
      resolveMethodBind('Input', 'get_joy_touchpad_finger_position', 4135671252);

  Vector2 getJoyTouchpadFingerPosition(int device, int finger, int touchpad) {
    final arg0 = malloc<Int64>()..value = device;
    final arg1 = malloc<Int64>()..value = finger;
    final arg2 = malloc<Int64>()..value = touchpad;
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_joy_touchpad_finger_position, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_get_joy_touchpad_finger_pressure =
      resolveMethodBind('Input', 'get_joy_touchpad_finger_pressure', 4212583121);

  double getJoyTouchpadFingerPressure(int device, int finger, int touchpad) {
    final arg0 = malloc<Int64>()..value = device;
    final arg1 = malloc<Int64>()..value = finger;
    final arg2 = malloc<Int64>()..value = touchpad;
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_joy_touchpad_finger_pressure, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
    }
  }

  // Skipped get_joy_touchpad_fingers(): unsupported return type "PackedInt32Array".
  static final Pointer<Void> _mb_get_joy_num_touchpads =
      resolveMethodBind('Input', 'get_joy_num_touchpads', 923996154);

  int getJoyNumTouchpads(int device) {
    final arg0 = malloc<Int64>()..value = device;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_joy_num_touchpads, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_gravity =
      resolveMethodBind('Input', 'set_gravity', 3460891852);

  void setGravity(Vector3 value) {
    final arg0 = malloc<Uint8>(Vector3.nativeSize);
    value.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_gravity, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_accelerometer =
      resolveMethodBind('Input', 'set_accelerometer', 3460891852);

  void setAccelerometer(Vector3 value) {
    final arg0 = malloc<Uint8>(Vector3.nativeSize);
    value.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_accelerometer, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_magnetometer =
      resolveMethodBind('Input', 'set_magnetometer', 3460891852);

  void setMagnetometer(Vector3 value) {
    final arg0 = malloc<Uint8>(Vector3.nativeSize);
    value.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_magnetometer, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_gyroscope =
      resolveMethodBind('Input', 'set_gyroscope', 3460891852);

  void setGyroscope(Vector3 value) {
    final arg0 = malloc<Uint8>(Vector3.nativeSize);
    value.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_gyroscope, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_joy_light =
      resolveMethodBind('Input', 'set_joy_light', 2878471219);

  void setJoyLight(int device, Color color) {
    final arg0 = malloc<Int64>()..value = device;
    final arg1 = malloc<Uint8>(Color.nativeSize);
    color.writeTo(arg1, 0);
    try {
      ptrcallVoid(_mb_set_joy_light, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_has_joy_light =
      resolveMethodBind('Input', 'has_joy_light', 1116898809);

  bool hasJoyLight(int device) {
    final arg0 = malloc<Int64>()..value = device;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_has_joy_light, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_last_mouse_velocity =
      resolveMethodBind('Input', 'get_last_mouse_velocity', 1497962370);

  Vector2 getLastMouseVelocity() {
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_last_mouse_velocity, nativePtr, [], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_last_mouse_screen_velocity =
      resolveMethodBind('Input', 'get_last_mouse_screen_velocity', 1497962370);

  Vector2 getLastMouseScreenVelocity() {
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_last_mouse_screen_velocity, nativePtr, [], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_mouse_button_mask =
      resolveMethodBind('Input', 'get_mouse_button_mask', 2512161324);

  int getMouseButtonMask() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_mouse_button_mask, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_mouse_mode =
      resolveMethodBind('Input', 'set_mouse_mode', 2228490894);

  void setMouseMode(int mode) {
    final arg0 = malloc<Int64>()..value = mode;
    try {
      ptrcallVoid(_mb_set_mouse_mode, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_mouse_mode =
      resolveMethodBind('Input', 'get_mouse_mode', 965286182);

  int getMouseMode() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_mouse_mode, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_warp_mouse =
      resolveMethodBind('Input', 'warp_mouse', 743155724);

  void warpMouse(Vector2 position) {
    final arg0 = malloc<Uint8>(Vector2.nativeSize);
    position.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_warp_mouse, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_action_press =
      resolveMethodBind('Input', 'action_press', 1713091165);

  void actionPress(String action, double strength) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), action);
    final arg1 = malloc<Double>()..value = strength;
    try {
      ptrcallVoid(_mb_action_press, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_action_release =
      resolveMethodBind('Input', 'action_release', 3304788590);

  void actionRelease(String action) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), action);
    try {
      ptrcallVoid(_mb_action_release, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_default_cursor_shape =
      resolveMethodBind('Input', 'set_default_cursor_shape', 2124816902);

  void setDefaultCursorShape(int shape) {
    final arg0 = malloc<Int64>()..value = shape;
    try {
      ptrcallVoid(_mb_set_default_cursor_shape, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_current_cursor_shape =
      resolveMethodBind('Input', 'get_current_cursor_shape', 3455658929);

  int getCurrentCursorShape() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_current_cursor_shape, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_custom_mouse_cursor =
      resolveMethodBind('Input', 'set_custom_mouse_cursor', 703945977);

  void setCustomMouseCursor(Resource image, int shape, Vector2 hotspot) {
    final arg0 = malloc<Pointer<Void>>()..value = image.nativePtr;
    final arg1 = malloc<Int64>()..value = shape;
    final arg2 = malloc<Uint8>(Vector2.nativeSize);
    hotspot.writeTo(arg2, 0);
    try {
      ptrcallVoid(_mb_set_custom_mouse_cursor, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_parse_input_event =
      resolveMethodBind('Input', 'parse_input_event', 3754044979);

  void parseInputEvent(InputEvent event) {
    final arg0 = malloc<Pointer<Void>>()..value = event.nativePtr;
    try {
      ptrcallVoid(_mb_parse_input_event, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_use_accumulated_input =
      resolveMethodBind('Input', 'set_use_accumulated_input', 2586408642);

  void setUseAccumulatedInput(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_use_accumulated_input, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_using_accumulated_input =
      resolveMethodBind('Input', 'is_using_accumulated_input', 2240911060);

  bool isUsingAccumulatedInput() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_using_accumulated_input, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_flush_buffered_events =
      resolveMethodBind('Input', 'flush_buffered_events', 3218959716);

  void flushBufferedEvents() {
    try {
      ptrcallVoid(_mb_flush_buffered_events, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_emulate_mouse_from_touch =
      resolveMethodBind('Input', 'set_emulate_mouse_from_touch', 2586408642);

  void setEmulateMouseFromTouch(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_emulate_mouse_from_touch, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_emulating_mouse_from_touch =
      resolveMethodBind('Input', 'is_emulating_mouse_from_touch', 36873697);

  bool isEmulatingMouseFromTouch() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_emulating_mouse_from_touch, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_emulate_touch_from_mouse =
      resolveMethodBind('Input', 'set_emulate_touch_from_mouse', 2586408642);

  void setEmulateTouchFromMouse(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_emulate_touch_from_mouse, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_emulating_touch_from_mouse =
      resolveMethodBind('Input', 'is_emulating_touch_from_mouse', 36873697);

  bool isEmulatingTouchFromMouse() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_emulating_touch_from_mouse, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
