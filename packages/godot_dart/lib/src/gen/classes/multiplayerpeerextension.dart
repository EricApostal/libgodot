// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class MultiplayerPeerExtension extends MultiplayerPeer {
  MultiplayerPeerExtension(super.nativePtr);

  /// Constructs a brand-new engine-owned MultiplayerPeerExtension instance
  /// (via classdb_construct_object3), not an existing one.
  factory MultiplayerPeerExtension.create() {
    return MultiplayerPeerExtension(resolveClassConstructor('MultiplayerPeerExtension'));
  }

  // Skipped virtual _get_packet(): an argument type is unsupported ("const uint8_t **").
  // Skipped virtual _put_packet(): an argument type is unsupported ("const uint8_t*").
  /// Override to hook into Godot's `_get_available_packet_count` virtual.
  int getAvailablePacketCount() => 0;

  /// Override to hook into Godot's `_get_max_packet_size` virtual.
  int getMaxPacketSize() => 0;

  // Skipped virtual _get_packet_script(): unsupported return type "PackedByteArray".
  // Skipped virtual _put_packet_script(): an argument type is unsupported ("PackedByteArray").
  /// Override to hook into Godot's `_get_packet_channel` virtual.
  int getPacketChannel() => 0;

  /// Override to hook into Godot's `_get_packet_mode` virtual.
  int getPacketMode() => 0;

  /// Override to hook into Godot's `_set_transfer_channel` virtual.
  void setTransferChannel(int channel) {}

  /// Override to hook into Godot's `_get_transfer_channel` virtual.
  int getTransferChannel() => 0;

  /// Override to hook into Godot's `_set_transfer_mode` virtual.
  void setTransferMode(int mode) {}

  /// Override to hook into Godot's `_get_transfer_mode` virtual.
  int getTransferMode() => 0;

  /// Override to hook into Godot's `_set_target_peer` virtual.
  void setTargetPeer(int peer) {}

  /// Override to hook into Godot's `_get_packet_peer` virtual.
  int getPacketPeer() => 0;

  /// Override to hook into Godot's `_is_server` virtual.
  bool isServer() => false;

  /// Override to hook into Godot's `_poll` virtual.
  void poll() {}

  /// Override to hook into Godot's `_close` virtual.
  void close() {}

  /// Override to hook into Godot's `_disconnect_peer` virtual.
  void disconnectPeer(int peer, bool force) {}

  /// Override to hook into Godot's `_get_unique_id` virtual.
  int getUniqueId() => 0;

  /// Override to hook into Godot's `_set_refuse_new_connections` virtual.
  void setRefuseNewConnections(bool enable) {}

  /// Override to hook into Godot's `_is_refusing_new_connections` virtual.
  bool isRefusingNewConnections() => false;

  /// Override to hook into Godot's `_is_server_relay_supported` virtual.
  bool isServerRelaySupported() => false;

  /// Override to hook into Godot's `_get_connection_status` virtual.
  int getConnectionStatus() => 0;

}
