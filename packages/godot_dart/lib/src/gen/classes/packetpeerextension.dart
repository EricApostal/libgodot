// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class PacketPeerExtension extends PacketPeer {
  PacketPeerExtension(super.nativePtr);

  /// Constructs a brand-new engine-owned PacketPeerExtension instance
  /// (via classdb_construct_object3), not an existing one.
  factory PacketPeerExtension.create() {
    return PacketPeerExtension(resolveClassConstructor('PacketPeerExtension'));
  }

  // Skipped virtual _get_packet(): an argument type is unsupported ("const uint8_t **").
  // Skipped virtual _put_packet(): an argument type is unsupported ("const uint8_t*").
  /// Override to hook into Godot's `_get_available_packet_count` virtual.
  int getAvailablePacketCount() => 0;

  /// Override to hook into Godot's `_get_max_packet_size` virtual.
  int getMaxPacketSize() => 0;

}
