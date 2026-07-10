// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class InputEvent extends Resource {
  InputEvent(super.nativePtr);

  static final Pointer<Void> _mb_set_device =
      resolveMethodBind('InputEvent', 'set_device', 1286410249);

  void setDevice(int device) {
    final arg0 = malloc<Int64>()..value = device;
    try {
      ptrcallVoid(_mb_set_device, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_device =
      resolveMethodBind('InputEvent', 'get_device', 3905245786);

  int getDevice() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_device, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_is_action =
      resolveMethodBind('InputEvent', 'is_action', 1558498928);

  bool isAction(String action, bool exactMatch) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), action);
    final arg1 = malloc<Uint8>()..value = exactMatch ? 1 : 0;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_action, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
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

  static final Pointer<Void> _mb_is_action_pressed =
      resolveMethodBind('InputEvent', 'is_action_pressed', 1631499404);

  bool isActionPressed(String action, bool allowEcho, bool exactMatch) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), action);
    final arg1 = malloc<Uint8>()..value = allowEcho ? 1 : 0;
    final arg2 = malloc<Uint8>()..value = exactMatch ? 1 : 0;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_action_pressed, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()], ret.cast());
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

  static final Pointer<Void> _mb_is_action_released =
      resolveMethodBind('InputEvent', 'is_action_released', 1558498928);

  bool isActionReleased(String action, bool exactMatch) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), action);
    final arg1 = malloc<Uint8>()..value = exactMatch ? 1 : 0;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_action_released, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
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

  static final Pointer<Void> _mb_get_action_strength =
      resolveMethodBind('InputEvent', 'get_action_strength', 801543509);

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

  static final Pointer<Void> _mb_is_canceled =
      resolveMethodBind('InputEvent', 'is_canceled', 36873697);

  bool isCanceled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_canceled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_is_pressed =
      resolveMethodBind('InputEvent', 'is_pressed', 36873697);

  bool isPressed() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_pressed, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_is_released =
      resolveMethodBind('InputEvent', 'is_released', 36873697);

  bool isReleased() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_released, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_is_echo =
      resolveMethodBind('InputEvent', 'is_echo', 36873697);

  bool isEcho() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_echo, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_as_text =
      resolveMethodBind('InputEvent', 'as_text', 201670096);

  String asText() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_as_text, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_is_match =
      resolveMethodBind('InputEvent', 'is_match', 1754951977);

  bool isMatch(InputEvent event, bool exactMatch) {
    final arg0 = malloc<Pointer<Void>>()..value = event.nativePtr;
    final arg1 = malloc<Uint8>()..value = exactMatch ? 1 : 0;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_match, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_is_action_type =
      resolveMethodBind('InputEvent', 'is_action_type', 36873697);

  bool isActionType() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_action_type, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_accumulate =
      resolveMethodBind('InputEvent', 'accumulate', 1062211774);

  bool accumulate(InputEvent withEvent) {
    final arg0 = malloc<Pointer<Void>>()..value = withEvent.nativePtr;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_accumulate, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_xformed_by =
      resolveMethodBind('InputEvent', 'xformed_by', 1282766827);

  InputEvent? xformedBy(Transform2D xform, Vector2 localOfs) {
    final arg0 = malloc<Uint8>(Transform2D.nativeSize);
    xform.writeTo(arg0, 0);
    final arg1 = malloc<Uint8>(Vector2.nativeSize);
    localOfs.writeTo(arg1, 0);
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_xformed_by, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : InputEvent(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

}
