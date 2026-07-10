// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class AudioStreamPlaybackResampled extends AudioStreamPlayback {
  AudioStreamPlaybackResampled(super.nativePtr);

  /// Constructs a brand-new engine-owned AudioStreamPlaybackResampled instance
  /// (via classdb_construct_object3), not an existing one.
  factory AudioStreamPlaybackResampled.create() {
    return AudioStreamPlaybackResampled(resolveClassConstructor('AudioStreamPlaybackResampled'));
  }

  static final Pointer<Void> _mb_begin_resample =
      resolveMethodBind('AudioStreamPlaybackResampled', 'begin_resample', 3218959716);

  void beginResample() {
    try {
      ptrcallVoid(_mb_begin_resample, nativePtr, []);
    } finally {
    }
  }

}
