// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class AudioEffectCapture extends AudioEffect {
  AudioEffectCapture(super.nativePtr);

  static final Pointer<Void> _mb_can_get_buffer =
      resolveMethodBind('AudioEffectCapture', 'can_get_buffer', 1116898809);

  bool canGetBuffer(int frames) {
    final arg0 = malloc<Int64>()..value = frames;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_can_get_buffer, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  // Skipped get_buffer(): unsupported return type "PackedVector2Array".
  static final Pointer<Void> _mb_clear_buffer =
      resolveMethodBind('AudioEffectCapture', 'clear_buffer', 3218959716);

  void clearBuffer() {
    try {
      ptrcallVoid(_mb_clear_buffer, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_buffer_length =
      resolveMethodBind('AudioEffectCapture', 'set_buffer_length', 373806689);

  void setBufferLength(double bufferLengthSeconds) {
    final arg0 = malloc<Double>()..value = bufferLengthSeconds;
    try {
      ptrcallVoid(_mb_set_buffer_length, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_buffer_length =
      resolveMethodBind('AudioEffectCapture', 'get_buffer_length', 191475506);

  double getBufferLength() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_buffer_length, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_frames_available =
      resolveMethodBind('AudioEffectCapture', 'get_frames_available', 3905245786);

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

  static final Pointer<Void> _mb_get_discarded_frames =
      resolveMethodBind('AudioEffectCapture', 'get_discarded_frames', 3905245786);

  int getDiscardedFrames() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_discarded_frames, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_buffer_length_frames =
      resolveMethodBind('AudioEffectCapture', 'get_buffer_length_frames', 3905245786);

  int getBufferLengthFrames() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_buffer_length_frames, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_pushed_frames =
      resolveMethodBind('AudioEffectCapture', 'get_pushed_frames', 3905245786);

  int getPushedFrames() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_pushed_frames, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
