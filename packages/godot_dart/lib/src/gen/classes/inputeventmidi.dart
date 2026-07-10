// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class InputEventMIDI extends InputEvent {
  InputEventMIDI(super.nativePtr);

  static final Pointer<Void> _mb_set_channel =
      resolveMethodBind('InputEventMIDI', 'set_channel', 1286410249);

  void setChannel(int channel) {
    final arg0 = malloc<Int64>()..value = channel;
    try {
      ptrcallVoid(_mb_set_channel, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_channel =
      resolveMethodBind('InputEventMIDI', 'get_channel', 3905245786);

  int getChannel() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_channel, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_message =
      resolveMethodBind('InputEventMIDI', 'set_message', 1064271510);

  void setMessage(int message) {
    final arg0 = malloc<Int64>()..value = message;
    try {
      ptrcallVoid(_mb_set_message, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_message =
      resolveMethodBind('InputEventMIDI', 'get_message', 1936512097);

  int getMessage() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_message, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_pitch =
      resolveMethodBind('InputEventMIDI', 'set_pitch', 1286410249);

  void setPitch(int pitch) {
    final arg0 = malloc<Int64>()..value = pitch;
    try {
      ptrcallVoid(_mb_set_pitch, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_pitch =
      resolveMethodBind('InputEventMIDI', 'get_pitch', 3905245786);

  int getPitch() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_pitch, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_velocity =
      resolveMethodBind('InputEventMIDI', 'set_velocity', 1286410249);

  void setVelocity(int velocity) {
    final arg0 = malloc<Int64>()..value = velocity;
    try {
      ptrcallVoid(_mb_set_velocity, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_velocity =
      resolveMethodBind('InputEventMIDI', 'get_velocity', 3905245786);

  int getVelocity() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_velocity, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_instrument =
      resolveMethodBind('InputEventMIDI', 'set_instrument', 1286410249);

  void setInstrument(int instrument) {
    final arg0 = malloc<Int64>()..value = instrument;
    try {
      ptrcallVoid(_mb_set_instrument, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_instrument =
      resolveMethodBind('InputEventMIDI', 'get_instrument', 3905245786);

  int getInstrument() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_instrument, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_pressure =
      resolveMethodBind('InputEventMIDI', 'set_pressure', 1286410249);

  void setPressure(int pressure) {
    final arg0 = malloc<Int64>()..value = pressure;
    try {
      ptrcallVoid(_mb_set_pressure, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_pressure =
      resolveMethodBind('InputEventMIDI', 'get_pressure', 3905245786);

  int getPressure() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_pressure, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_controller_number =
      resolveMethodBind('InputEventMIDI', 'set_controller_number', 1286410249);

  void setControllerNumber(int controllerNumber) {
    final arg0 = malloc<Int64>()..value = controllerNumber;
    try {
      ptrcallVoid(_mb_set_controller_number, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_controller_number =
      resolveMethodBind('InputEventMIDI', 'get_controller_number', 3905245786);

  int getControllerNumber() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_controller_number, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_controller_value =
      resolveMethodBind('InputEventMIDI', 'set_controller_value', 1286410249);

  void setControllerValue(int controllerValue) {
    final arg0 = malloc<Int64>()..value = controllerValue;
    try {
      ptrcallVoid(_mb_set_controller_value, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_controller_value =
      resolveMethodBind('InputEventMIDI', 'get_controller_value', 3905245786);

  int getControllerValue() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_controller_value, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
