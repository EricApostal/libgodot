// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class TileSet extends Resource {
  TileSet(super.nativePtr);

  /// Constructs a brand-new engine-owned TileSet instance
  /// (via classdb_construct_object3), not an existing one.
  factory TileSet.create() {
    return TileSet(resolveClassConstructor('TileSet'));
  }

  static final Pointer<Void> _mb_get_next_source_id =
      resolveMethodBind('TileSet', 'get_next_source_id', 3905245786);

  int getNextSourceId() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_next_source_id, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_add_source =
      resolveMethodBind('TileSet', 'add_source', 1059186179);

  int addSource(TileSetSource source, int atlasSourceIdOverride) {
    final arg0 = malloc<Pointer<Void>>()..value = source.nativePtr;
    final arg1 = malloc<Int64>()..value = atlasSourceIdOverride;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_add_source, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_remove_source =
      resolveMethodBind('TileSet', 'remove_source', 1286410249);

  void removeSource(int sourceId) {
    final arg0 = malloc<Int64>()..value = sourceId;
    try {
      ptrcallVoid(_mb_remove_source, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_source_id =
      resolveMethodBind('TileSet', 'set_source_id', 3937882851);

  void setSourceId(int sourceId, int newSourceId) {
    final arg0 = malloc<Int64>()..value = sourceId;
    final arg1 = malloc<Int64>()..value = newSourceId;
    try {
      ptrcallVoid(_mb_set_source_id, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_source_count =
      resolveMethodBind('TileSet', 'get_source_count', 3905245786);

  int getSourceCount() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_source_count, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_source_id =
      resolveMethodBind('TileSet', 'get_source_id', 923996154);

  int getSourceId(int index) {
    final arg0 = malloc<Int64>()..value = index;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_source_id, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_has_source =
      resolveMethodBind('TileSet', 'has_source', 1116898809);

  bool hasSource(int sourceId) {
    final arg0 = malloc<Int64>()..value = sourceId;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_has_source, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_source =
      resolveMethodBind('TileSet', 'get_source', 1763540252);

  TileSetSource? getSource(int sourceId) {
    final arg0 = malloc<Int64>()..value = sourceId;
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_source, nativePtr, [arg0.cast<Void>()], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : TileSetSource(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_tile_shape =
      resolveMethodBind('TileSet', 'set_tile_shape', 2131427112);

  void setTileShape(int shape) {
    final arg0 = malloc<Int64>()..value = shape;
    try {
      ptrcallVoid(_mb_set_tile_shape, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_tile_shape =
      resolveMethodBind('TileSet', 'get_tile_shape', 716918169);

  int getTileShape() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_tile_shape, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_tile_layout =
      resolveMethodBind('TileSet', 'set_tile_layout', 1071216679);

  void setTileLayout(int layout) {
    final arg0 = malloc<Int64>()..value = layout;
    try {
      ptrcallVoid(_mb_set_tile_layout, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_tile_layout =
      resolveMethodBind('TileSet', 'get_tile_layout', 194628839);

  int getTileLayout() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_tile_layout, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_tile_offset_axis =
      resolveMethodBind('TileSet', 'set_tile_offset_axis', 3300198521);

  void setTileOffsetAxis(int alignment) {
    final arg0 = malloc<Int64>()..value = alignment;
    try {
      ptrcallVoid(_mb_set_tile_offset_axis, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_tile_offset_axis =
      resolveMethodBind('TileSet', 'get_tile_offset_axis', 762494114);

  int getTileOffsetAxis() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_tile_offset_axis, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_tile_size =
      resolveMethodBind('TileSet', 'set_tile_size', 1130785943);

  void setTileSize(Vector2i size) {
    final arg0 = malloc<Uint8>(Vector2i.nativeSize);
    size.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_tile_size, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_tile_size =
      resolveMethodBind('TileSet', 'get_tile_size', 3690982128);

  Vector2i getTileSize() {
    try {
      final ret = malloc<Uint8>(Vector2i.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_tile_size, nativePtr, [], ret.cast());
        return Vector2i.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_uv_clipping =
      resolveMethodBind('TileSet', 'set_uv_clipping', 2586408642);

  void setUvClipping(bool uvClipping) {
    final arg0 = malloc<Uint8>()..value = uvClipping ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_uv_clipping, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_uv_clipping =
      resolveMethodBind('TileSet', 'is_uv_clipping', 36873697);

  bool isUvClipping() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_uv_clipping, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_occlusion_layers_count =
      resolveMethodBind('TileSet', 'get_occlusion_layers_count', 3905245786);

  int getOcclusionLayersCount() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_occlusion_layers_count, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_add_occlusion_layer =
      resolveMethodBind('TileSet', 'add_occlusion_layer', 1025054187);

  void addOcclusionLayer(int toPosition) {
    final arg0 = malloc<Int64>()..value = toPosition;
    try {
      ptrcallVoid(_mb_add_occlusion_layer, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_move_occlusion_layer =
      resolveMethodBind('TileSet', 'move_occlusion_layer', 3937882851);

  void moveOcclusionLayer(int layerIndex, int toPosition) {
    final arg0 = malloc<Int64>()..value = layerIndex;
    final arg1 = malloc<Int64>()..value = toPosition;
    try {
      ptrcallVoid(_mb_move_occlusion_layer, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_remove_occlusion_layer =
      resolveMethodBind('TileSet', 'remove_occlusion_layer', 1286410249);

  void removeOcclusionLayer(int layerIndex) {
    final arg0 = malloc<Int64>()..value = layerIndex;
    try {
      ptrcallVoid(_mb_remove_occlusion_layer, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_occlusion_layer_light_mask =
      resolveMethodBind('TileSet', 'set_occlusion_layer_light_mask', 3937882851);

  void setOcclusionLayerLightMask(int layerIndex, int lightMask) {
    final arg0 = malloc<Int64>()..value = layerIndex;
    final arg1 = malloc<Int64>()..value = lightMask;
    try {
      ptrcallVoid(_mb_set_occlusion_layer_light_mask, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_occlusion_layer_light_mask =
      resolveMethodBind('TileSet', 'get_occlusion_layer_light_mask', 923996154);

  int getOcclusionLayerLightMask(int layerIndex) {
    final arg0 = malloc<Int64>()..value = layerIndex;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_occlusion_layer_light_mask, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_occlusion_layer_sdf_collision =
      resolveMethodBind('TileSet', 'set_occlusion_layer_sdf_collision', 300928843);

  void setOcclusionLayerSdfCollision(int layerIndex, bool sdfCollision) {
    final arg0 = malloc<Int64>()..value = layerIndex;
    final arg1 = malloc<Uint8>()..value = sdfCollision ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_occlusion_layer_sdf_collision, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_occlusion_layer_sdf_collision =
      resolveMethodBind('TileSet', 'get_occlusion_layer_sdf_collision', 1116898809);

  bool getOcclusionLayerSdfCollision(int layerIndex) {
    final arg0 = malloc<Int64>()..value = layerIndex;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_occlusion_layer_sdf_collision, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_physics_layers_count =
      resolveMethodBind('TileSet', 'get_physics_layers_count', 3905245786);

  int getPhysicsLayersCount() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_physics_layers_count, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_add_physics_layer =
      resolveMethodBind('TileSet', 'add_physics_layer', 1025054187);

  void addPhysicsLayer(int toPosition) {
    final arg0 = malloc<Int64>()..value = toPosition;
    try {
      ptrcallVoid(_mb_add_physics_layer, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_move_physics_layer =
      resolveMethodBind('TileSet', 'move_physics_layer', 3937882851);

  void movePhysicsLayer(int layerIndex, int toPosition) {
    final arg0 = malloc<Int64>()..value = layerIndex;
    final arg1 = malloc<Int64>()..value = toPosition;
    try {
      ptrcallVoid(_mb_move_physics_layer, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_remove_physics_layer =
      resolveMethodBind('TileSet', 'remove_physics_layer', 1286410249);

  void removePhysicsLayer(int layerIndex) {
    final arg0 = malloc<Int64>()..value = layerIndex;
    try {
      ptrcallVoid(_mb_remove_physics_layer, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_physics_layer_collision_layer =
      resolveMethodBind('TileSet', 'set_physics_layer_collision_layer', 3937882851);

  void setPhysicsLayerCollisionLayer(int layerIndex, int layer) {
    final arg0 = malloc<Int64>()..value = layerIndex;
    final arg1 = malloc<Int64>()..value = layer;
    try {
      ptrcallVoid(_mb_set_physics_layer_collision_layer, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_physics_layer_collision_layer =
      resolveMethodBind('TileSet', 'get_physics_layer_collision_layer', 923996154);

  int getPhysicsLayerCollisionLayer(int layerIndex) {
    final arg0 = malloc<Int64>()..value = layerIndex;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_physics_layer_collision_layer, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_physics_layer_collision_mask =
      resolveMethodBind('TileSet', 'set_physics_layer_collision_mask', 3937882851);

  void setPhysicsLayerCollisionMask(int layerIndex, int mask) {
    final arg0 = malloc<Int64>()..value = layerIndex;
    final arg1 = malloc<Int64>()..value = mask;
    try {
      ptrcallVoid(_mb_set_physics_layer_collision_mask, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_physics_layer_collision_mask =
      resolveMethodBind('TileSet', 'get_physics_layer_collision_mask', 923996154);

  int getPhysicsLayerCollisionMask(int layerIndex) {
    final arg0 = malloc<Int64>()..value = layerIndex;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_physics_layer_collision_mask, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_physics_layer_collision_priority =
      resolveMethodBind('TileSet', 'set_physics_layer_collision_priority', 1602489585);

  void setPhysicsLayerCollisionPriority(int layerIndex, double priority) {
    final arg0 = malloc<Int64>()..value = layerIndex;
    final arg1 = malloc<Double>()..value = priority;
    try {
      ptrcallVoid(_mb_set_physics_layer_collision_priority, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_physics_layer_collision_priority =
      resolveMethodBind('TileSet', 'get_physics_layer_collision_priority', 2339986948);

  double getPhysicsLayerCollisionPriority(int layerIndex) {
    final arg0 = malloc<Int64>()..value = layerIndex;
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_physics_layer_collision_priority, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_physics_layer_physics_material =
      resolveMethodBind('TileSet', 'set_physics_layer_physics_material', 1018687357);

  void setPhysicsLayerPhysicsMaterial(int layerIndex, PhysicsMaterial physicsMaterial) {
    final arg0 = malloc<Int64>()..value = layerIndex;
    final arg1 = malloc<Pointer<Void>>()..value = physicsMaterial.nativePtr;
    try {
      ptrcallVoid(_mb_set_physics_layer_physics_material, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_physics_layer_physics_material =
      resolveMethodBind('TileSet', 'get_physics_layer_physics_material', 788318639);

  PhysicsMaterial? getPhysicsLayerPhysicsMaterial(int layerIndex) {
    final arg0 = malloc<Int64>()..value = layerIndex;
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_physics_layer_physics_material, nativePtr, [arg0.cast<Void>()], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : PhysicsMaterial(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_terrain_sets_count =
      resolveMethodBind('TileSet', 'get_terrain_sets_count', 3905245786);

  int getTerrainSetsCount() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_terrain_sets_count, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_add_terrain_set =
      resolveMethodBind('TileSet', 'add_terrain_set', 1025054187);

  void addTerrainSet(int toPosition) {
    final arg0 = malloc<Int64>()..value = toPosition;
    try {
      ptrcallVoid(_mb_add_terrain_set, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_move_terrain_set =
      resolveMethodBind('TileSet', 'move_terrain_set', 3937882851);

  void moveTerrainSet(int terrainSet, int toPosition) {
    final arg0 = malloc<Int64>()..value = terrainSet;
    final arg1 = malloc<Int64>()..value = toPosition;
    try {
      ptrcallVoid(_mb_move_terrain_set, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_remove_terrain_set =
      resolveMethodBind('TileSet', 'remove_terrain_set', 1286410249);

  void removeTerrainSet(int terrainSet) {
    final arg0 = malloc<Int64>()..value = terrainSet;
    try {
      ptrcallVoid(_mb_remove_terrain_set, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_terrain_set_mode =
      resolveMethodBind('TileSet', 'set_terrain_set_mode', 3943003916);

  void setTerrainSetMode(int terrainSet, int mode) {
    final arg0 = malloc<Int64>()..value = terrainSet;
    final arg1 = malloc<Int64>()..value = mode;
    try {
      ptrcallVoid(_mb_set_terrain_set_mode, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_terrain_set_mode =
      resolveMethodBind('TileSet', 'get_terrain_set_mode', 2084469411);

  int getTerrainSetMode(int terrainSet) {
    final arg0 = malloc<Int64>()..value = terrainSet;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_terrain_set_mode, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_terrains_count =
      resolveMethodBind('TileSet', 'get_terrains_count', 923996154);

  int getTerrainsCount(int terrainSet) {
    final arg0 = malloc<Int64>()..value = terrainSet;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_terrains_count, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_add_terrain =
      resolveMethodBind('TileSet', 'add_terrain', 1230568737);

  void addTerrain(int terrainSet, int toPosition) {
    final arg0 = malloc<Int64>()..value = terrainSet;
    final arg1 = malloc<Int64>()..value = toPosition;
    try {
      ptrcallVoid(_mb_add_terrain, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_move_terrain =
      resolveMethodBind('TileSet', 'move_terrain', 1649997291);

  void moveTerrain(int terrainSet, int terrainIndex, int toPosition) {
    final arg0 = malloc<Int64>()..value = terrainSet;
    final arg1 = malloc<Int64>()..value = terrainIndex;
    final arg2 = malloc<Int64>()..value = toPosition;
    try {
      ptrcallVoid(_mb_move_terrain, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_remove_terrain =
      resolveMethodBind('TileSet', 'remove_terrain', 3937882851);

  void removeTerrain(int terrainSet, int terrainIndex) {
    final arg0 = malloc<Int64>()..value = terrainSet;
    final arg1 = malloc<Int64>()..value = terrainIndex;
    try {
      ptrcallVoid(_mb_remove_terrain, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_clear_terrains =
      resolveMethodBind('TileSet', 'clear_terrains', 1286410249);

  void clearTerrains(int terrainSet) {
    final arg0 = malloc<Int64>()..value = terrainSet;
    try {
      ptrcallVoid(_mb_clear_terrains, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_terrain_name =
      resolveMethodBind('TileSet', 'set_terrain_name', 2285447957);

  void setTerrainName(int terrainSet, int terrainIndex, String name) {
    final arg0 = malloc<Int64>()..value = terrainSet;
    final arg1 = malloc<Int64>()..value = terrainIndex;
    final arg2 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg2.cast(), name);
    try {
      ptrcallVoid(_mb_set_terrain_name, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      BuiltinMarshal.destroyGDString(arg2.cast());
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_get_terrain_name =
      resolveMethodBind('TileSet', 'get_terrain_name', 1391810591);

  String getTerrainName(int terrainSet, int terrainIndex) {
    final arg0 = malloc<Int64>()..value = terrainSet;
    final arg1 = malloc<Int64>()..value = terrainIndex;
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_terrain_name, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_set_terrain_color =
      resolveMethodBind('TileSet', 'set_terrain_color', 3733378741);

  void setTerrainColor(int terrainSet, int terrainIndex, Color color) {
    final arg0 = malloc<Int64>()..value = terrainSet;
    final arg1 = malloc<Int64>()..value = terrainIndex;
    final arg2 = malloc<Uint8>(Color.nativeSize);
    color.writeTo(arg2, 0);
    try {
      ptrcallVoid(_mb_set_terrain_color, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_get_terrain_color =
      resolveMethodBind('TileSet', 'get_terrain_color', 2165839948);

  Color getTerrainColor(int terrainSet, int terrainIndex) {
    final arg0 = malloc<Int64>()..value = terrainSet;
    final arg1 = malloc<Int64>()..value = terrainIndex;
    try {
      final ret = malloc<Uint8>(Color.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_terrain_color, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return Color.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_navigation_layers_count =
      resolveMethodBind('TileSet', 'get_navigation_layers_count', 3905245786);

  int getNavigationLayersCount() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_navigation_layers_count, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_add_navigation_layer =
      resolveMethodBind('TileSet', 'add_navigation_layer', 1025054187);

  void addNavigationLayer(int toPosition) {
    final arg0 = malloc<Int64>()..value = toPosition;
    try {
      ptrcallVoid(_mb_add_navigation_layer, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_move_navigation_layer =
      resolveMethodBind('TileSet', 'move_navigation_layer', 3937882851);

  void moveNavigationLayer(int layerIndex, int toPosition) {
    final arg0 = malloc<Int64>()..value = layerIndex;
    final arg1 = malloc<Int64>()..value = toPosition;
    try {
      ptrcallVoid(_mb_move_navigation_layer, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_remove_navigation_layer =
      resolveMethodBind('TileSet', 'remove_navigation_layer', 1286410249);

  void removeNavigationLayer(int layerIndex) {
    final arg0 = malloc<Int64>()..value = layerIndex;
    try {
      ptrcallVoid(_mb_remove_navigation_layer, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_navigation_layer_layers =
      resolveMethodBind('TileSet', 'set_navigation_layer_layers', 3937882851);

  void setNavigationLayerLayers(int layerIndex, int layers) {
    final arg0 = malloc<Int64>()..value = layerIndex;
    final arg1 = malloc<Int64>()..value = layers;
    try {
      ptrcallVoid(_mb_set_navigation_layer_layers, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_navigation_layer_layers =
      resolveMethodBind('TileSet', 'get_navigation_layer_layers', 923996154);

  int getNavigationLayerLayers(int layerIndex) {
    final arg0 = malloc<Int64>()..value = layerIndex;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_navigation_layer_layers, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_navigation_layer_layer_value =
      resolveMethodBind('TileSet', 'set_navigation_layer_layer_value', 1383440665);

  void setNavigationLayerLayerValue(int layerIndex, int layerNumber, bool value) {
    final arg0 = malloc<Int64>()..value = layerIndex;
    final arg1 = malloc<Int64>()..value = layerNumber;
    final arg2 = malloc<Uint8>()..value = value ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_navigation_layer_layer_value, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_get_navigation_layer_layer_value =
      resolveMethodBind('TileSet', 'get_navigation_layer_layer_value', 2522259332);

  bool getNavigationLayerLayerValue(int layerIndex, int layerNumber) {
    final arg0 = malloc<Int64>()..value = layerIndex;
    final arg1 = malloc<Int64>()..value = layerNumber;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_navigation_layer_layer_value, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_custom_data_layers_count =
      resolveMethodBind('TileSet', 'get_custom_data_layers_count', 3905245786);

  int getCustomDataLayersCount() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_custom_data_layers_count, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_add_custom_data_layer =
      resolveMethodBind('TileSet', 'add_custom_data_layer', 1025054187);

  void addCustomDataLayer(int toPosition) {
    final arg0 = malloc<Int64>()..value = toPosition;
    try {
      ptrcallVoid(_mb_add_custom_data_layer, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_move_custom_data_layer =
      resolveMethodBind('TileSet', 'move_custom_data_layer', 3937882851);

  void moveCustomDataLayer(int layerIndex, int toPosition) {
    final arg0 = malloc<Int64>()..value = layerIndex;
    final arg1 = malloc<Int64>()..value = toPosition;
    try {
      ptrcallVoid(_mb_move_custom_data_layer, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_remove_custom_data_layer =
      resolveMethodBind('TileSet', 'remove_custom_data_layer', 1286410249);

  void removeCustomDataLayer(int layerIndex) {
    final arg0 = malloc<Int64>()..value = layerIndex;
    try {
      ptrcallVoid(_mb_remove_custom_data_layer, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_custom_data_layer_by_name =
      resolveMethodBind('TileSet', 'get_custom_data_layer_by_name', 1321353865);

  int getCustomDataLayerByName(String layerName) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), layerName);
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_custom_data_layer_by_name, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_custom_data_layer_name =
      resolveMethodBind('TileSet', 'set_custom_data_layer_name', 501894301);

  void setCustomDataLayerName(int layerIndex, String layerName) {
    final arg0 = malloc<Int64>()..value = layerIndex;
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg1.cast(), layerName);
    try {
      ptrcallVoid(_mb_set_custom_data_layer_name, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      BuiltinMarshal.destroyGDString(arg1.cast());
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_has_custom_data_layer_by_name =
      resolveMethodBind('TileSet', 'has_custom_data_layer_by_name', 3927539163);

  bool hasCustomDataLayerByName(String layerName) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), layerName);
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_has_custom_data_layer_by_name, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_custom_data_layer_name =
      resolveMethodBind('TileSet', 'get_custom_data_layer_name', 844755477);

  String getCustomDataLayerName(int layerIndex) {
    final arg0 = malloc<Int64>()..value = layerIndex;
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_custom_data_layer_name, nativePtr, [arg0.cast<Void>()], ret.cast());
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

  static final Pointer<Void> _mb_set_custom_data_layer_type =
      resolveMethodBind('TileSet', 'set_custom_data_layer_type', 3492912874);

  void setCustomDataLayerType(int layerIndex, int layerType) {
    final arg0 = malloc<Int64>()..value = layerIndex;
    final arg1 = malloc<Int64>()..value = layerType;
    try {
      ptrcallVoid(_mb_set_custom_data_layer_type, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_custom_data_layer_type =
      resolveMethodBind('TileSet', 'get_custom_data_layer_type', 2990820875);

  int getCustomDataLayerType(int layerIndex) {
    final arg0 = malloc<Int64>()..value = layerIndex;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_custom_data_layer_type, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_source_level_tile_proxy =
      resolveMethodBind('TileSet', 'set_source_level_tile_proxy', 3937882851);

  void setSourceLevelTileProxy(int sourceFrom, int sourceTo) {
    final arg0 = malloc<Int64>()..value = sourceFrom;
    final arg1 = malloc<Int64>()..value = sourceTo;
    try {
      ptrcallVoid(_mb_set_source_level_tile_proxy, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_source_level_tile_proxy =
      resolveMethodBind('TileSet', 'get_source_level_tile_proxy', 3744713108);

  int getSourceLevelTileProxy(int sourceFrom) {
    final arg0 = malloc<Int64>()..value = sourceFrom;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_source_level_tile_proxy, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_has_source_level_tile_proxy =
      resolveMethodBind('TileSet', 'has_source_level_tile_proxy', 3067735520);

  bool hasSourceLevelTileProxy(int sourceFrom) {
    final arg0 = malloc<Int64>()..value = sourceFrom;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_has_source_level_tile_proxy, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_remove_source_level_tile_proxy =
      resolveMethodBind('TileSet', 'remove_source_level_tile_proxy', 1286410249);

  void removeSourceLevelTileProxy(int sourceFrom) {
    final arg0 = malloc<Int64>()..value = sourceFrom;
    try {
      ptrcallVoid(_mb_remove_source_level_tile_proxy, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_coords_level_tile_proxy =
      resolveMethodBind('TileSet', 'set_coords_level_tile_proxy', 1769939278);

  void setCoordsLevelTileProxy(int sourceFrom, Vector2i coordsFrom, int sourceTo, Vector2i coordsTo) {
    final arg0 = malloc<Int64>()..value = sourceFrom;
    final arg1 = malloc<Uint8>(Vector2i.nativeSize);
    coordsFrom.writeTo(arg1, 0);
    final arg2 = malloc<Int64>()..value = sourceTo;
    final arg3 = malloc<Uint8>(Vector2i.nativeSize);
    coordsTo.writeTo(arg3, 0);
    try {
      ptrcallVoid(_mb_set_coords_level_tile_proxy, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>(), arg3.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
      malloc.free(arg3);
    }
  }

  // Skipped get_coords_level_tile_proxy(): unsupported return type "Array".
  static final Pointer<Void> _mb_has_coords_level_tile_proxy =
      resolveMethodBind('TileSet', 'has_coords_level_tile_proxy', 3957903770);

  bool hasCoordsLevelTileProxy(int sourceFrom, Vector2i coordsFrom) {
    final arg0 = malloc<Int64>()..value = sourceFrom;
    final arg1 = malloc<Uint8>(Vector2i.nativeSize);
    coordsFrom.writeTo(arg1, 0);
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_has_coords_level_tile_proxy, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_remove_coords_level_tile_proxy =
      resolveMethodBind('TileSet', 'remove_coords_level_tile_proxy', 2311374912);

  void removeCoordsLevelTileProxy(int sourceFrom, Vector2i coordsFrom) {
    final arg0 = malloc<Int64>()..value = sourceFrom;
    final arg1 = malloc<Uint8>(Vector2i.nativeSize);
    coordsFrom.writeTo(arg1, 0);
    try {
      ptrcallVoid(_mb_remove_coords_level_tile_proxy, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_set_alternative_level_tile_proxy =
      resolveMethodBind('TileSet', 'set_alternative_level_tile_proxy', 3862385460);

  void setAlternativeLevelTileProxy(int sourceFrom, Vector2i coordsFrom, int alternativeFrom, int sourceTo, Vector2i coordsTo, int alternativeTo) {
    final arg0 = malloc<Int64>()..value = sourceFrom;
    final arg1 = malloc<Uint8>(Vector2i.nativeSize);
    coordsFrom.writeTo(arg1, 0);
    final arg2 = malloc<Int64>()..value = alternativeFrom;
    final arg3 = malloc<Int64>()..value = sourceTo;
    final arg4 = malloc<Uint8>(Vector2i.nativeSize);
    coordsTo.writeTo(arg4, 0);
    final arg5 = malloc<Int64>()..value = alternativeTo;
    try {
      ptrcallVoid(_mb_set_alternative_level_tile_proxy, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>(), arg3.cast<Void>(), arg4.cast<Void>(), arg5.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
      malloc.free(arg3);
      malloc.free(arg4);
      malloc.free(arg5);
    }
  }

  // Skipped get_alternative_level_tile_proxy(): unsupported return type "Array".
  static final Pointer<Void> _mb_has_alternative_level_tile_proxy =
      resolveMethodBind('TileSet', 'has_alternative_level_tile_proxy', 180086755);

  bool hasAlternativeLevelTileProxy(int sourceFrom, Vector2i coordsFrom, int alternativeFrom) {
    final arg0 = malloc<Int64>()..value = sourceFrom;
    final arg1 = malloc<Uint8>(Vector2i.nativeSize);
    coordsFrom.writeTo(arg1, 0);
    final arg2 = malloc<Int64>()..value = alternativeFrom;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_has_alternative_level_tile_proxy, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()], ret.cast());
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

  static final Pointer<Void> _mb_remove_alternative_level_tile_proxy =
      resolveMethodBind('TileSet', 'remove_alternative_level_tile_proxy', 2328951467);

  void removeAlternativeLevelTileProxy(int sourceFrom, Vector2i coordsFrom, int alternativeFrom) {
    final arg0 = malloc<Int64>()..value = sourceFrom;
    final arg1 = malloc<Uint8>(Vector2i.nativeSize);
    coordsFrom.writeTo(arg1, 0);
    final arg2 = malloc<Int64>()..value = alternativeFrom;
    try {
      ptrcallVoid(_mb_remove_alternative_level_tile_proxy, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
    }
  }

  // Skipped map_tile_proxy(): unsupported return type "Array".
  static final Pointer<Void> _mb_cleanup_invalid_tile_proxies =
      resolveMethodBind('TileSet', 'cleanup_invalid_tile_proxies', 3218959716);

  void cleanupInvalidTileProxies() {
    try {
      ptrcallVoid(_mb_cleanup_invalid_tile_proxies, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_clear_tile_proxies =
      resolveMethodBind('TileSet', 'clear_tile_proxies', 3218959716);

  void clearTileProxies() {
    try {
      ptrcallVoid(_mb_clear_tile_proxies, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_add_pattern =
      resolveMethodBind('TileSet', 'add_pattern', 763712015);

  int addPattern(TileMapPattern pattern, int index) {
    final arg0 = malloc<Pointer<Void>>()..value = pattern.nativePtr;
    final arg1 = malloc<Int64>()..value = index;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_add_pattern, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_pattern =
      resolveMethodBind('TileSet', 'get_pattern', 4207737510);

  TileMapPattern? getPattern(int index) {
    final arg0 = malloc<Int64>()..value = index;
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_pattern, nativePtr, [arg0.cast<Void>()], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : TileMapPattern(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_remove_pattern =
      resolveMethodBind('TileSet', 'remove_pattern', 1286410249);

  void removePattern(int index) {
    final arg0 = malloc<Int64>()..value = index;
    try {
      ptrcallVoid(_mb_remove_pattern, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_patterns_count =
      resolveMethodBind('TileSet', 'get_patterns_count', 2455072627);

  int getPatternsCount() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_patterns_count, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
