// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class WebRTCPeerConnectionExtension extends WebRTCPeerConnection {
  WebRTCPeerConnectionExtension(super.nativePtr);

  /// Constructs a brand-new engine-owned WebRTCPeerConnectionExtension instance
  /// (via classdb_construct_object3), not an existing one.
  factory WebRTCPeerConnectionExtension.create() {
    return WebRTCPeerConnectionExtension(resolveClassConstructor('WebRTCPeerConnectionExtension'));
  }

  /// Override to hook into Godot's `_get_connection_state` virtual.
  int getConnectionState() => 0;

  /// Override to hook into Godot's `_get_gathering_state` virtual.
  int getGatheringState() => 0;

  /// Override to hook into Godot's `_get_signaling_state` virtual.
  int getSignalingState() => 0;

  // Skipped virtual _initialize(): an argument type is unsupported ("Dictionary").
  // Skipped virtual _create_data_channel(): an argument type is unsupported ("Dictionary").
  /// Override to hook into Godot's `_create_offer` virtual.
  int createOffer() => 0;

  /// Override to hook into Godot's `_set_remote_description` virtual.
  int setRemoteDescription(String type, String sdp) => 0;

  /// Override to hook into Godot's `_set_local_description` virtual.
  int setLocalDescription(String type, String sdp) => 0;

  /// Override to hook into Godot's `_add_ice_candidate` virtual.
  int addIceCandidate(String sdpMidName, int sdpMlineIndex, String sdpName) => 0;

  /// Override to hook into Godot's `_poll` virtual.
  int poll() => 0;

  /// Override to hook into Godot's `_close` virtual.
  void close() {}

}
