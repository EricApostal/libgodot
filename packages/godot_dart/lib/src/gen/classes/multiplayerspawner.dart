// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class MultiplayerSpawner extends Node {
  MultiplayerSpawner(super.nativePtr);

  /// Constructs a brand-new engine-owned MultiplayerSpawner instance
  /// (via classdb_construct_object3), not an existing one.
  factory MultiplayerSpawner.create() {
    return MultiplayerSpawner(resolveClassConstructor('MultiplayerSpawner'));
  }

  static final Pointer<Void> _mb_add_spawnable_scene =
      resolveMethodBind('MultiplayerSpawner', 'add_spawnable_scene', 83702148);

  void addSpawnableScene(String path) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), path);
    try {
      ptrcallVoid(_mb_add_spawnable_scene, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_spawnable_scene_count =
      resolveMethodBind('MultiplayerSpawner', 'get_spawnable_scene_count', 3905245786);

  int getSpawnableSceneCount() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_spawnable_scene_count, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_spawnable_scene =
      resolveMethodBind('MultiplayerSpawner', 'get_spawnable_scene', 844755477);

  String getSpawnableScene(int index) {
    final arg0 = malloc<Int64>()..value = index;
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_spawnable_scene, nativePtr, [arg0.cast<Void>()], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_clear_spawnable_scenes =
      resolveMethodBind('MultiplayerSpawner', 'clear_spawnable_scenes', 3218959716);

  void clearSpawnableScenes() {
    try {
      ptrcallVoid(_mb_clear_spawnable_scenes, nativePtr, []);
    } finally {
    }
  }

  // Skipped spawn(): an argument type is unsupported.
  // Skipped get_spawn_path(): unsupported return type "NodePath".
  // Skipped set_spawn_path(): an argument type is unsupported.
  static final Pointer<Void> _mb_get_spawn_limit =
      resolveMethodBind('MultiplayerSpawner', 'get_spawn_limit', 3905245786);

  int getSpawnLimit() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_spawn_limit, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_spawn_limit =
      resolveMethodBind('MultiplayerSpawner', 'set_spawn_limit', 1286410249);

  void setSpawnLimit(int limit) {
    final arg0 = malloc<Int64>()..value = limit;
    try {
      ptrcallVoid(_mb_set_spawn_limit, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  // Skipped get_spawn_function(): unsupported return type "Callable".
  // Skipped set_spawn_function(): an argument type is unsupported.
}
