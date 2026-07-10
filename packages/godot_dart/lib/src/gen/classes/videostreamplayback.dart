// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class VideoStreamPlayback extends Resource {
  VideoStreamPlayback(super.nativePtr);

  /// Constructs a brand-new engine-owned VideoStreamPlayback instance
  /// (via classdb_construct_object3), not an existing one.
  factory VideoStreamPlayback.create() {
    return VideoStreamPlayback(resolveClassConstructor('VideoStreamPlayback'));
  }

  /// Override to hook into Godot's `_stop` virtual.
  void stop() {}

  /// Override to hook into Godot's `_play` virtual.
  void play() {}

  /// Override to hook into Godot's `_is_playing` virtual.
  bool isPlaying() => false;

  /// Override to hook into Godot's `_set_paused` virtual.
  void setPaused(bool paused) {}

  /// Override to hook into Godot's `_is_paused` virtual.
  bool isPaused() => false;

  /// Override to hook into Godot's `_get_length` virtual.
  double getLength() => 0.0;

  /// Override to hook into Godot's `_get_playback_position` virtual.
  double getPlaybackPosition() => 0.0;

  /// Override to hook into Godot's `_seek` virtual.
  void seek(double time) {}

  /// Override to hook into Godot's `_set_audio_track` virtual.
  void setAudioTrack(int idx) {}

  /// Override to hook into Godot's `_get_texture` virtual.
  Texture2D? getTexture() => null;

  /// Override to hook into Godot's `_update` virtual.
  void update(double delta) {}

  /// Override to hook into Godot's `_get_channels` virtual.
  int getChannels() => 0;

  /// Override to hook into Godot's `_get_mix_rate` virtual.
  int getMixRate() => 0;

  // Skipped mix_audio(): an argument type is unsupported.
}
