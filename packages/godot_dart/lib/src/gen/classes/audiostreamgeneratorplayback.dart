// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class AudioStreamGeneratorPlayback extends AudioStreamPlaybackResampled {
  AudioStreamGeneratorPlayback(super.nativePtr);

  static final Pointer<Void> _mb_push_frame =
      resolveMethodBind('AudioStreamGeneratorPlayback', 'push_frame', 3975407249);

  bool pushFrame(Vector2 frame) {
    final arg0 = malloc<Uint8>(Vector2.nativeSize);
    frame.writeTo(arg0, 0);
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_push_frame, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_can_push_buffer =
      resolveMethodBind('AudioStreamGeneratorPlayback', 'can_push_buffer', 1116898809);

  bool canPushBuffer(int amount) {
    final arg0 = malloc<Int64>()..value = amount;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_can_push_buffer, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  // Skipped push_buffer(): an argument type is unsupported.
  static final Pointer<Void> _mb_get_frames_available =
      resolveMethodBind('AudioStreamGeneratorPlayback', 'get_frames_available', 3905245786);

  int getFramesAvailable() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_frames_available, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_skips =
      resolveMethodBind('AudioStreamGeneratorPlayback', 'get_skips', 3905245786);

  int getSkips() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_skips, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_clear_buffer =
      resolveMethodBind('AudioStreamGeneratorPlayback', 'clear_buffer', 3218959716);

  void clearBuffer() {
    try {
      ptrcallVoid(_mb_clear_buffer, nativePtr, []);
    } finally {
    }
  }

}
