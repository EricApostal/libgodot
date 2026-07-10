// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class AudioListener3D extends Node3D {
  AudioListener3D(super.nativePtr);

  /// Constructs a brand-new engine-owned AudioListener3D instance
  /// (via classdb_construct_object3), not an existing one.
  factory AudioListener3D.create() {
    return AudioListener3D(resolveClassConstructor('AudioListener3D'));
  }

  static final Pointer<Void> _mb_make_current =
      resolveMethodBind('AudioListener3D', 'make_current', 3218959716);

  void makeCurrent() {
    try {
      ptrcallVoid(_mb_make_current, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_clear_current =
      resolveMethodBind('AudioListener3D', 'clear_current', 3218959716);

  void clearCurrent() {
    try {
      ptrcallVoid(_mb_clear_current, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_is_current =
      resolveMethodBind('AudioListener3D', 'is_current', 36873697);

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

  static final Pointer<Void> _mb_get_listener_transform =
      resolveMethodBind('AudioListener3D', 'get_listener_transform', 3229777777);

  Transform3D getListenerTransform() {
    try {
      final ret = malloc<Uint8>(Transform3D.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_listener_transform, nativePtr, [], ret.cast());
        return Transform3D.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_doppler_tracking =
      resolveMethodBind('AudioListener3D', 'set_doppler_tracking', 2365921740);

  void setDopplerTracking(int mode) {
    final arg0 = malloc<Int64>()..value = mode;
    try {
      ptrcallVoid(_mb_set_doppler_tracking, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_doppler_tracking =
      resolveMethodBind('AudioListener3D', 'get_doppler_tracking', 550229039);

  int getDopplerTracking() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_doppler_tracking, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
