// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class GodotInstance extends GodotObject {
  GodotInstance(super.nativePtr);

  static final Pointer<Void> _mb_start =
      resolveMethodBind('GodotInstance', 'start', 2240911060);

  bool start() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_start, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_is_started =
      resolveMethodBind('GodotInstance', 'is_started', 2240911060);

  bool isStarted() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_started, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_iteration =
      resolveMethodBind('GodotInstance', 'iteration', 2240911060);

  bool iteration() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_iteration, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_focus_in =
      resolveMethodBind('GodotInstance', 'focus_in', 3218959716);

  void focusIn() {
    try {
      ptrcallVoid(_mb_focus_in, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_focus_out =
      resolveMethodBind('GodotInstance', 'focus_out', 3218959716);

  void focusOut() {
    try {
      ptrcallVoid(_mb_focus_out, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_pause =
      resolveMethodBind('GodotInstance', 'pause', 3218959716);

  void pause() {
    try {
      ptrcallVoid(_mb_pause, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_resume =
      resolveMethodBind('GodotInstance', 'resume', 3218959716);

  void resume() {
    try {
      ptrcallVoid(_mb_resume, nativePtr, []);
    } finally {
    }
  }

}
