// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class TileMap extends Node2D {
  TileMap(super.nativePtr);

  /// Constructs a brand-new engine-owned TileMap instance
  /// (via classdb_construct_object3), not an existing one.
  factory TileMap.create() {
    return TileMap(resolveClassConstructor('TileMap'));
  }

  // Skipped set_navigation_map(): an argument type is unsupported.
  // Skipped get_navigation_map(): unsupported return type "RID".
  static final Pointer<Void> _mb_force_update =
      resolveMethodBind('TileMap', 'force_update', 1025054187);

  void forceUpdate(int layer) {
    final arg0 = malloc<Int64>()..value = layer;
    try {
      ptrcallVoid(_mb_force_update, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_tileset =
      resolveMethodBind('TileMap', 'set_tileset', 774531446);

  void setTileset(TileSet tileset) {
    final arg0 = malloc<Pointer<Void>>()..value = tileset.nativePtr;
    try {
      ptrcallVoid(_mb_set_tileset, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_tileset =
      resolveMethodBind('TileMap', 'get_tileset', 2678226422);

  TileSet? getTileset() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_tileset, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : TileSet(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_rendering_quadrant_size =
      resolveMethodBind('TileMap', 'set_rendering_quadrant_size', 1286410249);

  void setRenderingQuadrantSize(int size) {
    final arg0 = malloc<Int64>()..value = size;
    try {
      ptrcallVoid(_mb_set_rendering_quadrant_size, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_rendering_quadrant_size =
      resolveMethodBind('TileMap', 'get_rendering_quadrant_size', 3905245786);

  int getRenderingQuadrantSize() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_rendering_quadrant_size, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_layers_count =
      resolveMethodBind('TileMap', 'get_layers_count', 3905245786);

  int getLayersCount() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_layers_count, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_add_layer =
      resolveMethodBind('TileMap', 'add_layer', 1286410249);

  void addLayer(int toPosition) {
    final arg0 = malloc<Int64>()..value = toPosition;
    try {
      ptrcallVoid(_mb_add_layer, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_move_layer =
      resolveMethodBind('TileMap', 'move_layer', 3937882851);

  void moveLayer(int layer, int toPosition) {
    final arg0 = malloc<Int64>()..value = layer;
    final arg1 = malloc<Int64>()..value = toPosition;
    try {
      ptrcallVoid(_mb_move_layer, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_remove_layer =
      resolveMethodBind('TileMap', 'remove_layer', 1286410249);

  void removeLayer(int layer) {
    final arg0 = malloc<Int64>()..value = layer;
    try {
      ptrcallVoid(_mb_remove_layer, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_layer_name =
      resolveMethodBind('TileMap', 'set_layer_name', 501894301);

  void setLayerName(int layer, String name) {
    final arg0 = malloc<Int64>()..value = layer;
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg1.cast(), name);
    try {
      ptrcallVoid(_mb_set_layer_name, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      BuiltinMarshal.destroyGDString(arg1.cast());
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_layer_name =
      resolveMethodBind('TileMap', 'get_layer_name', 844755477);

  String getLayerName(int layer) {
    final arg0 = malloc<Int64>()..value = layer;
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_layer_name, nativePtr, [arg0.cast<Void>()], ret.cast());
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

  static final Pointer<Void> _mb_set_layer_enabled =
      resolveMethodBind('TileMap', 'set_layer_enabled', 300928843);

  void setLayerEnabled(int layer, bool enabled) {
    final arg0 = malloc<Int64>()..value = layer;
    final arg1 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_layer_enabled, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_is_layer_enabled =
      resolveMethodBind('TileMap', 'is_layer_enabled', 1116898809);

  bool isLayerEnabled(int layer) {
    final arg0 = malloc<Int64>()..value = layer;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_layer_enabled, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_layer_modulate =
      resolveMethodBind('TileMap', 'set_layer_modulate', 2878471219);

  void setLayerModulate(int layer, Color modulate) {
    final arg0 = malloc<Int64>()..value = layer;
    final arg1 = malloc<Uint8>(Color.nativeSize);
    modulate.writeTo(arg1, 0);
    try {
      ptrcallVoid(_mb_set_layer_modulate, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_layer_modulate =
      resolveMethodBind('TileMap', 'get_layer_modulate', 3457211756);

  Color getLayerModulate(int layer) {
    final arg0 = malloc<Int64>()..value = layer;
    try {
      final ret = malloc<Uint8>(Color.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_layer_modulate, nativePtr, [arg0.cast<Void>()], ret.cast());
        return Color.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_layer_y_sort_enabled =
      resolveMethodBind('TileMap', 'set_layer_y_sort_enabled', 300928843);

  void setLayerYSortEnabled(int layer, bool ySortEnabled) {
    final arg0 = malloc<Int64>()..value = layer;
    final arg1 = malloc<Uint8>()..value = ySortEnabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_layer_y_sort_enabled, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_is_layer_y_sort_enabled =
      resolveMethodBind('TileMap', 'is_layer_y_sort_enabled', 1116898809);

  bool isLayerYSortEnabled(int layer) {
    final arg0 = malloc<Int64>()..value = layer;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_layer_y_sort_enabled, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_layer_y_sort_origin =
      resolveMethodBind('TileMap', 'set_layer_y_sort_origin', 3937882851);

  void setLayerYSortOrigin(int layer, int ySortOrigin) {
    final arg0 = malloc<Int64>()..value = layer;
    final arg1 = malloc<Int64>()..value = ySortOrigin;
    try {
      ptrcallVoid(_mb_set_layer_y_sort_origin, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_layer_y_sort_origin =
      resolveMethodBind('TileMap', 'get_layer_y_sort_origin', 923996154);

  int getLayerYSortOrigin(int layer) {
    final arg0 = malloc<Int64>()..value = layer;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_layer_y_sort_origin, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_layer_z_index =
      resolveMethodBind('TileMap', 'set_layer_z_index', 3937882851);

  void setLayerZIndex(int layer, int zIndex) {
    final arg0 = malloc<Int64>()..value = layer;
    final arg1 = malloc<Int64>()..value = zIndex;
    try {
      ptrcallVoid(_mb_set_layer_z_index, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_layer_z_index =
      resolveMethodBind('TileMap', 'get_layer_z_index', 923996154);

  int getLayerZIndex(int layer) {
    final arg0 = malloc<Int64>()..value = layer;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_layer_z_index, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_layer_navigation_enabled =
      resolveMethodBind('TileMap', 'set_layer_navigation_enabled', 300928843);

  void setLayerNavigationEnabled(int layer, bool enabled) {
    final arg0 = malloc<Int64>()..value = layer;
    final arg1 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_layer_navigation_enabled, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_is_layer_navigation_enabled =
      resolveMethodBind('TileMap', 'is_layer_navigation_enabled', 1116898809);

  bool isLayerNavigationEnabled(int layer) {
    final arg0 = malloc<Int64>()..value = layer;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_layer_navigation_enabled, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  // Skipped set_layer_navigation_map(): an argument type is unsupported.
  // Skipped get_layer_navigation_map(): unsupported return type "RID".
  static final Pointer<Void> _mb_set_collision_animatable =
      resolveMethodBind('TileMap', 'set_collision_animatable', 2586408642);

  void setCollisionAnimatable(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_collision_animatable, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_collision_animatable =
      resolveMethodBind('TileMap', 'is_collision_animatable', 36873697);

  bool isCollisionAnimatable() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_collision_animatable, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_collision_visibility_mode =
      resolveMethodBind('TileMap', 'set_collision_visibility_mode', 3193440636);

  void setCollisionVisibilityMode(int collisionVisibilityMode) {
    final arg0 = malloc<Int64>()..value = collisionVisibilityMode;
    try {
      ptrcallVoid(_mb_set_collision_visibility_mode, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_collision_visibility_mode =
      resolveMethodBind('TileMap', 'get_collision_visibility_mode', 1697018252);

  int getCollisionVisibilityMode() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_collision_visibility_mode, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_navigation_visibility_mode =
      resolveMethodBind('TileMap', 'set_navigation_visibility_mode', 3193440636);

  void setNavigationVisibilityMode(int navigationVisibilityMode) {
    final arg0 = malloc<Int64>()..value = navigationVisibilityMode;
    try {
      ptrcallVoid(_mb_set_navigation_visibility_mode, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_navigation_visibility_mode =
      resolveMethodBind('TileMap', 'get_navigation_visibility_mode', 1697018252);

  int getNavigationVisibilityMode() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_navigation_visibility_mode, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_cell =
      resolveMethodBind('TileMap', 'set_cell', 966713560);

  void setCell(int layer, Vector2i coords, int sourceId, Vector2i atlasCoords, int alternativeTile) {
    final arg0 = malloc<Int64>()..value = layer;
    final arg1 = malloc<Uint8>(Vector2i.nativeSize);
    coords.writeTo(arg1, 0);
    final arg2 = malloc<Int64>()..value = sourceId;
    final arg3 = malloc<Uint8>(Vector2i.nativeSize);
    atlasCoords.writeTo(arg3, 0);
    final arg4 = malloc<Int64>()..value = alternativeTile;
    try {
      ptrcallVoid(_mb_set_cell, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>(), arg3.cast<Void>(), arg4.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
      malloc.free(arg3);
      malloc.free(arg4);
    }
  }

  static final Pointer<Void> _mb_erase_cell =
      resolveMethodBind('TileMap', 'erase_cell', 2311374912);

  void eraseCell(int layer, Vector2i coords) {
    final arg0 = malloc<Int64>()..value = layer;
    final arg1 = malloc<Uint8>(Vector2i.nativeSize);
    coords.writeTo(arg1, 0);
    try {
      ptrcallVoid(_mb_erase_cell, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_cell_source_id =
      resolveMethodBind('TileMap', 'get_cell_source_id', 551761942);

  int getCellSourceId(int layer, Vector2i coords, bool useProxies) {
    final arg0 = malloc<Int64>()..value = layer;
    final arg1 = malloc<Uint8>(Vector2i.nativeSize);
    coords.writeTo(arg1, 0);
    final arg2 = malloc<Uint8>()..value = useProxies ? 1 : 0;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_cell_source_id, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_get_cell_atlas_coords =
      resolveMethodBind('TileMap', 'get_cell_atlas_coords', 1869815066);

  Vector2i getCellAtlasCoords(int layer, Vector2i coords, bool useProxies) {
    final arg0 = malloc<Int64>()..value = layer;
    final arg1 = malloc<Uint8>(Vector2i.nativeSize);
    coords.writeTo(arg1, 0);
    final arg2 = malloc<Uint8>()..value = useProxies ? 1 : 0;
    try {
      final ret = malloc<Uint8>(Vector2i.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_cell_atlas_coords, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()], ret.cast());
        return Vector2i.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_get_cell_alternative_tile =
      resolveMethodBind('TileMap', 'get_cell_alternative_tile', 551761942);

  int getCellAlternativeTile(int layer, Vector2i coords, bool useProxies) {
    final arg0 = malloc<Int64>()..value = layer;
    final arg1 = malloc<Uint8>(Vector2i.nativeSize);
    coords.writeTo(arg1, 0);
    final arg2 = malloc<Uint8>()..value = useProxies ? 1 : 0;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_cell_alternative_tile, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_get_cell_tile_data =
      resolveMethodBind('TileMap', 'get_cell_tile_data', 2849631287);

  TileData? getCellTileData(int layer, Vector2i coords, bool useProxies) {
    final arg0 = malloc<Int64>()..value = layer;
    final arg1 = malloc<Uint8>(Vector2i.nativeSize);
    coords.writeTo(arg1, 0);
    final arg2 = malloc<Uint8>()..value = useProxies ? 1 : 0;
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_cell_tile_data, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : TileData(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_is_cell_flipped_h =
      resolveMethodBind('TileMap', 'is_cell_flipped_h', 2908343862);

  bool isCellFlippedH(int layer, Vector2i coords, bool useProxies) {
    final arg0 = malloc<Int64>()..value = layer;
    final arg1 = malloc<Uint8>(Vector2i.nativeSize);
    coords.writeTo(arg1, 0);
    final arg2 = malloc<Uint8>()..value = useProxies ? 1 : 0;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_cell_flipped_h, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_is_cell_flipped_v =
      resolveMethodBind('TileMap', 'is_cell_flipped_v', 2908343862);

  bool isCellFlippedV(int layer, Vector2i coords, bool useProxies) {
    final arg0 = malloc<Int64>()..value = layer;
    final arg1 = malloc<Uint8>(Vector2i.nativeSize);
    coords.writeTo(arg1, 0);
    final arg2 = malloc<Uint8>()..value = useProxies ? 1 : 0;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_cell_flipped_v, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_is_cell_transposed =
      resolveMethodBind('TileMap', 'is_cell_transposed', 2908343862);

  bool isCellTransposed(int layer, Vector2i coords, bool useProxies) {
    final arg0 = malloc<Int64>()..value = layer;
    final arg1 = malloc<Uint8>(Vector2i.nativeSize);
    coords.writeTo(arg1, 0);
    final arg2 = malloc<Uint8>()..value = useProxies ? 1 : 0;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_cell_transposed, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
    }
  }

  // Skipped get_coords_for_body_rid(): an argument type is unsupported.
  // Skipped get_layer_for_body_rid(): an argument type is unsupported.
  // Skipped get_pattern(): an argument type is unsupported.
  static final Pointer<Void> _mb_map_pattern =
      resolveMethodBind('TileMap', 'map_pattern', 1864516957);

  Vector2i mapPattern(Vector2i positionInTilemap, Vector2i coordsInPattern, TileMapPattern pattern) {
    final arg0 = malloc<Uint8>(Vector2i.nativeSize);
    positionInTilemap.writeTo(arg0, 0);
    final arg1 = malloc<Uint8>(Vector2i.nativeSize);
    coordsInPattern.writeTo(arg1, 0);
    final arg2 = malloc<Pointer<Void>>()..value = pattern.nativePtr;
    try {
      final ret = malloc<Uint8>(Vector2i.nativeSize);
      try {
        ptrcallWithReturn(_mb_map_pattern, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()], ret.cast());
        return Vector2i.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_set_pattern =
      resolveMethodBind('TileMap', 'set_pattern', 1195853946);

  void setPattern(int layer, Vector2i position, TileMapPattern pattern) {
    final arg0 = malloc<Int64>()..value = layer;
    final arg1 = malloc<Uint8>(Vector2i.nativeSize);
    position.writeTo(arg1, 0);
    final arg2 = malloc<Pointer<Void>>()..value = pattern.nativePtr;
    try {
      ptrcallVoid(_mb_set_pattern, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
    }
  }

  // Skipped set_cells_terrain_connect(): an argument type is unsupported.
  // Skipped set_cells_terrain_path(): an argument type is unsupported.
  static final Pointer<Void> _mb_fix_invalid_tiles =
      resolveMethodBind('TileMap', 'fix_invalid_tiles', 3218959716);

  void fixInvalidTiles() {
    try {
      ptrcallVoid(_mb_fix_invalid_tiles, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_clear_layer =
      resolveMethodBind('TileMap', 'clear_layer', 1286410249);

  void clearLayer(int layer) {
    final arg0 = malloc<Int64>()..value = layer;
    try {
      ptrcallVoid(_mb_clear_layer, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_clear =
      resolveMethodBind('TileMap', 'clear', 3218959716);

  void clear() {
    try {
      ptrcallVoid(_mb_clear, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_update_internals =
      resolveMethodBind('TileMap', 'update_internals', 3218959716);

  void updateInternals() {
    try {
      ptrcallVoid(_mb_update_internals, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_notify_runtime_tile_data_update =
      resolveMethodBind('TileMap', 'notify_runtime_tile_data_update', 1025054187);

  void notifyRuntimeTileDataUpdate(int layer) {
    final arg0 = malloc<Int64>()..value = layer;
    try {
      ptrcallVoid(_mb_notify_runtime_tile_data_update, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  // Skipped get_surrounding_cells(): unsupported return type "typedarray::Vector2i".
  // Skipped get_used_cells(): unsupported return type "typedarray::Vector2i".
  // Skipped get_used_cells_by_id(): unsupported return type "typedarray::Vector2i".
  static final Pointer<Void> _mb_get_used_rect =
      resolveMethodBind('TileMap', 'get_used_rect', 410525958);

  Rect2i getUsedRect() {
    try {
      final ret = malloc<Uint8>(Rect2i.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_used_rect, nativePtr, [], ret.cast());
        return Rect2i.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_map_to_local =
      resolveMethodBind('TileMap', 'map_to_local', 108438297);

  Vector2 mapToLocal(Vector2i mapPosition) {
    final arg0 = malloc<Uint8>(Vector2i.nativeSize);
    mapPosition.writeTo(arg0, 0);
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_map_to_local, nativePtr, [arg0.cast<Void>()], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_local_to_map =
      resolveMethodBind('TileMap', 'local_to_map', 837806996);

  Vector2i localToMap(Vector2 localPosition) {
    final arg0 = malloc<Uint8>(Vector2.nativeSize);
    localPosition.writeTo(arg0, 0);
    try {
      final ret = malloc<Uint8>(Vector2i.nativeSize);
      try {
        ptrcallWithReturn(_mb_local_to_map, nativePtr, [arg0.cast<Void>()], ret.cast());
        return Vector2i.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_neighbor_cell =
      resolveMethodBind('TileMap', 'get_neighbor_cell', 986575103);

  Vector2i getNeighborCell(Vector2i coords, int neighbor) {
    final arg0 = malloc<Uint8>(Vector2i.nativeSize);
    coords.writeTo(arg0, 0);
    final arg1 = malloc<Int64>()..value = neighbor;
    try {
      final ret = malloc<Uint8>(Vector2i.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_neighbor_cell, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return Vector2i.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

}
