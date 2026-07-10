// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class AudioListener2D extends Node2D {
  AudioListener2D(super.nativePtr);

  static final Pointer<Void> _mb_make_current =
      resolveMethodBind('AudioListener2D', 'make_current', 3218959716);

  void makeCurrent() {
    try {
      ptrcallVoid(_mb_make_current, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_clear_current =
      resolveMethodBind('AudioListener2D', 'clear_current', 3218959716);

  void clearCurrent() {
    try {
      ptrcallVoid(_mb_clear_current, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_is_current =
      resolveMethodBind('AudioListener2D', 'is_current', 36873697);

  bool isCurrent() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_current, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
