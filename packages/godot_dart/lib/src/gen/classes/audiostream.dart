// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class AudioStream extends Resource {
  AudioStream(super.nativePtr);

  /// Constructs a brand-new engine-owned AudioStream instance
  /// (via classdb_construct_object3), not an existing one.
  factory AudioStream.create() {
    return AudioStream(resolveClassConstructor('AudioStream'));
  }

  static final Pointer<Void> _mb_get_length =
      resolveMethodBind('AudioStream', 'get_length', 1740695150);

  double getLength() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_length, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_is_monophonic =
      resolveMethodBind('AudioStream', 'is_monophonic', 36873697);

  bool isMonophonic() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_monophonic, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_instantiate_playback =
      resolveMethodBind('AudioStream', 'instantiate_playback', 210135309);

  AudioStreamPlayback? instantiatePlayback() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_instantiate_playback, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : AudioStreamPlayback(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_can_be_sampled =
      resolveMethodBind('AudioStream', 'can_be_sampled', 36873697);

  bool canBeSampled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_can_be_sampled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_generate_sample =
      resolveMethodBind('AudioStream', 'generate_sample', 2646048999);

  AudioSample? generateSample() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_generate_sample, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : AudioSample(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_is_meta_stream =
      resolveMethodBind('AudioStream', 'is_meta_stream', 36873697);

  bool isMetaStream() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_meta_stream, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
