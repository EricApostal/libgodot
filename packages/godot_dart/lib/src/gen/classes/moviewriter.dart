// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class MovieWriter extends GodotObject {
  MovieWriter(super.nativePtr);

  /// Constructs a brand-new engine-owned MovieWriter instance
  /// (via classdb_construct_object3), not an existing one.
  factory MovieWriter.create() {
    return MovieWriter(resolveClassConstructor('MovieWriter'));
  }

  /// Override to hook into Godot's `_get_audio_mix_rate` virtual.
  int getAudioMixRate() => 0;

  /// Override to hook into Godot's `_get_audio_speaker_mode` virtual.
  int getAudioSpeakerMode() => 0;

  /// Override to hook into Godot's `_handles_file` virtual.
  bool handlesFile(String path) => false;

  // Skipped virtual _get_supported_extensions(): unsupported return type "PackedStringArray".
  /// Override to hook into Godot's `_write_begin` virtual.
  int writeBegin(Vector2i movieSize, int fps, String basePath) => 0;

  // Skipped virtual _write_frame(): an argument type is unsupported ("const void*").
  /// Override to hook into Godot's `_write_end` virtual.
  void writeEnd() {}

}
