// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class TileMapLayer extends Node2D {
  TileMapLayer(super.nativePtr);

  /// Constructs a brand-new engine-owned TileMapLayer instance
  /// (via classdb_construct_object3), not an existing one.
  factory TileMapLayer.create() {
    return TileMapLayer(resolveClassConstructor('TileMapLayer'));
  }

  static final Pointer<Void> _mb_set_cell =
      resolveMethodBind('TileMapLayer', 'set_cell', 2428518503);

  void setCell(Vector2i coords, int sourceId, Vector2i atlasCoords, int alternativeTile) {
    final arg0 = malloc<Uint8>(Vector2i.nativeSize);
    coords.writeTo(arg0, 0);
    final arg1 = malloc<Int64>()..value = sourceId;
    final arg2 = malloc<Uint8>(Vector2i.nativeSize);
    atlasCoords.writeTo(arg2, 0);
    final arg3 = malloc<Int64>()..value = alternativeTile;
    try {
      ptrcallVoid(_mb_set_cell, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>(), arg3.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
      malloc.free(arg3);
    }
  }

  static final Pointer<Void> _mb_erase_cell =
      resolveMethodBind('TileMapLayer', 'erase_cell', 1130785943);

  void eraseCell(Vector2i coords) {
    final arg0 = malloc<Uint8>(Vector2i.nativeSize);
    coords.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_erase_cell, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_fix_invalid_tiles =
      resolveMethodBind('TileMapLayer', 'fix_invalid_tiles', 3218959716);

  void fixInvalidTiles() {
    try {
      ptrcallVoid(_mb_fix_invalid_tiles, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_clear =
      resolveMethodBind('TileMapLayer', 'clear', 3218959716);

  void clear() {
    try {
      ptrcallVoid(_mb_clear, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_cell_source_id =
      resolveMethodBind('TileMapLayer', 'get_cell_source_id', 2485466453);

  int getCellSourceId(Vector2i coords) {
    final arg0 = malloc<Uint8>(Vector2i.nativeSize);
    coords.writeTo(arg0, 0);
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_cell_source_id, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_cell_atlas_coords =
      resolveMethodBind('TileMapLayer', 'get_cell_atlas_coords', 3050897911);

  Vector2i getCellAtlasCoords(Vector2i coords) {
    final arg0 = malloc<Uint8>(Vector2i.nativeSize);
    coords.writeTo(arg0, 0);
    try {
      final ret = malloc<Uint8>(Vector2i.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_cell_atlas_coords, nativePtr, [arg0.cast<Void>()], ret.cast());
        return Vector2i.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_cell_alternative_tile =
      resolveMethodBind('TileMapLayer', 'get_cell_alternative_tile', 2485466453);

  int getCellAlternativeTile(Vector2i coords) {
    final arg0 = malloc<Uint8>(Vector2i.nativeSize);
    coords.writeTo(arg0, 0);
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_cell_alternative_tile, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_cell_tile_data =
      resolveMethodBind('TileMapLayer', 'get_cell_tile_data', 205084707);

  TileData? getCellTileData(Vector2i coords) {
    final arg0 = malloc<Uint8>(Vector2i.nativeSize);
    coords.writeTo(arg0, 0);
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_cell_tile_data, nativePtr, [arg0.cast<Void>()], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : TileData(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_cell_flipped_h =
      resolveMethodBind('TileMapLayer', 'is_cell_flipped_h', 3900751641);

  bool isCellFlippedH(Vector2i coords) {
    final arg0 = malloc<Uint8>(Vector2i.nativeSize);
    coords.writeTo(arg0, 0);
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_cell_flipped_h, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_cell_flipped_v =
      resolveMethodBind('TileMapLayer', 'is_cell_flipped_v', 3900751641);

  bool isCellFlippedV(Vector2i coords) {
    final arg0 = malloc<Uint8>(Vector2i.nativeSize);
    coords.writeTo(arg0, 0);
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_cell_flipped_v, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_cell_transposed =
      resolveMethodBind('TileMapLayer', 'is_cell_transposed', 3900751641);

  bool isCellTransposed(Vector2i coords) {
    final arg0 = malloc<Uint8>(Vector2i.nativeSize);
    coords.writeTo(arg0, 0);
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_cell_transposed, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  // Skipped get_used_cells(): unsupported return type "typedarray::Vector2i".
  // Skipped get_used_cells_by_id(): unsupported return type "typedarray::Vector2i".
  static final Pointer<Void> _mb_get_used_rect =
      resolveMethodBind('TileMapLayer', 'get_used_rect', 410525958);

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

  // Skipped get_pattern(): an argument type is unsupported.
  static final Pointer<Void> _mb_set_pattern =
      resolveMethodBind('TileMapLayer', 'set_pattern', 1491151770);

  void setPattern(Vector2i position, TileMapPattern pattern) {
    final arg0 = malloc<Uint8>(Vector2i.nativeSize);
    position.writeTo(arg0, 0);
    final arg1 = malloc<Pointer<Void>>()..value = pattern.nativePtr;
    try {
      ptrcallVoid(_mb_set_pattern, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  // Skipped set_cells_terrain_connect(): an argument type is unsupported.
  // Skipped set_cells_terrain_path(): an argument type is unsupported.
  // Skipped has_body_rid(): an argument type is unsupported.
  // Skipped get_coords_for_body_rid(): an argument type is unsupported.
  static final Pointer<Void> _mb_update_internals =
      resolveMethodBind('TileMapLayer', 'update_internals', 3218959716);

  void updateInternals() {
    try {
      ptrcallVoid(_mb_update_internals, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_notify_runtime_tile_data_update =
      resolveMethodBind('TileMapLayer', 'notify_runtime_tile_data_update', 3218959716);

  void notifyRuntimeTileDataUpdate() {
    try {
      ptrcallVoid(_mb_notify_runtime_tile_data_update, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_map_pattern =
      resolveMethodBind('TileMapLayer', 'map_pattern', 1864516957);

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

  // Skipped get_surrounding_cells(): unsupported return type "typedarray::Vector2i".
  static final Pointer<Void> _mb_get_neighbor_cell =
      resolveMethodBind('TileMapLayer', 'get_neighbor_cell', 986575103);

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

  static final Pointer<Void> _mb_map_to_local =
      resolveMethodBind('TileMapLayer', 'map_to_local', 108438297);

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
      resolveMethodBind('TileMapLayer', 'local_to_map', 837806996);

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

  // Skipped set_tile_map_data_from_array(): an argument type is unsupported.
  // Skipped get_tile_map_data_as_array(): unsupported return type "PackedByteArray".
  static final Pointer<Void> _mb_set_enabled =
      resolveMethodBind('TileMapLayer', 'set_enabled', 2586408642);

  void setEnabled(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_enabled, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_enabled =
      resolveMethodBind('TileMapLayer', 'is_enabled', 36873697);

  bool isEnabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_enabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_tile_set =
      resolveMethodBind('TileMapLayer', 'set_tile_set', 774531446);

  void setTileSet(TileSet tileSet) {
    final arg0 = malloc<Pointer<Void>>()..value = tileSet.nativePtr;
    try {
      ptrcallVoid(_mb_set_tile_set, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_tile_set =
      resolveMethodBind('TileMapLayer', 'get_tile_set', 2678226422);

  TileSet? getTileSet() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_tile_set, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : TileSet(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_y_sort_origin =
      resolveMethodBind('TileMapLayer', 'set_y_sort_origin', 1286410249);

  void setYSortOrigin(int ySortOrigin) {
    final arg0 = malloc<Int64>()..value = ySortOrigin;
    try {
      ptrcallVoid(_mb_set_y_sort_origin, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_y_sort_origin =
      resolveMethodBind('TileMapLayer', 'get_y_sort_origin', 3905245786);

  int getYSortOrigin() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_y_sort_origin, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_x_draw_order_reversed =
      resolveMethodBind('TileMapLayer', 'set_x_draw_order_reversed', 2586408642);

  void setXDrawOrderReversed(bool xDrawOrderReversed) {
    final arg0 = malloc<Uint8>()..value = xDrawOrderReversed ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_x_draw_order_reversed, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_x_draw_order_reversed =
      resolveMethodBind('TileMapLayer', 'is_x_draw_order_reversed', 36873697);

  bool isXDrawOrderReversed() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_x_draw_order_reversed, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_rendering_quadrant_size =
      resolveMethodBind('TileMapLayer', 'set_rendering_quadrant_size', 1286410249);

  void setRenderingQuadrantSize(int size) {
    final arg0 = malloc<Int64>()..value = size;
    try {
      ptrcallVoid(_mb_set_rendering_quadrant_size, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_rendering_quadrant_size =
      resolveMethodBind('TileMapLayer', 'get_rendering_quadrant_size', 3905245786);

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

  static final Pointer<Void> _mb_set_collision_enabled =
      resolveMethodBind('TileMapLayer', 'set_collision_enabled', 2586408642);

  void setCollisionEnabled(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_collision_enabled, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_collision_enabled =
      resolveMethodBind('TileMapLayer', 'is_collision_enabled', 36873697);

  bool isCollisionEnabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_collision_enabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_use_kinematic_bodies =
      resolveMethodBind('TileMapLayer', 'set_use_kinematic_bodies', 2586408642);

  void setUseKinematicBodies(bool useKinematicBodies) {
    final arg0 = malloc<Uint8>()..value = useKinematicBodies ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_use_kinematic_bodies, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_using_kinematic_bodies =
      resolveMethodBind('TileMapLayer', 'is_using_kinematic_bodies', 36873697);

  bool isUsingKinematicBodies() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_using_kinematic_bodies, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_collision_visibility_mode =
      resolveMethodBind('TileMapLayer', 'set_collision_visibility_mode', 3508099847);

  void setCollisionVisibilityMode(int visibilityMode) {
    final arg0 = malloc<Int64>()..value = visibilityMode;
    try {
      ptrcallVoid(_mb_set_collision_visibility_mode, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_collision_visibility_mode =
      resolveMethodBind('TileMapLayer', 'get_collision_visibility_mode', 338220793);

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

  static final Pointer<Void> _mb_set_physics_quadrant_size =
      resolveMethodBind('TileMapLayer', 'set_physics_quadrant_size', 1286410249);

  void setPhysicsQuadrantSize(int size) {
    final arg0 = malloc<Int64>()..value = size;
    try {
      ptrcallVoid(_mb_set_physics_quadrant_size, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_physics_quadrant_size =
      resolveMethodBind('TileMapLayer', 'get_physics_quadrant_size', 3905245786);

  int getPhysicsQuadrantSize() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_physics_quadrant_size, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_occlusion_enabled =
      resolveMethodBind('TileMapLayer', 'set_occlusion_enabled', 2586408642);

  void setOcclusionEnabled(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_occlusion_enabled, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_occlusion_enabled =
      resolveMethodBind('TileMapLayer', 'is_occlusion_enabled', 36873697);

  bool isOcclusionEnabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_occlusion_enabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_navigation_enabled =
      resolveMethodBind('TileMapLayer', 'set_navigation_enabled', 2586408642);

  void setNavigationEnabled(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_navigation_enabled, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_navigation_enabled =
      resolveMethodBind('TileMapLayer', 'is_navigation_enabled', 36873697);

  bool isNavigationEnabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_navigation_enabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  // Skipped set_navigation_map(): an argument type is unsupported.
  // Skipped get_navigation_map(): unsupported return type "RID".
  static final Pointer<Void> _mb_set_navigation_visibility_mode =
      resolveMethodBind('TileMapLayer', 'set_navigation_visibility_mode', 3508099847);

  void setNavigationVisibilityMode(int showNavigation) {
    final arg0 = malloc<Int64>()..value = showNavigation;
    try {
      ptrcallVoid(_mb_set_navigation_visibility_mode, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_navigation_visibility_mode =
      resolveMethodBind('TileMapLayer', 'get_navigation_visibility_mode', 338220793);

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

}
