// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class TileData extends GodotObject {
  TileData(super.nativePtr);

  static final Pointer<Void> _mb_set_flip_h =
      resolveMethodBind('TileData', 'set_flip_h', 2586408642);

  void setFlipH(bool flipH) {
    final arg0 = malloc<Uint8>()..value = flipH ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_flip_h, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_flip_h =
      resolveMethodBind('TileData', 'get_flip_h', 36873697);

  bool getFlipH() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_flip_h, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_flip_v =
      resolveMethodBind('TileData', 'set_flip_v', 2586408642);

  void setFlipV(bool flipV) {
    final arg0 = malloc<Uint8>()..value = flipV ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_flip_v, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_flip_v =
      resolveMethodBind('TileData', 'get_flip_v', 36873697);

  bool getFlipV() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_flip_v, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_transpose =
      resolveMethodBind('TileData', 'set_transpose', 2586408642);

  void setTranspose(bool transpose) {
    final arg0 = malloc<Uint8>()..value = transpose ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_transpose, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_transpose =
      resolveMethodBind('TileData', 'get_transpose', 36873697);

  bool getTranspose() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_transpose, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_material =
      resolveMethodBind('TileData', 'set_material', 2757459619);

  void setMaterial(Material material) {
    final arg0 = malloc<Pointer<Void>>()..value = material.nativePtr;
    try {
      ptrcallVoid(_mb_set_material, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_material =
      resolveMethodBind('TileData', 'get_material', 5934680);

  Material? getMaterial() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_material, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Material(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_texture_origin =
      resolveMethodBind('TileData', 'set_texture_origin', 1130785943);

  void setTextureOrigin(Vector2i textureOrigin) {
    final arg0 = malloc<Uint8>(Vector2i.nativeSize);
    textureOrigin.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_texture_origin, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_texture_origin =
      resolveMethodBind('TileData', 'get_texture_origin', 3690982128);

  Vector2i getTextureOrigin() {
    try {
      final ret = malloc<Uint8>(Vector2i.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_texture_origin, nativePtr, [], ret.cast());
        return Vector2i.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_modulate =
      resolveMethodBind('TileData', 'set_modulate', 2920490490);

  void setModulate(Color modulate) {
    final arg0 = malloc<Uint8>(Color.nativeSize);
    modulate.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_modulate, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_modulate =
      resolveMethodBind('TileData', 'get_modulate', 3444240500);

  Color getModulate() {
    try {
      final ret = malloc<Uint8>(Color.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_modulate, nativePtr, [], ret.cast());
        return Color.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_z_index =
      resolveMethodBind('TileData', 'set_z_index', 1286410249);

  void setZIndex(int zIndex) {
    final arg0 = malloc<Int64>()..value = zIndex;
    try {
      ptrcallVoid(_mb_set_z_index, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_z_index =
      resolveMethodBind('TileData', 'get_z_index', 3905245786);

  int getZIndex() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_z_index, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_y_sort_origin =
      resolveMethodBind('TileData', 'set_y_sort_origin', 1286410249);

  void setYSortOrigin(int ySortOrigin) {
    final arg0 = malloc<Int64>()..value = ySortOrigin;
    try {
      ptrcallVoid(_mb_set_y_sort_origin, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_y_sort_origin =
      resolveMethodBind('TileData', 'get_y_sort_origin', 3905245786);

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

  static final Pointer<Void> _mb_set_occluder_polygons_count =
      resolveMethodBind('TileData', 'set_occluder_polygons_count', 3937882851);

  void setOccluderPolygonsCount(int layerId, int polygonsCount) {
    final arg0 = malloc<Int64>()..value = layerId;
    final arg1 = malloc<Int64>()..value = polygonsCount;
    try {
      ptrcallVoid(_mb_set_occluder_polygons_count, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_occluder_polygons_count =
      resolveMethodBind('TileData', 'get_occluder_polygons_count', 923996154);

  int getOccluderPolygonsCount(int layerId) {
    final arg0 = malloc<Int64>()..value = layerId;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_occluder_polygons_count, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_add_occluder_polygon =
      resolveMethodBind('TileData', 'add_occluder_polygon', 1286410249);

  void addOccluderPolygon(int layerId) {
    final arg0 = malloc<Int64>()..value = layerId;
    try {
      ptrcallVoid(_mb_add_occluder_polygon, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_remove_occluder_polygon =
      resolveMethodBind('TileData', 'remove_occluder_polygon', 3937882851);

  void removeOccluderPolygon(int layerId, int polygonIndex) {
    final arg0 = malloc<Int64>()..value = layerId;
    final arg1 = malloc<Int64>()..value = polygonIndex;
    try {
      ptrcallVoid(_mb_remove_occluder_polygon, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_set_occluder_polygon =
      resolveMethodBind('TileData', 'set_occluder_polygon', 164249167);

  void setOccluderPolygon(int layerId, int polygonIndex, OccluderPolygon2D polygon) {
    final arg0 = malloc<Int64>()..value = layerId;
    final arg1 = malloc<Int64>()..value = polygonIndex;
    final arg2 = malloc<Pointer<Void>>()..value = polygon.nativePtr;
    try {
      ptrcallVoid(_mb_set_occluder_polygon, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_get_occluder_polygon =
      resolveMethodBind('TileData', 'get_occluder_polygon', 971166743);

  OccluderPolygon2D? getOccluderPolygon(int layerId, int polygonIndex, bool flipH, bool flipV, bool transpose) {
    final arg0 = malloc<Int64>()..value = layerId;
    final arg1 = malloc<Int64>()..value = polygonIndex;
    final arg2 = malloc<Uint8>()..value = flipH ? 1 : 0;
    final arg3 = malloc<Uint8>()..value = flipV ? 1 : 0;
    final arg4 = malloc<Uint8>()..value = transpose ? 1 : 0;
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_occluder_polygon, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>(), arg3.cast<Void>(), arg4.cast<Void>()], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : OccluderPolygon2D(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
      malloc.free(arg3);
      malloc.free(arg4);
    }
  }

  static final Pointer<Void> _mb_set_occluder =
      resolveMethodBind('TileData', 'set_occluder', 914399637);

  void setOccluder(int layerId, OccluderPolygon2D occluderPolygon) {
    final arg0 = malloc<Int64>()..value = layerId;
    final arg1 = malloc<Pointer<Void>>()..value = occluderPolygon.nativePtr;
    try {
      ptrcallVoid(_mb_set_occluder, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_occluder =
      resolveMethodBind('TileData', 'get_occluder', 2377324099);

  OccluderPolygon2D? getOccluder(int layerId, bool flipH, bool flipV, bool transpose) {
    final arg0 = malloc<Int64>()..value = layerId;
    final arg1 = malloc<Uint8>()..value = flipH ? 1 : 0;
    final arg2 = malloc<Uint8>()..value = flipV ? 1 : 0;
    final arg3 = malloc<Uint8>()..value = transpose ? 1 : 0;
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_occluder, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>(), arg3.cast<Void>()], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : OccluderPolygon2D(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
      malloc.free(arg3);
    }
  }

  static final Pointer<Void> _mb_set_constant_linear_velocity =
      resolveMethodBind('TileData', 'set_constant_linear_velocity', 163021252);

  void setConstantLinearVelocity(int layerId, Vector2 velocity) {
    final arg0 = malloc<Int64>()..value = layerId;
    final arg1 = malloc<Uint8>(Vector2.nativeSize);
    velocity.writeTo(arg1, 0);
    try {
      ptrcallVoid(_mb_set_constant_linear_velocity, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_constant_linear_velocity =
      resolveMethodBind('TileData', 'get_constant_linear_velocity', 2299179447);

  Vector2 getConstantLinearVelocity(int layerId) {
    final arg0 = malloc<Int64>()..value = layerId;
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_constant_linear_velocity, nativePtr, [arg0.cast<Void>()], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_constant_angular_velocity =
      resolveMethodBind('TileData', 'set_constant_angular_velocity', 1602489585);

  void setConstantAngularVelocity(int layerId, double velocity) {
    final arg0 = malloc<Int64>()..value = layerId;
    final arg1 = malloc<Double>()..value = velocity;
    try {
      ptrcallVoid(_mb_set_constant_angular_velocity, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_constant_angular_velocity =
      resolveMethodBind('TileData', 'get_constant_angular_velocity', 2339986948);

  double getConstantAngularVelocity(int layerId) {
    final arg0 = malloc<Int64>()..value = layerId;
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_constant_angular_velocity, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_collision_polygons_count =
      resolveMethodBind('TileData', 'set_collision_polygons_count', 3937882851);

  void setCollisionPolygonsCount(int layerId, int polygonsCount) {
    final arg0 = malloc<Int64>()..value = layerId;
    final arg1 = malloc<Int64>()..value = polygonsCount;
    try {
      ptrcallVoid(_mb_set_collision_polygons_count, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_collision_polygons_count =
      resolveMethodBind('TileData', 'get_collision_polygons_count', 923996154);

  int getCollisionPolygonsCount(int layerId) {
    final arg0 = malloc<Int64>()..value = layerId;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_collision_polygons_count, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_add_collision_polygon =
      resolveMethodBind('TileData', 'add_collision_polygon', 1286410249);

  void addCollisionPolygon(int layerId) {
    final arg0 = malloc<Int64>()..value = layerId;
    try {
      ptrcallVoid(_mb_add_collision_polygon, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_remove_collision_polygon =
      resolveMethodBind('TileData', 'remove_collision_polygon', 3937882851);

  void removeCollisionPolygon(int layerId, int polygonIndex) {
    final arg0 = malloc<Int64>()..value = layerId;
    final arg1 = malloc<Int64>()..value = polygonIndex;
    try {
      ptrcallVoid(_mb_remove_collision_polygon, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  // Skipped set_collision_polygon_points(): an argument type is unsupported.
  // Skipped get_collision_polygon_points(): unsupported return type "PackedVector2Array".
  static final Pointer<Void> _mb_set_collision_polygon_one_way =
      resolveMethodBind('TileData', 'set_collision_polygon_one_way', 1383440665);

  void setCollisionPolygonOneWay(int layerId, int polygonIndex, bool oneWay) {
    final arg0 = malloc<Int64>()..value = layerId;
    final arg1 = malloc<Int64>()..value = polygonIndex;
    final arg2 = malloc<Uint8>()..value = oneWay ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_collision_polygon_one_way, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_is_collision_polygon_one_way =
      resolveMethodBind('TileData', 'is_collision_polygon_one_way', 2522259332);

  bool isCollisionPolygonOneWay(int layerId, int polygonIndex) {
    final arg0 = malloc<Int64>()..value = layerId;
    final arg1 = malloc<Int64>()..value = polygonIndex;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_collision_polygon_one_way, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_set_collision_polygon_one_way_margin =
      resolveMethodBind('TileData', 'set_collision_polygon_one_way_margin', 3506521499);

  void setCollisionPolygonOneWayMargin(int layerId, int polygonIndex, double oneWayMargin) {
    final arg0 = malloc<Int64>()..value = layerId;
    final arg1 = malloc<Int64>()..value = polygonIndex;
    final arg2 = malloc<Double>()..value = oneWayMargin;
    try {
      ptrcallVoid(_mb_set_collision_polygon_one_way_margin, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_get_collision_polygon_one_way_margin =
      resolveMethodBind('TileData', 'get_collision_polygon_one_way_margin', 3085491603);

  double getCollisionPolygonOneWayMargin(int layerId, int polygonIndex) {
    final arg0 = malloc<Int64>()..value = layerId;
    final arg1 = malloc<Int64>()..value = polygonIndex;
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_collision_polygon_one_way_margin, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_set_terrain_set =
      resolveMethodBind('TileData', 'set_terrain_set', 1286410249);

  void setTerrainSet(int terrainSet) {
    final arg0 = malloc<Int64>()..value = terrainSet;
    try {
      ptrcallVoid(_mb_set_terrain_set, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_terrain_set =
      resolveMethodBind('TileData', 'get_terrain_set', 3905245786);

  int getTerrainSet() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_terrain_set, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_terrain =
      resolveMethodBind('TileData', 'set_terrain', 1286410249);

  void setTerrain(int terrain) {
    final arg0 = malloc<Int64>()..value = terrain;
    try {
      ptrcallVoid(_mb_set_terrain, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_terrain =
      resolveMethodBind('TileData', 'get_terrain', 3905245786);

  int getTerrain() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_terrain, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_terrain_peering_bit =
      resolveMethodBind('TileData', 'set_terrain_peering_bit', 1084452308);

  void setTerrainPeeringBit(int peeringBit, int terrain) {
    final arg0 = malloc<Int64>()..value = peeringBit;
    final arg1 = malloc<Int64>()..value = terrain;
    try {
      ptrcallVoid(_mb_set_terrain_peering_bit, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_terrain_peering_bit =
      resolveMethodBind('TileData', 'get_terrain_peering_bit', 3831796792);

  int getTerrainPeeringBit(int peeringBit) {
    final arg0 = malloc<Int64>()..value = peeringBit;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_terrain_peering_bit, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_valid_terrain_peering_bit =
      resolveMethodBind('TileData', 'is_valid_terrain_peering_bit', 845723972);

  bool isValidTerrainPeeringBit(int peeringBit) {
    final arg0 = malloc<Int64>()..value = peeringBit;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_valid_terrain_peering_bit, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_navigation_polygon =
      resolveMethodBind('TileData', 'set_navigation_polygon', 2224691167);

  void setNavigationPolygon(int layerId, NavigationPolygon navigationPolygon) {
    final arg0 = malloc<Int64>()..value = layerId;
    final arg1 = malloc<Pointer<Void>>()..value = navigationPolygon.nativePtr;
    try {
      ptrcallVoid(_mb_set_navigation_polygon, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_navigation_polygon =
      resolveMethodBind('TileData', 'get_navigation_polygon', 2907127272);

  NavigationPolygon? getNavigationPolygon(int layerId, bool flipH, bool flipV, bool transpose) {
    final arg0 = malloc<Int64>()..value = layerId;
    final arg1 = malloc<Uint8>()..value = flipH ? 1 : 0;
    final arg2 = malloc<Uint8>()..value = flipV ? 1 : 0;
    final arg3 = malloc<Uint8>()..value = transpose ? 1 : 0;
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_navigation_polygon, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>(), arg3.cast<Void>()], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : NavigationPolygon(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
      malloc.free(arg3);
    }
  }

  static final Pointer<Void> _mb_set_probability =
      resolveMethodBind('TileData', 'set_probability', 373806689);

  void setProbability(double probability) {
    final arg0 = malloc<Double>()..value = probability;
    try {
      ptrcallVoid(_mb_set_probability, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_probability =
      resolveMethodBind('TileData', 'get_probability', 1740695150);

  double getProbability() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_probability, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  // Skipped set_custom_data(): an argument type is unsupported.
  // Skipped get_custom_data(): unsupported return type "Variant".
  static final Pointer<Void> _mb_has_custom_data =
      resolveMethodBind('TileData', 'has_custom_data', 3927539163);

  bool hasCustomData(String layerName) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), layerName);
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_has_custom_data, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  // Skipped set_custom_data_by_layer_id(): an argument type is unsupported.
  // Skipped get_custom_data_by_layer_id(): unsupported return type "Variant".
}
