// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class MultiplayerSynchronizer extends Node {
  MultiplayerSynchronizer(super.nativePtr);

  /// Constructs a brand-new engine-owned MultiplayerSynchronizer instance
  /// (via classdb_construct_object3), not an existing one.
  factory MultiplayerSynchronizer.create() {
    return MultiplayerSynchronizer(resolveClassConstructor('MultiplayerSynchronizer'));
  }

  // Skipped set_root_path(): an argument type is unsupported.
  // Skipped get_root_path(): unsupported return type "NodePath".
  static final Pointer<Void> _mb_set_replication_interval =
      resolveMethodBind('MultiplayerSynchronizer', 'set_replication_interval', 373806689);

  void setReplicationInterval(double milliseconds) {
    final arg0 = malloc<Double>()..value = milliseconds;
    try {
      ptrcallVoid(_mb_set_replication_interval, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_replication_interval =
      resolveMethodBind('MultiplayerSynchronizer', 'get_replication_interval', 1740695150);

  double getReplicationInterval() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_replication_interval, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_delta_interval =
      resolveMethodBind('MultiplayerSynchronizer', 'set_delta_interval', 373806689);

  void setDeltaInterval(double milliseconds) {
    final arg0 = malloc<Double>()..value = milliseconds;
    try {
      ptrcallVoid(_mb_set_delta_interval, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_delta_interval =
      resolveMethodBind('MultiplayerSynchronizer', 'get_delta_interval', 1740695150);

  double getDeltaInterval() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_delta_interval, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_replication_config =
      resolveMethodBind('MultiplayerSynchronizer', 'set_replication_config', 3889206742);

  void setReplicationConfig(SceneReplicationConfig config) {
    final arg0 = malloc<Pointer<Void>>()..value = config.nativePtr;
    try {
      ptrcallVoid(_mb_set_replication_config, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_replication_config =
      resolveMethodBind('MultiplayerSynchronizer', 'get_replication_config', 3200254614);

  SceneReplicationConfig? getReplicationConfig() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_replication_config, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : SceneReplicationConfig(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_visibility_update_mode =
      resolveMethodBind('MultiplayerSynchronizer', 'set_visibility_update_mode', 3494860300);

  void setVisibilityUpdateMode(int mode) {
    final arg0 = malloc<Int64>()..value = mode;
    try {
      ptrcallVoid(_mb_set_visibility_update_mode, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_visibility_update_mode =
      resolveMethodBind('MultiplayerSynchronizer', 'get_visibility_update_mode', 3352241418);

  int getVisibilityUpdateMode() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_visibility_update_mode, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_update_visibility =
      resolveMethodBind('MultiplayerSynchronizer', 'update_visibility', 1995695955);

  void updateVisibility(int forPeer) {
    final arg0 = malloc<Int64>()..value = forPeer;
    try {
      ptrcallVoid(_mb_update_visibility, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_visibility_public =
      resolveMethodBind('MultiplayerSynchronizer', 'set_visibility_public', 2586408642);

  void setVisibilityPublic(bool visible) {
    final arg0 = malloc<Uint8>()..value = visible ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_visibility_public, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_visibility_public =
      resolveMethodBind('MultiplayerSynchronizer', 'is_visibility_public', 36873697);

  bool isVisibilityPublic() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_visibility_public, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  // Skipped add_visibility_filter(): an argument type is unsupported.
  // Skipped remove_visibility_filter(): an argument type is unsupported.
  static final Pointer<Void> _mb_set_visibility_for =
      resolveMethodBind('MultiplayerSynchronizer', 'set_visibility_for', 300928843);

  void setVisibilityFor(int peer, bool visible) {
    final arg0 = malloc<Int64>()..value = peer;
    final arg1 = malloc<Uint8>()..value = visible ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_visibility_for, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_visibility_for =
      resolveMethodBind('MultiplayerSynchronizer', 'get_visibility_for', 1116898809);

  bool getVisibilityFor(int peer) {
    final arg0 = malloc<Int64>()..value = peer;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_visibility_for, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

}
