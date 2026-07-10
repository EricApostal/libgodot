// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class TileSetScenesCollectionSource extends TileSetSource {
  TileSetScenesCollectionSource(super.nativePtr);

  /// Constructs a brand-new engine-owned TileSetScenesCollectionSource instance
  /// (via classdb_construct_object3), not an existing one.
  factory TileSetScenesCollectionSource.create() {
    return TileSetScenesCollectionSource(resolveClassConstructor('TileSetScenesCollectionSource'));
  }

  static final Pointer<Void> _mb_get_scene_tiles_count =
      resolveMethodBind('TileSetScenesCollectionSource', 'get_scene_tiles_count', 2455072627);

  int getSceneTilesCount() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_scene_tiles_count, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_scene_tile_id =
      resolveMethodBind('TileSetScenesCollectionSource', 'get_scene_tile_id', 3744713108);

  int getSceneTileId(int index) {
    final arg0 = malloc<Int64>()..value = index;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_scene_tile_id, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_has_scene_tile_id =
      resolveMethodBind('TileSetScenesCollectionSource', 'has_scene_tile_id', 3067735520);

  bool hasSceneTileId(int id) {
    final arg0 = malloc<Int64>()..value = id;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_has_scene_tile_id, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_create_scene_tile =
      resolveMethodBind('TileSetScenesCollectionSource', 'create_scene_tile', 1117465415);

  int createSceneTile(PackedScene packedScene, int idOverride) {
    final arg0 = malloc<Pointer<Void>>()..value = packedScene.nativePtr;
    final arg1 = malloc<Int64>()..value = idOverride;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_create_scene_tile, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_set_scene_tile_id =
      resolveMethodBind('TileSetScenesCollectionSource', 'set_scene_tile_id', 3937882851);

  void setSceneTileId(int id, int newId) {
    final arg0 = malloc<Int64>()..value = id;
    final arg1 = malloc<Int64>()..value = newId;
    try {
      ptrcallVoid(_mb_set_scene_tile_id, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_set_scene_tile_scene =
      resolveMethodBind('TileSetScenesCollectionSource', 'set_scene_tile_scene', 3435852839);

  void setSceneTileScene(int id, PackedScene packedScene) {
    final arg0 = malloc<Int64>()..value = id;
    final arg1 = malloc<Pointer<Void>>()..value = packedScene.nativePtr;
    try {
      ptrcallVoid(_mb_set_scene_tile_scene, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_scene_tile_scene =
      resolveMethodBind('TileSetScenesCollectionSource', 'get_scene_tile_scene', 511017218);

  PackedScene? getSceneTileScene(int id) {
    final arg0 = malloc<Int64>()..value = id;
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_scene_tile_scene, nativePtr, [arg0.cast<Void>()], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : PackedScene(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_scene_tile_display_placeholder =
      resolveMethodBind('TileSetScenesCollectionSource', 'set_scene_tile_display_placeholder', 300928843);

  void setSceneTileDisplayPlaceholder(int id, bool displayPlaceholder) {
    final arg0 = malloc<Int64>()..value = id;
    final arg1 = malloc<Uint8>()..value = displayPlaceholder ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_scene_tile_display_placeholder, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_scene_tile_display_placeholder =
      resolveMethodBind('TileSetScenesCollectionSource', 'get_scene_tile_display_placeholder', 1116898809);

  bool getSceneTileDisplayPlaceholder(int id) {
    final arg0 = malloc<Int64>()..value = id;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_scene_tile_display_placeholder, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_remove_scene_tile =
      resolveMethodBind('TileSetScenesCollectionSource', 'remove_scene_tile', 1286410249);

  void removeSceneTile(int id) {
    final arg0 = malloc<Int64>()..value = id;
    try {
      ptrcallVoid(_mb_remove_scene_tile, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_next_scene_tile_id =
      resolveMethodBind('TileSetScenesCollectionSource', 'get_next_scene_tile_id', 3905245786);

  int getNextSceneTileId() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_next_scene_tile_id, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
