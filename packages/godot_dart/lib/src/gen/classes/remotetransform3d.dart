// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class RemoteTransform3D extends Node3D {
  RemoteTransform3D(super.nativePtr);

  /// Constructs a brand-new engine-owned RemoteTransform3D instance
  /// (via classdb_construct_object3), not an existing one.
  factory RemoteTransform3D.create() {
    return RemoteTransform3D(resolveClassConstructor('RemoteTransform3D'));
  }

  // Skipped set_remote_node(): an argument type is unsupported.
  // Skipped get_remote_node(): unsupported return type "NodePath".
  static final Pointer<Void> _mb_force_update_cache =
      resolveMethodBind('RemoteTransform3D', 'force_update_cache', 3218959716);

  void forceUpdateCache() {
    try {
      ptrcallVoid(_mb_force_update_cache, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_use_global_coordinates =
      resolveMethodBind('RemoteTransform3D', 'set_use_global_coordinates', 2586408642);

  void setUseGlobalCoordinates(bool useGlobalCoordinates) {
    final arg0 = malloc<Uint8>()..value = useGlobalCoordinates ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_use_global_coordinates, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_use_global_coordinates =
      resolveMethodBind('RemoteTransform3D', 'get_use_global_coordinates', 36873697);

  bool getUseGlobalCoordinates() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_use_global_coordinates, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_update_position =
      resolveMethodBind('RemoteTransform3D', 'set_update_position', 2586408642);

  void setUpdatePosition(bool updateRemotePosition) {
    final arg0 = malloc<Uint8>()..value = updateRemotePosition ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_update_position, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_update_position =
      resolveMethodBind('RemoteTransform3D', 'get_update_position', 36873697);

  bool getUpdatePosition() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_update_position, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_update_rotation =
      resolveMethodBind('RemoteTransform3D', 'set_update_rotation', 2586408642);

  void setUpdateRotation(bool updateRemoteRotation) {
    final arg0 = malloc<Uint8>()..value = updateRemoteRotation ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_update_rotation, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_update_rotation =
      resolveMethodBind('RemoteTransform3D', 'get_update_rotation', 36873697);

  bool getUpdateRotation() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_update_rotation, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_update_scale =
      resolveMethodBind('RemoteTransform3D', 'set_update_scale', 2586408642);

  void setUpdateScale(bool updateRemoteScale) {
    final arg0 = malloc<Uint8>()..value = updateRemoteScale ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_update_scale, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_update_scale =
      resolveMethodBind('RemoteTransform3D', 'get_update_scale', 36873697);

  bool getUpdateScale() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_update_scale, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
