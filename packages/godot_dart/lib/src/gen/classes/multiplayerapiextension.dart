// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class MultiplayerAPIExtension extends MultiplayerAPI {
  MultiplayerAPIExtension(super.nativePtr);

  /// Constructs a brand-new engine-owned MultiplayerAPIExtension instance
  /// (via classdb_construct_object3), not an existing one.
  factory MultiplayerAPIExtension.create() {
    return MultiplayerAPIExtension(resolveClassConstructor('MultiplayerAPIExtension'));
  }

  /// Override to hook into Godot's `_poll` virtual.
  int poll() => 0;

  /// Override to hook into Godot's `_set_multiplayer_peer` virtual.
  void setMultiplayerPeer(MultiplayerPeer multiplayerPeer) {}

  /// Override to hook into Godot's `_get_multiplayer_peer` virtual.
  MultiplayerPeer? getMultiplayerPeer() => null;

  /// Override to hook into Godot's `_get_unique_id` virtual.
  int getUniqueId() => 0;

  // Skipped virtual _get_peer_ids(): unsupported return type "PackedInt32Array".
  // Skipped virtual _rpc(): an argument type is unsupported ("Object").
  /// Override to hook into Godot's `_get_remote_sender_id` virtual.
  int getRemoteSenderId() => 0;

  // Skipped virtual _object_configuration_add(): an argument type is unsupported ("Object").
  // Skipped virtual _object_configuration_remove(): an argument type is unsupported ("Object").
}
