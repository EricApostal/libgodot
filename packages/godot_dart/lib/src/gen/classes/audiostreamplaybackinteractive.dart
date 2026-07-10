// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class AudioStreamPlaybackInteractive extends AudioStreamPlayback {
  AudioStreamPlaybackInteractive(super.nativePtr);

  static final Pointer<Void> _mb_switch_to_clip_by_name =
      resolveMethodBind('AudioStreamPlaybackInteractive', 'switch_to_clip_by_name', 3304788590);

  void switchToClipByName(String clipName) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), clipName);
    try {
      ptrcallVoid(_mb_switch_to_clip_by_name, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_switch_to_clip =
      resolveMethodBind('AudioStreamPlaybackInteractive', 'switch_to_clip', 1286410249);

  void switchToClip(int clipIndex) {
    final arg0 = malloc<Int64>()..value = clipIndex;
    try {
      ptrcallVoid(_mb_switch_to_clip, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_current_clip_index =
      resolveMethodBind('AudioStreamPlaybackInteractive', 'get_current_clip_index', 3905245786);

  int getCurrentClipIndex() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_current_clip_index, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
