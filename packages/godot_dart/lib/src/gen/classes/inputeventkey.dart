// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class InputEventKey extends InputEventWithModifiers {
  InputEventKey(super.nativePtr);

  static final Pointer<Void> _mb_set_pressed =
      resolveMethodBind('InputEventKey', 'set_pressed', 2586408642);

  void setPressed(bool pressed) {
    final arg0 = malloc<Uint8>()..value = pressed ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_pressed, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_keycode =
      resolveMethodBind('InputEventKey', 'set_keycode', 888074362);

  void setKeycode(int keycode) {
    final arg0 = malloc<Int64>()..value = keycode;
    try {
      ptrcallVoid(_mb_set_keycode, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_keycode =
      resolveMethodBind('InputEventKey', 'get_keycode', 1585896689);

  int getKeycode() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_keycode, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_physical_keycode =
      resolveMethodBind('InputEventKey', 'set_physical_keycode', 888074362);

  void setPhysicalKeycode(int physicalKeycode) {
    final arg0 = malloc<Int64>()..value = physicalKeycode;
    try {
      ptrcallVoid(_mb_set_physical_keycode, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_physical_keycode =
      resolveMethodBind('InputEventKey', 'get_physical_keycode', 1585896689);

  int getPhysicalKeycode() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_physical_keycode, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_key_label =
      resolveMethodBind('InputEventKey', 'set_key_label', 888074362);

  void setKeyLabel(int keyLabel) {
    final arg0 = malloc<Int64>()..value = keyLabel;
    try {
      ptrcallVoid(_mb_set_key_label, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_key_label =
      resolveMethodBind('InputEventKey', 'get_key_label', 1585896689);

  int getKeyLabel() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_key_label, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_unicode =
      resolveMethodBind('InputEventKey', 'set_unicode', 1286410249);

  void setUnicode(int unicode) {
    final arg0 = malloc<Int64>()..value = unicode;
    try {
      ptrcallVoid(_mb_set_unicode, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_unicode =
      resolveMethodBind('InputEventKey', 'get_unicode', 3905245786);

  int getUnicode() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_unicode, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_location =
      resolveMethodBind('InputEventKey', 'set_location', 634453155);

  void setLocation(int location) {
    final arg0 = malloc<Int64>()..value = location;
    try {
      ptrcallVoid(_mb_set_location, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_location =
      resolveMethodBind('InputEventKey', 'get_location', 211810873);

  int getLocation() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_location, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_echo =
      resolveMethodBind('InputEventKey', 'set_echo', 2586408642);

  void setEcho(bool echo) {
    final arg0 = malloc<Uint8>()..value = echo ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_echo, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_keycode_with_modifiers =
      resolveMethodBind('InputEventKey', 'get_keycode_with_modifiers', 1585896689);

  int getKeycodeWithModifiers() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_keycode_with_modifiers, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_physical_keycode_with_modifiers =
      resolveMethodBind('InputEventKey', 'get_physical_keycode_with_modifiers', 1585896689);

  int getPhysicalKeycodeWithModifiers() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_physical_keycode_with_modifiers, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_key_label_with_modifiers =
      resolveMethodBind('InputEventKey', 'get_key_label_with_modifiers', 1585896689);

  int getKeyLabelWithModifiers() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_key_label_with_modifiers, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_as_text_keycode =
      resolveMethodBind('InputEventKey', 'as_text_keycode', 201670096);

  String asTextKeycode() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_as_text_keycode, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_as_text_physical_keycode =
      resolveMethodBind('InputEventKey', 'as_text_physical_keycode', 201670096);

  String asTextPhysicalKeycode() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_as_text_physical_keycode, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_as_text_key_label =
      resolveMethodBind('InputEventKey', 'as_text_key_label', 201670096);

  String asTextKeyLabel() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_as_text_key_label, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_as_text_location =
      resolveMethodBind('InputEventKey', 'as_text_location', 201670096);

  String asTextLocation() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_as_text_location, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
