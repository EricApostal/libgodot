// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class InputEventShortcut extends InputEvent {
  InputEventShortcut(super.nativePtr);

  static final Pointer<Void> _mb_set_shortcut =
      resolveMethodBind('InputEventShortcut', 'set_shortcut', 857163497);

  void setShortcut(Shortcut shortcut) {
    final arg0 = malloc<Pointer<Void>>()..value = shortcut.nativePtr;
    try {
      ptrcallVoid(_mb_set_shortcut, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_shortcut =
      resolveMethodBind('InputEventShortcut', 'get_shortcut', 3766804753);

  Shortcut? getShortcut() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_shortcut, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Shortcut(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
