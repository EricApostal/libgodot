// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class AudioEffectRecord extends AudioEffect {
  AudioEffectRecord(super.nativePtr);

  /// Constructs a brand-new engine-owned AudioEffectRecord instance
  /// (via classdb_construct_object3), not an existing one.
  factory AudioEffectRecord.create() {
    return AudioEffectRecord(resolveClassConstructor('AudioEffectRecord'));
  }

  static final Pointer<Void> _mb_set_recording_active =
      resolveMethodBind('AudioEffectRecord', 'set_recording_active', 2586408642);

  void setRecordingActive(bool record) {
    final arg0 = malloc<Uint8>()..value = record ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_recording_active, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_recording_active =
      resolveMethodBind('AudioEffectRecord', 'is_recording_active', 36873697);

  bool isRecordingActive() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_recording_active, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_format =
      resolveMethodBind('AudioEffectRecord', 'set_format', 60648488);

  void setFormat(int format) {
    final arg0 = malloc<Int64>()..value = format;
    try {
      ptrcallVoid(_mb_set_format, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_format =
      resolveMethodBind('AudioEffectRecord', 'get_format', 3151724922);

  int getFormat() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_format, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_recording =
      resolveMethodBind('AudioEffectRecord', 'get_recording', 2964110865);

  AudioStreamWAV? getRecording() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_recording, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : AudioStreamWAV(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
