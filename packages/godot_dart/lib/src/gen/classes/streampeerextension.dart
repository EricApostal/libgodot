// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class StreamPeerExtension extends StreamPeer {
  StreamPeerExtension(super.nativePtr);

  /// Constructs a brand-new engine-owned StreamPeerExtension instance
  /// (via classdb_construct_object3), not an existing one.
  factory StreamPeerExtension.create() {
    return StreamPeerExtension(resolveClassConstructor('StreamPeerExtension'));
  }

  // Skipped virtual _get_data(): an argument type is unsupported ("uint8_t*").
  // Skipped virtual _get_partial_data(): an argument type is unsupported ("uint8_t*").
  // Skipped virtual _put_data(): an argument type is unsupported ("const uint8_t*").
  // Skipped virtual _put_partial_data(): an argument type is unsupported ("const uint8_t*").
  /// Override to hook into Godot's `_get_available_bytes` virtual.
  int getAvailableBytes() => 0;

}
