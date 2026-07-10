// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class WebRTCDataChannelExtension extends WebRTCDataChannel {
  WebRTCDataChannelExtension(super.nativePtr);

  /// Constructs a brand-new engine-owned WebRTCDataChannelExtension instance
  /// (via classdb_construct_object3), not an existing one.
  factory WebRTCDataChannelExtension.create() {
    return WebRTCDataChannelExtension(resolveClassConstructor('WebRTCDataChannelExtension'));
  }

  // Skipped virtual _get_packet(): an argument type is unsupported ("const uint8_t **").
  // Skipped virtual _put_packet(): an argument type is unsupported ("const uint8_t*").
  /// Override to hook into Godot's `_get_available_packet_count` virtual.
  int getAvailablePacketCount() => 0;

  /// Override to hook into Godot's `_get_max_packet_size` virtual.
  int getMaxPacketSize() => 0;

  /// Override to hook into Godot's `_poll` virtual.
  int poll() => 0;

  /// Override to hook into Godot's `_close` virtual.
  void close() {}

  /// Override to hook into Godot's `_set_write_mode` virtual.
  void setWriteMode(int writeMode) {}

  /// Override to hook into Godot's `_get_write_mode` virtual.
  int getWriteMode() => 0;

  /// Override to hook into Godot's `_was_string_packet` virtual.
  bool wasStringPacket() => false;

  /// Override to hook into Godot's `_get_ready_state` virtual.
  int getReadyState() => 0;

  /// Override to hook into Godot's `_get_label` virtual.
  String getLabel() => '';

  /// Override to hook into Godot's `_is_ordered` virtual.
  bool isOrdered() => false;

  /// Override to hook into Godot's `_get_id` virtual.
  int getId() => 0;

  /// Override to hook into Godot's `_get_max_packet_life_time` virtual.
  int getMaxPacketLifeTime() => 0;

  /// Override to hook into Godot's `_get_max_retransmits` virtual.
  int getMaxRetransmits() => 0;

  /// Override to hook into Godot's `_get_protocol` virtual.
  String getProtocol() => '';

  /// Override to hook into Godot's `_is_negotiated` virtual.
  bool isNegotiated() => false;

  /// Override to hook into Godot's `_get_buffered_amount` virtual.
  int getBufferedAmount() => 0;

}
