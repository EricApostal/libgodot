// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class Shortcut extends Resource {
  Shortcut(super.nativePtr);

  // Skipped set_events(): an argument type is unsupported.
  // Skipped get_events(): unsupported return type "Array".
  static final Pointer<Void> _mb_has_valid_event =
      resolveMethodBind('Shortcut', 'has_valid_event', 36873697);

  bool hasValidEvent() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_has_valid_event, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_matches_event =
      resolveMethodBind('Shortcut', 'matches_event', 3738334489);

  bool matchesEvent(InputEvent event) {
    final arg0 = malloc<Pointer<Void>>()..value = event.nativePtr;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_matches_event, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_as_text =
      resolveMethodBind('Shortcut', 'get_as_text', 201670096);

  String getAsText() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_as_text, nativePtr, [], ret.cast());
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
